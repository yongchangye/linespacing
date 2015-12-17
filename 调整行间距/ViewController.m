//
//  ViewController.m
//  调整行间距
//
//  Created by 叶永长 on 12/17/15.
//  Copyright © 2015 YYC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"测试数据测试一下Label 的行间距，";
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 100, 20)];
    label.numberOfLines = 0;
    label.textColor = [UIColor blackColor];
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc]initWithString:string];
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc]init];
    [paragraph setLineSpacing:10];
    [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraph range:NSMakeRange(0, string.length)];
    [label setAttributedText:attributeString];
    [label sizeToFit];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
