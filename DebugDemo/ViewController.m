//
//  ViewController.m
//  DebugDemo
//
//  Created by yangduoqing on 2021/6/10.
//

#import "ViewController.h"
#import "FLEXManager.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.label.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.label];
    
    NSString *str = [NSString stringWithFormat:@"%d", __LINE__];
    NSLog(@"代码所在行数%@", str);
    
    NSLog(@"%s", __func__);
    NSLog(@"%s", __FILE__);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[FLEXManager sharedManager] showExplorer];

}

@end

