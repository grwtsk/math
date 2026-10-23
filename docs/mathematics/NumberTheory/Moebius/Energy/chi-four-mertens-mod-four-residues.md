# The chi-four Mertens prefix as a mod-four residue discrepancy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CHI_FOUR_RESIDUE_DECOMPOSITION_SOURCE_DRAFT / MOD_FOUR_AP_MERTENS_ENERGY_OPEN`

Owner: #698. Direct parent: #691 / draft PR #697.

## Exact source binding

```text
parent revision:
  4e0226093aa9781c374d3577f5ee1a86e0c704e9

parent tree:
  bab2d52d704d40756d0cb0386ab781377569f022

candidate branch:
  research/rh-chi4-mod-four-residues-698-20261022

Lean source commit:
  71939e0e72d3f3f1426957da7828d99eec4e01b2

Lean source tree:
  6730dae9e2d6c53e4cd5005b3fc4c43140e288e1

Lean source:
  GRWTSK/NumberTheory/Moebius/
    ChiFourMertensResidueDecomposition.lean

Lean source blob:
  bf15e90e7a6b8176caa5c2008892e971838f163c
```

## Exact residue prefixes

For `a : Nat`, the source defines

```lean
modFourMertensPrefix b a
```

by

\[
M_a(b)=
\sum_{\substack{1\le n\le b\\n\equiv a\pmod4}}
\mu(n).
\]

The exact signed discrepancy is

```lean
modFourUnitMertensDiscrepancy b
```

with

\[
D_4(b)=M_1(b)-M_3(b).
\]

The source also defines a pointwise signed selector

```lean
modFourUnitSignedMobiusTerm n
```

and scripts

```lean
chiFourMobiusTerm_eq_modFourSigned.
```

This theorem uses Mathlib's actual `ZMod.χ₄` values:

```text
residue 0 -> 0
residue 1 -> 1
residue 2 -> 0
residue 3 -> -1.
```

Even residues are therefore removed by the character definition itself, not by an unsupported restriction to odd integers.

## Load-bearing finite identity

The source scripts

```lean
chiFourTwistedMertensPrefix_eq_modFourDiscrepancy.
```

Mathematically,

\[
\boxed{
\sum_{1\le n\le b}\mu(n)\chi_4(n)
=
M_1(b)-M_3(b)
}.
\]

This is an exact finite identity. No analytic estimate is used.

## Companion odd-prefix identity

The source scripts

```lean
parityMertensPrefix_odd_eq_modFour_one_add_three.
```

Thus

\[
\boxed{
M_{\mathrm{odd}}(b)=M_1(b)+M_3(b)
}.
\]

The source keeps the integral linear reconstruction visible:

```lean
two_mul_modFourMertensPrefix_one

two_mul_modFourMertensPrefix_three.
```

Equivalently,

\[
2M_1=M_{\mathrm{odd}}+D_4,
\qquad
2M_3=M_{\mathrm{odd}}-D_4.
\]

No division by two is hidden in a change of coefficient ring.

## Exact analytic premise

The source defines

```lean
DyadicModFourMertensDiscrepancySquareRootEnergy.
```

This is the direct real formulation

\[
D_4(b)^2
\le
C_\delta X X^\delta,
\qquad
X=2^j\le b<2X.
\]

The source scripts the exact equivalence

```lean
dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy.
```

Therefore the previously named `chi_4` energy is neither stronger nor weaker than the residue discrepancy energy. It is the same premise under an exact finite identity.

## Stronger arithmetic-progression supplier

The source separately defines

```lean
DyadicModFourUnitResidueMertensSquareRootEnergy.
```

This asks for one dyadic constant controlling both

\[
M_1(b)^2
\quad\text{and}\quad
M_3(b)^2.
\]

It is stronger than the discrepancy estimate. The source proves only the forward implication

```lean
modFourDiscrepancyEnergy_of_unitResidues.
```

The explicit loss is

\[
(M_1-M_3)^2
\le
2M_1^2+2M_3^2,
\]

so a common constant `C_delta` becomes `4*C_delta`.

The reverse implication is not asserted. A small discrepancy can coexist with large individual residue prefixes.

The corresponding `chi_4` transport is

```lean
chiFourEnergy_of_modFourUnitResidues.
```

## Downstream composition

The source scripts

```lean
naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular.
```

Hence the current conditional path can be written as

```text
pointwise ordinary-Mertens square-root envelope
+ mod-four unit-residue Mertens square-root energy
+ two-unit half-index supplier
+ canonical regular-orbit supplier
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

No premise is inhabited.

## AP/GRH boundary

The source types

```lean
ToModFourUnitResidueMertensSquareRootEnergyAdapter

ModFourAPMertensSourceData

ModFourAPMertensSource

ModFourAPMertensAdapter.
```

A future theorem must match:

```text
both residue classes 1 and 3 modulo four
positive endpoint convention 1<=n<=b
square-root-plus-epsilon scale
one constant on each complete dyadic family
finite initial range.
```

No GRH theorem, Dirichlet explicit-formula theorem, or zero-free-region theorem is assigned an adapter value.

In particular, a fixed zero-free half-plane such as `Re(s)>7/8` does not imply the square-root scale by naming alone.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
EXACT_CHI_FOUR_RESIDUE_DISCREPANCY_SCRIPTED
EXACT_ODD_PREFIX_RESIDUE_SUM_SCRIPTED
INTEGRAL_LINEAR_RECONSTRUCTION_SCRIPTED
EXACT_DISCREPANCY_ENERGY_EQUIVALENCE_SCRIPTED
TWO_RESIDUE_TO_DISCREPANCY_TRANSPORT_SCRIPTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
POINTWISE_ORDINARY_MERTENS_ENVELOPE
MOD_FOUR_UNIT_RESIDUE_MERTENS_SQUARE_ROOT_ENERGY
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_ORBIT_ESTIMATE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, or RH claim occurred.
