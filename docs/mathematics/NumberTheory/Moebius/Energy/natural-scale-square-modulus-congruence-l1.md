# Natural-scale endpoint L1 supplier for square-modulus congruence fibres

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NATURAL_SCALE_ENDPOINT_L1_SUPPLIER_OPEN`

Owner: #586. Direct parent: #576 / PR #578. Stronger predecessor: #567 / PR #568. Weighted consumer: #559 / PR #562.

This increment weakens the per-fibre target to an endpoint aggregate at the natural scale.

## Exact source binding

```text
parent revision:
  677aec4860c92c86446ad61623cfd43d56c3ccbe

candidate branch:
  research/rh-natural-scale-congruence-l1-586-20261021

source commit:
  47d9e94d2d021161cfa99576667605ebdcd1dfe1

source tree:
  4881dff0eed4f992564b5c3d9961f0387fa10cf5

source:
  GRWTSK/NumberTheory/Moebius/
    NaturalScaleSquareModulusCongruenceL1.lean

source blob:
  d2111eae7c76579ae719a36f8b8e8da7a90461a7
```

## Exact square-modulus support

For the exact congruence fibre (mathcal C(b,d)), every contributing midpoint (m) satisfies
[
0<m<b.
]

If (d^2mid m), positivity gives
[
d^2le m<b.
]

Therefore
[
d^2ge b
Longrightarrow
mathcal C(b,d)=0.
]

The source theorem is
```lean
mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square.
```

So only square moduli satisfying
[
d^2<b
]
can contribute. The source records the exact filtered support and proves equality of the endpoint L1 mass with that restricted sum.

This is a theorem, not a heuristic.

## Reciprocal endpoint telescope

For (Xle Y), the source scripts the exact finite identity
[
sum_{Xle b<Y}
left(rac1b-rac1{b+1}ight)
=
rac1X-rac1Y.
]

The declaration is
```lean
sum_reciprocalEndpointDrop_Ico.
```

For the dyadic block (X=2^j), (Y=2^{j+1}), this implies
[
sum_{Xle b<2X}
left(rac1b-rac1{b+1}ight)
le
rac1X.
]

## Weaker analytic target

The new proposition is
```lean
DyadicNaturalScaleSquareModulusCongruenceL1.
```

It requires:
[
oralldelta>0, exists C_deltage0, orall j, orall bin[X,2X),
]
[
L_1(b)
le
C_delta,X,X^delta,
qquad X=2^j.
]

Thus the natural endpoint factor (X) is paid explicitly. Only the excess beyond this scale must be subpolynomial.

This is substantially weaker than PR #568, which asks every individual fibre to satisfy
[
|mathcal C(b,d)|
le
C_delta X^delta.
]

## Weighted implication

The RH-facing L1 majorant is
[
8sum_{Xle b<2X}
left(rac1b-rac1{b+1}ight)L_1(b).
]

Under the new supplier,
[
L_1(b)le C_delta X X^delta.
]

Using the reciprocal telescope,
[
8sum_b w_b L_1(b)
le
8 C_delta X X^delta
sum_b w_b
le
8 C_delta X^delta.
]

The source theorem is
```lean
subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale.
```

It composes further to the signed congruence cross-collision and squarefree-midpoint interfaces.

## Relation to the stronger predecessor

The source proves
```lean
naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre.
```

Therefore
[
	exttt{UniformDyadicSquareModulusMertensTwoPointAP}
Longrightarrow
	exttt{DyadicNaturalScaleSquareModulusCongruenceL1}.
]

This records PR #568 as a sufficient but stronger supplier. It does not claim PR #568 is false.

## Why this scale is better aligned with the arithmetic

A random-sign model suggests one fibre may naturally have size around
[
b/d,
]
and the effective support has (d^2<b). Summing such a model over (d) suggests endpoint mass near
[
blog b.
]

Since (log b) is subpolynomial, an endpoint budget of the shape
[
b^{1+delta}
]
is compatible with that heuristic.

This heuristic motivates the interface only. It does not prove the supplier.

## L-function relevance

This weaker target is a better interface for combining:
- conductor-uniform one-point/twisted Möbius information from L-functions;
- fixed-form two-point Chowla/Elliott input;
- any future quantitative dependence on growing affine coefficients.

It no longer requires every square-modulus fibre to be individually subpolynomial.

No L-function theorem is imported or claimed to supply the new proposition in this increment.

## Evidence

Established:
```text
SOURCE_DRAFT
EXACT_SQUARE_MODULUS_SUPPORT_CUTOFF_SCRIPTED
EXACT_RECIPROCAL_TELESCOPE_SCRIPTED
STRONGER_TO_WEAKER_SUPPLIER_REDUCTION_SCRIPTED
```

Not established:
```text
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
