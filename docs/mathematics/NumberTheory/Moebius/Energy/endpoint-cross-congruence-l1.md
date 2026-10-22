# Weighted L1 budget for square-modulus Möbius congruence fibres

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CONGRUENCE_L1_SUPPLIER_OPEN`

Owner: #559. Direct parent: #553 / PR #555.

The exact congruence-fibre representation from the parent is

[
E_{mathrm{cross}}(b)
=
2sum_{1le d<b}mu(d),mathcal C(b,d),
]

where (mathcal C(b,d)) is the signed two-endpoint Möbius correlation on the exact square-modulus class

[
x+hequiv0pmod{d^2}.
]

This increment introduces the first deliberate absolute-value loss on that branch, but only after each exact congruence fibre has been formed.

## Exact source binding

```text
parent revision:
  dbc3b7a29d2549eb027a3acc86f75efe38639271

candidate branch:
  research/rh-cross-congruence-l1-559-20261021

source commit:
  c31f8ec044c1fe6e3923883b3051501fe0fa06e1

source tree:
  514d2d453b687116e7382808f5cd6dc4cd32b1f6

source:
  GRWTSK/NumberTheory/Moebius/
    EndpointCrossCollisionCongruenceL1.lean

source blob:
  c3b1fd55819ba95b5bdc65469fb4d3b07ff8525c
```

## Möbius coefficient bound

The source proves
```lean
abs_moebiusReal_le_one
```
from Mathlib's exact
```lean
ArithmeticFunction.abs_moebius_le_one.
```

Thus
[
|mu(d)|le1
]
for the repository's real-valued Möbius wrapper.

## Endpoint L1 mass

Define
```lean
mertensEndpointCrossCongruenceL1Mass b
```
by
[
L_1(b)
=
sum_{1le d<b}
|mathcal C(b,d)|.
]

No absolute value is moved inside (mathcal C(b,d)).

Therefore all cancellation across:
- the base index (x);
- the growing shift (h);
- the prefix parameter (n);

within one fixed square modulus (d^2) remains available.

Only cancellation between different modulus fibres is discarded.

## Endpoint comparison

The source theorem
```lean
mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1
```
proves
[
2sum_{1le d<b}mu(d)mathcal C(b,d)
le
2sum_{1le d<b}|mathcal C(b,d)|.
]

The proof uses:
1. (Sle|S|);
2. the finite triangle inequality;
3. (|mu(d)|le1).

No arithmetic cancellation theorem is used.

## Reciprocal endpoint positivity

The exact outer weight
[
rac1b-rac1{b+1}
]
is proved nonnegative for positive (b) by
```lean
reciprocalEndpointDrop_nonneg.
```

This permits the endpoint comparison to lift without changing inequality direction.

## RH-facing weighted majorant

Define
```lean
weightedMertensEndpointCrossCongruenceL1Majorant j
```
by
[
8
sum_{2^jle b<2^{j+1}}
left(rac1b-rac1{b+1}ight)
L_1(b).
]

The factor (8) is exact:
- (4) is inherited from the endpoint Abel energy;
- (2) pays the two oriented cross-collision strata.

The source proves
```lean
weightedMertensEndpointCrossCollisionEnergy_le_congruenceL1Majorant.
```

Thus the signed lower-order collision contribution is dominated by this modulus-fibre (L^1) budget.

## All-scale AP supplier

The new proposition is
```lean
SubpolynomialWeightedMertensEndpointCrossCongruenceL1.
```

It requires, for every (delta>0), a constant (C_deltage0) with
[
operatorname{CongruenceL1Majorant}(j)
le
C_delta(2^j)^delta
]
for every dyadic scale (j).

No inhabitant is constructed.

The source proves
```lean
subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1
```
and then
```lean
subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1.
```

So this L1 AP budget is a sufficient supplier for the exact lower-order collision interface.

## Scope relative to Chowla/Elliott

This supplier is stronger than the signed cross-collision target because it removes cancellation between modulus fibres.

It is much weaker than termwise absolute control:
[
sum_d |mathcal C(b,d)|
]
is not
[
sum_{d,h,x}|mu(x)mu(x+2h)|.
]

A useful external theorem would need to control the exact square-modulus fibre after the complete internal signed sum is formed.

A fixed-shift ordinary Chowla theorem does not provide this:
- (h) grows;
- (d^2) grows;
- the residue class depends on (h);
- endpoint/prefix support varies;
- the theorem must survive the (L^1) sum across moduli.

## Evidence

Established:
```text
SOURCE_DRAFT
```

Not established:
```text
CONGRUENCE_L1_SUPPLIER_PROVED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, proof-term acceptance, kernel audit, analytic estimate, merge, or RH claim occurred.

## Exact next obstruction

The live lower-order supplier is now:

[
8
sum_{2^jle b<2^{j+1}}
left(rac1b-rac1{b+1}ight)
sum_{1le d<b}
left|
sum_{substack{h,x\
	ext{exact support}\
x+hequiv0pmod{d^2}}}
mu(x)mu(x+2h)
ight|
ll_delta (2^j)^delta.
]

The next useful step is to compare this exact supplier against current fixed-form binary Chowla/corrected Elliott statements and against any arithmetic-progression variants, keeping constants, growing-shift scope, and modulus uniformity explicit.
