# Regular signed residue energy as quartic affine collisions

Issue: #772  
Direct stacked parent: draft PR #770 at `d54b766fa3c15369580489d6ac87c7b7c3185c42`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_QUARTIC_COLLISION_REPRESENTATION_SOURCE_DRAFT
REGULAR_SIGNED_QUARTIC_COLLISION_ESTIMATE_OPEN
```

## Scope

PR #770 reduced the regular two-nonunit branch to four signed residue-space L2 energies.

This increment expands those quadratic energies exactly as signed quartic Möbius collision sums. No positive counting majorant is substituted and no analytic estimate is added.

## Generic signed bucket

The source defines

```lean
parityHalfShiftSignedResidueRealBucket
parityHalfShiftSignedResidueComplexBucket.
```

The complex bucket is proved to be exactly the coercion of the real signed bucket:

```lean
parityHalfShiftSignedResidueComplexBucket_eq_real.
```

This uses the fact that every bucket coefficient is a real Möbius product.

## Quartic collision representation

The exact collision object is

```lean
parityHalfShiftSignedQuarticCollision.
```

For a finite half-shift family `H`, it has mathematical form

```text
4 * sum_(h,g in H)
    sum_(u in Base(r,h))
    sum_(v in Base(r,g))
      1_[coord(u,h)=coord(v,g)]
      mu(u)mu(u+2h)mu(v)mu(v+2g).
```

The signs are retained literally.

The source scripts

```lean
sum_sq_realBucket_eq_signedQuarticCollision
sum_norm_sq_complexBucket_eq_signedQuarticCollision.
```

Thus the residue L2 energy is not merely bounded by the quartic surface; it is represented exactly by it.

## Even and odd half-shift families

Specialization gives

```lean
parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision
parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision.
```

Therefore each of the four energies

```text
endpoint parity r in {0,1}
×
half-shift parity q in {even,odd}
```

is now an explicit signed quartic affine collision sum.

## Endpoint surface

The source defines

```lean
twoNonunitRegularSignedQuarticCollisionMajorant
twoNonunitRegularSignedQuarticCollisionEndpointMajorant
```

and scripts exact equalities

```lean
residueL2Majorant_eq_signedQuarticCollision
residueL2EndpointMajorant_eq_signedQuarticCollision.
```

Hence there is no remaining Fourier transform, Parseval normalization, or residue-bucket abstraction in the regular branch.

## Analytic interface

The remaining open proposition is

```lean
DyadicNaturalScaleRegularSignedQuarticCollisionBudget.
```

The source scripts

```lean
regularResidueL2Budget_iff_signedQuarticCollision.
```

The future arithmetic source boundary is typed by

```lean
RegularSignedQuarticCollisionSourceData
RegularSignedQuarticCollisionSource
ToRegularSignedQuarticCollisionBudgetAdapter
RegularSignedQuarticCollisionAdapter.
```

A future theorem must match the exact affine residue collision condition and the signed quartic Möbius product. A positive collision count, variance-plus-diagonal quantity, or unsigned fourth moment does not automatically inhabit this interface.

## Genuine remaining regular obstruction

The regular branch is now reduced to a natural-scale estimate for

```text
sum_d [
  sqrt(Q_0e(b,d)) + sqrt(Q_0o(b,d))
+ sqrt(Q_1e(b,d)) + sqrt(Q_1o(b,d))
],
```

where each `Q_rq` is the exact signed quartic collision sum above.

The next useful mathematical step is to classify the collision equation

```text
coord(u,h) = coord(v,g) mod d^2
```

into diagonal and genuinely off-diagonal configurations without destroying the Möbius signs.

## Remaining obligations

Analytic:

```text
REGULAR_SIGNED_QUARTIC_COLLISION_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, quartic collision estimate, large-sieve theorem, merge, root admission, GRH theorem, or RH theorem is represented by this note.
