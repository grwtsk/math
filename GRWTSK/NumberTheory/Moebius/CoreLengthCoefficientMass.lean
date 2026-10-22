/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #585. Parent: draft PR #584 at
`a73b1a1f5a4a22ba57101740cebabe896521fccc`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalOuterTranspose

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Left depth regime below the dyadic midpoint. -/
def leftCoefficientDepths (j : ℕ) : Finset ℕ :=
  (Finset.range (2 ^ (j + 1))).filter (fun t => t + 1 < 2 ^ j)

/-- Right depth regime from the dyadic midpoint onward. -/
def rightCoefficientDepths (j : ℕ) : Finset ℕ :=
  (Finset.range (2 ^ (j + 1))).filter (fun t => 2 ^ j ≤ t + 1)

/-- Below the midpoint, the active shift origin is exactly
`2^j-t-1`. -/
theorem harmonicShiftLower_eq_left
    {j t : ℕ} (ht : t + 1 < 2 ^ j) :
    harmonicShiftLower j t = 2 ^ j - t - 1 := by
  unfold harmonicShiftLower
  apply max_eq_right
  omega

/-- Below the midpoint, the active shift count is exactly `2^j`. -/
theorem harmonicShiftCount_eq_leftScale
    {j t : ℕ} (ht : t + 1 < 2 ^ j) :
    harmonicShiftCount j t = 2 ^ j := by
  unfold harmonicShiftCount harmonicShiftUpper
  rw [harmonicShiftLower_eq_left ht, Nat.pow_succ]
  omega

/-- Below the midpoint, the reciprocal coordinate loses all depth dependence. -/
theorem harmonicShiftReciprocal_eq_left
    {j t k : ℕ} (ht : t + 1 < 2 ^ j) :
    harmonicShiftReciprocal j t k =
      (((2 ^ j + k : ℕ) : ℝ))⁻¹ := by
  unfold harmonicShiftReciprocal
  rw [harmonicShiftLower_eq_left ht]
  congr 2
  omega

/-- At and above the midpoint, the active shift origin is one. -/
theorem harmonicShiftLower_eq_right
    {j t : ℕ} (ht : 2 ^ j ≤ t + 1) :
    harmonicShiftLower j t = 1 := by
  unfold harmonicShiftLower
  rw [max_eq_left]
  · rfl
  · omega

/-- At and above the midpoint, the active shift count is the remaining
right-endpoint distance. -/
theorem harmonicShiftCount_eq_rightDistance
    {j t : ℕ} (ht : 2 ^ j ≤ t + 1) :
    harmonicShiftCount j t = 2 ^ (j + 1) - t - 2 := by
  unfold harmonicShiftCount harmonicShiftUpper
  rw [harmonicShiftLower_eq_right ht]
  omega

/-- At and above the midpoint, the reciprocal coordinate is the literal
depth-plus-length reciprocal. -/
theorem harmonicShiftReciprocal_eq_right
    {j t k : ℕ} (ht : 2 ^ j ≤ t + 1) :
    harmonicShiftReciprocal j t k =
      (((t + 2 + k : ℕ) : ℝ))⁻¹ := by
  unfold harmonicShiftReciprocal
  rw [harmonicShiftLower_eq_right ht]
  congr 2
  omega

/-- Full depth coefficient mass, before restricting to genuine core depths.
This nonnegative enlargement is useful because the left/right regimes become
rectangular. -/
def fullLengthCoefficientMass (j n : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    (coreTerminalLengthCoefficient j t n +
      coreInteriorLengthCoefficient j t n)

/-- Core coefficient mass is bounded by the corresponding full depth mass. -/
theorem coreLengthCoefficientMass_le_full
    (j n : ℕ) :
    coreLengthCoefficientMass j n ≤
      fullLengthCoefficientMass j n := by
  unfold coreLengthCoefficientMass fullLengthCoefficientMass
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro t ht
    simp only [coreLongDeepDepths, Finset.mem_filter, Finset.mem_Ico] at ht
    simp only [Finset.mem_range]
    exact ht.1.2
  · intro t _ht _hnot
    exact add_nonneg
      (coreTerminalLengthCoefficient_nonneg j t n)
      (coreInteriorLengthCoefficient_nonneg j t n)

/-- Left-regime full coefficient mass. -/
def leftLengthCoefficientMass (j n : ℕ) : ℝ :=
  ∑ t ∈ leftCoefficientDepths j,
    (coreTerminalLengthCoefficient j t n +
      coreInteriorLengthCoefficient j t n)

/-- Right-regime full coefficient mass. -/
def rightLengthCoefficientMass (j n : ℕ) : ℝ :=
  ∑ t ∈ rightCoefficientDepths j,
    (coreTerminalLengthCoefficient j t n +
      coreInteriorLengthCoefficient j t n)

/-- The full coefficient mass splits exactly into the two dyadic depth
regimes. -/
theorem fullLengthCoefficientMass_eq_left_add_right
    (j n : ℕ) :
    fullLengthCoefficientMass j n =
      leftLengthCoefficientMass j n +
        rightLengthCoefficientMass j n := by
  unfold fullLengthCoefficientMass
    leftLengthCoefficientMass rightLengthCoefficientMass
    leftCoefficientDepths rightCoefficientDepths
  rw [← Finset.sum_filter_add_sum_filter_not
    (s := Finset.range (2 ^ (j + 1)))
    (p := fun t => t + 1 < 2 ^ j)]
  congr 1
  apply Finset.sum_congr
  · ext t
    simp [Nat.not_lt]
  · intro t _ht
    rfl

/-- In the left regime, every terminal selector has the same active length
`2^j`. -/
theorem coreTerminalLengthCoefficient_eq_zero_left_of_ne
    {j t n : ℕ}
    (ht : t + 1 < 2 ^ j)
    (hne : n ≠ 2 ^ j) :
    coreTerminalLengthCoefficient j t n = 0 := by
  unfold coreTerminalLengthCoefficient
  rw [harmonicShiftCount_eq_leftScale ht]
  simp [hne]

/-- In the left regime, an interior coefficient is the same reciprocal second
difference at every depth. -/
theorem coreInteriorLengthCoefficient_eq_left
    {j t n : ℕ}
    (ht : t + 1 < 2 ^ j)
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    coreInteriorLengthCoefficient j t n =
      ((((2 ^ j + n - 1 : ℕ) : ℝ))⁻¹ -
        (((2 ^ j + n : ℕ) : ℝ))⁻¹) -
      ((((2 ^ j + n : ℕ) : ℝ))⁻¹ -
        (((2 ^ j + n + 1 : ℕ) : ℝ))⁻¹) := by
  unfold coreInteriorLengthCoefficient harmonicShiftSecondDifference
    harmonicShiftFirstDifference
  rw [if_pos ⟨hnH, by simpa [harmonicShiftCount_eq_leftScale ht] using hnX⟩]
  rw [harmonicShiftReciprocal_eq_left ht,
    harmonicShiftReciprocal_eq_left ht,
    harmonicShiftReciprocal_eq_left ht]
  have hn : 1 ≤ n := by
    have hH : 1 ≤ logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  congr 1 <;> congr 1 <;> omega

/-- In the right regime, an interior coefficient is the reciprocal second
difference whose denominator advances literally with depth. -/
theorem coreInteriorLengthCoefficient_eq_right
    {j t n : ℕ}
    (ht : 2 ^ j ≤ t + 1)
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnN : n < harmonicShiftCount j t) :
    coreInteriorLengthCoefficient j t n =
      ((((t + n + 1 : ℕ) : ℝ))⁻¹ -
        (((t + n + 2 : ℕ) : ℝ))⁻¹) -
      ((((t + n + 2 : ℕ) : ℝ))⁻¹ -
        (((t + n + 3 : ℕ) : ℝ))⁻¹) := by
  unfold coreInteriorLengthCoefficient harmonicShiftSecondDifference
    harmonicShiftFirstDifference
  rw [if_pos ⟨hnH, hnN⟩]
  rw [harmonicShiftReciprocal_eq_right ht,
    harmonicShiftReciprocal_eq_right ht,
    harmonicShiftReciprocal_eq_right ht]
  have hn : 1 ≤ n := by
    have hH : 1 ≤ logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  congr 1 <;> congr 1 <;> omega

/-- Source-facing reciprocal-mass target isolated from the Möbius data. -/
def ReciprocalLengthCoefficientMassBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ j n : ℕ,
    logarithmicShiftThreshold j ≤ n →
    n ≤ 2 ^ j →
    fullLengthCoefficientMass j n ≤
      C * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2)

/-- Any full-mass reciprocal estimate automatically controls the actual core
coefficient mass. -/
theorem coreLengthCoefficientMass_le_of_reciprocalBound
    (h : ReciprocalLengthCoefficientMassBound) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j n : ℕ,
      logarithmicShiftThreshold j ≤ n →
      n ≤ 2 ^ j →
      coreLengthCoefficientMass j n ≤
        C * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by
  obtain ⟨C, hC, hb⟩ := h
  refine ⟨C, hC, ?_⟩
  intro j n hnH hnX
  exact le_trans (coreLengthCoefficientMass_le_full j n)
    (hb j n hnH hnX)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftReciprocal_eq_left
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftReciprocal_eq_right
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_eq_left_add_right
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLengthCoefficientMass_le_of_reciprocalBound
