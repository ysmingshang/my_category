//
//  CTMediator+My.m
//  CTMediator
//
//  Created by Mikey on 2018/1/9.
//

#import "CTMediator+My.h"

@implementation CTMediator (My)

- (UIViewController *)A_aViewControllerWithCallback:(void(^)(NSString *result))callback;
{
    /*
     AViewController *viewController = [[AViewController alloc] init];
     */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    
    return [self performTarget:@"A" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
