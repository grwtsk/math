One-third Mertens mean-square package

This package replaces the pointwise requirement

  |M(x)| <= C x^beta with beta < 5/6

by the strictly weaker source-preserving square-summability premise

  sum_{n>=1} M(n)^2 n^(-8/3) < infinity.

Written consequences: the literal completed vertical-line bound at sigma=1/3,
with constant 9 times the displayed series, and a direct locally-uniform
Abel/Mellin continuation of 1/zeta to Re(s)>5/6.  The package also gives an
exact dyadic colliding-block formulation and a generic unit-increment fixture
showing that the square premise does not imply a pointwise beta<5/6 estimate.

The committed Python program replays the source-bound certificate and its key
arithmetic fixtures.  The full 161-check producer and logs are retained in the
downloadable bundle.  Lean files are inactive candidates.  No summability
witness, admitted sigma=1/3 theorem, new zero-free region, or proof of RH is
claimed.
