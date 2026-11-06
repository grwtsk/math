/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm

/-!
# Prime quadratic bound on the unit window

Young's inequality on the overlap of two supported translates charges each
squared value only when its translated neighbor lies in the window. Lebesgue
translation returns these charges to the two orientations of the same row.
At most one orientation is available for each index from three onward.
Where both orientations of two are available, those from four onward are
excluded. The checked prime weight intervals bound both possible row masses
by three, including at the window endpoints.

This bound applies to the literal real prime energy, with no parity assumption
and with almost-everywhere support. It supplies a prime cost for the
unit-window high floor. Independent analytical review and novelty assessment
remain separate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeNorm

open LowSchur OddSineForm UnitWindowPrimeData

private def window : Set ℝ := Icc (-1) 1

private def available (r t : ℝ) : ℝ := by
  classical
  exact if t + r ∈ window then 1 else 0

private def orientations (r t : ℝ) : ℝ := available r t + available (-r) t

private def rowMass (t : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers 1, primeWeight q * orientations (Real.log q) t

private theorem orientations_le_one {r t : ℝ}
    (h : ¬ (t + r ∈ window ∧ t + -r ∈ window)) : orientations r t ≤ 1 := by
  by_cases hp : t + r ∈ window <;> by_cases hm : t + -r ∈ window
  · exact (h ⟨hp, hm⟩).elim
  all_goals simp [orientations, available, hp, hm]

private theorem log_ge_three {q : ℕ} (hq : 3 ≤ q) : 1 < Real.log q := by
  have h := Real.log_le_log (by norm_num : (0 : ℝ) < 3)
    (show (3 : ℝ) ≤ q by exact_mod_cast hq)
  linarith [Real.log_three_gt_d9]

private theorem orientations_log_le_one {q : ℕ} (hq : 3 ≤ q) (t : ℝ) :
    orientations (Real.log q) t ≤ 1 := by
  apply orientations_le_one
  rintro ⟨hp, hm⟩
  linarith [hp.2, hm.1, log_ge_three hq]

private theorem orientations_log_eq_zero {q : ℕ} (hq : 4 ≤ q) {t : ℝ}
    (h : t + Real.log 2 ∈ window ∧ t + -Real.log 2 ∈ window) :
    orientations (Real.log q) t = 0 := by
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 4)
    (show (4 : ℝ) ≤ q by exact_mod_cast hq)
  rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.log_pow, Nat.cast_ofNat] at hlog
  have hp : t + Real.log q ∉ window := fun hp =>
    by linarith [hp.2, h.2.1, Real.log_two_gt_d9]
  have hm : t + -Real.log q ∉ window := fun hm =>
    by linarith [hm.1, h.1.2, Real.log_two_gt_d9]
  simp [orientations, available, hp, hm]

private theorem rowMass_le_three (t : ℝ) : rowMass t ≤ 3 := by
  classical
  have hInventory : Finset.Icc 2 7 = ({2, 3, 4, 5, 6, 7} : Finset ℕ) := by decide
  by_cases h : t + Real.log 2 ∈ window ∧ t + -Real.log 2 ∈ window
  · let b (q : ℕ) : ℝ := if q = 2 then 2 else if q = 3 then 1 else 0
    have hb (q : ℕ) : 0 ≤ b q := by unfold b; split_ifs <;> norm_num
    have hsum : rowMass t ≤ ∑ q ∈ activePrimePowers 1, (weightUpper q : ℝ) * b q := by
      apply Finset.sum_le_sum
      intro q hq
      have hq2 := (Finset.mem_Icc.mp (activePrimePowers_one ▸ hq)).1
      have hw := (primeWeight_one_bounds hq).2
      apply (mul_le_mul_of_nonneg_left ?_ (primeWeight_nonneg q)).trans
        (mul_le_mul_of_nonneg_right hw (hb q))
      rcases eq_or_lt_of_le hq2 with h2 | h2
      · subst q
        norm_num [orientations, available, h.1, h.2, b]
      · rcases eq_or_lt_of_le (show 3 ≤ q by omega) with h3 | h3
        · subst q
          simpa [b] using orientations_log_le_one (q := 3) (by decide) t
        · rw [orientations_log_eq_zero (by omega) h]
          exact hb q
    apply hsum.trans
    rw [activePrimePowers_one, hInventory]
    norm_num [weightUpper, b]
  · have hsum : rowMass t ≤ ∑ q ∈ activePrimePowers 1, (weightUpper q : ℝ) := by
      apply Finset.sum_le_sum
      intro q hq
      have hq2 := (Finset.mem_Icc.mp (activePrimePowers_one ▸ hq)).1
      have ho : orientations (Real.log q) t ≤ 1 := by
        rcases eq_or_lt_of_le hq2 with h2 | h2
        · subst q
          exact orientations_le_one h
        · exact orientations_log_le_one (by omega) t
      exact (mul_le_of_le_one_right (primeWeight_nonneg q) ho).trans (primeWeight_one_bounds hq).2
    apply hsum.trans
    rw [activePrimePowers_one, hInventory]
    norm_num [weightUpper]

private theorem integrable_available_mul_sq {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    Integrable (fun t => available r t * f t ^ 2) := by
  let S : Set ℝ := {t | t + r ∈ window}
  have hS : MeasurableSet S := measurableSet_Icc.preimage (measurable_id.add_const r)
  apply (hf.integrable_sq.indicator hS).congr (Eventually.of_forall (fun t => ?_))
  by_cases h : t + r ∈ window <;> simp [available, S, indicator, h]

private theorem integrable_orientations_mul_sq {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    Integrable (fun t => orientations r t * f t ^ 2) := by
  simp only [orientations, add_mul]
  exact (integrable_available_mul_sq hf r).add (integrable_available_mul_sq hf (-r))

private theorem abs_correlation_le_orientations {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ window → f t = 0) (r : ℝ) :
    2 * |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, orientations r t * f t ^ 2 := by
  let F := fun t : ℝ => available r t * f t ^ 2
  let G := fun t : ℝ => available (-r) t * f t ^ 2
  have hF : Integrable F := integrable_available_mul_sq hf r
  have hG : Integrable G := integrable_available_mul_sq hf (-r)
  have hTrans := measurePreserving_add_right (volume : Measure ℝ) r
  have hGT : Integrable (fun t => G (t + r)) := hTrans.integrable_comp_of_integrable hG
  have hpoint : ∀ᵐ t : ℝ, ‖f t * f (t + r)‖ ≤ (F t + G (t + r)) / 2 := by
    filter_upwards [hs, hTrans.quasiMeasurePreserving.ae hs] with t ht htr

    have hback : t + r + -r = t := by ring
    by_cases hp : t ∈ window
    · by_cases hm : t + r ∈ window
      · simp [F, G, available, hp, hm, Real.norm_eq_abs]
        nlinarith [sq_nonneg (|f t| - |f (t + r)|), sq_abs (f t), sq_abs (f (t + r))]
      · simp [F, G, available, hm, htr hm]
    · simp [F, G, available, hback, hp, ht hp]
  have hbound := norm_integral_le_of_norm_le ((hF.add hGT).div_const 2)
    (by simpa only [Pi.add_apply] using hpoint)
  simp only [Real.norm_eq_abs, Pi.add_apply] at hbound
  rw [integral_div, integral_add hF hGT, integral_add_right_eq_self G r] at hbound
  simp only [orientations, add_mul]
  change 2 * |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, F t + G t
  rw [integral_add hF hG]
  linarith only [hbound]

/-- The supported prime quadratic at radius one pays at most three times
the whole-line Lebesgue mass. -/
theorem abs_primeEnergy_one_le_three {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-1 : ℝ) 1 → f t = 0) :
    |primeEnergy 1 f| ≤ 3 * ∫ t : ℝ, f t ^ 2 := by
  let C (q : ℕ) := ∫ t : ℝ, f t * f (t + Real.log q)
  have hTerm (q : ℕ) : Integrable (fun t : ℝ => primeWeight q *
      (orientations (Real.log q) t * f t ^ 2)) :=
    (integrable_orientations_mul_sq hf (Real.log q)).const_mul _
  have hRow : Integrable (fun t : ℝ => rowMass t * f t ^ 2) := by
    simpa only [rowMass, Finset.sum_mul, mul_assoc] using
      integrable_finsetSum (activePrimePowers 1) (fun q _ => hTerm q)
  change |2 * ∑ q ∈ activePrimePowers 1, primeWeight q * C q| ≤ _
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ q ∈ activePrimePowers 1, |primeWeight q * C q| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ ∑ q ∈ activePrimePowers 1, primeWeight q *
        (∫ t : ℝ, orientations (Real.log q) t * f t ^ 2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro q _
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q), mul_left_comm]
      exact mul_le_mul_of_nonneg_left (abs_correlation_le_orientations hf hsupport (Real.log q))
        (primeWeight_nonneg q)
    _ = ∫ t : ℝ, rowMass t * f t ^ 2 := by
      simp only [rowMass, Finset.sum_mul, mul_assoc]
      rw [integral_finsetSum _ (fun q _ => hTerm q)]
      simp only [integral_const_mul]
    _ ≤ _ := by
      rw [← integral_const_mul]
      refine integral_mono_ae hRow (hf.integrable_sq.const_mul _) (Eventually.of_forall (fun t => ?_))
      exact mul_le_mul_of_nonneg_right (rowMass_le_three t) (sq_nonneg _)

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeNorm
