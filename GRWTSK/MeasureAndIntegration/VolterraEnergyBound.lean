/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream attribution and license. -/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

/-!
# A uniform L2 allowance for the causal Volterra kernel

Continuity and the displayed reconstruction/kernel inequalities are explicit.
The factor nine is derived by compact-interval integration and a priced Young
inequality. This module does not itself assert that an arithmetic source has
such a reconstruction. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped Interval
namespace GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound

/-- Compact continuous Cauchy--Schwarz, proved without an assumed Lp certificate. -/
theorem integral_product_sq (a b : ℝ) (hab : a ≤ b)
    (f g : ℝ → ℝ) (hf : Continuous f) (hg : Continuous g) :
    (∫ t in a..b, f t * g t) ^ 2 ≤
      (∫ t in a..b, f t ^ 2) * (∫ t in a..b, g t ^ 2) := by
  let A := ∫ t in a..b, f t ^ 2
  let B := ∫ t in a..b, f t * g t
  let C := ∫ t in a..b, g t ^ 2
  have hA : 0 ≤ A := by
    dsimp [A]
    rw [intervalIntegral.integral_of_le hab]
    exact integral_nonneg (fun t => sq_nonneg _)
  have hC : 0 ≤ C := by
    dsimp [C]
    rw [intervalIntegral.integral_of_le hab]
    exact integral_nonneg (fun t => sq_nonneg _)
  have hquad (r : ℝ) : 0 ≤ A - 2 * r * B + r ^ 2 * C := by
    have hi : (∫ t in a..b, (f t - r * g t) ^ 2) = A - 2 * r * B + r ^ 2 * C := by
      calc
        _ = ∫ t in a..b, (f t ^ 2 - (2 * r) * (f t * g t) + r ^ 2 * g t ^ 2) := by
          apply intervalIntegral.integral_congr
          intro t _
          ring
        _ = _ := by
          rw [intervalIntegral.integral_add
              (((hf.pow 2).sub (continuous_const.mul (hf.mul hg))).intervalIntegrable _ _)
              ((continuous_const.mul (hg.pow 2)).intervalIntegrable _ _),
            intervalIntegral.integral_sub ((hf.pow 2).intervalIntegrable _ _)
              ((continuous_const.mul (hf.mul hg)).intervalIntegrable _ _),
            intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
    rw [← hi, intervalIntegral.integral_of_le hab]
    exact integral_nonneg (fun t => sq_nonneg _)
  change B ^ 2 ≤ A * C
  by_cases hzero : C = 0
  · have hB : B = 0 := by
      by_contra hB
      have h := hquad ((A + 1) / (2 * B))
      rw [hzero, mul_zero, add_zero] at h
      have he : A - 2 * ((A + 1) / (2 * B)) * B = -1 := by
        field_simp [hB]
        ring
      rw [he] at h
      norm_num at h
    simp [hB, hzero]
  · have hCp : 0 < C := lt_of_le_of_ne hC (Ne.symm hzero)
    have h := mul_nonneg hCp.le (hquad (B / C))
    have he : C * (A - 2 * (B / C) * B + (B / C) ^ 2 * C) = A * C - B ^ 2 := by
      field_simp [hzero]
      ring
    rw [he] at h
    linarith

theorem exp_square_integral (T u : ℝ) :
    (∫ v in (0 : ℝ)..u, Real.exp (2 * (v - T))) =
      (Real.exp (2 * (u - T)) - Real.exp (-2 * T)) / 2 := by
  have hd : ∀ v ∈ Set.uIcc (0 : ℝ) u,
      HasDerivAt (fun w : ℝ => Real.exp (2 * (w - T)) / 2)
        (Real.exp (2 * (v - T))) v := by
    intro v _
    convert ((((hasDerivAt_id v).sub_const T).const_mul 2).exp).div_const 2 using 1 <;>
      simp <;> ring
  have hi : IntervalIntegrable (fun v : ℝ => Real.exp (2 * (v - T))) volume 0 u :=
    (by fun_prop : Continuous (fun v : ℝ => Real.exp (2 * (v - T)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi,
    show 2 * ((0 : ℝ) - T) = -2 * T by ring]
  ring

/-- The same nine applies at every horizon; the kernel contracts toward the final time. -/
theorem energy_le_nine (T : ℝ) (hT : 0 ≤ T)
    (F G q : ℝ → ℂ) (V : ℝ → ℝ → ℂ)
    (hF : Continuous F) (hG : Continuous G) (hq : Continuous q)
    (hV : ∀ u, Continuous (V u))
    (hqnorm : ∀ u ∈ Set.Icc 0 T, ‖q u‖ = 1)
    (hkernel : ∀ u ∈ Set.Icc 0 T, ∀ v ∈ Set.Icc 0 u,
      ‖V u v‖ ≤ 4 * Real.exp (v - T))
    (hreturn : ∀ u ∈ Set.Icc 0 T,
      G u = q u * F u + ∫ v in (0 : ℝ)..u, V u v * F v) :
    (∫ u in (0 : ℝ)..T, ‖G u‖ ^ 2) ≤ 9 * (∫ u in (0 : ℝ)..T, ‖F u‖ ^ 2) := by
  let H := ∫ u in (0 : ℝ)..T, ‖F u‖ ^ 2
  let R := fun u => G u - q u * F u
  have hR : Continuous R := hG.sub (hq.mul hF)
  have hH : 0 ≤ H := by
    dsimp [H]
    rw [intervalIntegral.integral_of_le hT]
    exact integral_nonneg (fun u => sq_nonneg _)
  have hprefix (u : ℝ) (hu : u ∈ Set.Icc 0 T) :
      (∫ v in (0 : ℝ)..u, ‖F v‖ ^ 2) ≤ H := by
    have he := intervalIntegral.integral_add_adjacent_intervals
      ((hF.norm.pow 2).intervalIntegrable (0 : ℝ) u)
      ((hF.norm.pow 2).intervalIntegrable u T)
    have hn : 0 ≤ ∫ v in u..T, ‖F v‖ ^ 2 := by
      rw [intervalIntegral.integral_of_le hu.2]
      exact integral_nonneg (fun v => sq_nonneg _)
    change _ ≤ ∫ v in (0 : ℝ)..T, ‖F v‖ ^ 2
    linarith
  have hpoint (u : ℝ) (hu : u ∈ Set.Icc 0 T) :
      ‖R u‖ ^ 2 ≤ 8 * Real.exp (2 * (u - T)) * H := by
    have hr : R u = ∫ v in (0 : ℝ)..u, V u v * F v := by
      dsimp [R]
      rw [hreturn u hu]
      ring
    let I := ∫ v in (0 : ℝ)..u, Real.exp (v - T) * ‖F v‖
    have hI : 0 ≤ I := by
      dsimp [I]
      rw [intervalIntegral.integral_of_le hu.1]
      exact integral_nonneg (fun v => mul_nonneg (Real.exp_pos _).le (norm_nonneg _))
    have hnorm : ‖R u‖ ≤ 4 * I := by
      rw [hr]
      calc
        _ ≤ ∫ v in (0 : ℝ)..u, ‖V u v * F v‖ :=
          intervalIntegral.norm_integral_le_integral_norm hu.1
        _ ≤ ∫ v in (0 : ℝ)..u, 4 * (Real.exp (v - T) * ‖F v‖) := by
          apply intervalIntegral.integral_mono_on hu.1
            (((hV u).mul hF).norm.intervalIntegrable _ _)
            ((by fun_prop : Continuous (fun v => 4 * (Real.exp (v - T) * ‖F v‖))).intervalIntegrable _ _)
          intro v hv
          rw [norm_mul]
          nlinarith [mul_le_mul_of_nonneg_right (hkernel u hu v hv) (norm_nonneg (F v))]
        _ = 4 * I := intervalIntegral.integral_const_mul _ _
    have hcs := integral_product_sq 0 u hu.1
      (fun v => Real.exp (v - T)) (fun v => ‖F v‖) (by fun_prop) hF.norm
    have hexp : (∫ v in (0 : ℝ)..u, Real.exp (v - T) ^ 2) ≤
        Real.exp (2 * (u - T)) / 2 := by
      have he : (fun v : ℝ => Real.exp (v - T) ^ 2) =
          (fun v => Real.exp (2 * (v - T))) := by
        funext v
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      rw [he, exp_square_integral]
      linarith [Real.exp_pos (-2 * T)]
    have hp0 : 0 ≤ ∫ v in (0 : ℝ)..u, ‖F v‖ ^ 2 := by
      rw [intervalIntegral.integral_of_le hu.1]
      exact integral_nonneg (fun v => sq_nonneg _)
    have hp := mul_le_mul hexp (hprefix u hu) hp0 (by positivity)
    have hn := (sq_le_sq₀ (norm_nonneg (R u)) (mul_nonneg (by norm_num) hI)).mpr hnorm
    change I ^ 2 ≤ _ at hcs
    nlinarith
  have hRenergy : (∫ u in (0 : ℝ)..T, ‖R u‖ ^ 2) ≤ 4 * H := by
    have hi := intervalIntegral.integral_mono_on hT
      ((hR.norm.pow 2).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun u => 8 * Real.exp (2 * (u - T)) * H)).intervalIntegrable _ _)
      (fun u hu => hpoint u hu)
    have he : (∫ u in (0 : ℝ)..T, 8 * Real.exp (2 * (u - T)) * H) =
        4 * H * (1 - Real.exp (-2 * T)) := by
      rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_const_mul,
        exp_square_integral]
      simp only [sub_self, mul_zero, Real.exp_zero]
      ring
    rw [he] at hi
    nlinarith [mul_nonneg hH (Real.exp_pos (-2 * T)).le]
  have hyoung (u : ℝ) (hu : u ∈ Set.Icc 0 T) :
      ‖G u‖ ^ 2 ≤ 3 * ‖F u‖ ^ 2 + (3 / 2 : ℝ) * ‖R u‖ ^ 2 := by
    have he : G u = q u * F u + R u := by dsimp [R]; ring
    have ht := norm_add_le (q u * F u) (R u)
    rw [← he, norm_mul, hqnorm u hu, one_mul] at ht
    have hs := (sq_le_sq₀ (norm_nonneg (G u))
      (add_nonneg (norm_nonneg (F u)) (norm_nonneg (R u)))).mpr ht
    nlinarith [sq_nonneg (2 * ‖F u‖ - ‖R u‖)]
  have hi := intervalIntegral.integral_mono_on hT
    ((hG.norm.pow 2).intervalIntegrable _ _)
    (((continuous_const.mul (hF.norm.pow 2)).add
      (continuous_const.mul (hR.norm.pow 2))).intervalIntegrable _ _)
    hyoung
  rw [intervalIntegral.integral_add
      ((continuous_const.mul (hF.norm.pow 2)).intervalIntegrable _ _)
      ((continuous_const.mul (hR.norm.pow 2)).intervalIntegrable _ _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul] at hi
  change _ ≤ 9 * H
  nlinarith

end GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound
