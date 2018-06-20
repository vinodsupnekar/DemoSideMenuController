//
//  SideMenuController.swift
//  SideMenuTest
//
//  Created by vinods on 6/20/18.
//  Copyright © 2018 loylty. All rights reserved.
//

import Foundation
import SideMenuController
//import Sid

class CustomeSideMenuController: SideMenuController {
 
 required init?(coder aDecoder: NSCoder) {
  SideMenuController.preferences.drawing.menuButtonImage = UIImage(named: "menu")
  SideMenuController.preferences.drawing.sidePanelPosition = .overCenterPanelLeft
  SideMenuController.preferences.drawing.sidePanelWidth = 300
  SideMenuController.preferences.drawing.centerPanelShadow = true
  SideMenuController.preferences.animating.statusBarBehaviour = .showUnderlay
  super.init(coder: aDecoder)
 }
 
 override func viewDidLoad() {
  super.viewDidLoad()
  performSegue(withIdentifier: "embedInitialCenterController", sender: nil)
  performSegue(withIdentifier: "embedSideController", sender: nil)
 }
 
}
