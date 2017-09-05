//
//  ViewController.m
//  DistanceConverter
//
//  Created by Oleg KozhevniKov on 05/09/2017.
//  Copyright © 2017 WitchwoodLabs. All rights reserved.
//

#import "ViewController.h"

double convertMetersToSantimeters(double metersValue) {

     double santimetersValue = 100 * metersValue;
    return santimetersValue;
}

double convertMetersToDecimeters(double metersValue) {

    double decimetersValue = 10 * metersValue;
    return decimetersValue;
}

double convertMetersToKilometers(double metersValue) {

    double kilometersValue = metersValue / 1000;
    return kilometersValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)convertClick:(UIButton *)sender {

    NSMutableString *buf = [NSMutableString new];
    
    double metersValue = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0){
    
        double santimetersValue = convertMetersToSantimeters(metersValue);
        
        [buf appendString: [@(santimetersValue) stringValue]];

    } else if(self.segmentController.selectedSegmentIndex == 1){
        
        double decimetersValue = convertMetersToDecimeters(metersValue);
        
        [buf appendString:[@(decimetersValue) stringValue]];
        
    } else{
        
        double kilometersValue = convertMetersToKilometers(metersValue);
    
        [buf appendString:[@(kilometersValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
