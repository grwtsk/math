# Zero-winding quartic collisions as half-index additive energy

Issue: #787  
Direct stacked parent: draft PR #784 at `ff7dc282ea713a9ce5b4b76e81c5c6cb789abacb`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
ZERO_WINDING_HALF_INDEX_ADDITIVE_ENERGY_SOURCE_DRAFT
ZERO_WINDING_ADDITIVE_ENERGY_ESTIMATE_OPEN
```

## Scope

The winding split in PR #784 separates exact-coordinate collisions from genuine modular wraps.

This increment reindexes only the zero-winding class into the half-index coordinates already used by the growing-shift affine normalization.

No estimate is added.

## Half-index coordinate

On endpoint parity `r<2`, write

```text
u = 2m+r,
v = 2n+r.
```

The source defines

```lean
halfIndexZeroWindingCoordinate
```

with content

```text
2m+h.
```

It scripts

```lean
parityAffineShiftCollisionCoordinateNat_reconstructed
```

so

```text
a(2m+r,h)=2m+h.
```

## Exact support reindex

The source reuses

```lean
parityHalfIndexAffineBaseSet
sum_parityAffineShiftBaseSet_eq_halfIndex
```

from the earlier affine normalization.

It adds the generic double-sum reindex

```lean
sum_two_parityAffineShiftBaseSet_eq_halfIndex.
```

No support enlargement or endpoint relaxation occurs.

## Zero-winding additive energy

The source defines the half-index quartic coefficient

```lean
halfIndexQuarticMobiusCoefficient
```

and the exact signed zero-winding surface

```lean
parityHalfIndexSignedQuarticZeroWinding.
```

The collision relation is now literally

```text
2m+h = 2n+g.
```

The load-bearing exact identity is

```lean
parityHalfShiftSignedQuarticZeroWinding_eq_halfIndex.
```

Thus the zero-winding branch is an additive-energy problem on the affine variables `(m,h)`, with the original Möbius quartic signs retained.

## Arithmetic interpretation

The equality

```text
2m+h = 2n+g
```

may also be read as

```text
2(m-n)=g-h.
```

This exposes a rigid relation between base displacement and shift displacement.

The source does not yet split by displacement size, shift equality, or any further additive-combinatorial class.

## Future source boundary

The source types

```lean
RegularZeroWindingAdditiveEnergySourceData
RegularZeroWindingAdditiveEnergySource.
```

Any future theorem must match:

- the exact half-index supports;
- the coordinate `2m+h`;
- the exact equality relation;
- the signed quartic Möbius coefficient;
- retention of the literal diagonal and nontrivial same-coordinate pairs;
- both half-shift parities and endpoint parities;
- the natural-scale endpoint target.

No additive-energy, Chowla, Gowers, or dispersion theorem is promoted by name.

## Remaining obligations

```text
ZERO_WINDING_ADDITIVE_ENERGY_ESTIMATE
NONZERO_WINDING_WRAP_CANCELLATION
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, additive-energy estimate, wrap estimate, large-sieve theorem, merge, GRH theorem, or RH theorem is represented by this note.
