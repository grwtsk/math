# Uniform dyadic square-modulus two-point AP supplier

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / UNIFORM_SQUARE_MODULUS_AP_SUPPLIER_OPEN`

Owner: #567. Direct parent: #559 / PR #562.

This increment gives the live congruence-L1 obstruction one explicit analytic theorem shape. The supplier is deliberately stated at the exact fibre level so later literature comparisons can be made by quantifier and normalization rather than by conjecture name.

## Exact source binding

```text
parent revision:
  707e7194e9c503c3a4ab0cd9aceac7c1d67b094b

candidate branch:
  research/rh-uniform-square-modulus-ap-567-20261021

source commit:
  b35ddd498fec5a73301d0b647560e4920d443d31

source tree:
  9608cf81bf3145c08178e296109b5d9a32896540

source:
  GRWTSK/NumberTheory/Moebius/
    UniformSquareModulusTwoPointAP.lean

source blob:
  29e2a20e8aa802d622d370532d823ea30b469dd0
```

## Exact supplier

The source defines
```lean
UniformDyadicSquareModulusMertensTwoPointAP
```
with quantifiers
[
orall delta>0,;exists C_deltage0,;orall j,b,d,
]
such that whenever
[
2^jle b<2^{j+1},
qquad
1le d<b,
]
the complete exact square-modulus fibre obeys
[
|mathcal C(b,d)|
le
C_delta(2^j)^delta.
]

Here (mathcal C(b,d)) is the parent fibre
[
sum_{substack{1le n<b\
a<n-(b-n)\
a+1+(b-n)equiv0pmod{d^2}}}
mu(a+1)mu(a+1+2(b-n)).
]

No absolute value is taken inside this sum.

Thus the supplier asks for cancellation inside each exact congruence fibre, uniformly across:
- the endpoint (b);
- the growing shift (h=b-n);
- the square modulus (d^2);
- the shift-dependent residue class;
- every admissible prefix/base support.

## Endpoint L1 counting

The generic theorem
```lean
mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul
```
proves that a uniform fibre bound (B) implies
[
L_1(b)
=
sum_{1le d<b}|mathcal C(b,d)|
le
bB.
]

This is only finite counting.

## Reciprocal geometry

The source proves
```lean
reciprocalEndpointDrop_mul_endpoint_eq
```
with
[
bleft(rac1b-rac1{b+1}ight)
=
rac1{b+1}.
]

For (2^jle b<2^{j+1}), it deduces
[
bleft(rac1b-rac1{b+1}ight)
le
rac1{2^j}.
]

The dyadic endpoint set has exactly (2^j) points:
```lean
card_dyadicEndpointIco.
```

Consequently the factor from the number of moduli/endpoints is canceled by the reciprocal endpoint geometry.

## Weighted finite comparison

If every exact fibre in scale (j) satisfies
[
|mathcal C(b,d)|le B,
]
the source theorem
```lean
weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
```
proves
[
operatorname{CongruenceL1Majorant}(j)
le
8B.
]

The factor (8) is inherited exactly from PR #562:
- (4) from the signed-Abel endpoint normalization;
- (2) from the two oriented cross-collision strata.

No scale-dependent loss is introduced by the modulus count.

## All-scale implication

Applying the supplier with
[
B=C_delta(2^j)^delta
]
gives
[
operatorname{CongruenceL1Majorant}(j)
le
8C_delta(2^j)^delta.
]

The source theorem is
```lean
subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP.
```

It composes further to:
```lean
subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_uniformDyadicSquareModulusAP

subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP.
```

No value of the uniform AP supplier is constructed.

## Relation to neighboring conjectures

This interface is intentionally stronger than ordinary fixed-data binary Chowla.

A fixed affine-form result typically has constants allowed to depend on the chosen forms or shift. That does not provide one (C_delta) uniform across all growing (h), (b), and (d).

An unrestricted ordinary average also does not automatically give a bound on one residue class modulo a growing square modulus.

An arithmetic-progression theorem with a modulus range may still be insufficient if:
- its modulus range is too small;
- the shift is fixed rather than growing;
- it is average over residue classes rather than the required class;
- it is almost-all in (d), (h), or (b);
- it has a power/logarithmic normalization too weak to imply (X^delta) uniformly.

The correct future comparison is therefore theorem-by-theorem against this exact proposition.

## Evidence

Established:
```text
SOURCE_DRAFT
FINITE_COMPARISON_SOURCE_SCRIPT
```

Not established:
```text
UNIFORM_SQUARE_MODULUS_AP_SUPPLIER_PROVED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, proof-term acceptance, kernel audit, external theorem import, analytic estimate, merge, or RH claim occurred.
