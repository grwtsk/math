# Congruence-fibre form of the divisor-square cross-collision sieve

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CONGRUENCE_FIBRE_REINDEX_SOURCE_DRAFT / CONGRUENCE_RESTRICTED_TWO_POINT_ESTIMATE_OPEN`

Owner: #553. Direct parent: #546 / PR #549.

This increment reindexes the exact divisor-square midpoint sieve by the square modulus.

## Exact source binding

```text
parent revision:
  5a6040ea181d22dfb630f774178db919a5c226db

candidate branch:
  research/rh-cross-congruence-fibres-553-20261021

source commit:
  162fa7853be0ed26be980590c184aaf8a9c820be

source tree:
  c7d9de6db8ef963f6e993b7eb444934afda56e71

source:
  GRWTSK/NumberTheory/Moebius/
    EndpointCrossCollisionCongruenceFibres.lean

source blob:
  0354a5ff6e9d1ac80ccc0f224b91dc268d8c0e0c
```

## Midpoint range

For endpoint (b), prefix (1le n<b), shift (h=b-n), and exact collision support
[
0le a<n-h,
]
the midpoint
[
m=a+1+h
]
satisfies
[
0<m<b.
]

The source theorem is
```lean
mertensCrossCollisionMidpoint_pos_lt_endpoint.
```

Therefore every (d) with (d^2mid m) lies in the endpoint-wide fixed range
[
1le d<b.
]

## Fixed modulus range

The dynamic support
[
{dmid m:d^2mid m}
]
is source-rewritten to the fixed endpoint range
[
{1le d<b:d^2mid m}.
]

The relevant declarations are
```lean
fixedEndpointSquareDivisorSupport
squareDivisorSupport_eq_fixedEndpointSupport
squareDivisorMobiusSum_eq_fixedEndpointRange.
```

No estimate is used.

## Congruence normalization

Define
```lean
squareDivisorCongruence d m
```
to mean
[
mequiv0pmod{d^2}.
]

Pinned Mathlib supplies
```lean
Nat.modEq_zero_iff_dvd.
```

The source proves
```lean
squareDivisorCongruence_iff
squareDivisorMobiusSum_eq_fixedCongruenceRange.
```

Thus
[
d^2mid x+h
]
is represented exactly as
[
x+hequiv0pmod{d^2}.
]

Equivalently, mathematically,
[
xequiv-hpmod{d^2}.
]

## Modulus fibre

For one endpoint and one positive modulus parameter (d<b), the source defines
```lean
mertensEndpointCrossCongruenceFibre b d
```
as the signed two-endpoint correlation
[
sum_{1le n<b}
sum_{substack{0le a<n-(b-n)\
a+1+(b-n)equiv0;(mathrm{mod};d^2)}}
mu(a+1)mu(a+1+2(b-n)).
]

No absolute values appear.

## Finite Fubini reindex

The source first defines an unswapped congruence expansion and then a modulus-first energy.

The load-bearing exact identities are
```lean
mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded

mertensEndpointCrossCollisionCongruenceExpandedEnergy_eq_fibres

mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres.
```

Mathematically,
[
oxed{
E_{mathrm{sieve}}(b)
=
2sum_{1le d<b}
mu(d),
mathcal C(b,d)
}
]
where (mathcal C(b,d)) is the congruence-restricted two-endpoint fibre above.

The signed coefficient (mu(d)) is retained.

## RH-facing weighted equality

The source defines
```lean
weightedMertensEndpointCrossCollisionCongruenceFibreEnergy.
```

Using the source-constructed divisor-square identity from PR #549, it proves
```lean
weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres.
```

Hence the original weighted cross-collision branch is source-represented exactly as a reciprocal-endpoint-weighted sum of square-modulus congruence fibres.

## All-scale adapter surface

The new proposition is
```lean
SubpolynomialWeightedMertensEndpointCongruenceCrossCollision.
```

The source proves exact equivalence with the preceding squarefree-midpoint adapter:
```lean
subpolynomialWeightedMertensEndpointCongruenceCrossCollision_iff_squarefreeMidpoint.
```

No inhabitant is constructed.

## Mathematical meaning

The lower-order collision problem has now been reduced from
[
mu(x)mu(x+h)^2mu(x+2h)
]
to a finite signed superposition of two-point correlations
[
mu(x)mu(x+2h)
]
restricted by
[
x+hequiv0pmod{d^2},
]
weighted by (mu(d)).

This is the precise interface needed to compare with a two-point Elliott/Chowla theorem in arithmetic progressions.

A fixed-shift theorem on unrestricted intervals is not sufficient by itself. A future adapter must control:
- growing (h);
- square moduli (d^2);
- one residue class depending on (h);
- changing prefix support;
- the outer reciprocal endpoint weight;
- the signed Möbius coefficient (mu(d)).

## Evidence

Established:
```text
SOURCE_DRAFT
CONGRUENCE_FIBRE_REINDEX_SOURCE_DRAFT
```

Not established:
```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
CONGRUENCE_RESTRICTED_TWO_POINT_ESTIMATE_PROVED
```

No Lean/Lake execution, proof-term acceptance, kernel audit, analytic estimate, merge, or RH claim occurred.
