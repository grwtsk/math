/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #886. Parent: draft PR #882 at e3111b226cf2607866cbb95f0229075e1cec68fe.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingOffDiagonalCovariance

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact four-Möbius coefficient attached to two symmetric pairs centered at
c and c+ell. -/
def centeredAffineFourMobiusCoefficient
    (r c ell h g : ℕ) : ℝ :=
  halfIndexBinaryMobiusCoefficient r
      (zeroWindingHalfIndexFromCoordinate c h) h *
    halfIndexBinaryMobiusCoefficient r
      (zeroWindingHalfIndexFromCoordinate (c + ell) g) g

/-- Expanded fixed-center/fixed-lag four-factor correlation over admissible
half-shifts. -/
def parityCenteredAffineFourMobiusAtCenterLag
    (b r c ell : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ h ∈ zeroWindingAdmissibleShiftSet b r c H,
    ∑ g ∈ zeroWindingAdmissibleShiftSet b r (c + ell) H,
      centeredAffineFourMobiusCoefficient r c ell h g

/-- The four-factor shift surface is exactly the product of the two signed
integer-center amplitudes. -/
theorem parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul
    (b r c ell : ℕ)
    (H : Finset ℕ) :
    parityCenteredAffineFourMobiusAtCenterLag b r c ell H =
      parityCenteredIntegerCoordinateAmplitude b r H c *
        parityCenteredIntegerCoordinateAmplitude b r H (c + ell) := by
  unfold parityCenteredAffineFourMobiusAtCenterLag
    centeredAffineFourMobiusCoefficient
    parityCenteredIntegerCoordinateAmplitude
    parityZeroWindingShiftFiberCorrelation
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro h hh
  rw [Finset.mul_sum]
  rfl

/-- Fixed positive-lag four-Möbius correlation, summed over all centers for
which both symmetric pairs remain in the endpoint. -/
def parityCenteredAffineFourMobiusLagCorrelation
    (b r ell : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    if c + ell < b + 1 then
      parityCenteredAffineFourMobiusAtCenterLag b r c ell H
    else 0

theorem parityCenteredAffineFourMobiusLagCorrelation_eq_positiveLagCovariance
    (b r ell : ℕ)
    (H : Finset ℕ) :
    parityCenteredAffineFourMobiusLagCorrelation b r ell H =
      parityCenteredIntegerCoordinatePositiveLagCovariance b r ell H := by
  unfold parityCenteredAffineFourMobiusLagCorrelation
    parityCenteredIntegerCoordinatePositiveLagCovariance
  apply Finset.sum_congr rfl
  intro c hc
  by_cases hinside : c + ell < b + 1
  · simp only [hinside, if_true]
    exact parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul
      b r c ell H
  · simp [hinside]

/-- Four-Möbius correlation at winding lag z*d^2, including both center-pair
orientations and the original quartic factor. -/
def parityCenteredAffineFourMobiusWindingLagCorrelation
    (b d r z : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  8 * parityCenteredAffineFourMobiusLagCorrelation
    b r (z * (d * d)) H

theorem parityCenteredAffineFourMobiusWindingLagCorrelation_eq_covariance
    (b d r z : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredAffineFourMobiusWindingLagCorrelation b d r z H =
      parityCenteredIntegerCoordinateWindingLagCovariance b d r z H := by
  unfold parityCenteredAffineFourMobiusWindingLagCorrelation
    parityCenteredIntegerCoordinateWindingLagCovariance
  rw [parityCenteredAffineFourMobiusLagCorrelation_eq_positiveLagCovariance]

/-- Positive winding-lag aggregate of the exact four-Möbius correlations. -/
def parityCenteredAffineFourMobiusWindingLagSum
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
    parityCenteredAffineFourMobiusWindingLagCorrelation b d r z H

theorem parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredAffineFourMobiusWindingLagSum b d r H =
      parityCenteredIntegerCoordinateWindingLagSum b d r H := by
  unfold parityCenteredAffineFourMobiusWindingLagSum
    parityCenteredIntegerCoordinateWindingLagSum
  apply Finset.sum_congr rfl
  intro z hz
  exact parityCenteredAffineFourMobiusWindingLagCorrelation_eq_covariance
    b d r z H

/-- Direct analytic interface for the structured four-Möbius lag family. -/
def RegularCenteredAffineFourMobiusLagEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        letI : NeZero d := ⟨ne_of_gt hd⟩
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 0 (positiveEndpointEvenShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 0 (positiveEndpointOddShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 1 (positiveEndpointEvenShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 1 (positiveEndpointOddShiftSet b)|
      else 0) ≤ E b

/-- Conservative source profile.  This explicitly records that the remaining
analytic object is four-Möbius, not binary. -/
structure RegularCenteredAffineFourMobiusSourceData where
  theoremStatement : Prop
  symmetricFirstPairMatched : Prop
  symmetricSecondPairMatched : Prop
  centerLagMatched : Prop
  fourMobiusCoefficientMatched : Prop
  admissibleShiftFibersMatched : Prop
  centerAmplitudeProductMatched : Prop
  positiveLagCovarianceMatched : Prop
  squareModulusWindingLagMatched : Prop
  bothOrientationsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  analyticEnvelopeExplicit : Prop
  binaryChowlaNotAssertedSufficient : Prop

def RegularCenteredAffineFourMobiusSource
    (d : RegularCenteredAffineFourMobiusSourceData) : Prop :=
  d.theoremStatement ∧
  d.symmetricFirstPairMatched ∧
  d.symmetricSecondPairMatched ∧
  d.centerLagMatched ∧
  d.fourMobiusCoefficientMatched ∧
  d.admissibleShiftFibersMatched ∧
  d.centerAmplitudeProductMatched ∧
  d.positiveLagCovarianceMatched ∧
  d.squareModulusWindingLagMatched ∧
  d.bothOrientationsMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.analyticEnvelopeExplicit ∧
  d.binaryChowlaNotAssertedSufficient

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum
