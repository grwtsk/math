/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Self-contained discrete harmonic/log estimates; no interval-partition API required.
-/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- One-step logarithmic increment is squeezed by neighboring harmonic cells. -/
theorem log_succ_ratio_bounds
    {n : ℕ} (hn : 1 ≤ n) :
    1 / (n + 1 : ℝ) ≤ Real.log ((n + 1 : ℝ) / n) ∧
      Real.log ((n + 1 : ℝ) / n) ≤ 1 / (n : ℝ) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hratio :
      ((n + 1 : ℝ) / n) = 1 + 1 / (n : ℝ) := by
    field_simp
    ring
  rw [hratio]
  constructor
  · have h := Real.log_le_sub_one_of_pos (show 0 < 1 + 1 / (n + 1 : ℝ) by positivity)
    have hrec :
        1 + 1 / (n + 1 : ℝ) ≤ 1 + 1 / (n : ℝ) := by
      gcongr
      exact one_div_le_one_div_of_le hnpos (by norm_num)
    have hlogmono :
        Real.log (1 + 1 / (n + 1 : ℝ)) ≤
          Real.log (1 + 1 / (n : ℝ)) := by
      exact Real.strictMonoOn_log.monotoneOn (by positivity) (by positivity) hrec
    have hlower :
        1 / (n + 1 : ℝ) ≤
          Real.log (1 + 1 / (n + 1 : ℝ)) := by
      have hloglower := Real.le_log_one_add_of_nonneg
        (show 0 ≤ 1 / (n : ℝ) by positivity)
      field_simp at hloglower ⊢
      nlinarith
    exact hlower.trans hlogmono
  · exact Real.log_le_sub_one_of_pos (by positivity)

/-- Finite right harmonic sum differs from log ratio by at most 1/X.
Proof is by induction on the endpoint and the one-cell logarithmic squeeze. -/
theorem harmonic_Ioc_sub_log_ratio_abs_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hXm : X ≤ m) :
    |(∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) -
      Real.log ((m : ℝ) / X)| ≤ 1 / (X : ℝ) := by
  induction m, hXm using Nat.le_induction with
  | base =>
      simp
  | succ m hXm ih =>
      have hm1 : 1 ≤ m := le_trans hX hXm
      have hstep := log_succ_ratio_bounds hm1
      have hsum :
          (∑ n ∈ Finset.Ioc X (m + 1), 1 / (n : ℝ)) =
            (∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) +
              1 / (m + 1 : ℝ) := by
        rw [Finset.sum_Ioc_succ_top hXm]
      have hlog :
          Real.log (((m + 1 : ℕ) : ℝ) / X) =
            Real.log ((m : ℝ) / X) +
              Real.log ((m + 1 : ℝ) / m) := by
        have hXp : (0 : ℝ) < X := by exact_mod_cast hX
        have hmp : (0 : ℝ) < m := by exact_mod_cast hm1
        rw [← Real.log_mul (by positivity) (by positivity)]
        congr 1
        field_simp
        ring
      rw [hsum, hlog]
      rw [abs_le] at ih ⊢
      constructor
      · nlinarith [hstep.2]
      · have hrec :
            1 / (m + 1 : ℝ) ≤ 1 / (X : ℝ) := by
          have hXp : (0 : ℝ) < X := by exact_mod_cast hX
          exact one_div_le_one_div_of_le hXp (by exact_mod_cast hXm.trans (Nat.le_succ m))
        nlinarith [hstep.1]

/-- Floor/log gap: m<=X(1+t)<m+1 implies at most 1/X logarithmic error. -/
theorem abs_log_floor_ratio_sub_log_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hm : X ≤ m)
    {t : ℝ} (ht0 : 0 ≤ t)
    (hlo : (m : ℝ) ≤ (X : ℝ) * (1 + t))
    (hhi : (X : ℝ) * (1 + t) < m + 1) :
    |Real.log ((m : ℝ) / X) - Real.log (1 + t)| ≤ 1 / (X : ℝ) := by
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm)
  have htpos : 0 < 1 + t := by linarith
  have hratioLow : (m : ℝ) / X ≤ 1 + t := (div_le_iff₀ hXpos).2 hlo
  have horder :
      Real.log ((m : ℝ) / X) ≤ Real.log (1 + t) :=
    Real.strictMonoOn_log.monotoneOn (by positivity) (by positivity) hratioLow
  rw [abs_of_nonpos (sub_nonpos.mpr horder), neg_sub]
  rw [← Real.log_div htpos (by positivity)]
  have hratio :
      (1 + t) / ((m : ℝ) / X) < 1 + 1 / (m : ℝ) := by
    field_simp
    nlinarith
  calc
    Real.log ((1 + t) / ((m : ℝ) / X)) ≤
        Real.log (1 + 1 / (m : ℝ)) := by
      exact Real.strictMonoOn_log.monotoneOn
        (by positivity) (by positivity) (le_of_lt hratio)
    _ ≤ 1 / (m : ℝ) := Real.log_le_sub_one_of_pos (by positivity)
    _ ≤ 1 / (X : ℝ) := one_div_le_one_div_of_le hXpos (by exact_mod_cast hm)

end GRWTSK.RiemannHypothesis
