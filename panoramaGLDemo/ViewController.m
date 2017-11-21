//
//  ViewController.m
//  panoramaGLDemo
//
//  Created by linjianguo on 2017/11/21.
//  Copyright © 2017年 com.justsee. All rights reserved.
//

#import "ViewController.h"
#import "PLView.h"
@interface ViewController ()<PLViewDelegate>

@property (nonatomic, strong) PLView            * plView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadDataOne];
}
//加载单张全景图
- (void)loadDataOne {
    _plView = [[PLView alloc] initWithFrame:self.view.bounds];
    _plView.delegate = self;
    NSObject<PLIPanorama> *panorama = nil;
    //迪拜2048x1024
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"];
    
    //2048 * 1024
    panorama = [PLSphericalPanorama panorama];
    [(PLSphericalPanorama *)panorama setImage:[PLImage imageWithPath:imagePath]];
    
    [_plView setPanorama:panorama];
    [self.view addSubview:_plView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
