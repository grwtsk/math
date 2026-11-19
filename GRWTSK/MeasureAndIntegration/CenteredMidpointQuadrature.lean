/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Calculus.Taylor
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

/-!
# Centered second-order midpoint enclosures

MSC2020: 65D30 (primary), 65G20. Consumer: WeilModThreeMidpointEvaluation.
Integrate the affine Taylor term BEFORE taking an absolute value. The linear
term cancels, leaving H*h^3/24 per cell, plus the actual sample error times h.
No sample-only estimate is treated as a whole-cell derivative certificate.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED.
See the adjacent individual source/provenance record.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.MeasureAndIntegration.CenteredMidpointQuadrature

/-- CMQ-1. The actual second derivative controls the affine Taylor remainder.
The function is real-valued, as required by the pinned Lagrange theorem. -/
theorem quadratic_remainder {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    {a b H c t : ℝ} (hc : c ∈ Icc a b) (ht : t ∈ Icc a b)
    (hH : ∀ y ∈ Icc a b, |iteratedDeriv 2 f y| ≤ H) :
    |f t - f c - (t - c) * deriv f c| ≤ H / 2 * (t - c) ^ 2 := by
  by_cases hct : c = t
  · subst t
    simp
  have hs : uIcc c t ⊆ Icc a b := by
    intro y hy
    rcases le_total c t with h | h
    · rw [uIcc_of_le h] at hy
      exact ⟨hc.1.trans hy.1, hy.2.trans ht.2⟩
    · rw [uIcc_of_ge h] at hy
      exact ⟨ht.1.trans hy.1, hy.2.trans hc.2⟩
  have hd : derivWithin f (uIcc c t) c = deriv f c :=
    (hf.differentiable (by norm_num)).differentiableAt.derivWithin
      ((uniqueDiffOn_uIcc hct) c (by simp))
  obtain ⟨y, hy, heq⟩ :=
    taylor_mean_remainder_lagrange_iteratedDeriv (n := 1) hct hf.contDiffOn
  have hy' : y ∈ Icc a b := hs ⟨hy.1.le, hy.2.le⟩
  have hpoly : taylorWithinEval f 1 (uIcc c t) c t =
      f c + (t - c) * deriv f c := by
    simp [taylorWithinEval_succ, iteratedDerivWithin_one, hd, smul_eq_mul]
  rw [hpoly] at heq
  have heq' : f t - f c - (t - c) * deriv f c =
      iteratedDeriv 2 f y * (t - c) ^ 2 / 2 := by
    simpa [Nat.factorial, sub_add_eq_sub_sub] using heq
  rw [heq', abs_div, abs_mul, abs_of_nonneg (sq_nonneg (t - c))]
  norm_num only [abs_ofNat]
  exact (div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right (hH y hy') (sq_nonneg _)) (by norm_num)).trans_eq (by ring)

private theorem centered_linear_integral (a b d : ℝ) :
    (∫ t : ℝ in a..b, (t - (a + b) / 2) * d) = 0 := by
  have hanti : ∀ t : ℝ,
      HasDerivAt (fun u : ℝ => (u - (a + b) / 2) ^ 2 / 2 * d)
        ((t - (a + b) / 2) * d) t := by
    intro t
    convert ((((hasDerivAt_id t).sub_const ((a + b) / 2)).pow 2).div_const 2).mul_const d
      using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hanti t) (by fun_prop)]
  ring

private theorem centered_quadratic_integral (a b H : ℝ) :
    (∫ t : ℝ in a..b, H / 2 * (t - (a + b) / 2) ^ 2) =
      H * (b - a) ^ 3 / 24 := by
  have hanti : ∀ t : ℝ,
      HasDerivAt (fun u : ℝ => H / 6 * (u - (a + b) / 2) ^ 3)
        (H / 2 * (t - (a + b) / 2) ^ 2) t := by
    intro t
    convert (((hasDerivAt_id t).sub_const ((a + b) / 2)).pow 3).const_mul (H / 6)
      using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hanti t) (by fun_prop)]
  ring

/-- CMQ-2. A whole-cell quadratic residual gives the sharp midpoint coefficient.
The arbitrary slope disappears by exact integration, not by a sampled estimate. -/
theorem error_of_quadratic_remainder {f : ℝ → ℝ} (hf : Continuous f)
    {a b H d : ℝ} (hab : a ≤ b)
    (hrem : ∀ t ∈ Icc a b,
      |f t - f ((a + b) / 2) - (t - (a + b) / 2) * d| ≤
        H / 2 * (t - (a + b) / 2) ^ 2) :
    |(∫ t in a..b, f t) - (b - a) * f ((a + b) / 2)| ≤
      H * (b - a) ^ 3 / 24 := by
  let r := fun t => f t - f ((a + b) / 2) - (t - (a + b) / 2) * d
  have hid : (∫ t in a..b, r t) =
      (∫ t in a..b, f t) - (b - a) * f ((a + b) / 2) := by
    dsimp only [r]
    rw [intervalIntegral.integral_sub
      (hf.intervalIntegrable.sub continuous_const.intervalIntegrable) (by fun_prop),
      intervalIntegral.integral_sub hf.intervalIntegrable continuous_const.intervalIntegrable,
      centered_linear_integral, intervalIntegral.integral_const]
    simp only [smul_eq_mul, sub_zero]
  rw [← hid, ← Real.norm_eq_abs]
  have hb := intervalIntegral.norm_integral_le_of_norm_le (f := r) hab
    (Filter.Eventually.of_forall (fun t ht => by
      simpa only [Real.norm_eq_abs, r] using hrem t ⟨ht.1.le, ht.2⟩))
    (by fun_prop : IntervalIntegrable
      (fun t : ℝ => H / 2 * (t - (a + b) / 2) ^ 2) volume a b)
  exact hb.trans_eq (centered_quadratic_integral a b H)

/-- CMQ-3. A noisy center value is paid separately from geometric curvature. -/
theorem midpoint_error {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    {a b H v e : ℝ} (hab : a ≤ b)
    (hH : ∀ t ∈ Icc a b, |iteratedDeriv 2 f t| ≤ H)
    (hv : |f ((a + b) / 2) - v| ≤ e) :
    |(∫ t in a..b, f t) - (b - a) * v| ≤
      H * (b - a) ^ 3 / 24 + e * (b - a) := by
  have hc : (a + b) / 2 ∈ Icc a b := ⟨by linarith, by linarith⟩
  have hquad := error_of_quadratic_remainder hf.continuous hab
    (fun t ht => quadratic_remainder hf hc ht hH)
  have hs : |(b - a) * (f ((a + b) / 2) - v)| ≤ e * (b - a) := by
    rw [abs_mul, abs_of_nonneg (sub_nonneg.mpr hab)]
    nlinarith [mul_le_mul_of_nonneg_left hv (sub_nonneg.mpr hab)]
  calc
    _ = |((∫ t in a..b, f t) - (b - a) * f ((a + b) / 2)) +
        (b - a) * (f ((a + b) / 2) - v)| := by congr 1; ring
    _ ≤ _ := (abs_add _ _).trans (add_le_add hquad hs)

/-- CMQ-4. Adjacent, ordered cells cover the entire interval. No uniform mesh or
fixed accuracy is imposed. Every sample and curvature bound remains quantified. -/
theorem sum_midpoint_error {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    (x v e H : ℕ → ℝ) (N : ℕ)
    (hx : ∀ j < N, x j ≤ x (j + 1))
    (hH : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), |iteratedDeriv 2 f t| ≤ H j)
    (hv : ∀ j < N, |f ((x j + x (j + 1)) / 2) - v j| ≤ e j) :
    |(∫ t in x 0..x N, f t) -
      ∑ j ∈ Finset.range N, (x (j + 1) - x j) * v j| ≤
      ∑ j ∈ Finset.range N,
        (H j * (x (j + 1) - x j) ^ 3 / 24 + e j * (x (j + 1) - x j)) := by
  rw [← intervalIntegral.sum_integral_adjacent_intervals (a := x) (n := N)
    (fun _ _ => hf.continuous.intervalIntegrable), ← Finset.sum_sub_distrib]
  exact (Finset.abs_sum_le_sum_abs _ _).trans
    (Finset.sum_le_sum (fun j hj => midpoint_error hf (hx j (Finset.mem_range.mp hj))
      (hH j (Finset.mem_range.mp hj)) (hv j (Finset.mem_range.mp hj))))

end GRWTSK.MeasureAndIntegration.CenteredMidpointQuadrature
