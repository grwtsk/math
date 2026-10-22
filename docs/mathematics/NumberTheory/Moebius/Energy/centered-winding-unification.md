# Unified centered winding relation

Issue: #810  
Direct stacked parent: draft PR #808 at `eb94468dd790c5e17776f513b28a2a8f3b6ced6b`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_UNIFICATION_SOURCE_DRAFT
CENTERED_WINDING_ANALYTIC_ESTIMATE_OPEN
```

## Scope

The regular branch has two centered correlation regimes:

- zero winding: the two centers coincide;
- wrap: the two centers are distinct but congruent modulo `d^2`.

This increment packages both regimes into one exact integer displacement relation.

No analytic estimate is added.

## Master winding relation

The source defines

```lean
CenteredSquareModulusWinding
```

with exact content

```text
c2 - c1 = z * d^2
```

in the integers.

For fixed nonzero `d` and centers, the winding is unique:

```lean
centeredSquareModulusWinding_unique.
```

## Zero winding

The source scripts

```lean
centeredSquareModulusWinding_zero_iff
```

so

```text
z=0
iff
c1=c2.
```

Thus the prior zero-winding branch is exactly the `z=0` specialization.

## Nonzero winding

The source scripts

```lean
centeredSquareModulusWinding_modEq
centeredSquareModulusWinding_ne
modEq_ne_exists_unique_nonzero_winding
exists_nonzero_winding_iff_wrap.
```

Hence

```text
exists z != 0 with c2-c1=z*d^2
iff
c1 ≡ c2 mod d^2 and c1 != c2.
```

So the prior wrap branch is exactly the nonzero-winding specialization.

## Master centered coefficient

The source defines

```lean
centeredWindingMobiusCoefficient
```

with arithmetic form

```text
mu(c1-h+r) mu(c1+h+r)
mu(c2-g+r) mu(c2+g+r).
```

The existing centered wrap coefficient is identified with this master coefficient by

```lean
centeredWrapQuarticMobiusCoefficient_eq_winding.
```

The half-index wrap family supplies a unique nonzero winding through

```lean
halfIndexWrap_exists_unique_centered_winding.
```

## Unified theorem boundary

The conservative source profile is

```lean
RegularCenteredWindingSourceData
RegularCenteredWindingSource.
```

A future theorem may now be stated once, with an integer winding parameter, rather than as unrelated zero-winding and wrap statements.

It must preserve:

- exact displacement by `z*d^2`;
- the zero/nonzero winding specialization;
- both symmetric Möbius pairs;
- quartic signs;
- both endpoint and half-shift parity families;
- the natural-scale endpoint aggregation.

## Remaining obligations

```text
CENTERED_WINDING_ANALYTIC_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, winding estimate, merge, GRH theorem, or RH theorem is represented by this note.
