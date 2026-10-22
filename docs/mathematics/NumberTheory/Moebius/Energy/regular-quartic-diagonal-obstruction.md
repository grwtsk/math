# Obstruction to separate positive control of the regular quartic diagonal

Issue: #779  
Direct stacked parent: draft PR #777 at `30b59631bd1dfd3206bf2ea6b0eac10abfa37f8f`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_QUARTIC_DIAGONAL_OBSTRUCTION_SOURCE_DRAFT
COUPLED_SIGNED_QUARTIC_CANCELLATION_OPEN
```

## Exact diagonal simplification

The literal diagonal from PR #777 is

```text
4 * sum_(h in H)
    sum_(u in Base(r,h))
      (mu(u) mu(u+2h))^2.
```

The source names this

```lean
parityHalfShiftSquarefreePairDiagonal
```

and scripts

```lean
parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal.
```

Thus the diagonal is a positive squarefree-pair mass.

## Modulus independence

The source scripts

```lean
parityHalfShiftQuarticDiagonal_eq_of_moduli.
```

Therefore, once the endpoint and half-shift family are fixed, the literal diagonal is numerically independent of the square-modulus parameter `d`.

This matters because the endpoint architecture sums over all effective square moduli. A separate positive estimate of the diagonal would therefore replicate the same mass across that modulus family.

## Hostile boundary

The earlier positive residue-variance route already showed that separating cancellation into positive pieces can create a macroscopic large-modulus obstruction.

Accordingly this increment does not assert

```text
sqrt(diagonal + offDiagonal)
<= sqrt(diagonal) + sqrt(|offDiagonal|)
```

as a viable RH-scale route.

Instead the exact coupled signed target is retained as

```lean
RegularQuarticCancellationMustRemainCoupled
```

with the source identity

```lean
regularQuarticCancellationMustRemainCoupled_iff.
```

This is definitionally the existing signed quartic budget.

## Source boundaries

If future work nevertheless separates the two pieces, it must independently supply both missing scales.

The positive diagonal source is typed by

```lean
RegularQuarticDiagonalPositiveSourceData
RegularQuarticDiagonalPositiveSource.
```

The signed off-diagonal source is typed by

```lean
RegularQuarticOffDiagonalCancellationSourceData
RegularQuarticOffDiagonalCancellationSource.
```

No values are constructed.

## Consequence

The regular branch should not proceed by simply bounding the positive diagonal and signed off-diagonal separately. The mathematically faithful frontier is cancellation in their coupled signed sum, unless a genuinely strong theorem proves the positive diagonal endpoint aggregate itself lies at the required natural scale.

## Remaining obligations

```text
COUPLED_SIGNED_QUARTIC_CANCELLATION
OR:
  POSITIVE_QUARTIC_DIAGONAL_NATURAL_SCALE
  + SIGNED_QUARTIC_OFF_DIAGONAL_NATURAL_SCALE

POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, diagonal asymptotic estimate, off-diagonal cancellation theorem, large-sieve theorem, merge, GRH theorem, or RH theorem is represented by this note.
