//
//  CZHeadLineController.m
//  News
//
//  Created by 浩记 on 16/2/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "CZHeadLineController.h"

@interface CZHeadLineController ()

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CZHeadLineController

static NSString * const reuseIdentifier = @"HeadLine";

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidLayoutSubviews
{
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    //滚动方向
    self.layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //item大小
    self.layout.itemSize = self.collectionView.bounds.size;
    // 隐藏滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    // 设置间隔
    self.layout.minimumLineSpacing = 0;
    // 设置分页
    self.collectionView.pagingEnabled = YES;
    // 关闭弹簧
    self.collectionView.bounces = NO;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSLog(@"dfsd");
    cell.backgroundColor = cell.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    return cell;
}


@end
