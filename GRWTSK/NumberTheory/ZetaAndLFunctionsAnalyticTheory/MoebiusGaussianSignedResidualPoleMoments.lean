/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLaplace
import Mathlib.Tactic

/-!
# Laplace moments of the rescaled signed Möbius residual

Rescaling time and removing a fixed frequency turns each exponential test
into the original signed residual transform at an exact horizontal parameter.
-/

set_option autoImplicit false

noncomputable section

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleMoments

open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace

/-- The rescaled signed source after removing the frequency `γ`. At `T > 0`,
the scale `T * (T⁻¹)^m` is `T^(1-m)`. -/
def rescaledResidualMode (s γ : ℝ) (m : ℕ) (T v : ℝ) : ℂ :=
  ((T * T⁻¹ ^ m : ℝ) : ℂ) * (residualWave s (T * v) : ℂ) *
    Complex.exp (-((γ : ℂ) * Complex.I) * ((T * v : ℝ) : ℂ))

/-- The `k`-th exponential moment uses the density `exp(-v)` and test `exp(-kv)`. -/
def residualLaplaceMoment (s γ : ℝ) (m k : ℕ) (T : ℝ) : ℂ :=
  ∫ v : ℝ in Ioi 0, (Real.exp (-((k : ℝ) + 1) * v) : ℂ) *
    rescaledResidualMode s γ m T v

/-- Change variables `u = T * v` in the exact signed residual moment. -/
theorem residualLaplaceMoment_eq (s γ : ℝ) (m k : ℕ) {T : ℝ} (hT : 0 < T) :
    residualLaplaceMoment s γ m k T = ((T⁻¹ : ℝ) : ℂ) ^ m *
      residualLaplace s (((((k : ℝ) + 1) / T : ℝ) : ℂ) + (γ : ℂ) * Complex.I) := by
  let σ : ℝ := ((k : ℝ) + 1) / T
  let z : ℂ := (σ : ℂ) + (γ : ℂ) * Complex.I
  let g : ℝ → ℂ := fun u => Complex.exp (-z * (u : ℂ)) * (residualWave s u : ℂ)
  have hσT : (σ : ℂ) * (T : ℂ) = (k : ℂ) + 1 := by
    dsimp only [σ]
    exact_mod_cast (div_mul_cancel₀ ((k : ℝ) + 1) hT.ne')
  have harg (v : ℝ) : -z * ((T * v : ℝ) : ℂ) =
      ((-((k : ℝ) + 1) * v : ℝ) : ℂ) + -((γ : ℂ) * Complex.I) * ((T * v : ℝ) : ℂ) := by
    dsimp only [z]
    push_cast
    linear_combination -(v : ℂ) * hσT
  change residualLaplaceMoment s γ m k T = ((T⁻¹ : ℝ) : ℂ) ^ m * residualLaplace s z
  calc
    _ = ((T * T⁻¹ ^ m : ℝ) : ℂ) * (∫ v : ℝ in Ioi 0, g (T * v)) := by
      rw [residualLaplaceMoment, ← integral_const_mul]
      apply integral_congr_ae
      filter_upwards with v
      rw [rescaledResidualMode]
      dsimp only [g]
      rw [harg, Complex.exp_add, ← Complex.ofReal_exp]
      ring
    _ = _ := by
      rw [integral_comp_mul_left_Ioi g 0 hT, mul_zero, Complex.real_smul]
      have hscale : (T * T⁻¹ ^ m) * T⁻¹ = T⁻¹ ^ m := by
        rw [mul_right_comm, mul_inv_cancel₀ hT.ne', one_mul]
      rw [← mul_assoc, ← Complex.ofReal_mul, hscale, Complex.ofReal_pow]
      rfl

/-- The horizontal Laurent limit determines each rescaled moment. -/
theorem tendsto_residualLaplaceMoment {s γ : ℝ} {m : ℕ} {c : ℂ} (k : ℕ)
    (hpole : Tendsto (fun σ : ℝ => (σ : ℂ) ^ m *
      residualLaplace s ((σ : ℂ) + (γ : ℂ) * Complex.I)) (𝓝[>] (0 : ℝ)) (𝓝 c)) :
    Tendsto (residualLaplaceMoment s γ m k) atTop (𝓝 (c / ((k : ℂ) + 1) ^ m)) := by
  have hscale : Tendsto (fun T : ℝ => ((k : ℝ) + 1) / T) atTop (𝓝[>] (0 : ℝ)) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · simpa only [div_eq_mul_inv, mul_zero] using
        (tendsto_inv_atTop_zero (𝕜 := ℝ)).const_mul ((k : ℝ) + 1)
    · filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
      exact div_pos (by positivity) hT
  refine ((hpole.comp hscale).div_const (((k : ℂ) + 1) ^ m)).congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  dsimp only [Function.comp_apply]
  rw [residualLaplaceMoment_eq s γ m k hT]
  have hk : (k : ℂ) + 1 ≠ 0 := by
    exact_mod_cast (show (k : ℝ) + 1 ≠ 0 by positivity)
  push_cast
  rw [div_eq_mul_inv ((k : ℂ) + 1), mul_pow, mul_assoc,
    mul_div_cancel_left₀ _ (pow_ne_zero _ hk)]

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleMoments
