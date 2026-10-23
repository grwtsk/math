# Centered winding: zero mode and nonzero frequencies

Issue: #847  
Direct stacked parent: draft PR #844 at `3ba9f8bf6a33eea73115389c22db1b75727cbb3d`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_NONZERO_FREQUENCY_SPLIT_SOURCE_DRAFT
CENTERED_WINDING_NONZERO_FREQUENCY_ESTIMATE_OPEN
CENTERED_WINDING_ZERO_MODE_CORRECTION_ESTIMATE_OPEN
```

## Scope

PR #844 identified the centered-winding residue dispersion with the repository's existing regular signed-residue Fourier energy. For one endpoint `b`, square modulus `d^2`, endpoint parity `r`, and half-shift family `H`, it gave

```text
nonzero-winding wrap
=
(d^2)^(-1) * sum_(k mod d^2) |2*Fhat(k)|^2
-
zero-winding fiber energy.
```

This increment separates the Fourier zero mode from the nonzero frequencies and identifies the zero mode arithmetically.

No estimate is added.

## Total signed pair mass

The source defines

```lean
parityHalfIndexCenteredPairMass
```

with exact content

```text
P(b,r,H)
=
sum_(h in H)
sum_(m in the exact half-index support)
  mu(2*m+r) mu(2*m+r+2*h).
```

The centered residue fibers partition this total mass:

```lean
sum_parityHalfIndexCenteredResidueFiberZMod.
```

If

```text
F(s)
=
sum_(h,m : 2*m+h=s mod d^2)
  mu(2*m+r) mu(2*m+r+2*h),
```

then

```text
sum_(s mod d^2) F(s) = P(b,r,H).
```

## Fourier zero mode

The centered residue Fourier transform is

```text
Fhat(k) = sum_(s mod d^2) F(s) e_(d^2)(k*s).
```

At `k=0`, every additive character equals one. The source scripts

```lean
parityHalfIndexCenteredResidueFourier_zero
```

with

```text
Fhat(0) = P(b,r,H).
```

The normalized zero-mode energy is

```lean
parityHalfIndexCenteredZeroModeEnergy
```

and its explicit real form is

```lean
parityHalfIndexCenteredZeroModeEnergy_eq_pairMassSquare.
```

Thus

```text
zero-mode energy
=
4 * P(b,r,H)^2 / d^2.
```

The zero-mode energy is nonnegative. Its comparison with the zero-winding fiber energy is not sign-definite.

## Nonzero-frequency energy

The source defines

```lean
parityHalfIndexCenteredNonzeroFrequencyEnergy
```

as

```text
(d^2)^(-1) *
sum_(k != 0 mod d^2) |2*Fhat(k)|^2.
```

This term is nonnegative by construction.

The complete normalized Fourier energy splits exactly as

```lean
normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero
```

with

```text
(d^2)^(-1) * sum_k |2*Fhat(k)|^2
=
zero-mode energy
+
nonzero-frequency energy.
```

No loss or inequality is used in this split.

## Zero-mode correction

The source defines

```lean
parityHalfIndexCenteredZeroModeCorrection
```

by

```text
zero-mode correction
=
zero-mode energy
-
zero-winding fiber energy.
```

In direct arithmetic terms this is

```text
4 * P(b,r,H)^2 / d^2
-
4 * sum_c C(b,r,H;c)^2,
```

where `C(b,r,H;c)` is the exact signed equal-center fiber amplitude from the earlier zero-winding reduction.

This correction can be negative. It must not be replaced by the sum of the absolute sizes of its two constituents without explicitly paying the resulting loss.

## Load-bearing split

The exact zero/nonzero-frequency form is

```lean
parityCenteredWindingNonzeroFrequencySplit
```

and the source scripts

```lean
parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency
parityCenteredWindingNonzeroFrequencySplit_eq_wrap
parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_zeroModeCorrection.
```

Therefore

```text
nonzero-winding wrap
=
nonzero-frequency energy
+
zero-mode correction
```

or explicitly

```text
nonzero-winding wrap
=
(d^2)^(-1) * sum_(k != 0) |2*Fhat(k)|^2
+
4 * P(b,r,H)^2 / d^2
-
zero-winding fiber energy.
```

This is an identity, not an estimate.

## Existing regular Fourier transforms

For the repository's existing even and odd half-shift signed-residue transforms, the source defines

```lean
parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy
parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy
parityEvenCenteredWindingZeroModeCorrection
parityOddCenteredWindingZeroModeCorrection.
```

The Fourier zero modes are identified by

```lean
parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
parityOddHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass.
```

The existing residue buckets carry the factor two already identified in PR #844, so their zero modes are exactly

```text
2 * P(b,r,H).
```

The specialized nonzero-frequency energies and zero-mode corrections are identified with the centered definitions by

```lean
parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
parityEvenCenteredWindingZeroModeCorrection_eq_centered
parityOddCenteredWindingZeroModeCorrection_eq_centered.
```

The resulting even and odd exact wrap identities are

```lean
parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap
parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap.
```

## Four-family and endpoint aggregate

The four endpoint-parity/half-shift families at one square modulus are collected by

```lean
regularCenteredWindingNonzeroFrequencySplitAtModulus.
```

The source proves exact equality with both parent coordinate systems:

```lean
regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_residue
regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_fullFrequency.
```

The effective square-modulus endpoint aggregate is

```lean
regularCenteredWindingNonzeroFrequencySplitEndpoint.
```

Its exact identifications are

```lean
regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency
regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_residue.
```

## Analytic boundary

The parameterized source boundary is

```lean
RegularCenteredWindingNonzeroFrequencySplitEnvelope E.
```

It is equivalent to both existing parent envelopes:

```lean
regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_fullFrequency
regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_residue.
```

The remaining analytic problem can therefore be attacked in any of three exactly equivalent forms:

```text
residue dispersion;
full-frequency energy minus zero-winding energy;
nonzero-frequency energy plus zero-mode correction.
```

The third form exposes the critical cancellation boundary. A bound on the nonzero-frequency energy alone is insufficient unless the zero-mode correction is also controlled with the required sign or cancellation.

## Source profile

The conservative interface is

```lean
RegularCenteredWindingNonzeroFrequencySplitSourceData
RegularCenteredWindingNonzeroFrequencySplitSource.
```

It records the exact centered residue fibers, total signed pair mass, Fourier zero mode, nonzero-frequency set, both normalized energies, the zero-winding fiber energy, all four parity/shift families, effective-modulus aggregation, and equivalence with the parent analytic envelopes.

## Remaining obligations

```text
CENTERED_WINDING_NONZERO_FREQUENCY_ESTIMATE
CENTERED_WINDING_ZERO_MODE_CORRECTION_ESTIMATE
ZERO_WINDING_CENTERED_SECOND_MOMENT_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, cancellation estimate, merge, GRH theorem, or RH theorem is represented by this note.
