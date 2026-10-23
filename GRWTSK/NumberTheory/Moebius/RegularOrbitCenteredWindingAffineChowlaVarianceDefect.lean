/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #877. Parent: draft PR #875 at e56872568d11d7de2daea99ed37664a7e9da791d.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredPairMassChowlaBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Existing affine-Chowla aggregate over an arbitrary half-shift family. -/
def parityAffineChowlaFamilyAggregate
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ H, parityGrowingShiftAffineChowlaTwist b d r h k

/-- Normalized full spectral energy of one affine-Chowla half-shift family. -/
def parityAffineChowlaFamilySpectralEnergy
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k : ZMod (d * d),
      ‖parityAffineChowlaFamilyAggregate b d r H k‖ ^ 2

theorem parityEvenAffineChowlaFamilyAggregate_eq_signedResidueFourier
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityAffineChowlaFamilyAggregate
        b d r (positiveEndpointEvenShiftSet b) k =
      parityEvenHalfShiftSignedResidueFourier b d r k := by
  unfold parityAffineChowlaFamilyAggregate
  exact (parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists
    b d r k).symm

theorem parityOddAffineChowlaFamilyAggregate_eq_signedResidueFourier
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityAffineChowlaFamilyAggregate
        b d r (positiveEndpointOddShiftSet b) k =
      parityOddHalfShiftSignedResidueFourier b d r k := by
  unfold parityAffineChowlaFamilyAggregate
  exact (parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists
    b d r k).symm

theorem parityEvenAffineChowlaSpectralEnergy_eq_fullFrequency
    (b d r : ℕ) [NeZero d] :
    parityAffineChowlaFamilySpectralEnergy
        b d r (positiveEndpointEvenShiftSet b) =
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k : ZMod (d * d),
          ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2 := by
  unfold parityAffineChowlaFamilySpectralEnergy
  apply congrArg (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x)
  apply Finset.sum_congr rfl
  intro k _hk
  rw [parityEvenAffineChowlaFamilyAggregate_eq_signedResidueFourier]

theorem parityOddAffineChowlaSpectralEnergy_eq_fullFrequency
    (b d r : ℕ) [NeZero d] :
    parityAffineChowlaFamilySpectralEnergy
        b d r (positiveEndpointOddShiftSet b) =
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k : ZMod (d * d),
          ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2 := by
  unfold parityAffineChowlaFamilySpectralEnergy
  apply congrArg (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x)
  apply Finset.sum_congr rfl
  intro k _hk
  rw [parityOddAffineChowlaFamilyAggregate_eq_signedResidueFourier]

/-- Spectral energy minus exact integer-center second moment. -/
def parityAffineChowlaVarianceDefect
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  parityAffineChowlaFamilySpectralEnergy b d r H -
    4 * ∑ c ∈ Finset.range (b + 1),
      parityCenteredIntegerCoordinateAmplitude b r H c ^ 2

theorem parityAffineChowlaVarianceDefect_even_eq_wrap
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityAffineChowlaVarianceDefect
        b d r (positiveEndpointEvenShiftSet b) =
      parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointEvenShiftSet b) := by
  unfold parityAffineChowlaVarianceDefect
  rw [parityEvenAffineChowlaSpectralEnergy_eq_fullFrequency]
  rw [← parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment]
  exact
    (parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy
      b d r hr).symm

theorem parityAffineChowlaVarianceDefect_odd_eq_wrap
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityAffineChowlaVarianceDefect
        b d r (positiveEndpointOddShiftSet b) =
      parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointOddShiftSet b) := by
  unfold parityAffineChowlaVarianceDefect
  rw [parityOddAffineChowlaSpectralEnergy_eq_fullFrequency]
  rw [← parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment]
  exact
    (parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy
      b d r hr).symm

/-- Exact three-term form, retaining the subtractive variance. -/
theorem parityAffineChowlaVarianceDefect_eq_nonzero_add_meanInflation_sub_variance
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hwrap :
      parityAffineChowlaVarianceDefect b d r H =
        parityHalfIndexSignedQuarticWrap b d r H) :
    parityAffineChowlaVarianceDefect b d r H =
      parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
        parityCenteredWindingMeanInflation b d r H -
        4 * parityCenteredIntegerCoordinateVariance b r H := by
  rw [hwrap]
  exact
    parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
      b d r H

/-- Four-family absolute variance defect at one modulus. Absolute values are
inserted only after the signed spectral-energy/second-moment subtraction. -/
def regularCenteredWindingAffineChowlaVarianceDefectAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |parityAffineChowlaVarianceDefect b d 0 (positiveEndpointEvenShiftSet b)| +
  |parityAffineChowlaVarianceDefect b d 0 (positiveEndpointOddShiftSet b)| +
  |parityAffineChowlaVarianceDefect b d 1 (positiveEndpointEvenShiftSet b)| +
  |parityAffineChowlaVarianceDefect b d 1 (positiveEndpointOddShiftSet b)|

theorem regularCenteredWindingAffineChowlaVarianceDefectAtModulus_eq_residue
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingAffineChowlaVarianceDefectAtModulus b d =
      regularCenteredWindingResidueDispersionAtModulus b d := by
  unfold regularCenteredWindingAffineChowlaVarianceDefectAtModulus
    regularCenteredWindingResidueDispersionAtModulus
  rw [parityAffineChowlaVarianceDefect_even_eq_wrap b d 0 (by norm_num),
    parityAffineChowlaVarianceDefect_odd_eq_wrap b d 0 (by norm_num),
    parityAffineChowlaVarianceDefect_even_eq_wrap b d 1 (by norm_num),
    parityAffineChowlaVarianceDefect_odd_eq_wrap b d 1 (by norm_num),
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap]

/-- Effective-modulus endpoint variance defect. -/
def regularCenteredWindingAffineChowlaVarianceDefectEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingAffineChowlaVarianceDefectAtModulus b d
    else 0

theorem regularCenteredWindingAffineChowlaVarianceDefectEndpoint_eq_residue
    (b : ℕ) :
    regularCenteredWindingAffineChowlaVarianceDefectEndpoint b =
      regularCenteredWindingResidueDispersionEndpoint b := by
  unfold regularCenteredWindingAffineChowlaVarianceDefectEndpoint
    regularCenteredWindingResidueDispersionEndpoint
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos : 0 < d :=
    (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  exact regularCenteredWindingAffineChowlaVarianceDefectAtModulus_eq_residue b d

/-- Direct analytic interface preserving spectral/variance cancellation. -/
def RegularCenteredWindingAffineChowlaVarianceDefectEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    regularCenteredWindingAffineChowlaVarianceDefectEndpoint b ≤ E b

theorem regularCenteredWindingAffineChowlaVarianceDefectEnvelope_iff_residue
    (E : ℕ → ℝ) :
    RegularCenteredWindingAffineChowlaVarianceDefectEnvelope E ↔
      RegularCenteredWindingResidueDispersionEnvelope E := by
  constructor
  · intro h b
    rw [← regularCenteredWindingAffineChowlaVarianceDefectEndpoint_eq_residue]
    exact h b
  · intro h b
    rw [regularCenteredWindingAffineChowlaVarianceDefectEndpoint_eq_residue]
    exact h b

structure RegularCenteredWindingAffineChowlaVarianceDefectSourceData where
  theoremStatement : Prop
  existingAffineChowlaFamilyMatched : Prop
  allFrequenciesMatched : Prop
  zeroFrequencyPairMassMatched : Prop
  nonzeroFrequencyEnergyMatched : Prop
  integerCenterSecondMomentMatched : Prop
  centeredVarianceMatched : Prop
  signedSubtractionRetained : Prop
  absoluteValueInsertedAfterSubtraction : Prop
  residueDispersionExactlyMatched : Prop
  analyticEnvelopeExplicit : Prop

def RegularCenteredWindingAffineChowlaVarianceDefectSource
    (d : RegularCenteredWindingAffineChowlaVarianceDefectSourceData) : Prop :=
  d.theoremStatement ∧
  d.existingAffineChowlaFamilyMatched ∧
  d.allFrequenciesMatched ∧
  d.zeroFrequencyPairMassMatched ∧
  d.nonzeroFrequencyEnergyMatched ∧
  d.integerCenterSecondMomentMatched ∧
  d.centeredVarianceMatched ∧
  d.signedSubtractionRetained ∧
  d.absoluteValueInsertedAfterSubtraction ∧
  d.residueDispersionExactlyMatched ∧
  d.analyticEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityAffineChowlaVarianceDefect_even_eq_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingAffineChowlaVarianceDefectEndpoint_eq_residue
