/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogWeightedPrefix
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def centeredGreenCutoff (X : ℕ) (t : ℝ) : ℕ :=
  ⌊(X : ℝ) * (1 + t)⌋₊

theorem centeredGreenCutoff_bounds
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    X ≤ centeredGreenCutoff X t ∧ centeredGreenCutoff X t ≤ 2 * X := by
  unfold centeredGreenCutoff
  have hXr : (0 : ℝ) ≤ X := by positivity
  have hlo : (X : ℝ) ≤ X * (1 + t) := by nlinarith
  have hhi : (X : ℝ) * (1 + t) < (2 * X + 1 : ℕ) := by
    push_cast
    nlinarith
  constructor
  · exact Nat.le_floor hlo
  · have hf := Nat.floor_lt hhi
    omega

theorem location_le_iff_le_cutoff
    {X n : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    centeredGreenLocation X n ≤ t ↔
      n ≤ centeredGreenCutoff X t := by
  unfold centeredGreenLocation centeredGreenCutoff
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  rw [sub_le_iff_le_add, ← (div_le_iff₀ hXpos)]
  exact Nat.le_floor

/-- The atomic cumulative is exactly the weighted prefix at the geometric
cutoff selected by t. -/
theorem thinHistoricalAtomicCumulative_eq_weightedPrefix
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    thinHistoricalAtomicCumulative X t =
      centeredGreenWeightedPrefix X (centeredGreenCutoff X t) := by
  unfold thinHistoricalAtomicCumulative thinHistoricalStep
    centeredGreenWeightedPrefix centeredGreenWindow
    centeredGreenArithmeticCoefficient
  let m := centeredGreenCutoff X t
  have hm := centeredGreenCutoff_bounds hX ht0 ht1
  apply Finset.sum_bij (fun n hn => n)
  · intro n hn
    have hi := Finset.mem_Ioc.mp hn
    simp only
    rw [if_pos ((location_le_iff_le_cutoff hX ht0 ht1).mpr hi.2)]
    exact Finset.mem_Ioc.mpr ⟨hi.1, hi.2⟩
  · intro a ha b hb hab
    exact hab
  · intro b hb
    refine ⟨b, ?_, rfl⟩
    have hi := Finset.mem_Ioc.mp hb
    exact Finset.mem_Ioc.mpr ⟨hi.1, (by
      rw [location_le_iff_le_cutoff hX ht0 ht1]
      exact hi.2)⟩
  · intro n hn
    rfl

def centeredGreenBaselinePrefixResidual
    (X : ℕ) (t : ℝ) : ℝ :=
  centeredGreenBaselineWeightedPrefix X (centeredGreenCutoff X t) -
    Real.log (1 + t)

/-- Uniform deterministic baseline discrepancy. -/
theorem abs_centeredGreenBaselinePrefixResidual_le
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    |centeredGreenBaselinePrefixResidual X t| ≤ 2 / (X : ℝ) := by
  unfold centeredGreenBaselinePrefixResidual
  let m := centeredGreenCutoff X t
  have hm := centeredGreenCutoff_bounds hX ht0 ht1
  have hfloor_lo :
      (m : ℝ) ≤ (X : ℝ) * (1 + t) := Nat.floor_le (by positivity)
  have hfloor_hi :
      (X : ℝ) * (1 + t) < m + 1 := Nat.lt_floor_add_one _
  have hharm :
      |centeredGreenBaselineWeightedPrefix X m -
        Real.log ((m : ℝ) / X)| ≤ 1 / (X : ℝ) := by
    unfold centeredGreenBaselineWeightedPrefix
    -- decreasing-function right-sum estimate on [X,m]
    have hXp : (0 : ℝ) < X := by exact_mod_cast hX
    have hmp : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm.1)
    exact harmonic_Ioc_sub_log_ratio_abs_le hX hm.1
  have hloggap :
      |Real.log ((m : ℝ) / X) - Real.log (1 + t)| ≤ 1 / (X : ℝ) := by
    have hXp : (0 : ℝ) < X := by exact_mod_cast hX
    have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm.1)
    have hratio :
        0 ≤ (1 + t) - (m : ℝ) / X ∧
        (1 + t) - (m : ℝ) / X < 1 / X := by
      constructor <;> field_simp <;> nlinarith
    exact abs_log_sub_log_le_of_close hXp hmpos hratio
  exact (abs_sub_le _ _ _).trans (by linarith)

end GRWTSK.RiemannHypothesis
