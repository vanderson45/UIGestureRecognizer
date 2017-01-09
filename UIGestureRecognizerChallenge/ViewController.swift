//
//  ViewController.swift
//  UIGestureRecognizerChallenge
//
//  Created by Bryan Adams on 6/12/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    
    @IBAction func onViewMoved(_ sender: UIPanGestureRecognizer) {
    
        let point = sender.location(in: view)
        myView.center = point
    }
    

    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/


    
    /***************************************************
    * Start Your Code Here For Stretch #1
    ***************************************************/
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer) {
        let size = sender.scale
        myView.frame = CGRect(x: myView.frame.origin.x, y: myView.frame.origin.y, width: size * 100, height: size * 100)
    }
   
    /***************************************************
    * End Your Code Here For Stretch #1
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #2
    ***************************************************/
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer) {
        if myView.tag == 0 {
        myView.backgroundColor = UIColor.red
            myView.tag = 1
    }
        else {
            myView.backgroundColor = UIColor.blue
            myView.tag = 0
        }
    }
    
    /***************************************************
    * End Your Code Here For Stretch #2
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #3
    ***************************************************/
    
    @IBAction func onViewSwipedRight(_ sender: UISwipeGestureRecognizer) {
    
        myView.alpha -= 0.1
    }

    /***************************************************
    * End Your Code Here For Stretch #3
    ***************************************************/



    /***************************************************
     * Start Your Code Here For Stretch #4
     ***************************************************/
    
    @IBAction func onViewSwipedLeft(_ sender: UISwipeGestureRecognizer) {
    
        myView.alpha += 0.1
    }


    /***************************************************
     * End Your Code Here For Stretch #4
     ***************************************************/
}

