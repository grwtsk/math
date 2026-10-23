# Mod-four residue energy and character-coordinate energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / MOD_FOUR_CHARACTER_ENERGY_EQUIVALENCE_SOURCE_DRAFT / PRINCIPAL_AND_CHI_FOUR_ENERGIES_OPEN`

Owner: #724. Direct parent: #698 / draft PR #701.

## Exact source binding

```text
parent revision:
  a8d7518867a20dc369847e978b203784d67bfa7d

parent tree:
  10cd8eba2e3e99bcd0931539111e62074bd2e9df

candidate branch:
  research/rh-mod-four-character-energy-724-20261022

Lean source commit:
  36c781f08e4fde8bfb503f867624a8553c551f6b

Lean source tree:
  8c541f232d28761f8b7159d4e096151decdab1bd

Lean source:
  GRWTSK/NumberTheory/Moebius/
    ModFourCharacterMertensEnergyEquivalence.lean

Lean source blob:
  70c4b1a8ffa29bc1ae510fb89364c1a0f900a4d7
```

## Character transform at modulus four

The parent source proves the exact finite identities

\[
O(b)=M_1(b)+M_3(b),
\qquad
D_4(b)=M_1(b)-M_3(b),
\]

where

\[
O(b)=\sum_{\substack{1\le n\le b\\n\text{ odd}}}\mu(n),
\]

\[
M_a(b)=\sum_{\substack{1\le n\le b\\n\equiv a\pmod4}}\mu(n),
\quad a\in\{1,3\},
\]

and

\[
D_4(b)=\sum_{1\le n\le b}\mu(n)\chi_4(n).
\]

It also proves the integral inverse transform

\[
2M_1=O+D_4,
\qquad
2M_3=O-D_4.
\]

No division by two is hidden in the finite identities.

## Principal odd energy

The new source defines

```lean
DyadicOddMertensSquareRootEnergy.
```

It asks, for every positive `delta`, for one nonnegative constant on each complete dyadic family such that

\[
O(b)^2\le C_\delta X X^\delta,
\qquad
X=2^j\le b<2X.
\]

The source scripts

```lean
oddMertensEnergy_of_parity
oddMertensEnergy_of_pointwise.
```

Thus the existing pointwise ordinary-Mertens premise supplies the principal odd character coordinate through the already-scripted parity localization.

No pointwise Mertens estimate is proved.

## Residues imply character coordinates

The parent proposition

```lean
DyadicModFourUnitResidueMertensSquareRootEnergy
```

uses one dyadic constant for both `M_1` and `M_3`.

The source scripts

```lean
oddMertensEnergy_of_modFourUnitResidues.
```

It uses

\[
(M_1+M_3)^2\le2M_1^2+2M_3^2
\]

and transports `C_delta` to `4*C_delta`.

The parent already supplied the analogous discrepancy theorem

```lean
chiFourEnergy_of_modFourUnitResidues.
```

Therefore the source scripts

```lean
modFourCharacterEnergy_of_unitResidues.
```

## Character coordinates imply residues

The new source keeps both coordinates explicit. It does not infer individual residue bounds from the discrepancy alone.

The theorem

```lean
modFourUnitResidueEnergy_of_odd_and_discrepancy
```

uses

\[
2M_1=O+D_4,
\qquad
2M_3=O-D_4,
\]

and

\[
(O\pm D_4)^2\le2O^2+2D_4^2.
\]

If the odd and discrepancy constants are `C_odd` and `C_disc`, the common residue constant is taken to be

\[
C_{\mathrm{odd}}+C_{\mathrm{disc}}.
\]

The source does not optimize this harmless constant.

## Load-bearing equivalence

The conjunction of the two character-coordinate statements is named

```lean
DyadicModFourCharacterMertensSquareRootEnergy.
```

The load-bearing theorem is

```lean
dyadicModFourUnitResidueEnergy_iff_characterEnergy.
```

Thus

\[
\boxed{
\text{common unit-residue energy}
\iff
\text{odd principal energy}+\chi_4\text{ energy}
}
\]

as propositions, with explicit constant transports in each direction.

This is exact finite linear algebra plus elementary quadratic inequalities. It is not an analytic estimate.

## Pointwise ordinary plus chi-four

The source scripts

```lean
modFourUnitResidueEnergy_of_pointwise_and_chiFour.
```

Hence

```text
pointwise ordinary-Mertens square-root envelope
+ chi_4-twisted Mertens square-root energy
-> common mod-four unit-residue energy.
```

The `chi_4` premise remains open.

## Downstream route

The source scripts

```lean
naturalScaleCongruenceL1_of_characterEnergies_twoUnit_regular.
```

The current conditional path is

```text
pointwise ordinary-Mertens envelope
+ chi_4-twisted Mertens energy
+ two-unit half-index supplier
+ canonical regular-orbit supplier
-> #588 natural-scale square-modulus congruence-L1 supplier.
```

No premise is inhabited.

## Dirichlet-Mertens boundary

The source types

```lean
ToModFourCharacterMertensSquareRootEnergyAdapter
ModFourCharacterMertensSourceData
ModFourCharacterMertensSource
ModFourCharacterMertensAdapter.
```

A future theorem pair must match:

```text
the principal odd coordinate
the exact Mathlib chi_4 coordinate
the positive endpoint convention 1<=n<=b
the square-root-plus-epsilon scale
one constant on each complete dyadic family
finite initial ranges.
```

No reciprocal-L-series theorem, explicit-formula theorem, GRH theorem, or zero-free-region theorem is assigned an adapter value.

A fixed zero-free half-plane such as `Re(s)>7/8` is not promoted to square-root cancellation.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
ODD_CHARACTER_ENERGY_DEFINED
PARITY_TO_ODD_ENERGY_SCRIPTED
RESIDUES_TO_ODD_ENERGY_SCRIPTED
RESIDUES_TO_CHARACTER_PAIR_SCRIPTED
CHARACTER_PAIR_TO_RESIDUES_SCRIPTED
LOGICAL_ENERGY_EQUIVALENCE_SCRIPTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
POINTWISE_ORDINARY_MERTENS_ENVELOPE
CHI_FOUR_TWISTED_MERTENS_SQUARE_ROOT_ENERGY
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_ORBIT_ESTIMATE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, or RH claim occurred.
