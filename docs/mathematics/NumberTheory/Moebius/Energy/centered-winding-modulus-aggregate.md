# Aggregate centered winding multiplicity over effective square moduli

Issue: #827  
Direct stacked parent: draft PR #821 at `cf7066cc4598960d97efd291980175d4c04dc663`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_MODULUS_AGGREGATE_SOURCE_DRAFT
CENTERED_WINDING_ANALYTIC_ESTIMATE_OPEN
```

## Scope

PR #821 proved the exact nonzero winding count for one modulus:
```text
2 * floor(b/d^2).
```

This increment aggregates that exact combinatorial multiplicity over the effective square-modulus support.

No Möbius correlation estimate is added.

## Finite reciprocal-square telescope

For `d>=2`, the source scripts
```lean
reciprocalSquare_le_endpointDrop
```
corresponding to
```text
1/d^2 <= 1/(d-1) - 1/d.
```

This yields
```lean
sum_reciprocalSquare_Ico_two_le_one
sum_reciprocalSquare_Ico_one_le_two
effectiveSquareModulusReciprocalSquareMass_le_two.
```

Hence
```text
sum_(d effective) 1/d^2 <= 2.
```

## Winding radius comparison

The source scripts
```lean
centeredWindingRadius_cast_le
```
so
```text
floor(b/d^2) <= b/d^2.
```

## Endpoint multiplicity

The exact total nonzero candidate multiplicity is
```lean
centeredNonzeroWindingEndpointMultiplicity.
```

The load-bearing bound is
```lean
centeredNonzeroWindingEndpointMultiplicity_le_four_mul
```
with
```text
sum_(d effective) 2*floor(b/d^2) <= 4*b.
```

The named disposition
```lean
CenteredWindingMultiplicityHasLinearEndpointCost
centeredWindingMultiplicityHasLinearEndpointCost
```
records that the complete combinatorial winding aggregation costs only linear endpoint scale.

## Consequence

There is no logarithmic loss from the number of winding classes across square moduli. Any remaining loss must come from the analytic centered Möbius correlation estimate itself, not from combinatorial winding multiplicity.

The remaining theorem boundary is
```lean
RegularCenteredWindingAfterMultiplicitySourceData
RegularCenteredWindingAfterMultiplicitySource.
```

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

No Lean/Lake/native execution, proof-term acceptance, Möbius correlation estimate, merge, GRH theorem, or RH theorem is represented by this note.
