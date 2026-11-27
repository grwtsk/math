/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockDensityQuadrature
import Mathlib.MeasureTheory.Function.JacobianOneDim
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Reciprocal substitution in the continuum part of an ordinary-prime block

The derivative of the reciprocal map cancels the reciprocal-square weight
on the open ray. Factoring a single power of 1-u² then exposes the
logarithmic mean factor in the finite block density.
-/

noncomputable section
open Set MeasureTheory
namespace GRWTSK.XiPrimeBlockRational

private theorem reciprocal_image :
    (fun u : ℝ => u⁻¹) '' Ioo (0 : ℝ) 1 = Ioi 1 := by
  ext y
  constructor
  · rintro ⟨u, hu, rfl⟩
    exact (one_lt_inv₀ hu.1).mpr hu.2
  · intro hy
    have hy' : 1 < y := hy
    exact ⟨y⁻¹, ⟨inv_pos.mpr (by linarith), (inv_lt_one₀ (by linarith)).mpr hy'⟩, inv_inv y⟩

private theorem reciprocal_integral (g : ℝ → ℝ) :
    (∫ y in Ioi (1 : ℝ), g y) =
      ∫ u in Ioo (0 : ℝ) 1, (u ^ 2)⁻¹ * g u⁻¹ := by
  rw [← reciprocal_image]
  have h := integral_image_eq_integral_abs_deriv_smul measurableSet_Ioo
    (fun u (hu : u ∈ Ioo (0 : ℝ) 1) => (hasDerivAt_inv (ne_of_gt hu.1)).hasDerivWithinAt)
    (inv_injective.injOn) g
  simpa only [abs_neg, abs_inv, fun x : ℝ => abs_of_nonneg (sq_nonneg x), smul_eq_mul] using h

/-- The original sum of weighted ray densities equals the unit-interval
integral with the explicit finite polynomial times the logarithmic mean. -/
theorem continuumBlock_reciprocal (N : ℕ) :
    (∫ y in Ioi (1 : ℝ), (∑ i ∈ Finset.range N,
      XiDyadicPrimeBias.weight (N+i+1) y / ((N : ℝ) + i + 1)) / Real.log y) =
    ∫ u : ℝ in 0..1, densityKernel N u * (1-u) / (-Real.log u) := by
  rw [reciprocal_integral, intervalIntegral.integral_of_le zero_le_one, integral_Ioc_eq_integral_Ioo]
  apply setIntegral_congr_fun measurableSet_Ioo
  intro u hu
  dsimp only [densityKernel]
  rw [Real.log_inv, ← mul_div_assoc, Finset.mul_sum, Finset.sum_mul]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  have hu0 : u ≠ 0 := ne_of_gt hu.1
  simp only [XiDyadicPrimeBias.weight, inv_pow, inv_inv, pow_succ (1 - u ^ 2)]
  field_simp
  ring


open XiDyadicPrimeBias

private theorem sample_density_integrable (k : ℕ) :
    IntegrableOn (fun y : ℝ => sample k y / Real.log y) (Ioi 1) := by
  have hmaj : IntegrableOn (fun y : ℝ => 2 * (y^2)⁻¹) (Ioi 1) := by
    apply Integrable.const_mul (c := (2 : ℝ))
    simpa [IntegrableOn] using
      integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) zero_lt_one
  apply hmaj.mono' (by apply Measurable.aestronglyMeasurable; unfold sample weight; fun_prop)
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
  have hlog := Real.log_pos hy
  have hnon (i : ℕ) : 0 ≤ sample i y := div_nonneg (weight_mem_Icc hy.le _).1 (by positivity)
  have hs := sample_hasSum hy
  rw [Real.norm_eq_abs, abs_of_nonneg (div_nonneg (hnon k) hlog.le)]
  apply (div_le_iff₀ hlog).mpr
  calc
    sample k y ≤ ∑' i, sample i y := hs.summable.le_tsum k (fun i _ => hnon i)
    _ = envelope y := hs.tsum_eq
    _ = 2 * (y^2)⁻¹ * Real.log y := by unfold envelope; ring

/-- The exact doubling discrepancy is the full ordinary-prime block minus the
unit-interval continuum term. The finite sum of density integrals can be
combined because each summand has an integrable inverse-square majorant. -/
theorem harmonicPrefix_double_sub_eq_prime_sum_sub_density (N : ℕ) :
    harmonicPrefix (2*N) - harmonicPrefix N =
      (∑ i ∈ Finset.range N, (∑' p : Nat.Primes, weight (N+i+1) (p.val : ℝ)) /
        ((N : ℝ) + i + 1)) -
      ∫ u : ℝ in 0..1, densityKernel N u * (1-u) / (-Real.log u) := by
  rw [← continuumBlock_reciprocal, harmonicPrefix, harmonicPrefix, two_mul, Finset.sum_range_add,
    add_sub_cancel_left]
  have hi (i : ℕ) : IntegrableOn (fun y : ℝ =>
      weight (N+i+1) y / ((N : ℝ) + i + 1) / Real.log y) (Ioi 1) := by
    simpa only [sample, Nat.cast_add] using sample_density_integrable (N+i)
  simp_rw [Finset.sum_div]
  rw [integral_finsetSum _ (fun i _ => hi i), ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [primeBias, sub_div, Nat.cast_add]
  congr 1
  rw [← integral_div]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun y => by ring

end GRWTSK.XiPrimeBlockRational
