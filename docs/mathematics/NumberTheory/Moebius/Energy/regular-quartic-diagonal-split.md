# Regular quartic collision diagonal/off-diagonal split

Issue: #775  
Direct stacked parent: draft PR #773 at `d7eca838836b84e3163d57305144825f36056b69`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_QUARTIC_DIAGONAL_SPLIT_SOURCE_DRAFT
REGULAR_SIGNED_QUARTIC_OFF_DIAGONAL_OPEN
```

## Exact collision coordinate

The existing affine residue coordinate is source-rewritten as

```text
2 * floor(u/2) + h  mod d^2.
```

The source defines

```lean
parityAffineShiftCollisionCoordinateNat
```

and scripts

```lean
parityAffineShiftResidueCoordinate_eq_natCast
parityAffineShiftResidueCoordinate_eq_iff_modEq.
```

Thus

```text
coord_d(u,h) = coord_d(v,g)
```

is exactly

```text
2*(u/2)+h ≡ 2*(v/2)+g [MOD d*d].
```

No Fourier language remains in this condition.

## Exact quartic coefficient

The source names the signed coefficient

```lean
regularQuarticMobiusCoefficient
```

with content

```text
mu(u) mu(u+2h) mu(v) mu(v+2g).
```

On the literal diagonal it becomes the square

```lean
regularQuarticMobiusCoefficient_diagonal
```

with

```text
(mu(u) mu(u+2h))^2.
```

## Diagonal/off-diagonal split

The source defines

```lean
parityHalfShiftQuarticDiagonal
parityHalfShiftSignedQuarticOffDiagonal.
```

The off-diagonal term retains both:

- the exact congruence modulo `d^2`;
- the signed quartic Möbius coefficient.

It excludes only the literal coincidence

```text
h=g and u=v.
```

The pointwise indicator identity is

```lean
quarticCollisionTerm_eq_diagonal_add_offDiagonal
```

and the complete exact split is

```lean
parityHalfShiftSignedQuarticCollision_eq_diagonal_add_offDiagonal.
```

Therefore

```text
QuarticCollision
=
LiteralDiagonal
+
SignedCongruentOffDiagonal.
```

No unsigned collision count is substituted.

## Remaining arithmetic frontier

The remaining cancellation-sensitive piece is now the off-diagonal family

```text
2*(u/2)+h ≡ 2*(v/2)+g mod d^2,
(h,u) != (g,v),
```

weighted by

```text
mu(u)mu(u+2h)mu(v)mu(v+2g).
```

The source types the conservative boundary

```lean
RegularSignedQuarticOffDiagonalSourceData
RegularSignedQuarticOffDiagonalSource.
```

A future theorem must match the literal off-diagonal congruence family and preserve the Möbius signs.

## Remaining obligations

```text
REGULAR_SIGNED_QUARTIC_OFF_DIAGONAL_ESTIMATE
DIAGONAL_NATURAL_SCALE_BOOKKEEPING
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, off-diagonal estimate, large-sieve theorem, merge, GRH theorem, or RH theorem is represented by this note.
