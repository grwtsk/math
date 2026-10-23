# Endpoint-fibre reindexing of the reciprocal signed-Abel quadratic energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ENDPOINT_FIBRE_QUADRATIC_ESTIMATE_OPEN`  
Owner: issue [#505](https://github.com/grwtsk/math/issues/505)  
Direct parent: issue [#497](https://github.com/grwtsk/math/issues/497) / draft PR [#498](https://github.com/grwtsk/math/pull/498)  
Global quadratic parent: issue [#489](https://github.com/grwtsk/math/issues/489) / draft PR [#493](https://github.com/grwtsk/math/pull/493)  
Signed Abel packet: issue [#468](https://github.com/grwtsk/math/issues/468) / draft PR [#470](https://github.com/grwtsk/math/pull/470)

This increment removes the remaining triangular two-index presentation from the reciprocal active-tail quadratic energy. It changes variables from prefix-depth/shift coordinates ((t,h)) to common endpoint/prefix coordinates ((b,n)).

No arithmetic estimate is proved.

## 1. Exact source binding

Direct parent:

```text
branch: research/rh-abel-active-tail-497-20261021
revision: 18403fef074df31ba57c1a0db4077c4897dfacb7
tree: 4e64d3c4f2df61e72c99e00d77db21beed85af2b
PR: #498
```

Candidate source:

```text
branch: research/rh-abel-endpoint-fibres-505-20261021
source commit: c96ab3622c84af097676a94a65eb2da3f5829ed7
source tree: 6c7bb75c838a9be39d70599c65a6f908f81c2b3e
source path:
  GRWTSK/NumberTheory/Moebius/
    SignedAbelEndpointFibreQuadraticEnergy.lean
source blob:
  9e1b549770e42bd366fa78680cbac0eb769d6fc8
```

No existing source, public root, workflow, dependency pin, executor, or held branch is modified.

## 2. Finite active-pair coordinates

For one dyadic scale set

[
X=2^j,qquad Y=2^{j+1}.
]

The active reciprocal-tail source from PR #498 is indexed by

[
0le t<Y,qquad 1le h<Y,qquad Xle t+1+h<Y.
]

The source records this finite domain as

```lean
signedAbelActiveTailPairSet.
```

It separately defines the endpoint-fibre domain

[
Xle b<Y,qquad 1le n<b
]

as

```lean
signedAbelEndpointFibrePairSet.
```

The target pair set is represented as a product with an explicit filter. No support condition is suppressed.

## 3. Exact change of variables

The forward map is

[
(t,h)longmapsto
(b,n)=(t+1+h,t+1).
]

The inverse is

[
(b,n)longmapsto
(t,h)=(n-1,b-n).
]

The declarations are

```lean
signedAbelActivePairToEndpoint
signedAbelEndpointToActivePair.
```

The source proves both membership transports and both inverse laws:

```lean
signedAbelActivePairToEndpoint_mem
signedAbelEndpointToActivePair_mem
signedAbelEndpointToActivePair_leftInverse
signedAbelActivePairToEndpoint_rightInverse.
```

Consequently the generic theorem

```lean
sum_signedAbelActivePairs_eq_endpointFibres
```

transports an arbitrary real-valued finite sum across this exact bijection.

This is finite combinatorics only.

## 4. Source term compatibility

On an active source pair,

[
A_{j,t,h}=2C_h(t+1)
]

and the reciprocal tail weight depends only on

[
b=t+1+h.
]

The theorem

```lean
signedAbelActivePairTerm_eq_endpointTerm
```

proves that the source summand is exactly

[
4,C_{b-n}(n)^2
left(
rac1b-rac1{b+1}
ight)
]

after the change of variables.

The factor (4) is not absorbed or renamed.

## 5. Active-tail source as a filtered pair sum

The source theorem

```lean
weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum
```

rewrites the PR #498 energy as a sum over exactly the active ((t,h)) pair set.

Inactive cells are removed through the exact piecewise reciprocal weight, not by an estimate.

## 6. Endpoint fibre

For each positive endpoint (b), define

```lean
mertensTwoPointEndpointFibreQuadraticEnergy b
```

by

[
mathcal F(b)
=
sum_{1le n<b}
C_{b-n}(n)^2.
]

This is the complete quadratic fibre ending at (b). Every prefix length (1le n<b) is retained, and the corresponding positive shift is exactly (h=b-n).

The complete endpoint-weighted observable is

```lean
weightedMertensSignedAbelEndpointFibreQuadraticEnergy j
```

with

[
4sum_{Xle b<Y}
left(
rac1b-rac1{b+1}
ight)
mathcal F(b).
]

No maximum, exceptional set, or fixed-shift selection appears.

## 7. Exact endpoint-fibre identity

The helper

```lean
sum_Ico_one_Y_indicator_lt
```

reduces the filtered target product to the exact fibre range (1le n<b).

The target-pair sum is identified with the nested endpoint expression by

```lean
sum_signedAbelEndpointPairs_eq_endpointFibreEnergy.
```

Combining:
1. the active-pair presentation;
2. the finite bijection;
3. source-term compatibility;
4. target fibre collection;

gives the load-bearing theorem

```lean
weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres.
```

Mathematically,

[
oxed{
mathcal Q_j^{mathrm{tail}}
=
4sum_{2^jle b<2^{j+1}}
left(
rac1b-rac1{b+1}
ight)
sum_{1le n<b}
C_{b-n}(n)^2
}.
]

This is exact finite reindexing. No inequality has been introduced.

## 8. All-scale supplier

The source defines

```lean
SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy.
```

It asks, for every (delta>0), for (C_deltage0) such that

[
4sum_{2^jle b<2^{j+1}}
left(
rac1b-rac1{b+1}
ight)
mathcal F(b)
le
left(C_delta(2^j)^deltaight)^2
]

for every (j).

The source proves exact equivalence

```lean
subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail
```

with the preceding active-tail supplier.

The conditional endpoint

```lean
riemannHypothesis_of_subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy
```

only composes this equivalence with the existing conditional RH route.

No inhabitant of the endpoint-fibre supplier is constructed.

## 9. Mathematical interpretation

The obstruction is now one-dimensional in its outer geometry.

All dependence on the pair ((t,h)) has been reorganized into:
- one common endpoint (b);
- the complete fibre of prefix lengths (n<b);
- one scalar reciprocal-difference weight depending only on (b).

The open arithmetic quantity is therefore

[
mathcal F(b)
=
sum_{1le n<b}
left(
sum_{a<n}mu(a)mu(a+b-n)
ight)^2.
]

The RH-facing dyadic supplier is not asking for every fibre to be separately tiny. It asks for the reciprocal-difference weighted dyadic average of these nonnegative fibres to be subpolynomial.

This distinction should be preserved when comparing to Chowla, Elliott, dispersion, large-sieve, or random-sequence models.

## 10. Positivity classification

The endpoint fibre is a finite sum of real squares and is nonnegative.

The outer reciprocal-difference weight is nonnegative on its exact range.

This is finite scalar positivity only. No positive kernel, measure, trace/state, Weil form, spectral state, or global RH positivity statement is claimed.

No smallness follows from positivity.

## 11. Hostile controls

Rejected:
- dropping the factor (4);
- replacing (1/b-1/(b+1)) by (b^{-2});
- omitting any (1le n<b) term;
- changing the endpoint range to closed at (Y);
- replacing the full fibre by a maximum or one terminal term;
- inserting absolute values around the signed prefix before the inherited square;
- inferring an arithmetic estimate from the bijection;
- treating source elaboration as analytic evidence;
- claiming RH.

## 12. Evidence state

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
ENDPOINT_FIBRE_QUADRATIC_ESTIMATE_PROVED
```

No Lean/Lake execution, elaboration, proof-term acceptance, transitive trust audit, independent replay, merge, root admission, or RH claim occurred.

## 13. Exact next obstruction

The remaining arithmetic target is now

[
4sum_{2^jle b<2^{j+1}}
left(
rac1b-rac1{b+1}
ight)
mathcal F(b)
ll_delta
(2^j)^{2delta},
]

where

[
mathcal F(b)
=
sum_{1le n<b} C_{b-n}(n)^2.
]

The next bounded structural question is whether (mathcal F(b)) itself has an exact expansion into a four-Möbius correlation or additive-energy form. Such an expansion would identify precisely where higher-order Chowla, corrected Elliott, or a dispersion theorem could enter without changing the source observable.
