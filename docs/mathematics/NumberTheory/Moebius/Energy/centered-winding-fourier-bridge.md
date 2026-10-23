# Centered winding residue dispersion in full-frequency coordinates

Issue: #841  
Direct stacked parent: draft PR #837 at `b6314e628441e1b2705cf5be0c4f303ff31ca666`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_FOURIER_BRIDGE_SOURCE_DRAFT
CENTERED_WINDING_FULL_FREQUENCY_ESTIMATE_OPEN
```

## Scope

PR #837 identified the remaining nonzero centered-winding correlation with the exact residue dispersion

```text
4 * sum_(a mod d^2) F(a)^2
-
zero-winding fiber energy.
```

This increment proves that the same residue fiber is already present in the repository's regular signed-residue Fourier route. The only normalization difference is the explicit factor `2` built into the older residue bucket.

No Fourier-energy estimate or cancellation theorem is added.

## `ZMod` centered residue fiber

For endpoint `b`, square modulus `d^2`, endpoint parity `r`, and half-shift family `H`, the source defines

```lean
parityHalfIndexCenteredResidueFiberZMod
```

with exact content

```text
F(s)
=
sum_(h in H)
sum_(m in exact half-index support)
  1_(2*m+h = s in ZMod(d^2))
  mu(2*m+r) mu(2*m+r+2*h).
```

The corresponding square mass is

```lean
parityHalfIndexCenteredResidueSquareMassZMod
```

and equals

```text
4 * sum_(s in ZMod(d^2)) F(s)^2.
```

The finite expansion

```lean
centeredResidueFiberZModSquareExpansion
```

uses

```lean
ZMod.natCast_eq_natCast_iff
```

to identify equality of cast centers with natural congruence modulo `d^2`.

Hence

```lean
parityHalfIndexCenteredResidueSquareMassZMod_eq_congruence
```

identifies the `ZMod` square mass with the existing full signed congruence surface.

The natural-representative and `ZMod` square masses are therefore equal through their common congruence expansion:

```lean
parityHalfIndexCenteredResidueSquareMassZMod_eq_nat.
```

No choice of residue representatives changes the arithmetic object.

## Exact factor-two bucket bridge

The pre-existing affine signed-residue correlation has the normalization

```text
2 * sum_u mu(u) mu(u+2h).
```

On parity `r<2`, the exact half-index substitution

```text
u = 2*m+r
```

turns its residue coordinate into

```text
2*m+h.
```

The source scripts the general identity

```lean
sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
```

so for any finite shift family `H`,

```text
sum_(h in H) affineSignedResidueCorrelation(h,s)
=
2 * F(s).
```

The even and odd specializations are

```lean
parityEvenHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod.
```

Thus the centered-winding residue fiber is not a new analytic quantity. It is exactly half of the signed residue bucket already consumed by the regular Fourier route.

## Fourier bridge

The centered residue Fourier transform is

```lean
parityHalfIndexCenteredResidueFourier
```

with

```text
Fhat(k) = sum_s F(s) e_(d^2)(k*s).
```

The existing even and odd transforms satisfy

```lean
parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
```

and therefore

```text
Bhat_even(k) = 2 * Fhat_even(k),
Bhat_odd(k)  = 2 * Fhat_odd(k).
```

The source reuses the previously scripted finite additive Parseval theorem

```lean
stdAddChar_parseval_norm_sq
```

rather than introducing another orthogonality proof.

It obtains

```lean
sum_norm_sq_parityHalfIndexCenteredResidueFourier
```

with exact normalization

```text
sum_(k mod d^2) |Fhat(k)|^2
=
d^2 * sum_(s mod d^2) F(s)^2.
```

After restoring the factor two, the load-bearing energy identity is

```lean
sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
```

with

```text
sum_k |2*Fhat(k)|^2
=
d^2 * centered residue square mass.
```

## Full-frequency form of the winding dispersion

The source defines

```lean
parityCenteredWindingFullFrequencyDispersion
```

by

```text
(d^2)^(-1) * sum_k |2*Fhat(k)|^2
-
zero-winding fiber energy.
```

The generic theorem

```lean
parityCenteredWindingFullFrequencyDispersion_eq_wrap
```

identifies this exactly with the nonzero-winding wrap surface.

For the existing even and odd signed-residue Fourier transforms, the exact normalized identities are

```lean
normalized_evenFullFrequencyEnergy_eq_zeroEnergy_add_wrap
normalized_oddFullFrequencyEnergy_eq_zeroEnergy_add_wrap.
```

They have content

```text
(d^2)^(-1) * sum_k |Bhat(k)|^2
=
zero-winding fiber energy
+
nonzero-winding wrap correlation.
```

Rearranging gives

```lean
parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy
parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy
```

and therefore

```text
wrap
=
(d^2)^(-1) * sum_k |Bhat(k)|^2
-
zero-winding fiber energy.
```

This is an exact identity. It does not assert that the difference is positive, small, or asymptotic to either term separately.

## Four-family and endpoint identification

The four endpoint-parity/half-shift families are collected in

```lean
regularCenteredWindingFullFrequencyDispersionAtModulus.
```

The theorem

```lean
regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue
```

identifies this modulus contribution with

```lean
regularCenteredWindingResidueDispersionAtModulus
```

from PR #837.

The effective-modulus endpoint aggregate is

```lean
regularCenteredWindingFullFrequencyDispersionEndpoint
```

and the exact endpoint equality is

```lean
regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue.
```

The analytic envelope

```lean
RegularCenteredWindingFullFrequencyDispersionEnvelope E
```

is exactly equivalent to the preceding residue-dispersion envelope:

```lean
regularCenteredWindingFullFrequencyDispersionEnvelope_iff_residue.
```

Thus the centered-winding obstruction and the existing full-frequency regular-orbit obstruction are now source-identical after the explicit zero-winding subtraction.

## Consequence

The regular branch now has the exact chain

```text
centered winding classes
-> signed center residue fibers
-> existing signed residue buckets
-> complete ZMod Fourier energy
-> normalized full-frequency energy minus zero-winding energy.
```

This removes a representational gap. It does not remove the analytic gap.

The remaining estimate must control the four-family effective-modulus aggregate

```text
sum_d sum_(r,H)
  |(d^2)^(-1) * fullFrequencyEnergy(b,d,r,H)
    - zeroWindingEnergy(b,r,H)|.
```

Bounding the full-frequency energy and the zero-winding term separately by absolute values may be too lossy; the exact subtraction is part of the theorem boundary.

## Source profile

The conservative interface is

```lean
RegularCenteredWindingFullFrequencyBridgeSourceData
RegularCenteredWindingFullFrequencyBridgeSource.
```

It records the `ZMod` fiber, natural/`ZMod` square-mass identification, factor-two bucket and Fourier normalizations, finite Parseval reuse, zero/nonzero winding split, all four parity/shift families, effective-modulus aggregation, and analytic-envelope equivalence.

## Remaining obligations

```text
CENTERED_WINDING_FULL_FREQUENCY_DISPERSION_ESTIMATE
ZERO_WINDING_CENTERED_SECOND_MOMENT_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, Fourier-energy bound, cancellation estimate, merge, GRH theorem, or RH theorem is represented by this note.
