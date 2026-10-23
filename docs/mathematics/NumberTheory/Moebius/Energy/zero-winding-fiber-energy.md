# Zero-winding quartic collisions as signed fiber energy

Issue: #791  
Direct stacked parent: draft PR #789 at `7273faca38cd988f93ee366155fbdd76aaa79190`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
ZERO_WINDING_FIBER_ENERGY_SOURCE_DRAFT
ZERO_WINDING_FIBER_ENERGY_ESTIMATE_OPEN
```

## Scope

PR #789 rewrote zero winding as the half-index equality

```text
2m+h = 2n+g.
```

This increment groups all affine pairs by the common coordinate

```text
c = 2m+h.
```

No estimate is added.

## Signed fiber amplitude

The source defines

```lean
parityHalfIndexZeroWindingFiber
```

with

```text
A_r,H(c)
=
sum_(h in H)
sum_(m in Base(r,h), 2m+h=c)
  mu(2m+r) mu(2m+r+2h).
```

The common coordinate is automatically supported inside

```text
0 <= c <= b,
```

recorded by

```lean
halfIndexZeroWindingCoordinate_lt_endpoint.
```

## Exact fiber-square identity

The source defines

```lean
parityHalfIndexZeroWindingFiberEnergy
```

as

```text
4 * sum_(c=0)^b A_r,H(c)^2.
```

It scripts the generic expansion

```lean
zeroWindingFiberSquareExpansion
```

and the exact identity

```lean
parityHalfIndexSignedQuarticZeroWinding_eq_fiberEnergy.
```

Thus the signed zero-winding quartic collision is exactly a sum of squares of signed fiber amplitudes.

## Why this preserves the needed cancellation

Each square `A(c)^2` contains both:

- the positive literal diagonal terms;
- all signed nontrivial cross terms sharing the same coordinate.

Therefore the diagonal is not split off as a separate positive majorant.

The source also records

```lean
parityHalfIndexZeroWindingFiberEnergy_nonneg.
```

This nonnegativity comes only after exact within-fiber cancellation has been retained.

## Remaining source boundary

The four-family fiber surface is

```lean
twoNonunitRegularZeroWindingFiberEnergyMajorant.
```

A future theorem must match the signed fibers themselves, not an unsigned pair count. The conservative source profile is

```lean
RegularZeroWindingFiberEnergySourceData
RegularZeroWindingFiberEnergySource.
```

## Remaining obligations

```text
ZERO_WINDING_FIBER_ENERGY_ESTIMATE
NONZERO_WINDING_WRAP_CANCELLATION
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, fiber-energy estimate, wrap estimate, large-sieve theorem, merge, GRH theorem, or RH theorem is represented by this note.
