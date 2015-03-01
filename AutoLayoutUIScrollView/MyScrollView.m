//
//  MyScrollView.m
//  AutoLayoutUIScrollView
//
//  Created by sbx_fc on 15-3-1.
//  Copyright (c) 2015年 RG. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property(nonatomic, weak) IBOutlet UIView *topSubView;

@end


@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //设置顶部View的高度
    [self.topSubView addConstraint:[NSLayoutConstraint
                                 constraintWithItem:self.topSubView
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                 toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                 multiplier:1
                                 constant:250]];
}

@end
