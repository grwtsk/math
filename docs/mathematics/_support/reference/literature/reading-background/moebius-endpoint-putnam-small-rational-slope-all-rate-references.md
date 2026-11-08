# Source ledger: Möbius endpoint small rational-slope sector

**Date:** 2026-11-01  
**Local attribution:** grwtsk contributors  
**Repository:** `grwtsk/math`

## New source

`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSmallRationalSlopeAllRate.lean`

The module applies an elementary bounded-degree Gram estimate to the unchanged
Möbius causal endpoint source. It pays all selected rational-slope edges
\(a m=b n\) with \(a,b\) in a growing parameter interval and isolates the
direct reduced-ratio residual.

## Repository dependencies

1. `MoebiusEndpointPutnamSparseGapYoung.lean`
   - literal interval-integral Gram--Young inequality for the actual responses.

2. `MoebiusEndpointPutnamSparseGapAllRate.lean`
   - additive gap all-positive-rate estimate;
   - diagonal bound;
   - exponential parameter-cardinality estimate.

3. `MoebiusEndpointPutnamSmallRatioAllRate.lean`
   - generic symmetric finite-relation degree theorem;
   - exact small-integer-ratio sector;
   - direct additive/ratio/core partition;
   - fixed-scale conditional RH return.

4. `MoebiusEndpointPutnamEnergyCounting.lean`
   - unchanged endpoint inventory, complete ordered source, and diagonal.

5. `GoodScaleEnergyCriterion.lean`
   - affine-frequent return from the original signed cross supplier to the
     canonical Riemann Hypothesis.

## Classical inputs

The external mathematical content is standard and elementary.

- Euclidean gcd reduction:
  \(m=d b,\ n=d a,\ (a,b)=1\).
- Euclid's lemma:
  from \(a'b=b'a\) and \((a,b)=1\), infer
  \(a\mid a'\) and \(b\mid b'\).
- Finite degree/Schur counting:
  one candidate neighbor for each oriented rational slope.

No priority or novelty claim is made for these abstract facts. The new result is
the source-specific disjoint application to the literal Möbius endpoint Gram.

## Radical-log connection

For squarefree source indices,

\[
\gcd(m,n)=\operatorname{rad}(\gcd(m,n)),
\]

and therefore

\[
\log\gcd(m,n)
=
\sum_{p\mid m,\ p\mid n}\log p.
\]

The new reduced-ratio core forces a quantitative upper bound on this shared
prime-support logarithm. This identity is used only as an interpretation of the
surviving core; it is not treated as a cancellation theorem.

## Nonclaims

- No signed estimate is supplied for the final reduced-ratio core.
- No fixed-shift or averaged Chowla theorem is upgraded beyond its stated
  range.
- No random-sign or independence model replaces the Möbius function.
- No elliptic local factor replaces the source kernel.
- No complete endpoint estimate, uniform energy theorem, or RH proof is
  claimed.
- Source publication does not establish Lean elaboration, kernel acceptance,
  or an axiom audit.
