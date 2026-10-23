# Zero-winding fibers as one-dimensional shift correlations

Issue: #798  
Direct stacked parent: draft PR #792 at `6ea95204b44d8a831b7ecb47e0f1060d828c55a3`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
ZERO_WINDING_SHIFT_FIBER_SOURCE_DRAFT
ZERO_WINDING_SHIFT_CORRELATION_ENERGY_OPEN
```

## Scope

PR #792 represented the zero-winding quartic as

```text
4 * sum_c A(c)^2
```

with

```text
A(c)=sum_{h,m:2m+h=c}
  mu(2m+r)mu(2m+r+2h).
```

This increment solves the equation `2m+h=c` exactly and removes the inner half-index sum.

## Solved half-index

The source defines

```lean
zeroWindingHalfIndexFromCoordinate
```

with

```text
m=(c-h)/2.
```

It scripts

```lean
zeroWindingHalfIndexFromCoordinate_eq
zeroWindingCoordinate_conditions
zeroWindingCoordinate_reconstruct.
```

Thus `2m+h=c` is equivalent, on natural variables, to

```text
h <= c,
(c-h) even,
m=(c-h)/2.
```

## Exact admissible shifts

The source defines

```lean
zeroWindingAdmissibleShiftSet
```

requiring all three exact conditions:

- `h ∈ H`;
- `h ≤ c`;
- `c-h` even;
- `(c-h)/2` lies in the original half-index affine support.

No support enlargement occurs.

## One-dimensional fiber correlation

The source defines

```lean
parityZeroWindingShiftFiberCorrelation
```

with exact mathematical form

```text
B_r,H(c)
=
sum_(h admissible at c)
  mu(c-h+r)
  mu(c+h+r).
```

The displayed form follows from substituting `m=(c-h)/2` into

```text
mu(2m+r) mu(2m+r+2h).
```

The source keeps the coefficient through the existing half-index wrapper rather than introducing a second arithmetic definition.

The inner-sum collapse is

```lean
sum_halfIndex_eq_coordinate_single
```

and the exact fiber identity is

```lean
parityHalfIndexZeroWindingFiber_eq_shiftCorrelation.
```

## Fiber energy

The source scripts

```lean
parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation
```

so

```text
ZeroWindingFiberEnergy
=
4 * sum_c B_r,H(c)^2.
```

The remaining zero-winding obstruction is therefore a one-dimensional family of signed two-point Möbius correlations, squared and summed over the common coordinate.

## Future source boundary

The source types

```lean
RegularZeroWindingShiftFiberSourceData
RegularZeroWindingShiftFiberSource.
```

Any future theorem must match the exact admissible-shift support, solved half-index, signed binary Möbius coefficient, both endpoint parities and half-shift parities, and the natural-scale aggregation.

No Chowla, Elliott, Gowers, dispersion, or large-sieve theorem is promoted by name.

## Remaining obligations

```text
ZERO_WINDING_SHIFT_CORRELATION_ENERGY
NONZERO_WINDING_WRAP_CANCELLATION
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, shift-correlation estimate, wrap estimate, merge, GRH theorem, or RH theorem is represented by this note.
