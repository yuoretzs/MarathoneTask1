//
//  ViewController.swift
//  Marathon1
//
//  Created by юра on 1.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let shadowView = UIView(frame: CGRect(x: 100, y: 0, width: 113, height: 95))
        let gradientView = UIView(frame: CGRect(x: 100, y: 0, width: 117, height: 117))
        shadowView.backgroundColor = .white
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.shadowOffset = CGSize(width: 12, height: 14)
        shadowView.layer.shadowRadius = 11
        shadowView.layer.masksToBounds = false
        
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.bounds
        gradient.colors = [UIColor.systemPink.cgColor, UIColor.yellow.cgColor]
        gradient.locations = [0.2, 1.0]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradientView.layer.insertSublayer(gradient, at: 0)
        
        let cornerRadius: CGFloat = 14.0
        gradientView.layer.cornerRadius = cornerRadius
        gradientView.layer.masksToBounds = true
        
        view.addSubview(shadowView)
        view.addSubview(gradientView)
        
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.widthAnchor.constraint(equalToConstant: 117),
            gradientView.heightAnchor.constraint(equalToConstant: 117),
            
            shadowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            shadowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            shadowView.widthAnchor.constraint(equalToConstant: 113),
            shadowView.heightAnchor.constraint(equalToConstant: 95),
        ])
        
        
        

        
        
        
        
        
    }
    
    
    
}

