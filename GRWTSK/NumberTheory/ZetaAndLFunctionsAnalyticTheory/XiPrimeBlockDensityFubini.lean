/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockDensityQuadrature
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Function.SpecialFunctions.Basic

/-!
# The logarithmic continuum integral in the rational quadrature enclosure

The real-power integrand is bounded on the unit square by the continuous
polynomial factor. Fubini exchanges the two integrations. Integrating the
power in its exponent yields the logarithmic density for interior points.
-/

namespace GRWTSK.XiPrimeBlockRational

open MeasureTheory Set

/-- The real-power kernel is integrable jointly in its exponent and base. -/
theorem density_uncurry_integrable (N : ℕ) :
    IntegrableOn (fun z : ℝ × ℝ => z.2^z.1 * densityKernel N z.2)
      (Ioc (0 : ℝ) 1 ×ˢ Ioc (0 : ℝ) 1) := by
  let s := Ioc (0 : ℝ) 1 ×ˢ Ioc (0 : ℝ) 1
  have hc : Continuous (fun z : ℝ × ℝ => densityKernel N z.2) :=
    (continuous_densityKernel N).comp continuous_snd
  have hdom : IntegrableOn (fun z : ℝ × ℝ => densityKernel N z.2) s := by
    have hK : IsCompact (Icc (0 : ℝ) 1 ×ˢ Icc (0 : ℝ) 1) := isCompact_Icc.prod isCompact_Icc
    refine (hc.continuousOn.integrableOn_compact hK).mono_set ?_
    exact Set.prod_mono Ioc_subset_Icc_self Ioc_subset_Icc_self
  apply hdom.mono'
  · apply Measurable.aestronglyMeasurable
    exact (measurable_snd.pow measurable_fst).mul hc.measurable
  · filter_upwards [ae_restrict_mem (μ := (volume : Measure (ℝ × ℝ)))
      (measurableSet_Ioc.prod measurableSet_Ioc : MeasurableSet s)] with z hz
    have hk := densityKernel_nonneg N ⟨hz.2.1.le, hz.2.2⟩
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.rpow_nonneg hz.2.1.le _) hk)]
    exact mul_le_of_le_one_left hk (Real.rpow_le_one hz.2.1.le hz.2.2 hz.1.1.le)

/-- Integrating the exponent gives the normalized logarithmic factor. -/
theorem integral_rpow_exponent {u : ℝ} (hu : u ∈ Ioo (0 : ℝ) 1) :
    (∫ r : ℝ in 0..1, u^r) = (1-u)/(-Real.log u) := by
  have hlog : Real.log u ≠ 0 := (Real.log_neg hu.1 hu.2).ne
  simp_rw [Real.rpow_def_of_pos hu.1]
  rw [intervalIntegral.integral_comp_mul_left Real.exp hlog, integral_exp]
  simp [Real.exp_log hu.1, smul_eq_mul]
  ring

/-- The real density integrated over its exponent equals the single logarithmic continuum integral. -/
theorem density_fubini_log (N : ℕ) :
    (∫ r : ℝ in 0..1, densityBlock N r) =
      ∫ u : ℝ in 0..1, densityKernel N u * (1-u) / (-Real.log u) := by
  change (∫ r : ℝ in 0..1, ∫ u : ℝ in 0..1, u^r * densityKernel N u) = _
  have h := density_uncurry_integrable N
  rw [intervalIntegral_intervalIntegral_swap (F := fun (r u : ℝ) => u^r * densityKernel N u)
    (by
      rw [uIoc_of_le zero_le_one]
      convert h using 1
      funext z
      obtain ⟨r,u⟩ := z
      rfl)]
  apply intervalIntegral.integral_congr_Ioo_of_le zero_le_one
  intro u hu
  change (∫ r : ℝ in 0..1, u^r * densityKernel N u) = _
  rw [intervalIntegral.integral_mul_const, integral_rpow_exponent hu]
  ring

/-- The single logarithmic integral is bracketed by the finite rational endpoints. -/
theorem logarithmic_integral_bounds (N : ℕ) {Q : ℕ} (hQ : 0 < Q) :
    (lower N Q : ℝ) ≤ (∫ u : ℝ in 0..1, densityKernel N u * (1-u) / (-Real.log u)) ∧
      (∫ u : ℝ in 0..1, densityKernel N u * (1-u) / (-Real.log u)) ≤ (upper N Q : ℝ) := by
  rw [← density_fubini_log]
  exact density_integral_bounds N hQ

end GRWTSK.XiPrimeBlockRational
