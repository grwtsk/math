# Finite endpoint range for centered winding

Issue: #814  
Direct stacked parent: draft PR #811 at `483924a9acf11f5a5630db4050b643b4c98cd599`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_FINITE_RANGE_SOURCE_DRAFT
CENTERED_WINDING_ANALYTIC_ESTIMATE_OPEN
```

## Scope

PR #811 unified zero winding and wrap-around through the exact relation

```text
c2-c1 = z*d^2.
```

This increment records the finite endpoint geometry of the winding parameter.

No analytic estimate or winding-count asymptotic is added.

## Center bounds

For any half-index point in the exact affine support, the center

```text
c=2m+h
```

satisfies

```text
0 <= c <= b.
```

The source scripts

```lean
halfIndexZeroWindingCoordinate_le_endpoint.
```

## Sharp displacement bound

If two endpoint-bounded centers satisfy

```text
c2-c1 = z*d^2,
```

then

```text
|z*d^2| <= b.
```

The source scripts

```lean
centeredDisplacement_bounds
centeredSquareModulusWinding_abs_displacement_le_endpoint.
```

This is the modulus-sensitive bound. It is stronger than the coarse interval `|z|<=b`.

## Finite winding set

The source defines

```lean
centeredWindingCandidateSet.
```

It uses the finite integer carrier

```text
-b <= z <= b
```

and filters it by the sharp condition

```text
|z*d^2| <= b.
```

Every endpoint-bounded centered winding lies in this set:

```lean
centeredSquareModulusWinding_mem_candidateSet.
```

For the exact half-index supports, the specialized theorem is

```lean
realizedHalfIndexWinding_mem_candidateSet.
```

Thus the unified centered correlation problem has only finitely many realized winding classes at each endpoint and modulus.

## Analytic significance

As `d^2` grows relative to `b`, the condition

```text
|z*d^2| <= b
```

forces fewer possible nonzero windings. No cardinal estimate is promoted in this source-only increment, but the exact modulus-dependent thinning is now part of the interface.

The conservative source profile is

```lean
RegularCenteredWindingFiniteRangeSourceData
RegularCenteredWindingFiniteRangeSource.
```

## Remaining obligations

```text
CENTERED_WINDING_ANALYTIC_ESTIMATE
WINDING_FAMILY_CARDINAL_OR_DISPERSION_CONTROL
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, winding-count asymptotic, centered-correlation estimate, merge, GRH theorem, or RH theorem is represented by this note.
