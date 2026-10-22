# Nonzero-winding wrap collisions in centered coordinates

Issue: #807  
Direct stacked parent: draft PR #806 at `db123386910512c5a27633550ef1e56b913e30b7`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
WRAP_CENTERED_WINDING_SOURCE_DRAFT
WRAP_CENTERED_CORRELATION_ESTIMATE_OPEN
```

## Scope

The regular branch has already separated zero winding from genuine modular wrap-around.

This increment reindexes only the wrap family into half-index variables and rewrites each quartic coefficient as two symmetric Möbius pairs around two centers.

No estimate is added.

## Half-index wrap

On endpoint parity `r<2`,

```text
u=2m+r,
v=2n+r.
```

The two natural centers are

```text
c1 = 2m+h,
c2 = 2n+g.
```

The source defines

```lean
parityHalfIndexSignedQuarticWrap
```

and scripts the exact reindex

```lean
parityHalfShiftSignedQuarticWrap_eq_halfIndex.
```

## Nonzero winding

Every wrap collision satisfies

```text
c1 ≡ c2 mod d^2,
c1 != c2.
```

The source scripts

```lean
halfIndexWrap_exists_nonzero_winding
```

so there exists a nonzero integer `z` with

```text
c2-c1 = z*d^2.
```

Thus the wrap branch is exactly a family of correlations between centers separated by nonzero square-modulus multiples.

## Centered Möbius arguments

The source scripts

```lean
wrapFirst_lower_eq_centered
wrapFirst_upper_eq_centered
wrapSecond_lower_eq_centered
wrapSecond_upper_eq_centered.
```

Therefore the four Möbius arguments are

```text
c1-h+r,
c1+h+r,
c2-g+r,
c2+g+r.
```

The direct coefficient is

```lean
centeredWrapQuarticMobiusCoefficient
```

and the source proves

```lean
halfIndexQuarticMobiusCoefficient_eq_centeredWrap.
```

## Centered wrap surface

The source defines

```lean
parityHalfIndexCenteredSignedQuarticWrap
```

and scripts

```lean
parityHalfIndexSignedQuarticWrap_eq_centered.
```

Thus the nonzero-winding branch is now a signed correlation between two symmetric Möbius pairs whose centers differ by a nonzero multiple of `d^2`.

## Remaining analytic boundary

The conservative source profile is

```lean
RegularCenteredWrapCorrelationSourceData
RegularCenteredWrapCorrelationSource.
```

Any future dispersion, bilinear, Chowla-type, or spectral theorem must match:

- the exact half-index supports;
- two symmetric Möbius pairs;
- center displacement equal to a nonzero multiple of `d^2`;
- both endpoint and half-shift parity classes;
- the natural-scale endpoint aggregation.

## Remaining obligations

```text
ZERO_WINDING_CENTERED_SECOND_MOMENT
WRAP_CENTERED_CORRELATION_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, wrap estimate, centered second-moment estimate, merge, GRH theorem, or RH theorem is represented by this note.
