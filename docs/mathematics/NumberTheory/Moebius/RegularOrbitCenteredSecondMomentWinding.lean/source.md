# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredSecondMomentWinding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e44ebebb57ac3f6f8eda89dc83abcfaeede76d95` · SHA-256 `88c29f315a34058afc381c07b6986e537ff440ac52ba220edc85fdc08f155fb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #925. Parent: draft PR #924 at f1fc866c602a4e6ab10688043cf359602406fcbd.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredCauchyDimensionReduction
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

def regularCenteredFourFamilySecondMoment (b : ℕ) : ℝ :=
  parityCenteredIntegerCoordinateSecondMoment b 0 (positiveEndpointEvenShiftSet b) +
  parityCenteredIntegerCoordinateSecondMoment b 0 (positiveEndpointOddShiftSet b) +
  parityCenteredIntegerCoordinateSecondMoment b 1 (positiveEndpointEvenShiftSet b) +
  parityCenteredIntegerCoordinateSecondMoment b 1 (positiveEndpointOddShiftSet b)

def regularCenteredFourFamilyZeroWindingEnergy (b : ℕ) : ℝ :=
  parityHalfIndexZeroWindingFiberEnergy b 0 (positiveEndpointEvenShiftSet b) +
  parityHalfIndexZeroWindingFiberEnergy b 0 (positiveEndpointOddShiftSet b) +
  parityHalfIndexZeroWindingFiberEnergy b 1 (positiveEndpointEvenShiftSet b) +
  parityHalfIndexZeroWindingFiberEnergy b 1 (positiveEndpointOddShiftSet b)

theorem regularCenteredFourFamilyZeroWindingEnergy_eq_four_mul_secondMoment
    (b : ℕ) :
    regularCenteredFourFamilyZeroWindingEnergy b =
      4 * regularCenteredFourFamilySecondMoment b := by
  unfold regularCenteredFourFamilyZeroWindingEnergy
    regularCenteredFourFamilySecondMoment
  rw [parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment,
    parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment,
    parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment,
    parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment]
  ring

/-- Cauchy-based winding cost at one modulus. -/
def regularCenteredCauchyWindingCostAtModulus
    (b d : ℕ) : ℝ :=
  8 * (centeredWindingRadius b d : ℝ) *
    regularCenteredFourFamilySecondMoment b

/-- Effective-modulus aggregate of the Cauchy winding cost. -/
def regularCenteredCauchyWindingCostEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    regularCenteredCauchyWindingCostAtModulus b d

theorem centeredWindingRadius_cast_le_b_mul_reciprocalSquare
    (b d : ℕ) [NeZero d] :
    (centeredWindingRadius b d : ℝ) ≤
      (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) := by
  exact centeredWindingRadius_cast_le b d

theorem regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment
    (b : ℕ) :
    regularCenteredCauchyWindingCostEndpoint b ≤
      16 * (b : ℝ) * regularCenteredFourFamilySecondMoment b := by
  unfold regularCenteredCauchyWindingCostEndpoint
    regularCenteredCauchyWindingCostAtModulus
  have hM : 0 ≤ regularCenteredFourFamilySecondMoment b := by
    unfold regularCenteredFourFamilySecondMoment parityCenteredIntegerCoordinateSecondMoment
    positivity
  calc
    _ ≤ ∑ d ∈ effectiveEndpointSquareModulusSet b,
        8 * ((b : ℝ) * (((d : ℝ) ^ 2)⁻¹)) *
          regularCenteredFourFamilySecondMoment b := by
      apply Finset.sum_le_sum
      intro d hdmem
      have hdpos : 0 < d :=
        (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
      let : NeZero d := ⟨ne_of_gt hdpos⟩
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left
          (centeredWindingRadius_cast_le_b_mul_reciprocalSquare b d)
          (by norm_num))
        hM
    _ = 8 * (b : ℝ) * regularCenteredFourFamilySecondMoment b *
        (∑ d ∈ effectiveEndpointSquareModulusSet b,
          (((d : ℝ) ^ 2)⁻¹)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ ≤ 8 * (b : ℝ) * regularCenteredFourFamilySecondMoment b * 2 := by
      exact mul_le_mul_of_nonneg_left
        (effectiveSquareModulusReciprocalSquareMass_le_two b)
        (by positivity)
    _ = 16 * (b : ℝ) * regularCenteredFourFamilySecondMoment b := by ring

theorem regularCenteredCauchyWindingCostEndpoint_le_four_mul_b_zeroEnergy
    (b : ℕ) :
    regularCenteredCauchyWindingCostEndpoint b ≤
      4 * (b : ℝ) * regularCenteredFourFamilyZeroWindingEnergy b := by
  rw [regularCenteredFourFamilyZeroWindingEnergy_eq_four_mul_secondMoment]
  have h :=
    regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment b
  nlinarith

/-- Subpolynomial second-moment supplier sufficient for natural-scale wrap
control via the Cauchy route. -/
def SubpolynomialRegularCenteredSecondMoment : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ b : ℕ,
      regularCenteredFourFamilySecondMoment b ≤
        C * (((b + 1 : ℕ) : ℝ) ^ ε)

/-- Equivalent zero-winding-energy formulation up to the exact factor four. -/
def SubpolynomialRegularCenteredZeroWindingEnergy : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ b : ℕ,
      regularCenteredFourFamilyZeroWindingEnergy b ≤
        C * (((b + 1 : ℕ) : ℝ) ^ ε)

structure RegularCenteredSecondMomentWindingSourceData where
  theoremStatement : Prop
  fourFamilySecondMomentMatched : Prop
  fourFamilyZeroWindingEnergyMatched : Prop
  exactFactorFourMatched : Prop
  windingRadiusReciprocalSquareMatched : Prop
  reciprocalSquareModulusMassMatched : Prop
  endpointFactorSixteenMatched : Prop
  zeroEnergyFactorFourMatched : Prop
  subpolynomialEnergyRequirementExplicit : Prop
  existingSupplierStrengthNotClaimed : Prop

def RegularCenteredSecondMomentWindingSource
    (d : RegularCenteredSecondMomentWindingSourceData) : Prop :=
  d.theoremStatement ∧
  d.fourFamilySecondMomentMatched ∧
  d.fourFamilyZeroWindingEnergyMatched ∧
  d.exactFactorFourMatched ∧
  d.windingRadiusReciprocalSquareMatched ∧
  d.reciprocalSquareModulusMassMatched ∧
  d.endpointFactorSixteenMatched ∧
  d.zeroEnergyFactorFourMatched ∧
  d.subpolynomialEnergyRequirementExplicit ∧
  d.existingSupplierStrengthNotClaimed

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
