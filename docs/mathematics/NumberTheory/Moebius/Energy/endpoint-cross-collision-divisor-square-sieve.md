# Divisor-square Möbius sieve adapter for squarefree midpoints

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DIVISOR_SQUARE_IDENTITY_SUPPLIER_OPEN / SIEVED_CROSS_COLLISION_ESTIMATE_OPEN`

Owner: #537. Direct parent: #532 / PR #534.

The parent cross-collision branch is exactly a signed two-endpoint Möbius correlation restricted to squarefree midpoints:
[
mathbf 1_{mathrm{Squarefree}(x+h)},mu(x)mu(x+2h).
]

A classical sieve identity would replace the squarefree predicate by
[
mathbf 1_{mathrm{Squarefree}(m)}
=
sum_{d^2mid m}mu(d).
]

At the pinned Mathlib revision, `ArithmeticFunction.moebius_sq` is present, but this exact square-divisor finite sum theorem was not located as an available declaration. This increment therefore makes the missing identity proof-relevant instead of silently importing it.

## Exact source binding

```text
parent branch:
  research/rh-squarefree-midpoint-532-20261021
parent revision:
  7d3faf3d588280045f9e05d9b2aa9183660657a3

candidate branch:
  research/rh-divisor-square-midpoint-537-20261021
source commit:
  91ccf705d82b976896bb4de0f21ae1b103436f28
source tree:
  5b08acff4c2b3ab50f0d746cbb0e94e1289b9fb8
source:
  GRWTSK/NumberTheory/Moebius/
    EndpointCrossCollisionDivisorSquareSieve.lean
source blob:
  59f7d81a0a056731d8a4ea9dae5fdb49046d5fdc
```

## Finite square-divisor sum

The source defines
```lean
squareDivisorMobiusSum m
```
as the finite real sum over divisors `dmid m` whose square also divides `m`:
[
sum_{substack{dmid m\d^2mid m}}mu(d).
]

The repository's existing `moebiusReal` wrapper is used directly.

## Proof-relevant identity supplier

The new structure
```lean
SquarefreeDivisorSquareMobiusIdentity
```
contains one field:
[
orall m>0,qquad
mathbf 1_{mathrm{Squarefree}(m)}
=
operatorname{squareDivisorMobiusSum}(m).
]

No value of this structure is constructed.

This is the exact epistemic boundary between:
- a standard but not-yet-formalized arithmetic sieve identity; and
- the finite transport the repository can already prove from it.

The source also proves, conditionally on such a certificate,
```lean
moebiusReal_sq_eq_squareDivisorMobiusSum.
```

## Midpoint divisor sieve

The midpoint-sieved term is
[
mu(x)mu(x+2h)
sum_{d^2mid x+h}mu(d).
]

It is defined as
```lean
mertensSquarefreeMidpointDivisorSieveTerm.
```

Assuming a `SquarefreeDivisorSquareMobiusIdentity` certificate, the source proves exact pointwise equality with the parent three-point progression:
```lean
mertensThreePointProgressionTerm_eq_divisorSquareSieve.
```

No absolute values or estimates are introduced.

## Endpoint and weighted transport

The source defines:
```lean
mertensEndpointCrossCollisionDivisorSquareSieveEnergy
weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy.
```

Conditional exact transport is proved by:
```lean
mertensEndpointCrossCollisionProgressionEnergy_eq_divisorSquareSieve
mertensEndpointFibreCrossCollisionEnergy_eq_divisorSquareSieve
weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve
weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy_eq_divisorSquareSieve.
```

Every inherited factor is preserved:
- both collision orientations;
- the factor two inside the endpoint collision energy;
- exact finite base support;
- the reciprocal endpoint weight;
- the sign of the endpoint Möbius product.

## All-scale adapter surface

The source defines
```lean
SubpolynomialWeightedMertensEndpointDivisorSquareCrossCollision.
```

Given an identity certificate, the theorem
```lean
subpolynomialWeightedMertensEndpointDivisorSquareCrossCollision_iff_squarefreeMidpoint
```
proves exact equivalence with the squarefree-midpoint adapter surface from PR #534.

Thus the new layer changes representation only after the arithmetic identity is explicitly supplied.

## What remains open

Two logically separate obligations now exist:

1. construct
   `SquarefreeDivisorSquareMobiusIdentity`;
2. prove a subpolynomial estimate for the resulting congruence/divisor-sieved cross-collision family.

The second does not follow merely from the first.

Even after expanding the midpoint selector, a fixed-shift binary Chowla theorem does not automatically control the growing family with:
- varying `h`;
- divisor-square congruence restrictions;
- endpoint/prefix truncation;
- reciprocal endpoint weighting.

A further uniform adapter remains necessary.

## Evidence state

Established:
```text
SOURCE_DRAFT
```

Not established:
```text
DIVISOR_SQUARE_IDENTITY_SUPPLIER_CONSTRUCTED
SIEVED_CROSS_COLLISION_ESTIMATE_PROVED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, kernel audit, estimate, merge, or RH claim occurred.
