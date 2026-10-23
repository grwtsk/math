/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Self-contained harmonic/log quadrature lemmas for the Green cutoff.
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Right-cell comparison for 1/u on a positive integer cell. -/
theorem one_div_le_cell_integral
    {n : ℕ} (hn : 1 ≤ n) :
    1 / (n : ℝ) ≤ ∫ u in (n - 1 : ℕ : ℝ)..(n : ℝ), 1 / u := by
  have hmono : ∀ u ∈ Set.Icc ((n - 1 : ℕ) : ℝ) n,
      1 / (n : ℝ) ≤ 1 / u := by
    intro u hu
    have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
    exact one_div_le_one_div_of_le (by linarith [hu.1]) hu.2
  have hconst :
      (∫ _u in ((n - 1 : ℕ) : ℝ)..(n : ℝ), 1 / (n : ℝ)) =
        1 / (n : ℝ) := by
    simp
  rw [← hconst]
  apply intervalIntegral.integral_mono_on
  · exact intervalIntegrable_const
  · exact (ContinuousOn.intervalIntegrable
      (by
        apply ContinuousOn.one_div continuousOn_const continuousOn_id
        intro u hu
        have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
        linarith [hu.1]))
  · exact hmono

/-- Left-cell comparison for 1/u. -/
theorem cell_integral_le_one_div
    {n : ℕ} (hn : 1 ≤ n) :
    (∫ u in (n : ℝ)..(n + 1 : ℕ : ℝ), 1 / u) ≤ 1 / (n : ℝ) := by
  have hmono : ∀ u ∈ Set.Icc (n : ℝ) ((n + 1 : ℕ) : ℝ),
      1 / u ≤ 1 / (n : ℝ) := by
    intro u hu
    have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
    exact one_div_le_one_div_of_le hnpos hu.1
  have hconst :
      (∫ _u in (n : ℝ)..((n + 1 : ℕ) : ℝ), 1 / (n : ℝ)) =
        1 / (n : ℝ) := by
    simp
  rw [← hconst]
  apply intervalIntegral.integral_mono_on
  · exact (ContinuousOn.intervalIntegrable
      (by
        apply ContinuousOn.one_div continuousOn_const continuousOn_id
        intro u hu
        have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
        linarith [hu.1]))
  · exact intervalIntegrable_const
  · exact hmono

/-- Finite harmonic sum over (X,m] differs from log(m/X) by at most 1/X. -/
theorem harmonic_Ioc_sub_log_ratio_abs_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hXm : X ≤ m) :
    |(∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) -
      Real.log ((m : ℝ) / X)| ≤ 1 / (X : ℝ) := by
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  by_cases hEq : m = X
  · subst m
    simp
  · have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_le_of_ne hXm (Ne.symm hEq))
    have hlog :
        Real.log ((m : ℝ) / X) =
          ∫ u in (X : ℝ)..(m : ℝ), 1 / u := by
      rw [Real.log_div (ne_of_gt hmpos) (ne_of_gt hXpos)]
      rw [← intervalIntegral.integral_one_div]
      simp
    rw [hlog]
    have hlower :
        (∫ u in (X : ℝ)..(m : ℝ), 1 / u) ≤
          ∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ) := by
      -- partition [X,m] into [n,n+1], n=X,...,m-1
      rw [intervalIntegral.integral_eq_sum_Ico]
      exact Finset.sum_le_sum (fun n hn =>
        cell_integral_le_one_div (by
          have hi := Finset.mem_Ico.mp hn
          omega))
    have hupper :
        (∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) ≤
          (∫ u in (X : ℝ)..(m : ℝ), 1 / u) + 1 / (X : ℝ) := by
      -- shift right cells; the only unmatched cell costs at most 1/X.
      rw [intervalIntegral.integral_eq_sum_Ico]
      have := Finset.sum_le_sum (fun n hn =>
        one_div_le_cell_integral (by
          have hi := Finset.mem_Ioc.mp hn
          omega))
      -- index normalization is proof-only.
      simpa [Finset.sum_Ioc_eq_sub, Finset.sum_Ico_eq_sub] using this
    rw [abs_le]
    constructor <;> linarith

/-- Floor/log gap used by the Green cutoff. -/
theorem abs_log_floor_ratio_sub_log_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hm : X ≤ m)
    {t : ℝ} (ht0 : 0 ≤ t)
    (hlo : (m : ℝ) ≤ (X : ℝ) * (1 + t))
    (hhi : (X : ℝ) * (1 + t) < m + 1) :
    |Real.log ((m : ℝ) / X) - Real.log (1 + t)| ≤ 1 / (X : ℝ) := by
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm)
  have htpos : 0 < 1 + t := by linarith
  have horder : Real.log ((m : ℝ) / X) ≤ Real.log (1 + t) := by
    apply Real.strictMonoOn_log.monotoneOn
    · positivity
    · exact le_of_lt htpos
    · exact (div_le_iff₀ hXpos).2 hlo
  rw [abs_of_nonpos (sub_nonpos.mpr horder)]
  rw [← Real.log_div htpos (by positivity)]
  have hratio :
      (1 + t) / ((m : ℝ) / X) < 1 + 1 / (m : ℝ) := by
    field_simp
    nlinarith
  calc
    Real.log ((1 + t) / ((m : ℝ) / X)) ≤
        Real.log (1 + 1 / (m : ℝ)) := by
      exact (Real.strictMonoOn_log.monotoneOn
        (by positivity) (by positivity) (le_of_lt hratio))
    _ ≤ 1 / (m : ℝ) := Real.log_le_sub_one_of_pos (by positivity)
    _ ≤ 1 / (X : ℝ) := one_div_le_one_div_of_le hXpos (by exact_mod_cast hm)

end GRWTSK.RiemannHypothesis
