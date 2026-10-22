# Localized Abel reconstruction from psi(x)-x

The full dyadic discrepancy can be expressed directly through the classical Chebyshev psi error.

For integer endpoints X<=Y, Abel summation yields

sum_(X<n<=Y) Lambda(n)/n - log(Y/X)
 =
 Epsi(Y)/Y
 - Epsi(X)/X
 + integral_X^Y Epsi(u)/u^2 du,

where Epsi(u)=psi(u)-u.

At the source grid point t=Y/X-1 this is exactly cumulative_X(t).

For arbitrary t in [0,1], let Y=floor(X(1+t)). The discrete source does not change between t and the grid point Y/X-1. The only movement is in the continuum log(1+t) background. The exact floor/log correction is bounded by 1/X.

Therefore an octave envelope

|Epsi(u)| <= A for X<=u<=2X

implies the uniform pointwise estimate

|cumulative_X(t)| <= (3A+1)/X

throughout t in [0,1].

This collapses the recovered high-dimensional Fourier witness to one classical local error function. The next module uses this pointwise estimate to control augmentedEnergy and formulate the RH-strength psi supplier.
