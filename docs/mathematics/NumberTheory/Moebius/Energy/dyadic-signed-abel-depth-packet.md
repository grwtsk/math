# Prefix-depth transposition of the exact signed Abel packet

Issue: #473. Parent: #468 / draft PR #470 at exact head `75f2ca95aa317d1bdd64025c1c163d0b2e185339`.

Evidence state: **SOURCE_DRAFT**. No Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, arithmetic estimate, new damping, or RH proof is represented here.

## Terminal consumer

The inherited conditional endpoint is

```lean
riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket :
  SubpolynomialDyadicSignedAbelShiftPacket → RiemannHypothesis
```

from PR #470. This increment does not discharge its arithmetic premise.

## Selected missing premise

The exact signed Abel packet was shift-major:

\[
A_j=\sum_{1\le h<Y}2\sum_{0\le t<Y-h-1}C_h(t+1)\Delta_{j,h}(t),
\qquad Y=2^{j+1}.
\]

To expose cancellation across the complete growing shift family at one prefix depth, introduce the rectangularized signed cell

\[
\operatorname{Cell}_{j,h,t}=
\begin{cases}
2C_h(t+1)\Delta_{j,h}(t),&1\le h<Y,\ 0\le t<Y-h-1,\\
0,&\text{otherwise}.
\end{cases}
\]

Define

\[
D_{j,t}=\sum_{1\le h<Y}\operatorname{Cell}_{j,h,t},
\qquad D_j=\sum_{0\le t<Y}D_{j,t}.
\]

The theorem layer proves exactly

\[
A_j=D_j.
\]

No absolute value or square is inserted.

## Candidate comparison

1. Prefix-depth transposition — selected. Exact finite Fubini; zero speculative distance; directly exposes cross-shift cancellation.
2. Return to the ordered-pair kernel — already available upstream; less direct for cross-shift dispersion.
3. Positive square or variation norm — deferred until an exact comparison into the signed packet is proved.

## Proof classification

- exact finite zero extension;
- exact triangular-support preservation;
- finite sum commutation;
- conditional criterion equivalence.

No analytic estimate, asymptotic theorem, external certificate, or numerical computation is used.

## Sign and positivity classification

The cell, each depth slice, and the complete depth packet are signed real quantities. The only inherited nonnegative quantities are the Abel weight drops. Their positivity is not promoted to positivity of any signed slice or packet.

## Failure controls

The theorem does not permit:
- dropping the triangular support condition;
- replacing the signed slice by an absolute-value sum;
- squaring cells before summing;
- replacing a growing-shift family by one fixed shift;
- treating finite Fubini as a cancellation estimate;
- claiming RH from the representation alone.

## Dependency path

```text
weightedMertensDyadicSignedAbelDepthPacket j
  = weightedMertensDyadicSignedAbelPacket j
  = weightedMertensDyadicShiftPacket j
```

The corresponding all-scale bound is a separate, unresolved premise:

```text
SubpolynomialDyadicSignedAbelDepthPacket
  <-> SubpolynomialDyadicMertensShiftPacket
  -> RiemannHypothesis
```

The equality and criterion-equivalence edges are exact finite mathematics. The subpolynomial arithmetic bound remains open.

## Source binding

```text
branch:
  research/rh-signed-abel-depth-slices-473-20261021

parent:
  75f2ca95aa317d1bdd64025c1c163d0b2e185339

source commit:
  aa9b524d85df4767d7bd9da3f459eaeca73102d2

source:
  GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean

source blob:
  ef7b3e9ce1c185093809e01ef5682b7ffdea438d
```

## RH consequence

Classification: **reusable signed analytic interface / conditional reduction only**.

The depth-major form may be consumed by a future dispersion, large-sieve, Fourier, or bilinear theorem, but none is asserted here.

## Exact next obstruction

Prove an all-scale subpolynomial upper bound for the complete signed depth packet while retaining cancellation across shifts:

\[
\forall\delta>0\;\exists C_\delta\ge0\;\forall j,\qquad
\sum_{0\le t<2^{j+1}}D_{j,t}\le C_\delta 2^{j\delta}.
\]

A stronger future supplier may estimate the depth slices, but must provide a proved comparison back into this exact signed packet.
