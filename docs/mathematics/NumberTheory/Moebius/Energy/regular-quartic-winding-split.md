# Regular quartic zero-winding versus modular-wrap split

Issue: #782  
Direct stacked parent: draft PR #780 at `e8d4a7d700f26590eee4d39be7f432cf2f270f1c`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_QUARTIC_WINDING_SPLIT_SOURCE_DRAFT
ZERO_WINDING_AND_WRAP_CANCELLATION_OPEN
```

## Exact integer coordinate

The regular quartic collision already uses the natural affine coordinate

```text
a(u,h) = 2*floor(u/2)+h.
```

This increment refines the congruence

```text
a(u,h) ≡ a(v,g) mod d^2
```

without splitting the positive literal diagonal away from the signed cancellation.

## Zero winding

The source defines

```lean
parityHalfShiftSignedQuarticZeroWinding
```

for collisions satisfying the exact integer equality

```text
a(u,h)=a(v,g).
```

This class contains:

- the literal diagonal `h=g, u=v`;
- nontrivial distinct affine pairs with the same integer coordinate.

Therefore cancellation between the literal diagonal and nontrivial same-coordinate terms remains available.

## Genuine modular wrap

The source defines

```lean
parityHalfShiftSignedQuarticWrap
```

for

```text
a(u,h) ≡ a(v,g) mod d^2
a(u,h) != a(v,g).
```

It scripts

```lean
wrapCollision_exists_nonzero_winding
```

so every wrap collision has a nonzero integer `z` satisfying

```text
a(v,g)-a(u,h) = z*d^2.
```

Thus the wrap family is exactly the nonzero-winding component of the square-modulus congruence.

## Exact decomposition

The pointwise identity is

```lean
quarticCollisionTerm_eq_zeroWinding_add_wrap
```

and the complete collision split is

```lean
parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap.
```

Hence

```text
SignedQuarticCollision
=
ZeroWindingSignedCollision
+
NonzeroWindingSignedWrapCollision.
```

The Möbius quartic coefficient is unchanged in both classes.

## Why this split is preferable

The previous literal diagonal/off-diagonal decomposition revealed that the positive diagonal cannot safely be estimated separately without risking the known positive-majorant obstruction.

The zero-winding class repairs that problem structurally: the diagonal remains inside a larger signed family where exact-coordinate cancellation is still possible.

Only genuine modular wrap-around is separated.

## Future source boundaries

The exact-coordinate source is typed by

```lean
RegularQuarticZeroWindingSourceData
RegularQuarticZeroWindingSource.
```

The wrap source is typed by

```lean
RegularQuarticWrapSourceData
RegularQuarticWrapSource.
```

No values are constructed.

## Remaining obligations

```text
ZERO_WINDING_SIGNED_QUARTIC_CANCELLATION
NONZERO_WINDING_WRAP_CANCELLATION

POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, winding-class estimate, large-sieve theorem, merge, GRH theorem, or RH theorem is represented by this note.
