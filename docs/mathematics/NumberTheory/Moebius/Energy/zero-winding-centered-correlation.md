# Zero-winding centered symmetric Möbius correlation

Issue: #805  
Direct stacked parent: draft PR #802 at `afa485d75dfc2b86d0f3337bef33fcb3011d9e81`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
ZERO_WINDING_CENTERED_CORRELATION_SOURCE_DRAFT
ZERO_WINDING_CENTERED_SECOND_MOMENT_OPEN
```

## Scope

PR #802 rewrote the zero-winding fiber directly as

```text
sum_h mu(c-h+r) mu(c+h+r)
```

over the exact admissible shift support.

This increment removes the final hidden half-index support condition and replaces it by visible centered endpoint inequalities.

No estimate is added.

## Exact centered support

The source defines

```lean
zeroWindingCenteredShiftSet.
```

A shift `h` belongs exactly when

```text
h ∈ H,
h ≤ c,
(c-h) % 2 = 0,
1 ≤ c-h+r,
c+h+r ≤ b.
```

The source scripts

```lean
solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds
zeroWindingAdmissibleShiftSet_eq_centered.
```

Thus no half-index support wrapper remains.

## Centered correlation

The direct correlation is

```lean
parityZeroWindingCenteredMobiusCorrelation
```

with exact arithmetic form

```text
C_r,H(c)
=
sum_(h in centered support)
  mu(c-h+r) mu(c+h+r).
```

The exact bridge is

```lean
parityZeroWindingSymmetricMobiusCorrelation_eq_centered.
```

## Centered second moment

The source defines

```lean
parityEvenZeroWindingCenteredSecondMoment
parityOddZeroWindingCenteredSecondMoment
```

and scripts exact equality with the previous symmetric second moments:

```lean
evenZeroWindingSymmetricSecondMoment_eq_centered
oddZeroWindingSymmetricSecondMoment_eq_centered.
```

The four-family surface is

```lean
twoNonunitRegularZeroWindingCenteredSecondMomentMajorant
```

with exact equality

```lean
zeroWindingSymmetricMajorant_eq_centered.
```

## Literature-facing obstruction

The zero-winding branch is now stated entirely in the variables visible to a two-point Möbius-correlation theorem:

```text
center c,
symmetric shift h,
left point c-h+r,
right point c+h+r.
```

All endpoint, parity, and support restrictions are explicit.

The conservative theorem boundary is

```lean
RegularZeroWindingCenteredCorrelationSourceData
RegularZeroWindingCenteredCorrelationSource.
```

No Chowla, Elliott, Gowers, dispersion, bilinear, or large-sieve theorem is asserted to satisfy this source.

## Remaining obligations

```text
ZERO_WINDING_CENTERED_SECOND_MOMENT
NONZERO_WINDING_WRAP_CANCELLATION
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, centered-correlation estimate, wrap estimate, merge, GRH theorem, or RH theorem is represented by this note.
