import Zeta23.FromPNTPlus.MediumPNT
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

set_option autoImplicit false
noncomputable section
open Filter Asymptotics
open scoped Topology
namespace ContinuousResearch.MediumPNTLogError

/-- Actual unweighted Chebyshev relative error in logarithmic coordinates. -/
def psiRelativeError (t : ℝ) : ℝ := Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1

theorem psiRelativeError_eq (t : ℝ) :
    psiRelativeError t = Real.exp (-t) * (Chebyshev.psi (Real.exp t) - Real.exp t) := by
  unfold psiRelativeError
  rw [mul_sub, ← Real.exp_add]
  simp

/-- An actual unconditional source envelope, with unspecified PNT constants and real heights. -/
theorem psiRelativeError_medium_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ C : ℝ, 0 < C ∧
      ∀ᶠ t : ℝ in atTop,
        |psiRelativeError t| ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  refine ⟨c, hc, C, hC, ?_⟩
  have hh := Real.tendsto_exp_atTop.eventually hbound.bound
  filter_upwards [hh] with t ht
  simp only [Pi.sub_apply, id_eq, Real.norm_eq_abs, Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)] at ht
  rw [psiRelativeError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hmul := mul_le_mul_of_nonneg_left ht (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) =
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    calc
      _ = C * (Real.exp (-t) * Real.exp t) * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by ring
      _ = _ := by rw [←Real.exp_add]; simp
  exact he ▸ hmul

theorem power_stretched_exp_tendsto_zero (n : ℕ) {c : ℝ} (hc : 0 < c) :
    Tendsto (fun t : ℝ => t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop (𝓝 0) := by
  have hp := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero
    (10 * (n : ℝ)) c hc).comp (tendsto_rpow_atTop (by norm_num : 0 < (1 : ℝ) / 10))
  refine hp.congr' ?_
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
  dsimp only [Function.comp_apply]
  congr 1
  rw [←Real.rpow_mul ht]
  convert Real.rpow_natCast t n using 1 <;> ring

/-- Every fixed polynomially weighted actual relative error tends to zero. -/
theorem psiRelativeError_mul_pow_tendsto_zero (n : ℕ) :
    Tendsto (fun t : ℝ => t ^ n * psiRelativeError t) atTop (𝓝 0) := by
  obtain ⟨c, hc, C, hC, hb⟩ := psiRelativeError_medium_bound
  have hz := (power_stretched_exp_tendsto_zero n hc).const_mul C
  apply squeeze_zero_norm' ?_ (by simpa only [mul_zero] using hz)
  filter_upwards [hb, eventually_ge_atTop (0 : ℝ)] with t ht ht0
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (pow_nonneg ht0 n)]
  calc
    _ ≤ t ^ n * (C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :=
      mul_le_mul_of_nonneg_left ht (pow_nonneg ht0 n)
    _ = C * (t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) := by ring

end ContinuousResearch.MediumPNTLogError

set_option pp.fullNames true
set_option pp.universes true
#check MediumPNT
#print axioms MediumPNT
#print MediumPNT
#check ContinuousResearch.MediumPNTLogError.psiRelativeError
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError
#print ContinuousResearch.MediumPNTLogError.psiRelativeError
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#check ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
