//
//  ViewController.swift
//  Hindi365
//
//  Created by Tanya on 7/20/17.
//  Copyright © 2017 Tanya Ravi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Hindi365", ofType: "plist")

        let arr = NSArray(contentsOfFile: path!)!
        print(arr[1])
        
        let card = arr[1] as! [String : Any]
        print(card["Category"])
        
//        print(getDataForNum(num: "2"))
    }


    func getSwiftArrayFromPlist(name: String)->(Array<Dictionary<String,String>>)
    {
        let path = Bundle.main.path(forResource: name, ofType: "plist")
        var arr : NSArray?
        arr = NSArray(contentsOfFile: path!)
        print(arr)
        return arr as! Array<Dictionary<String,String>>
    }
    
    func getDataForNum(num:String)->(Array<[String:String]>)
    {
        let array = getSwiftArrayFromPlist(name: "Hindi365")
        let namePredicate = NSPredicate(format: "Number = %@", num)
        return [array.filter {namePredicate.evaluate(with: $0)}[0]]
    }


}

