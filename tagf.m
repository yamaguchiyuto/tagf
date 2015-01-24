addpath('tensor')
load coupled_tensor
vals = ones([179868 1]);
vals2 = ones([3642864 1])/20;
X = sptensor(coupled_tensor, [vals;vals2], [147541 147541 52]);
P = parafac_als(X,50);
csvwrite('lambda',P.lambda);
csvwrite('src',P.U{1});
csvwrite('dst',P.U{2});
csvwrite('tag',P.U{3});
