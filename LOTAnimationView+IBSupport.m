//
//  LOTAnimationView+IbSupport.m
//  LangEasyLexis
//
//  Created by WELCommand on 2017/10/18.
//  Copyright © 2017年 WELCommand. All rights reserved.
//

#import "LOTAnimationView+IBSupport.h"
#import <objc/runtime.h>
#import <Lottie/LOTComposition.h>

@implementation LOTAnimationView (IBSupport)

- (NSString *)jsonDataName {
    return nil;
}

- (void)setJsonDataName:(NSString *)jsonDataName {
    LOTComposition *model = [LOTComposition animationNamed:jsonDataName inBundle:[NSBundle mainBundle]];
    [self setValue:[NSBundle mainBundle] forKey:@"_bundle"];
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    [self performSelector:@selector(_commonInit)];
    [self performSelector:@selector(_initializeAnimationContainer)];
    [self performSelector:@selector(_setupWithSceneModel:) withObject:model];
#pragma clang diagnostic pop
}




@end
