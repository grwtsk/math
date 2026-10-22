/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #589. Parent: draft PR #587 at
`c6bc20a46bcbaa748bba1168243dd71143b45e38`.
-/
import GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientMass

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The left depth set has exactly `2^j-1` elements. -/
theorem leftCoefficientDepths_card
    (j : ℕ) :
    (leftCoefficientDepths j).card = 2 ^ j - 1 := by
  unfold leftCoefficientDepths
  rw [Finset.card_filter]
  simp only [Finset.mem_range]
  have h :
      (Finset.range (2 ^ (j + 1))).filter (fun t => t + 1 < 2 ^ j) =
        Finset.range (2 ^ j - 1) := by
    ext t
    simp
    omega
  rw [h]
  simp

/-- At the boundary retained length `n=2^j`, every left-regime depth
contributes the same terminal first difference and no interior coefficient. -/
theorem leftLengthCoefficientMass_at_leftScale
    (j : ℕ) :
    leftLengthCoefficientMass j (2 ^ j) =
      ((2 ^ j - 1 : ℕ) : ℝ) *
        ((((2 ^ (j + 1) - 1 : ℕ) : ℝ))⁻¹ -
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
  unfold leftLengthCoefficientMass
  have hterm :
      ∀ t ∈ leftCoefficientDepths j,
        coreTerminalLengthCoefficient j t (2 ^ j) =
          ((((2 ^ (j + 1) - 1 : ℕ) : ℝ))⁻¹ -
            (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
    intro t ht
    simp only [leftCoefficientDepths, Finset.mem_filter,
      Finset.mem_range] at ht
    have htleft : t + 1 < 2 ^ j := ht.2
    unfold coreTerminalLengthCoefficient
    rw [harmonicShiftCount_eq_leftScale htleft]
    have hpos : 0 < 2 ^ j := by positivity
    simp [hpos]
    unfold harmonicShiftFirstDifference
    rw [harmonicShiftReciprocal_eq_left htleft,
      harmonicShiftReciprocal_eq_left htleft]
    congr 1 <;> congr 1 <;>
      rw [Nat.pow_succ] <;> omega
  have hinterior :
      ∀ t ∈ leftCoefficientDepths j,
        coreInteriorLengthCoefficient j t (2 ^ j) = 0 := by
    intro t ht
    simp only [leftCoefficientDepths, Finset.mem_filter,
      Finset.mem_range] at ht
    unfold coreInteriorLengthCoefficient
    rw [harmonicShiftCount_eq_leftScale ht.2]
    simp
  calc
    (∑ t ∈ leftCoefficientDepths j,
      (coreTerminalLengthCoefficient j t (2 ^ j) +
        coreInteriorLengthCoefficient j t (2 ^ j))) =
      ∑ _t ∈ leftCoefficientDepths j,
        (((((2 ^ (j + 1) - 1 : ℕ) : ℝ))⁻¹ -
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [hterm t ht, hinterior t ht, add_zero]
    _ = ((leftCoefficientDepths j).card : ℝ) *
        (((((2 ^ (j + 1) - 1 : ℕ) : ℝ))⁻¹ -
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)) := by simp
    _ = _ := by rw [leftCoefficientDepths_card]

/-- The boundary mass has reciprocal-first-power scale.  This coarse upper
bound is enough to classify the failed reciprocal-square target. -/
theorem leftLengthCoefficientMass_at_leftScale_le_inv
    (j : ℕ) :
    leftLengthCoefficientMass j (2 ^ j) ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  rw [leftLengthCoefficientMass_at_leftScale]
  let X : ℕ := 2 ^ j
  have hX : 1 ≤ X := by
    dsimp [X]
    positivity
  have hXR : (0 : ℝ) < X := by exact_mod_cast hX
  rw [show 2 ^ (j + 1) = 2 * X by
    dsimp [X]
    rw [Nat.pow_succ]
    ring]
  have h2X1 : (0 : ℝ) < 2 * X - 1 := by
    exact_mod_cast (by omega : 0 < 2 * X - 1)
  change ((X - 1 : ℕ) : ℝ) *
      (((2 * X - 1 : ℕ) : ℝ)⁻¹ - (((2 * X : ℕ) : ℝ))⁻¹) ≤
    (X : ℝ)⁻¹
  have hdiff :
      (((2 * X - 1 : ℕ) : ℝ)⁻¹ - (((2 * X : ℕ) : ℝ))⁻¹) =
        1 / (((2 * X - 1 : ℕ) : ℝ) * ((2 * X : ℕ) : ℝ)) := by
    field_simp
    ring
  rw [hdiff]
  positivity

/-- Revised piecewise coefficient-mass target: reciprocal-square away from the
boundary length, reciprocal-first-power at the repeated terminal boundary. -/
def PiecewiseReciprocalLengthCoefficientMassBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ j n : ℕ,
    logarithmicShiftThreshold j ≤ n →
    n ≤ 2 ^ j →
    fullLengthCoefficientMass j n ≤
      if n = 2 ^ j then
        C * (((2 ^ j : ℕ) : ℝ))⁻¹
      else
        C * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2)

/-- The originally proposed uniform reciprocal-square target is deliberately
kept separate from the corrected piecewise target. -/
structure CoefficientMassBoundaryWitness where
  boundaryFormula :
    ∀ j : ℕ,
      leftLengthCoefficientMass j (2 ^ j) =
        ((2 ^ j - 1 : ℕ) : ℝ) *
          ((((2 ^ (j + 1) - 1 : ℕ) : ℝ))⁻¹ -
            (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)
  correctedTarget : Prop := PiecewiseReciprocalLengthCoefficientMassBound

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.leftLengthCoefficientMass_at_leftScale
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.leftLengthCoefficientMass_at_leftScale_le_inv
