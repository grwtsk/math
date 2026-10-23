# Regular-frequency L1 to L2 reduction

Issue: #749  
Direct stacked parent: draft PR #747 at `2ca76f871b22a3022b82205ea99339ef4043fdc5`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_FREQUENCY_L1_TO_L2_SOURCE_DRAFT
REGULAR_FOURIER_L2_ENERGY_OPEN
```

## Scope

The regular two-nonunit branch from PR #747 is an L1 sum over canonical
regular frequencies of four refined signed-residue Fourier transforms.

This increment performs only finite Cauchy--Schwarz bookkeeping. It proves no
Fourier L2 estimate, no Parseval identity, and no large-sieve theorem.

## Canonical representative count

The source proves

```lean
card_twoKernelRegularOrbitRepresentativeSet_le_square
```

with

```text
|R_d| <= d^2.
```

No asymptotic counting statement is needed; the canonical representative set
is simply a subset of the full frequency group `ZMod (d*d)`.

## Finite L1 to L2 inequality

The source imports Mathlib's finite square-sum inequality and scripts

```lean
sum_norm_le_parameter_mul_sqrt_sum_sq.
```

If `|S| <= D^2`, then

```text
sum_(x in S) ||f(x)||
  <= D * sqrt(sum_(x in S) ||f(x)||^2).
```

Applying this separately to the four families

```text
(r,q) in {0,1} x {even,odd}
```

gives

```lean
sum_regularShiftParityResidueFourierMajorant_le_l2.
```

Schematically,

```text
sum_(k in R_d) [
  |F_0e(k)| + |F_0o(k)| + |F_1e(k)| + |F_1o(k)|
]
<= d * (
  ||F_0e||_2 + ||F_0o||_2 + ||F_1e||_2 + ||F_1o||_2
).
```

## Exact normalization consequence

The previous regular endpoint surface carries the factor

```text
1/d^2.
```

Therefore the finite L1-to-L2 step leaves precisely

```text
1/d
```

multiplying the sum of the four frequency L2 norms.

The source defines

```lean
twoNonunitRegularShiftParityFrequencyL2Majorant

twoNonunitRegularShiftParityFrequencyL2EndpointMajorant
```

and scripts

```lean
regularShiftParityResidueEndpointMajorant_le_frequencyL2.
```

No Fourier-energy estimate is used in that comparison.

## New analytic interface

The remaining proposition is

```lean
DyadicNaturalScaleRegularShiftParityFrequencyL2Budget.
```

The source scripts

```lean
regularShiftParityResidueBudget_of_frequencyL2
```

and constructs

```lean
regularFrequencyL2ToShiftParityResidueAdapter.
```

Thus a natural-scale bound on the canonical frequency L2 endpoint surface is
sufficient for the exact regular signed-residue budget from PR #747.

The downstream composition is

```lean
naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFrequencyL2.
```

Hence

```text
pointwise ordinary Mertens
+ pointwise chi_4 Mertens
+ two-unit supplier
+ regular canonical-frequency L2 supplier
-> #588 natural-scale congruence-L1.
```

## Next frontier: exact Parseval/residue energy

The source types, but does not inhabit,

```lean
RegularShiftParityParsevalSourceData
RegularShiftParityParsevalSource
ToRegularShiftParityFrequencyL2BudgetAdapter
RegularShiftParityParsevalAdapter.
```

A future theorem must match the exact `ZMod.stdAddChar` normalization,
signed even/odd half-shift residue buckets, both endpoint parity classes,
canonical-frequency restriction, exceptional-orbit exclusion, reciprocal
square-modulus normalization, effective modulus support, and natural-scale
target.

No Parseval theorem is claimed until its exact normalization is proved against
this surface.

## Remaining obligations

Analytic:

```text
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_FOURIER_L2_ENERGY
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, Parseval theorem,
large-sieve estimate, merge, root admission, GRH theorem, or RH theorem is
represented by this note.
