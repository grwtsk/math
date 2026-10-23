# Regular projectors as shift-parity signed residue convolutions

Issue: #744  
Direct stacked parent: draft PR #742 at `90bbed74c33774882f970c5e589b887475a78045`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SHIFT_PARITY_SIGNED_RESIDUE_REFINEMENT_SOURCE_DRAFT
REGULAR_RESIDUE_L2_ESTIMATE_OPEN
```

## Scope

PR #742 reduced the regular two-nonunit branch to four normalized parity
projectors:

```text
endpoint parity r in {0,1}
×
half-shift parity q in {even,odd}.
```

This increment identifies those four projectors exactly as additive Fourier
transforms of signed residue convolutions refined by the parity of

```text
h = (v-u)/2.
```

No analytic estimate is added.

## Refinement of the signed strict-pair object

For same-parity strict endpoint pairs `u<v`, the existing affine reindex gives

```text
v = u + 2h,
h = (v-u)/2 > 0.
```

The source reuses the exact shift-residue correlation

```lean
parityAffineShiftResidueCorrelation
```

and defines

```lean
parityEvenHalfShiftSignedResidueBucket
parityOddHalfShiftSignedResidueBucket.
```

The positive shift support is partitioned exactly:

```lean
positiveEndpointShiftSet_eq_even_union_odd
positiveEndpointEvenShiftSet_disjoint_odd.
```

Therefore the original signed convolution bucket satisfies

```lean
paritySignedResidueConvolutionBucket_eq_even_add_odd.
```

Schematically,

```text
C_r(s) = C_(r,even)(s) + C_(r,odd)(s).
```

The signs from the Möbius products remain inside the residue buckets.  This
does not restore the positive variance-plus-diagonal representation obstructed
in #623 / PR #624.

## Exact Fourier/projector identification

The source defines

```lean
parityEvenHalfShiftSignedResidueFourier
parityOddHalfShiftSignedResidueFourier.
```

Using the existing exact theorem

```lean
sum_shiftResidueCorrelation_mul_char
```

and the half-index identity

```lean
parityGrowingShiftAffineChowlaTwist_eq_halfIndex,
```

it scripts

```lean
parityEvenHalfShiftSignedResidueFourier_eq_projector

parityOddHalfShiftSignedResidueFourier_eq_projector.
```

Thus, for `r<2`,

```text
Fourier(C_(r,even))(k) = EvenProjector_r(k),
Fourier(C_(r,odd ))(k) = OddProjector_r(k).
```

This is exact finite algebra.  No norm is applied before the Fourier transform.

## Regular-orbit surface

The source defines

```lean
twoNonunitRegularShiftParityResidueFourierMajorant
```

from the four norms

```text
||Fourier(C_(0,even))(k)||
+ ||Fourier(C_(0,odd))(k)||
+ ||Fourier(C_(1,even))(k)||
+ ||Fourier(C_(1,odd))(k)||.
```

It scripts exact pointwise equality with the canonical regular projector
majorant:

```lean
twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier.
```

The endpoint surface

```lean
twoNonunitRegularShiftParityResidueEndpointMajorant
```

retains unchanged:

- the effective square-modulus support;
- the `1/d^2` weight;
- canonical regular orbit representatives;
- exclusion of the exceptional `{0,H}` orbit;
- both endpoint parity classes.

The exact endpoint equality is

```lean
twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue.
```

## Analytic interface

The source defines the still-open proposition

```lean
DyadicNaturalScaleRegularShiftParityResidueBudget
```

and scripts

```lean
regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget.
```

It also constructs

```lean
regularShiftParityResidueToCanonicalProjectorAdapter.
```

No value of the residue budget is constructed.

The conditional RH-facing path is now

```lean
naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidue.
```

Hence

```text
pointwise ordinary Mertens
+ pointwise chi_4 Mertens
+ two-unit supplier
+ refined regular signed-residue supplier
-> #588 natural-scale congruence-L1.
```

## New next frontier: residue-space L2

The Fourier/projector layer is no longer the arithmetic ambiguity.  The next
candidate reduction is finite Fourier `L2` control of the refined signed
buckets, followed by the exact counting and Cauchy--Schwarz needed to recover
the regular `L1` endpoint surface.

The source types, but does not inhabit,

```lean
RegularShiftParityResidueL2SourceData
RegularShiftParityResidueL2Source
ToRegularShiftParityResidueBudgetAdapter
RegularShiftParityResidueL2Adapter.
```

A future Parseval, large-sieve, dispersion, or residue-energy theorem must
explicitly match:

- the signed refined buckets;
- half-shift parity;
- both endpoint parities;
- canonical regular frequencies;
- exceptional-orbit exclusion;
- Fourier normalization;
- square-modulus weight;
- effective modulus support;
- natural-scale normalization.

No named theorem is promoted merely because it is a Parseval, large-sieve,
BDH, Chowla, Elliott, or L-function result.

## Remaining obligations

Analytic:

```text
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_RESIDUE_L2_OR_EQUIVALENT_SIGNED_ESTIMATE
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, analytic cancellation
estimate, Parseval-scale estimate, merge, root admission, GRH theorem, or RH
theorem is represented by this note.
