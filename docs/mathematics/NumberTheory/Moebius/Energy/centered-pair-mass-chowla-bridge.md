# Centered pair mass as the existing affine-Chowla zero mode

Issue: #874  
Parent: draft PR #857 at `7b2d2c14869efbc02f34c9f63e25fc85a64d92e2`.

The four signed pair masses introduced by the centered-winding zero mode are not new analytic objects.

The repository already has, for each parity and half-shift family, the growing-shift affine Chowla twists
```lean
parityGrowingShiftAffineChowlaTwist
```
and the exact identities
```lean
parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists
parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists.
```

At frequency zero the new source defines the corresponding aggregates and proves
```text
affineChowlaZero(0,even) = 2 * centeredPairMass(0,even)
affineChowlaZero(0,odd)  = 2 * centeredPairMass(0,odd)
affineChowlaZero(1,even) = 2 * centeredPairMass(1,even)
affineChowlaZero(1,odd)  = 2 * centeredPairMass(1,odd).
```

Consequently, if `Q(b)` is the four-family pair-mass square from PR #857, then
```text
sum_four_families |affineChowlaZero|^2 = 4 * Q(b).
```

Thus the remaining pair-mass supplier is exactly a zero-frequency specialization of the already-existing affine binary Chowla family, not a separate conjectural object.

The source also composes any uniform zero-frequency affine-Chowla square envelope directly into the mean-inflation envelope.

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_PAIR_MASS_CHOWLA_BRIDGE_SOURCE_DRAFT
ZERO_FREQUENCY_AFFINE_CHOWLA_ESTIMATE_OPEN
CENTERED_WINDING_NONZERO_FREQUENCY_ESTIMATE_OPEN
```

No Chowla estimate, Mertens estimate, elaboration, kernel acceptance, GRH theorem, or RH theorem is claimed.
