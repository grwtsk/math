# Zero-winding fibers as symmetric Möbius correlations

Issue: #801  
Direct stacked parent: draft PR #800 at `138fe6bfc490681fe6eac4145409f4ef9f4b1869`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
ZERO_WINDING_SYMMETRIC_CORRELATION_SOURCE_DRAFT
ZERO_WINDING_SYMMETRIC_SECOND_MOMENT_OPEN
```

## Scope

PR #800 reduced each zero-winding fiber to a one-dimensional shift sum with the solved half-index `m=(c-h)/2`.

This increment removes the remaining half-index wrapper and writes the summand directly in symmetric arithmetic coordinates.

No estimate is added.

## Symmetric arithmetic form

For an admissible shift `h`, the source scripts

```lean
solvedHalfIndex_lower_eq_symmetricLeft
solvedHalfIndex_upper_eq_symmetricRight
```

so

```text
2m+r       = c-h+r,
2m+r+2h    = c+h+r.
```

Therefore

```lean
halfIndexBinaryMobiusCoefficient_solved
```

gives

```text
mu(2m+r) mu(2m+r+2h)
=
mu(c-h+r) mu(c+h+r).
```

## Direct symmetric correlation

The source defines

```lean
parityZeroWindingSymmetricMobiusCorrelation
```

with exact form

```text
C_r,H(c)
=
sum_(h in exact admissible shift fiber)
  mu(c-h+r) mu(c+h+r).
```

It scripts

```lean
parityZeroWindingShiftFiberCorrelation_eq_symmetric.
```

Thus no half-index variable remains in the zero-winding arithmetic surface.

## Second moment

The source scripts

```lean
parityHalfIndexZeroWindingFiberEnergy_eq_symmetric
```

so

```text
ZeroWindingFiberEnergy
=
4 * sum_c C_r,H(c)^2.
```

The even and odd half-shift families are named by

```lean
parityEvenZeroWindingSymmetricSecondMoment
parityOddZeroWindingSymmetricSecondMoment
```

and the four-family surface is

```lean
twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant.
```

The exact identification with the prior fiber-energy surface is

```lean
zeroWindingFiberEnergyMajorant_eq_symmetricSecondMoment.
```

## Remaining analytic frontier

The zero-winding obstruction is now an exact second moment of symmetric two-point Möbius correlations

```text
mu(c-h+r) mu(c+h+r).
```

The admissible shift set still carries every endpoint, parity, and support constraint from the earlier exact reductions.

The source types

```lean
RegularZeroWindingSymmetricCorrelationSourceData
RegularZeroWindingSymmetricCorrelationSource.
```

Any future Chowla-type, Elliott-type, Gowers-uniformity, dispersion, or spectral theorem must match this exact second-moment surface before it can supply the RH-facing branch.

## Remaining obligations

```text
ZERO_WINDING_SYMMETRIC_SECOND_MOMENT
NONZERO_WINDING_WRAP_CANCELLATION
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, symmetric-correlation estimate, wrap estimate, merge, GRH theorem, or RH theorem is represented by this note.
