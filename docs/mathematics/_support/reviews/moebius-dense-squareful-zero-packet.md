# Exact squareful-zero packet within the original dyadic dense Möbius covariance

**Attribution:** grwtsk contributors. **Date:** 2026-10-31.
**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseSquarefulZeroPacket.lean`.
**Basis:** `MoebiusDenseSignedGapComplementFrontier.lean`, observed blob `61d626c267fa11f1b6e53a9837076cc4c6e039a0`, and `MoebiusEndpointLeastPrimeTypeII.lean`, observed blob `fb77710105395da0394c930ef702b893f2f2f87f`.

## Exact arithmetic identity

Fix the already specified rate-independent dyadic sparse gap schedule
`A(T)={2^j:0<=j<=floor(max(T,0))}`. The original signed dense complement is

    C(T)=sum_(1<=m,n<=floor exp T; m != n; Nat.dist(m,n) notin A(T))
                mu(m)*mu(n)*K_T(m,n),

with complete ordered orientations and the unchanged literal causal Gram.

Split the complete finite pair inventory by whether either endpoint
has a repeated prime factor. Because the *actual Möbius coefficient* is
zero when not Squarefree, the squareful-endpoint contribution vanishes
identically:

    C_squareful(T)=0                                           (S1)

for all real T. Consequently,

    C(T)=sum_(m,n squarefree in endpointIndex(T);
             m != n; dist(m,n) notin A(T))
               mu(m)*mu(n)*K_T(m,n).                           (S2)

This result is stronger than an upper estimate on the identified packet:
it is exact arithmetic zero. It is genuinely Möbius-specific, since the
all-positive fixture a(n)=1 from the predecessor does not vanish at
squareful indices.

However, the vanishing comes from the support of Möbius, NOT
cancellation between opposite signed nonzero pair contributions.
It supplies no quantitative saving for the surviving squarefree
pairs, and the remaining all-positive-rate dense-complement estimate
is still equivalent to the original endpoint arithmetic target.

## Source correspondence and proof

The original `moebiusReal` is the real cast of
`ArithmeticFunction.moebius`. The existing source proves
`moebiusReal_prime_mul_eq_zero_of_dvd` for any prime that divides the
quotient; the general Mathlib theorem
`ArithmeticFunction.moebius_eq_zero_of_not_squarefree` is used
for the equivalent source-wide support rule.

New Lean source-proof candidates:

- `squarefreeEndpointIndex`: exact filtered original endpoint inventory
- `moebiusReal_eq_zero_of_not_squarefree`: coefficient vanishing
- `endpoint_pair_zero_of_squareful`: every matching original Gram summand zero
- `denseGapPair`, `denseSquarefulCross`, `denseSquarefulCross_eq_zero`: the zero packet
- `denseSquarefreeCross`, `signedGapComplement_eq_squarefreeCross`, `dyadic_signedComplement_eq_squarefreeCross`: exact signed reconstruction

The complement excludes only precisely the original dyadic selected gaps.
No positive diagonal is charged to an off-diagonal; m!=n is retained.
All source indices with zero Möbius coefficient remain in the complete
original inventory; their terms are shown zero, not silently deleted.
The inherited quarter-unit endpoint quadrature error is unchanged:

    endpointSum(T) <= |endpointGapSetCross(A(T),T)|
                        + C(T) + 1/4.                       (S3)

No new positivity, squarefree surrogate coefficient, or independent
correlation hypothesis is introduced.

## Hostile limit, verification and next arithmetic obligation

For the all-positive coefficient model a(n)=1, terms supported at
squareful endpoints need not vanish. Thus the claim (S1) specifically
uses Möbius. On the actual squarefree-to-squarefree packet, the
remaining signs are nontrivial; none of the newly written lemmas
controls their sum. The known aligned-Gram fixture still blocks a
method based only on Gram positivity and degree counts.

**Formal status:** mathematical proof complete; Lean proof candidate
published without compilation. The user deferred compilation,
expected-interface checking, fresh kernel replay and transitive axiom
audit; all remain NOT_RUN. No verification job is dispatched.

**Single next substantive arithmetic obligation:** identify a
nonzero squarefree-to-squarefree dense-gap subpacket for which the
actual Möbius signs furnish a provable signed saving uniformly in T
and every positive exponent, while leaving all other ordered pairs
and the 1/4 error explicit.
