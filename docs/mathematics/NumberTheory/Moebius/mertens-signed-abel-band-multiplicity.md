# Exact denominator elimination in the fixed cubic-scale prime band

Contribution: **grwtsk**.

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**
This is a finite arithmetic result and a source-exact signed comparison, not an
arithmetic cancellation estimate or an accepted RH theorem.

## Source

- Baseline main: `3487c6f8ff959722f46f80db8dfe5dcc2faef141`.
- Source commit: `c1ee872fe6beb94b21b829d06ad7472796d52ad4`.
- Module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity`.
- File: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelBandMultiplicity.lean`.
- Git blob: `ba28ac5d6a03d831c34cf7cd7a90d4066a3dd2a3`.
- SHA-256: `1c3d9bef89a65554f33d4f60ed10214dfa050087f6d6a754524530d243148ccd`.

The previous prime range and arithmetic sources are unchanged. The new module
is not imported by `GRWTSK.lean`. Its direct dependencies are the existing
`MertensSignedAbelDyadicPrimeRange` and pinned Mathlib factorization arithmetic.

## 1. At most three selected prime divisors

Put X=2^j, Y=2^(j+1), Q=2^floor((j+1)/3), and
P={p prime : Q<p<=2Q}, exactly as in the preceding module. Let k(n) be the number
of DISTINCT selected divisors, not their multiplicity in n.

Natural division by three gives

    Y <= 4 Q^3 < (Q+1)^4.

For n>0, the product of its distinct selected prime divisors divides n.
If k(n)>=4, that product is at least (Q+1)^4, contradicting n<Y.
Thus

    0<n<Y  ==>  k(n)<=3.

The source theorems `right_le_four_mul_band_cube`,
`right_lt_band_succ_pow_four`, `selected_product_dvd`, and
`band_divisorCount_le_three` prove these steps. No distribution theorem for
primes, nonemptiness of the band, or squarefreeness of n is assumed.
The positive-input restriction is essential: all selected primes divide zero.

## 2. Exact quotient coefficient

For p in P the selected-divisor set of p*m is the union of {p} with the
selected-divisor set of m. Under the retained coprime guard p does not divide m,

    k(p*m)=1+k(m).

On the original positive quotient support p*m<Y, this implies k(m) in {0,1,2}.
Consequently

    1/k(p*m) = 1 - (2/3)k(m) + (1/6)k(m)^2,
    1/3 <= 1/k(p*m) <= 1.

This is exact quadratic interpolation, not replacement by a mean divisor count.
The three values are 1, 1/2 and 1/3. It also equals
1-k(m)/2+k(m)*(k(m)-1)/6.

The new theorems are `divisorCount_prime_mul_of_not_dvd`,
`quotient_divisorCount_le_two`, `quotient_inverse_eq_quadratic`, and
`quotient_inverse_bounds`. The latter weight bounds do NOT sandwich an
arbitrary SIGNED sum without additional hypotheses.

A genuine triple-divisor case is j=12, Q=16, Y=8192 and
n=17*19*23=7429. Taking p=17 gives m=437 with k(m)=2.
Extrapolation to k(m)=3 is false: the quadratic gives 1/2, whereas 1/(1+3)=1/4.
`quadratic_reciprocal_fails_at_three` records the scalar failure in source.
The repeated-prime guard is indispensable for the count increment; for m=p,
k(p*m)=k(m)=1 when P={p}.

## 3. Preserve the complete signed quotient windows

For r=0,1,2 define

    F_r(j,h,N) = sum_(p in P) sum_(1<=m<=floor((N+h)/p))
       1_(h<p*m and p does not divide m)
       * mu(p*m-h) * mu(m) * k(m)^r.

These are signed divisor-count-weighted sums, not nonnegative energies.
The r=0 convention uses k(m)^0=1, including k(m)=0.

The exact existing `coprimePrefix = primePrefix - repeatedPrefix` obeys

    A_cop(P,h,N) = F_0(j,h,N) - (2/3)F_1(j,h,N) + (1/6)F_2(j,h,N)

whenever N+h<Y. All original floors, the lower cutoff, ordinary prefix length,
right arithmetic argument and p-not-dividing-m condition remain present.
There is no assertion of this formula for unrestricted windows beyond Y.

`bulkPrefixFunctional_congr_supported` proves that equality on the actual
triangular source window is sufficient for transport. It derives N+h<Y from
the unchanged kernel support with N=t+1 rather than assuming it for zero-weight
terms. Scalar linearity then gives the exact three-moment comparison.

## 4. Exact bulk and full-packet consequences

Let T be the SAME original signed bulkPrefixFunctional, including 2/Y,
all selected middle depths, and every shift weighted by K(j,t,h). Let U denote
the unchanged unsiftedPrefix for P. The new source proves

    B_j = T(U) - T(F_0) + (2/3)T(F_1) - (1/6)T(F_2).

This has no variable count denominator and no new error. The previous
repeated-prime correction remains accounted for by the exact coprime
subtraction and guard; it has not been omitted.

For the actual square-root boundary width the original complete packet P_j
satisfies

    |P_j - [T(U)-T(F_0)+(2/3)T(F_1)-(1/6)T(F_2)]| <= 2.

Thus the inherited boundary allowance is unchanged and requires no additional
arithmetic supplier. The main declarations are
`bulk_eq_unsifted_and_band_moments` and
`abs_full_packet_sub_band_moments_le_two`.

The conditional declaration `riemannHypothesis_of_band_moment_budget` requires
the ENTIRE displayed signed combination <= C_delta*(2^j)^delta for EVERY
positive delta and EVERY j. It invokes the old root RH consumer. No such
budget, individual moment estimate, expander comparison or operator norm is
supplied here. Taking absolute values of the three moment terms would be a
stronger sufficient problem and is not done in the comparison theorem.

## 5. The unsifted source is still explicit

For 0<n<Y, the optional coefficient identity is

    u_P(n)=mu(n)*(1-k(n))*(2-k(n))*(3-k(n))/6.

`unsifted_eq_cubic` is an exact expression for the zero-count indicator. It
neither bounds the size of the unsifted set nor proves cancellation of its
Mobius-weighted contribution. The bulk theorem retains U directly; the cubic
identity is not used to erase it or silently substitute the original target.

## 6. Next mathematical obligation

Expand the count weights of F_1 and F_2-F_1 into actual selected-divisor
incidences. The second difference counts ordered DISTINCT pairs of selected
prime divisors of m. An exact reindexing would expose two- and three-prime
sums with the same variable window and source normalization, now without the
old reciprocal divisor-count coefficient. That reindexing is NOT claimed as
an existing theorem in this increment. A subsequent analytic comparison must
estimate the signed combination and retain U; bounded multiplicity alone is
not cancellation and does not prove an arithmetic-operator estimate.

## Provenance and verification boundary

This increment uses elementary local finite arithmetic, not a port of an
analytic paper. Mathlib's factorization and finite-product theorems retain
upstream authorship and Apache-2.0 licensing. Pinned Mathlib is
`db584cd6d46c92f209a44c0f1c829460d327499d`; the direct factorization source blob
is `754d9c2792659f68a624086c9ce9af3ce90e0737`. The principal imported facts are
`Nat.mem_primeFactors`, `Nat.prod_primeFactors_dvd`, and
`Finset.prod_dvd_prod_of_subset`. There is no entropy-decrement, Ramaré,
prime-density or external spectral theorem admission.

The module has one definition, eighteen public theorem scripts and one private
helper. This is a lexical census, not elaborated output. Compilation, fresh
kernel checking, complete dependency review and transitive axiom auditing are
NOT_RUN. The passive request is under
`docs/verification/NumberTheory/Moebius/MertensSignedAbelBandMultiplicity/`.
Any execution and accepted receipts must remain outside math in
`grwtsk/noeaaeue`, bound to the immutable source. Finite diagnostics reported
in the accompanying issue do not establish Lean acceptance or asymptotics.
