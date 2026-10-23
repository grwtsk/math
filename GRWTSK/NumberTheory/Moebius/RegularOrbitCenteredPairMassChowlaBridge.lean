/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #874. Parent: draft PR #857 at 7b2d2c14869efbc02f34c9f63e25fc85a64d92e2.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingMeanInflation
import GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityResidueConvolution

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Existing even affine-Chowla zero-frequency aggregate. -/
def parityEvenAffineChowlaZeroFrequencyAggregate
    (b d r : ℕ) [NeZero d] : ℂ :=
  ∑ h ∈ positiveEndpointEvenShiftSet b,
    parityGrowingShiftAffineChowlaTwist b d r h (0 : ZMod (d * d))

/-- Existing odd affine-Chowla zero-frequency aggregate. -/
def parityOddAffineChowlaZeroFrequencyAggregate
    (b d r : ℕ) [NeZero d] : ℂ :=
  ∑ h ∈ positiveEndpointOddShiftSet b,
    parityGrowingShiftAffineChowlaTwist b d r h (0 : ZMod (d * d))

theorem parityEvenAffineChowlaZeroFrequencyAggregate_eq_fourierZero
    (b d r : ℕ) [NeZero d] :
    parityEvenAffineChowlaZeroFrequencyAggregate b d r =
      parityEvenHalfShiftSignedResidueFourier b d r (0 : ZMod (d * d)) := by
  exact (parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists
    b d r (0 : ZMod (d * d))).symm

theorem parityOddAffineChowlaZeroFrequencyAggregate_eq_fourierZero
    (b d r : ℕ) [NeZero d] :
    parityOddAffineChowlaZeroFrequencyAggregate b d r =
      parityOddHalfShiftSignedResidueFourier b d r (0 : ZMod (d * d)) := by
  exact (parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists
    b d r (0 : ZMod (d * d))).symm

/-- Pair mass is exactly half the existing even affine-Chowla zero mode. -/
theorem parityEvenAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityEvenAffineChowlaZeroFrequencyAggregate b d r =
      (2 : ℂ) *
        (parityHalfIndexCenteredPairMass
          b r (positiveEndpointEvenShiftSet b) : ℂ) := by
  rw [parityEvenAffineChowlaZeroFrequencyAggregate_eq_fourierZero]
  exact parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
    b d r hr

/-- Pair mass is exactly half the existing odd affine-Chowla zero mode. -/
theorem parityOddAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityOddAffineChowlaZeroFrequencyAggregate b d r =
      (2 : ℂ) *
        (parityHalfIndexCenteredPairMass
          b r (positiveEndpointOddShiftSet b) : ℂ) := by
  rw [parityOddAffineChowlaZeroFrequencyAggregate_eq_fourierZero]
  exact parityOddHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
    b d r hr

/-- Four existing zero-frequency affine-Chowla squared norms. -/
def regularCenteredWindingAffineChowlaZeroFrequencySquareMass
    (b d : ℕ) [NeZero d] : ℝ :=
  ‖parityEvenAffineChowlaZeroFrequencyAggregate b d 0‖ ^ 2 +
  ‖parityOddAffineChowlaZeroFrequencyAggregate b d 0‖ ^ 2 +
  ‖parityEvenAffineChowlaZeroFrequencyAggregate b d 1‖ ^ 2 +
  ‖parityOddAffineChowlaZeroFrequencyAggregate b d 1‖ ^ 2

/-- The four-family pair-mass square is exactly one quarter of the existing
zero-frequency affine-Chowla square mass. -/
theorem regularCenteredWindingAffineChowlaZeroFrequencySquareMass_eq_four_mul_pairMassSquare
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingAffineChowlaZeroFrequencySquareMass b d =
      4 * regularCenteredWindingPairMassSquare b := by
  unfold regularCenteredWindingAffineChowlaZeroFrequencySquareMass
    regularCenteredWindingPairMassSquare
  rw [parityEvenAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
      b d 0 (by norm_num),
    parityOddAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
      b d 0 (by norm_num),
    parityEvenAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
      b d 1 (by norm_num),
    parityOddAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
      b d 1 (by norm_num)]
  simp [norm_mul, Complex.norm_real, Real.norm_eq_abs, sq_abs]
  ring

/-- The same square mass written directly in the existing signed-residue
Fourier zero modes. -/
def regularCenteredWindingSignedResidueFourierZeroSquareMass
    (b d : ℕ) [NeZero d] : ℝ :=
  ‖parityEvenHalfShiftSignedResidueFourier b d 0 (0 : ZMod (d * d))‖ ^ 2 +
  ‖parityOddHalfShiftSignedResidueFourier b d 0 (0 : ZMod (d * d))‖ ^ 2 +
  ‖parityEvenHalfShiftSignedResidueFourier b d 1 (0 : ZMod (d * d))‖ ^ 2 +
  ‖parityOddHalfShiftSignedResidueFourier b d 1 (0 : ZMod (d * d))‖ ^ 2

theorem regularCenteredWindingSignedResidueFourierZeroSquareMass_eq_affineChowla
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingSignedResidueFourierZeroSquareMass b d =
      regularCenteredWindingAffineChowlaZeroFrequencySquareMass b d := by
  unfold regularCenteredWindingSignedResidueFourierZeroSquareMass
    regularCenteredWindingAffineChowlaZeroFrequencySquareMass
  rw [parityEvenAffineChowlaZeroFrequencyAggregate_eq_fourierZero,
    parityOddAffineChowlaZeroFrequencyAggregate_eq_fourierZero,
    parityEvenAffineChowlaZeroFrequencyAggregate_eq_fourierZero,
    parityOddAffineChowlaZeroFrequencyAggregate_eq_fourierZero]

/-- A modulus-uniform zero-frequency affine-Chowla square envelope. -/
def RegularCenteredWindingAffineChowlaZeroFrequencySquareEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b d : ℕ, ∀ _hd : NeZero d,
    regularCenteredWindingAffineChowlaZeroFrequencySquareMass b d ≤ 4 * E b

/-- Existing zero-frequency affine-Chowla control supplies exactly the
pair-mass-square envelope needed by the mean-inflation layer. -/
theorem regularCenteredWindingPairMassSquareEnvelope_of_affineChowlaZeroFrequency
    {E : ℕ → ℝ}
    (hE : RegularCenteredWindingAffineChowlaZeroFrequencySquareEnvelope E) :
    RegularCenteredWindingPairMassSquareEnvelope E := by
  intro b
  letI : NeZero 1 := ⟨by norm_num⟩
  have h := hE b 1
  rw [regularCenteredWindingAffineChowlaZeroFrequencySquareMass_eq_four_mul_pairMassSquare] at h
  nlinarith

/-- Composition into the deterministic mean-inflation envelope. -/
theorem regularCenteredWindingMeanInflationEnvelope_of_affineChowlaZeroFrequency
    {E : ℕ → ℝ}
    (hE : RegularCenteredWindingAffineChowlaZeroFrequencySquareEnvelope E) :
    RegularCenteredWindingMeanInflationEnvelope (fun b => 8 * E b) :=
  regularCenteredWindingMeanInflationEnvelope_of_pairMassSquare
    (regularCenteredWindingPairMassSquareEnvelope_of_affineChowlaZeroFrequency hE)

structure RegularCenteredWindingPairMassChowlaSourceData where
  theoremStatement : Prop
  existingAffineChowlaTwistsMatched : Prop
  zeroFrequencyMatched : Prop
  evenHalfShiftFamilyMatched : Prop
  oddHalfShiftFamilyMatched : Prop
  bothEndpointParitiesMatched : Prop
  factorTwoNormalizationMatched : Prop
  fourFamilySquareMassMatched : Prop
  pairMassSquareEnvelopeMatched : Prop
  meanInflationCompositionMatched : Prop

def RegularCenteredWindingPairMassChowlaSource
    (d : RegularCenteredWindingPairMassChowlaSourceData) : Prop :=
  d.theoremStatement ∧
  d.existingAffineChowlaTwistsMatched ∧
  d.zeroFrequencyMatched ∧
  d.evenHalfShiftFamilyMatched ∧
  d.oddHalfShiftFamilyMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.factorTwoNormalizationMatched ∧
  d.fourFamilySquareMassMatched ∧
  d.pairMassSquareEnvelopeMatched ∧
  d.meanInflationCompositionMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityEvenAffineChowlaZeroFrequencyAggregate_eq_two_mul_pairMass
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingAffineChowlaZeroFrequencySquareMass_eq_four_mul_pairMassSquare
