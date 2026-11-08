# Complete high-gcd Möbius absolute payment without unique-gcd reindex

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-02 (America/Los_Angeles).
Formal status: Lean SOURCE_PROOF_CANDIDATE, no parsing/compilation/fresh kernel/transitive axiom audit. Arithmetic every-rate low-gcd cancellation and RH still OPEN.

## 1. Strict improvement to the elementary proof route

The preceding `MoebiusUnmaskedLowGcdEndpoint.lean` (Git blob `1adfd2470cb28a0d98ad567d436853ab2d091f67`) defined
  highCost(D,T)=sum_(m,n<=N,m!=n,gcd(m,n)>D)|mu(m)mu(n)K_T(m,n)|.
Its numerical supplier `CompleteHighGcdAbsoluteRootTailTarget` seeks <=16*T*N/D.

An EXACT gcd-reindex is unnecessary to establish this POSITIVE estimate. For every selected pair with gcd(m,n)>D, g=gcd(m,n) is itself a common divisor g>D. Hence as NONNEGATIVE indicators,
  1_(m!=n,gcd(m,n)>D) <= sum_(D<g<=N) 1_(g|m and g|n).

Multiply by the original |sourceKernel(T,m,n)|>=0, sum over the same original full endpoint inventory, and change only the order of finite sums. This yields the true finite DOMINATION
  highCost(D,T) <= Cover(D,T), where
  Cover(D,T)=sum_(D<g<=N)sum_(m,n<=N, g|m and g|n)
                |mu(m)mu(n)K_T(m,n)|.                  (A)

No pair is deleted on grounds of coprimality and no sign cancellation is assumed. Some pairs are overcounted, including positive diagonal items, but that is safe ONLY because this is an upper of an ABSOLUTE nonnegative source; the original signed packet and its diagonal bookkeeping are unchanged.

## 2. The remaining positive multiples bound is finite and telescoping

For any fixed divisor g in (A), m=g*a,n=g*b, a,b>=1, a,b<=floor(N/g). No gcd(a,b)=1 is needed and no uniqueness across g is assumed.

The exact original causal response satisfies for T>=0:
  0<=K_T(ga,gb)<=4*T/(g*sqrt(a*b)).
Also |mu(ga)mu(gb)|<=1. The EXISTING source proof candidate
  `StrongMertensAbel.reciprocal_sqrt_sum_le_two_sqrt`,
from blob `9956bfdb2c7e677c7feafeaf16cfb125da2e56b7`,
already supplies the exact real finite estimate
  sum_(1<=k<=M) 1/sqrt k <=2*sqrt M.
It proves this by telescoping sqrt(k)-sqrt(k-1), no integral.

Thus for each g:
  Cover_g <= (4*T/g) (2 sqrt(N/g))²
          =16*T*N/g².

For g>=D+1>=2, pure rational algebra yields
  1/g² <= 1/((g-1)*g) = 1/(g-1)-1/g.
The sum telescopes:
  sum_(g=D+1)^N 1/g² <=1/D-1/N<=1/D.
Therefore
  Cover(D,T)<=16*T*N/D.                            (B)

(A)-(B) give the desired COMPLETE high-gcd numerical bill, including comparable and incomparable original pairs, without an exact finite unique-gcd identity. This is mathematical finite arithmetic, not an RH-strength assumption.

## 3. Lean deliverable and honest dependency frontier

A new source `MoebiusCompleteHighGcdDivisorCover.lean` contains
- `highGcdDivisorCoverCost`, an exact positive finite cover of the original source;
- `plainHighGcdAbsoluteCost_le_divisorCover`, an authored Lean proof candidate of (A), using `Finset.single_le_sum`, original gcd common-divisor membership and finite sum commutation;
- `DivisorCoverRootTailTarget`, explicitly UNPROVED pinned Lean (B), only the elementary positive multiples calculation, the already-written inverse-root finite summation, and inverse-square telescoping;
- `completeHighGcdRootTail_of_divisorCover`, a conditional proof candidate discharging the previous complete-high-gcd target from (A) and (B);
- `endpointSum_le_fixedPlain_of_divisorCover`, preserving the original quarter-unit endpoint and simple cutoff bound, conditional only on (B) and earlier `FixedGcdRatioTarget`.

The remaining native acceptance frontier is now *smaller*: prove a finite positive divisor multiples sum, not first an exact gcd-bijection for an unneeded upper. The separate `PlainPrimitiveGcdReindexTarget` remains useful for describing the genuine signed low-gcd arithmetic and is not needed for this positive tail.

## 4. Finite source diagnostics (not proof)

Direct original causal integrated Gram and original Mobius signs, with all divisor overcounts and diagonal included only in Cover, gave:
 (N,D,exact high abs cost,divisor cover positive cost,16*T*N/D), T=log N:
 (24,4,0.145558784,0.502017132,305.093168),
 (48,6,0.310789154,0.802276492,495.513729),
 (96,11,0.378681527,1.003692124,637.348983),
 (200,20,0.543401739,1.399955157,847.731780).
All finite observed source-true comparisons fit (A)-(B); not certified intervals, asymptotic bounds or Lean acceptance.

## 5. Acceptance boundary

Pinned Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. SOURCE_PROOF_CANDIDATES ONLY; parsing, expected types, Lake compilation of import closure, fresh kernel and transitive axiom/unsafe/opaque audit NOT_RUN. No old mathematical module changed, no root imports, toolchain/pin changes, runner dispatch, scheduler, CI, or axiom additions. Existing issue #1566 and canonical RH #15 remain OPEN. Fixed one-sided unmasked low-gcd correlation remains RH-strength and unproved.
