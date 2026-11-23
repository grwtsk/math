/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! Uniform tail absorption for the derivative saddle of the arithmetic heat trace. -/
namespace GRWTSK.XiHeatTailAbsorption
open Real
noncomputable section

theorem polynomial_absorption {g : ℝ} (hg : 2048 ≤ g) :
    2*g^2 ≤ exp (g/8) := by
  have h := add_one_le_exp (g/32)
  have h0 : 0 ≤ g/32 := by linarith
  have hp := pow_le_pow_left₀ h0 (by linarith : g/32 ≤ exp (g/32)) 4
  rw [← Real.exp_nat_mul] at hp
  norm_num at hp
  have h1 : 2*g ≤ g*(g/1024) := by
    have := mul_le_mul_of_nonneg_left (by linarith : 2 ≤ g/1024) (by linarith : 0 ≤ g)
    linarith
  have h2 : g^2 ≥ 2048^2 := (sq_le_sq₀ (by norm_num) (by linarith)).mpr hg
  have h3 := mul_nonneg (sq_nonneg g) (by linarith : 0 ≤ g^2-2097152)
  convert le_trans (show 2*g^2 ≤ (g/32)^4 by nlinarith only [h3]) hp using 2 <;> ring

theorem central_absorption {n s : ℝ} (hn : 0 < n) (hu : n ≤ 10^21)
    (hs : 1500000000000 ≤ s) :
    12*s^2*exp (-(s^2/(18*n))) ≤ 1 := by
  let y := s^2/(18*n)
  have hy : 125 ≤ y := by
    dsimp [y]
    apply (le_div_iff₀ (by positivity)).mpr
    have hsq := (sq_le_sq₀ (by norm_num : (0:ℝ)≤1500000000000) (by linarith)).mpr hs
    nlinarith
  have hey : s^2=18*n*y := by dsimp [y]; field_simp
  have h1 := add_one_le_exp (y/4)
  have h2 : (2:ℝ)^90 ≤ exp (3*y/4) := by
    calc
      _ ≤ (exp 1)^90 := pow_le_pow_left₀ (by norm_num) exp_one_gt_two.le _
      _ = exp 90 := by rw [← exp_nat_mul]; norm_num
      _ ≤ _ := exp_le_exp.mpr (by linarith)
  have h3 : 864*n ≤ exp (3*y/4) := by linarith
  have hc : 12*s^2 ≤ exp y := by
    rw [hey,show y = y/4 + 3*y/4 by ring, exp_add]
    nlinarith [mul_le_mul_of_nonneg_left (by linarith : y ≤ 4*exp (y/4)) hn.le,
      mul_le_mul_of_nonneg_right h3 (exp_pos (y/4)).le]
  change 12*s^2*exp (-y) ≤ 1
  rw [exp_neg,←div_eq_mul_inv,div_le_one (exp_pos _)]
  exact hc

theorem gaussian_envelope {g s t : ℝ} (ht : 0<t) (hs : 1 ≤ t*s^2) :
    g^2 ≤ 6*s^2*exp (t*(g-s)^2/2) := by
  have he := add_one_le_exp (t*(g-s)^2/2)
  have h1 : (g-s)^2 ≤ 2*s^2*exp (t*(g-s)^2/2) := by
    nlinarith [mul_le_mul_of_nonneg_right hs (sq_nonneg (g-s)),
      mul_le_mul_of_nonneg_left he (sq_nonneg s)]
  have h2 : 1 ≤ exp (t*(g-s)^2/2) := one_le_exp (by positivity)
  nlinarith [sq_nonneg (g-2*s),mul_le_mul_of_nonneg_left h2 (sq_nonneg s)]

theorem interval_energy {ι : Type*} {head : ℝ} {cost neg : ι → ℝ}
    (hn : Summable neg) (hc : Summable cost) (hle : ∀ i, neg i ≤ cost i)
    (hhead : (∑' i, cost i) < head) : 0 < head - ∑' i, neg i := by
  exact sub_pos.mpr ((hn.tsum_le_tsum hle hc).trans_lt hhead)

end
end GRWTSK.XiHeatTailAbsorption
