# Canonical regular-orbit parity projectors

Issue: #740  
Direct stacked parent: draft PR #735 at `a3d0ea5770e5006c7f8e242356ed4f7d23b3f7d3`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_PARITY_PROJECTOR_NORMALIZATION_SOURCE_DRAFT
CANONICAL_REGULAR_ORBIT_PROJECTOR_BUDGET_OPEN
```

## Scope

The exceptional two-nonunit orbit has already been separated and reduced to the ordinary and `chi_4` one-point Mertens branches. The remaining two-nonunit contribution is the family of canonical regular frequency orbits from #671 / PR #672.

This increment performs no analytic estimate. It only rewrites the inherited order-two pair projectors in the parity coordinates forced by the already-scripted identity

```text
twoKernelShiftCharacter d h = (-1)^h.
```

That identity was established in #691 / PR #697.

## Exact parity selection

The inherited pair projectors are

```text
PairPlus(k)
 = sum_h phase(k,h) * (1 + eta_d(h)) * core(h,2k),

PairMinus(k)
 = sum_h phase(k,h) * (1 - eta_d(h)) * core(h,2k).
```

On the two-nonunit branch,

```text
eta_d(h)=(-1)^h.
```

Therefore

```text
1 + eta_d(h) = 2  for h even,
                 0  for h odd,

1 - eta_d(h) = 0  for h even,
                 2  for h odd.
```

The source defines

```lean
positiveEndpointEvenShiftSet
positiveEndpointOddShiftSet

twoKernelEvenShiftProjectorAggregate
twoKernelOddShiftProjectorAggregate
```

and scripts the exact identities

```lean
twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector

twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
```

so that, schematically,

```text
PairPlus  = 2 * EvenProjector,
PairMinus = 2 * OddProjector.
```

No norm is inserted before these identities.

## Canonical regular-orbit majorant

The previous regular-orbit majorant was

```text
(1/2) * (
  ||PairPlus(r=0)|| + ||PairMinus(r=0)||
+ ||PairPlus(r=1)|| + ||PairMinus(r=1)|| ).
```

After the exact factor-two identities, the outer one-half cancels exactly. The source defines

```lean
twoNonunitCanonicalRegularOrbitMajorant
```

as

```text
||EvenProjector(r=0)|| + ||OddProjector(r=0)||
+ ||EvenProjector(r=1)|| + ||OddProjector(r=1)||,
```

and scripts

```lean
twoNonunitRegularOrbitMajorant_eq_canonicalParityProjectors.
```

Thus the remaining regular obstruction is not a generic kernel-pair estimate: it is precisely cancellation in four normalized parity-projected sums per canonical regular frequency orbit.

## Endpoint equality

The source reuses, unchanged:

- `effectiveEndpointSquareModulusSet b`;
- `twoKernelRegularOrbitRepresentativeSet d`;
- the exclusion of the exceptional orbit;
- the reciprocal square-modulus weight `1/d^2`.

It defines

```lean
twoNonunitCanonicalRegularOrbitEndpointMajorant
```

and scripts the exact equality

```lean
twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors.
```

So no scale loss is introduced by this normalization.

## Analytic interface

The new open proposition is

```lean
DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget.
```

It asks for the same natural endpoint scale as the inherited regular-orbit budget, but with the exact parity-projector observable exposed.

The source scripts

```lean
canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget
```

and constructs

```lean
canonicalRegularOrbitProjectorToRegularBudgetAdapter.
```

This is equality transport only. No value of the canonical budget is constructed.

## Downstream composition

The current conditional dependency is now scripted as

```lean
naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular
```

with premises

```text
pointwise ordinary Mertens x^(1/2+epsilon)
+ pointwise chi_4-Mertens x^(1/2+epsilon)
+ two-unit half-index supplier
+ canonical regular parity-projector supplier
-> #588 natural-scale congruence-L1.
```

The regular branch is therefore exposed at the exact cancellation surface that still needs new arithmetic input.

## Conservative future source profile

The source types

```lean
ToCanonicalRegularOrbitProjectorBudgetAdapter
CanonicalRegularOrbitProjectorSourceData
CanonicalRegularOrbitProjectorSource
CanonicalRegularOrbitProjectorAnalyticAdapter.
```

A future theorem must match all of the following before it can be connected:

- canonical regular representatives;
- separate treatment of the exceptional orbit;
- projectors formed before norms;
- the exact parity character;
- both even- and odd-shift projectors;
- both endpoint parity classes;
- effective square-modulus aggregation;
- the natural-scale normalization.

No named large-sieve, Chowla, Elliott, spectral, automorphic, GRH, or RH theorem is assigned an adapter value in this increment.

## Remaining obligations

Analytic:

```text
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
CANONICAL_REGULAR_ORBIT_PROJECTOR_BUDGET
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, merge, root admission, GRH theorem, or RH theorem is represented by this note.
