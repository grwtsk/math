/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMeshPhase
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def greenMeshWeight (X j : ℕ) : ℝ :=
  1 / (1 + (j : ℝ) / (X : ℝ))

def greenMeshPhasePartialSum (X : ℕ) (k : ℤ) (m : ℕ) : ℂ :=
  ∑ j ∈ Finset.Icc 1 m, (greenMeshPhase X k) ^ j

/-- Exact finite Abel transform for the weighted mesh phase sum. -/
theorem greenMesh_weighted_phase_abel
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    (∑ j ∈ Finset.Icc 1 X,
        (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j) =
      (greenMeshWeight X X : ℂ) *
          greenMeshPhasePartialSum X k X +
        ∑ m ∈ Finset.Icc 1 (X - 1),
          ((greenMeshWeight X m - greenMeshWeight X (m + 1) : ℝ) : ℂ) *
            greenMeshPhasePartialSum X k m := by
  unfold greenMeshPhasePartialSum
  -- Finite summation by parts; expand partial sums and swap the triangular sum.
  induction X using Nat.case_strong_induction_on with
  | hz => omega
  | hs X ih =>
      by_cases hX0 : X = 0
      · subst X
        simp [greenMeshWeight]
      · have hXp : 1 ≤ X := by omega
        rw [show Finset.Icc 1 (X + 1) =
            insert (X + 1) (Finset.Icc 1 X) by
          ext j
          simp
          omega]
        rw [Finset.sum_insert (by simp)]
        have ih' := ih X (by omega) hXp k
        rw [ih']
        simp only [Nat.add_sub_cancel]
        ring_nf
        -- The new endpoint coefficient combines with the last old partial sum.
        ring

theorem greenMeshWeight_nonnegative
    {X j : ℕ} (hX : 1 ≤ X) :
    0 ≤ greenMeshWeight X j := by
  unfold greenMeshWeight
  positivity

theorem greenMeshWeight_antitone
    {X : ℕ} (hX : 1 ≤ X) :
    Antitone (greenMeshWeight X) := by
  intro a b hab
  unfold greenMeshWeight
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  apply one_div_le_one_div_of_le
  · positivity
  · gcongr
    exact_mod_cast hab

/-- Total Abel coefficient mass is at most one. -/
theorem greenMeshWeight_abel_mass_le_one
    {X : ℕ} (hX : 1 ≤ X) :
    greenMeshWeight X X +
      ∑ m ∈ Finset.Icc 1 (X - 1),
        (greenMeshWeight X m - greenMeshWeight X (m + 1)) ≤ 1 := by
  have hanti := greenMeshWeight_antitone hX
  have htel :
      ∑ m ∈ Finset.Icc 1 (X - 1),
        (greenMeshWeight X m - greenMeshWeight X (m + 1)) =
      greenMeshWeight X 1 - greenMeshWeight X X := by
    rw [Finset.sum_Icc_eq_sum_range]
    rw [Finset.sum_range_sub_sum_range_add_one]
    simp
  rw [htel]
  have hweight1 : greenMeshWeight X 1 ≤ 1 := by
    unfold greenMeshWeight
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    exact (div_le_one (by positivity)).2 (by positivity)
  linarith

/-- Weighted root-of-unity sum inherits the geometric partial-sum bound. -/
theorem norm_greenMesh_weighted_phase_sum_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hq : greenMeshPhase X k ≠ 1) :
    ‖∑ j ∈ Finset.Icc 1 X,
        (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j‖ ≤
      2 / ‖1 - greenMeshPhase X k‖ := by
  rw [greenMesh_weighted_phase_abel hX]
  calc
    ‖(greenMeshWeight X X : ℂ) * greenMeshPhasePartialSum X k X +
        ∑ m ∈ Finset.Icc 1 (X - 1),
          ((greenMeshWeight X m - greenMeshWeight X (m + 1) : ℝ) : ℂ) *
            greenMeshPhasePartialSum X k m‖ ≤
      greenMeshWeight X X * (2 / ‖1 - greenMeshPhase X k‖) +
        ∑ m ∈ Finset.Icc 1 (X - 1),
          (greenMeshWeight X m - greenMeshWeight X (m + 1)) *
            (2 / ‖1 - greenMeshPhase X k‖) := by
      apply add_le_add
      · rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
          abs_of_nonneg (greenMeshWeight_nonnegative hX)]
        exact mul_le_mul_of_nonneg_left
          (norm_sum_greenMeshPhase_pow_le hq)
          (greenMeshWeight_nonnegative hX)
      · exact norm_sum_le_of_le _ _ (fun m hm => by
          rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
          have hdiff : 0 ≤ greenMeshWeight X m -
              greenMeshWeight X (m + 1) := by
            exact sub_nonneg.mpr (greenMeshWeight_antitone hX (Nat.le_succ m))
          rw [abs_of_nonneg hdiff]
          exact mul_le_mul_of_nonneg_left
            (norm_sum_greenMeshPhase_pow_le hq) hdiff)
    _ ≤ 2 / ‖1 - greenMeshPhase X k‖ := by
      have hmass := greenMeshWeight_abel_mass_le_one hX
      have hfac : 0 ≤ 2 / ‖1 - greenMeshPhase X k‖ := by positivity
      rw [← Finset.sum_mul]
      nlinarith

end GRWTSK.RiemannHypothesis
