# Exact cardinality of centered winding classes

Issue: #819  
Direct stacked parent: draft PR #815 at `b0ef92cdebef78d6096407dcacaaa218d2a61e02`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_CARDINALITY_SOURCE_DRAFT
CENTERED_WINDING_ANALYTIC_ESTIMATE_OPEN
```

## Scope

PR #815 proved the sharp finite-range condition

```text
|z*d^2| <= b.
```

This increment converts that condition into an exact winding radius and exact finite cardinality.

No analytic estimate or average over moduli is added.

## Exact radius

The source defines

```lean
centeredWindingRadius
```

with

```text
floor(b/d^2).
```

It scripts

```lean
abs_squareMul_le_endpoint_iff_abs_le_radius
```

so

```text
|z*d^2| <= b
iff
|z| <= floor(b/d^2).
```

## Exact candidate interval

The source scripts

```lean
centeredWindingCandidateSet_eq_Icc_radius
```

identifying the finite winding candidate set with

```text
[-floor(b/d^2), floor(b/d^2)].
```

## Exact counts

The total cardinality is source-scripted as

```lean
card_centeredWindingCandidateSet
```

with

```text
2*floor(b/d^2)+1.
```

Zero winding is always present:

```lean
zero_mem_centeredWindingCandidateSet.
```

The nonzero winding set is

```lean
centeredNonzeroWindingCandidateSet
```

and the exact nonzero count is

```lean
card_centeredNonzeroWindingCandidateSet
card_centeredNonzeroWindingCandidateSet_eq
```

with

```text
2*floor(b/d^2).
```

Every realized nonzero winding from the exact half-index supports belongs to this set:

```lean
realizedNonzeroWinding_mem_candidateSet.
```

## Consequence

The nonzero wrap family is no longer merely known to be finite. Its exact candidate multiplicity at one endpoint and modulus is

```text
2 * floor(b/d^2).
```

This exposes the precise combinatorial factor that any future dispersion or averaged correlation theorem must absorb.

The conservative source profile is

```lean
RegularCenteredWindingCardinalitySourceData
RegularCenteredWindingCardinalitySource.
```

## Remaining obligations

```text
CENTERED_WINDING_ANALYTIC_ESTIMATE
MODULUS_AVERAGED_WINDING_CONTROL
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, analytic winding estimate, modulus average, merge, GRH theorem, or RH theorem is represented by this note.
