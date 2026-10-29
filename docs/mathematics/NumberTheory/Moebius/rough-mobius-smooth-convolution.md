# A uniform subpower bound for the frozen rough Möbius sum

Local mathematical attribution: grwtsk contributors.

This is written mathematics using an explicitly cited external analytic theorem.
No new Lean declaration or kernel-verified bridge is claimed. Compilation,
fresh kernel replay and transitive axiom audit: NOT_RUN.

Source chat `6ae02348-86d4-83e8-b3e6-e5e06e1e920e`, assistant message
`95bcab3f-a85e-407c-be7c-45e93ec13cda`, rendered-text SHA-256
`4719ef99a234bbfec9ffed9a6a49734922064fcd506c740073773b774d80c0d9`.
The following argument checks the smooth-divisor route independently of that
reply's separate reciprocal-phase Fourier estimates. Those estimates are not
imported here.

## External input and exact arithmetic identity

The only external analytic input is the classical scalar estimate

    |sum_(n<=x) mu(n)| <= C x exp(-c sqrt(log x)), x>=1,

for absolute C,c>0, with the initial range absorbed into C. It is stated as
Example 1, equation (1.1), in Ben Green and Terence Tao, *Quadratic uniformity
of the Möbius function*, arXiv:math/0606087v2 (22 September 2007), page 2.
[Primary source](https://arxiv.org/abs/math/0606087v2).
This is imported written mathematics, not a theorem checked in this source tree.

Fix j>=2. Let P be all primes at most j and a_j(n)=mu(n) times the indicator
that n has no divisor in P. Let S_j be the positive integers all of whose prime
factors belong to P, including 1 and arbitrary powers of the selected primes.
At every positive integer n,

    a_j(n) = sum_(d|n, d in S_j) mu(n/d).

Proof: the local factor at a selected prime cancels each nontrivial prime
power, whereas at an unselected prime it is the local factor of mu. Equivalently,
expand the finite divisor sum prime by prime. Thus, with M_mu the scalar
Möbius prefix,

    A_j(x):=sum_(n<=x) a_j(n)
          =sum_(d<=x, d in S_j) M_mu(x/d).

All reindexing here is finite. Replacing S_j by the squarefree divisors of
the product of P would give a false identity.

## Small and large smooth divisors

For d<=sqrt x, the external estimate and log(x/d)>=log(x)/2 give

    sum_(d<=sqrt x, d in S_j) |M_mu(x/d)|
      <= C x exp(-(c/2)sqrt(log x)) product_(p<=j)(1-1/p)^(-1)
      <= C j x exp(-(c/2)sqrt(log x)).

The last product is at most the product over all integers 2,...,j, which
telescopes to j. For the other divisors use |M_mu(y)|<=y and put
delta=1/(2 log(2j)). Since d>sqrt x implies d^(-delta)<x^(-delta/2),

    sum_(d>sqrt x, d in S_j) 1/d
      <= x^(-delta/2) product_(p<=j)(1-p^(-1+delta))^(-1).

The positive geometric products converge because delta<1. Here is an elementary
bound with all j-dependence displayed. At p=2, 2^delta<=exp(1/4)<4/3, so its
factor is at most 3. For p>=3, p^delta<sqrt(e)<5/3. For z=p^(-1+delta),
z<=5/9, hence -log(1-z)<=z/(1-z)<=15/(4p)<4/p. Enlarging the prime sum to
the positive integer harmonic sum gives the product at most 3j^4<=j^7.
Consequently, for every real x>=1,

    |A_j(x)| <= C j x exp(-(c/2)sqrt(log x))
                + j^7 x exp(-log x/(4 log(2j))).                 (1)

No desired rough-prefix estimate was used to prove (1).

## Uniform frozen dyadic interval consequence and its limitation

Let N=2^j, L=floor(sqrt N), and let integers satisfy
L<=M<Y<=min(2M,N). Subtract the actual prefixes A_j(Y) and A_j(M).
Because M<=Y<=2M and both decaying factors in (1) decrease with x,

    |sum_(M<n<=Y) a_j(n)|
      <= 3 C j M exp(-(c/2)sqrt(log M))
         +3 j^7 M exp(-log M/(4 log(2j))).                       (2)

The frozen scales imply j log 2<2 log(M+1). Thus j=O(log M) uniformly
away from a bounded initial range. The polynomial j costs can be absorbed
in the first exponential. Also log M/log(2j) grows faster than sqrt(log M).
After absorbing the bounded initial cases, there are absolute C_1,c_1>0
such that throughout these ranges, including j=0,1 where applicable,

    |sum_(M<n<=Y) a_j(n)| <= C_1 M exp(-c_1 sqrt(log M)).         (3)

This is genuine signed cancellation for the complete interval, with the
growing roughness cost paid. It remains a subpower allowance:
M^(1/8) exp(-c_1 sqrt(log M)) tends to infinity. Therefore (3) does not
imply a fixed M^(7/8) bound, the proposed weighted-prefix supplier, a
pickup-energy exponent below one, or the every-positive-rate RH target.
The new local contribution is the written uniform transfer from the imported
scalar estimate to this specific growing rough source. Formalization and
native verification of that transfer remain outstanding.
