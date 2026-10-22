/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #591. Parent: draft PR #590 at
`1e34c4df8845420832fb0aee9c1e12055320983f`.
-/
import GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientBoundaryWitness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Reciprocal first difference. -/
def reciprocalFirstDifference (m : ℕ) : ℝ :=
  ((m : ℝ))⁻¹ - (((m + 1 : ℕ) : ℝ))⁻¹

/-- Reciprocal second difference. -/
def reciprocalSecondDifference (m : ℕ) : ℝ :=
  reciprocalFirstDifference m - reciprocalFirstDifference (m + 1)

/-- Finite telescoping of first differences. -/
private theorem sum_Ico_sub_succ
    (f : ℕ → ℝ) {a b : ℕ} (hab : a ≤ b) :
    (∑ m ∈ Finset.Ico a b, (f m - f (m + 1))) =
      f a - f b := by
  induction b, hab using Nat.le_induction with
  | base =>
      simp
  | succ b hab ih =>
      rw [Finset.sum_Ico_succ_top (by omega), ih]
      ring

/-- Reciprocal second differences telescope to the boundary first
differences. -/
theorem sum_reciprocalSecondDifference_Ico
    {a b : ℕ} (hab : a ≤ b) :
    (∑ m ∈ Finset.Ico a b, reciprocalSecondDifference m) =
      reciprocalFirstDifference a - reciprocalFirstDifference b := by
  unfold reciprocalSecondDifference
  exact sum_Ico_sub_succ reciprocalFirstDifference hab

/-- Exact rational form of the reciprocal first difference. -/
theorem reciprocalFirstDifference_eq
    {m : ℕ} (hm : 1 ≤ m) :
    reciprocalFirstDifference m =
      1 / ((m : ℝ) * (m + 1 : ℝ)) := by
  unfold reciprocalFirstDifference
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hm1R : (0 : ℝ) < m + 1 := by positivity
  field_simp [ne_of_gt hmR, ne_of_gt hm1R]
  ring

/-- Exact rational form of the reciprocal second difference. -/
theorem reciprocalSecondDifference_eq
    {m : ℕ} (hm : 1 ≤ m) :
    reciprocalSecondDifference m =
      2 / ((m : ℝ) * (m + 1 : ℝ) * (m + 2 : ℝ)) := by
  unfold reciprocalSecondDifference
  rw [reciprocalFirstDifference_eq hm,
    reciprocalFirstDifference_eq (by omega : 1 ≤ m + 1)]
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hm1R : (0 : ℝ) < m + 1 := by positivity
  have hm2R : (0 : ℝ) < m + 2 := by positivity
  field_simp [ne_of_gt hmR, ne_of_gt hm1R, ne_of_gt hm2R]
  ring

/-- A reciprocal first difference is bounded by the reciprocal square at its
left endpoint. -/
theorem reciprocalFirstDifference_le_inv_sq
    {m : ℕ} (hm : 1 ≤ m) :
    reciprocalFirstDifference m ≤ ((m : ℝ)⁻¹) ^ 2 := by
  rw [reciprocalFirstDifference_eq hm]
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hm1 : (m : ℝ) ≤ m + 1 := by norm_num
  have hpos : 0 ≤ (m : ℝ) := le_of_lt hmR
  calc
    1 / ((m : ℝ) * (m + 1 : ℝ)) ≤
        1 / ((m : ℝ) * (m : ℝ)) := by
      apply one_div_le_one_div_of_le
      · positivity
      · exact mul_le_mul_of_nonneg_left hm1 hpos
    _ = ((m : ℝ)⁻¹) ^ 2 := by
      field_simp [ne_of_gt hmR]
      ring

/-- Left non-boundary coefficient mass is exactly a repeated second
difference. -/
theorem leftLengthCoefficientMass_eq_nonboundary
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    leftLengthCoefficientMass j n =
      ((2 ^ j - 1 : ℕ) : ℝ) *
        reciprocalSecondDifference (2 ^ j + n - 1) := by
  unfold leftLengthCoefficientMass
  have hterm :
      ∀ t ∈ leftCoefficientDepths j,
        coreTerminalLengthCoefficient j t n = 0 := by
    intro t ht
    simp only [leftCoefficientDepths, Finset.mem_filter,
      Finset.mem_range] at ht
    exact coreTerminalLengthCoefficient_eq_zero_left_of_ne
      ht.2 (by omega)
  have hinterior :
      ∀ t ∈ leftCoefficientDepths j,
        coreInteriorLengthCoefficient j t n =
          reciprocalSecondDifference (2 ^ j + n - 1) := by
    intro t ht
    simp only [leftCoefficientDepths, Finset.mem_filter,
      Finset.mem_range] at ht
    rw [coreInteriorLengthCoefficient_eq_left ht.2 hnH hnX]
    unfold reciprocalSecondDifference reciprocalFirstDifference
    congr 1 <;> congr 1 <;> omega
  calc
    (∑ t ∈ leftCoefficientDepths j,
      (coreTerminalLengthCoefficient j t n +
        coreInteriorLengthCoefficient j t n)) =
      ∑ _t ∈ leftCoefficientDepths j,
        reciprocalSecondDifference (2 ^ j + n - 1) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [hterm t ht, hinterior t ht, zero_add]
    _ = ((leftCoefficientDepths j).card : ℝ) *
        reciprocalSecondDifference (2 ^ j + n - 1) := by simp
    _ = _ := by rw [leftCoefficientDepths_card]

/-- The repeated left contribution already has reciprocal-square scale. -/
theorem leftLengthCoefficientMass_le_three_inv_sq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    leftLengthCoefficientMass j n ≤
      2 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by
  rw [leftLengthCoefficientMass_eq_nonboundary hnH hnX]
  let X : ℕ := 2 ^ j
  let m : ℕ := X + n - 1
  have hm : 1 ≤ m := by
    dsimp [m, X]
    positivity
  rw [reciprocalSecondDifference_eq hm]
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hmn : m + 1 = X + n := by
    dsimp [m]
    omega
  rw [hmn]
  have hXm : ((X - 1 : ℕ) : ℝ) ≤ (m : ℝ) := by
    exact_mod_cast (by
      dsimp [m]
      omega : X - 1 ≤ m)
  have hden : 0 ≤ ((X + n : ℕ) : ℝ) := by positivity
  calc
    ((X - 1 : ℕ) : ℝ) *
        (2 / ((m : ℝ) * ((X + n : ℕ) : ℝ) * ((m + 2 : ℕ) : ℝ))) ≤
      (m : ℝ) *
        (2 / ((m : ℝ) * ((X + n : ℕ) : ℝ) * ((m + 2 : ℕ) : ℝ))) := by
      apply mul_le_mul_of_nonneg_right hXm
      positivity
    _ ≤ 2 * ((((X + n : ℕ) : ℝ))⁻¹ ^ 2) := by
      have hnext :
          ((X + n : ℕ) : ℝ) ≤ ((m + 2 : ℕ) : ℝ) := by
        exact_mod_cast (by
          dsimp [m]
          omega : X + n ≤ m + 2)
      have hXnpos : (0 : ℝ) < X + n := by
        dsimp [X]
        positivity
      have hm2pos : (0 : ℝ) < m + 2 := by positivity
      field_simp [ne_of_gt hmR, ne_of_gt hXnpos, ne_of_gt hm2pos]
      nlinarith
    _ = _ := by rfl

/-- Source-facing right-regime telescoping target. -/
def RightLengthCoefficientTelescoping : Prop :=
  ∀ j n : ℕ,
    logarithmicShiftThreshold j ≤ n →
    n < 2 ^ j →
    rightLengthCoefficientMass j n =
      reciprocalFirstDifference (2 ^ j + n)

/-- Once the right-regime telescope is supplied, the corrected
reciprocal-square non-boundary estimate follows. -/
theorem fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
    (hRight : RightLengthCoefficientTelescoping)
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    fullLengthCoefficientMass j n ≤
      3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by
  rw [fullLengthCoefficientMass_eq_left_add_right,
    hRight j n hnH hnX]
  have hm : 1 ≤ 2 ^ j + n := by positivity
  calc
    leftLengthCoefficientMass j n +
        reciprocalFirstDifference (2 ^ j + n) ≤
      2 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) +
        (((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2 := by
      exact add_le_add
        (leftLengthCoefficientMass_le_three_inv_sq hnH hnX)
        (reciprocalFirstDifference_le_inv_sq hm)
    _ = 3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_reciprocalSecondDifference_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.leftLengthCoefficientMass_eq_nonboundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
