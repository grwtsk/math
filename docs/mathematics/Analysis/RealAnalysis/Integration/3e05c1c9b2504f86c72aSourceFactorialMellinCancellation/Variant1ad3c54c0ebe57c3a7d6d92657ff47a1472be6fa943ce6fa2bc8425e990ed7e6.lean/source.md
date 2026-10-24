# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.3e05c1c9b2504f86c72aSourceFactorialMellinCancellation.Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e86d1cff60b3d9e6d79a798c3faf444c17a8e6` · SHA-256 `493110ca2ffbf52b9b37cc35b89e91aef6716118c99e6368eaa37be7ebaef85a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PositiveUnitCoefficient.Variant3e05c1c9b2504f86c72accdbf61d0a062d53086630680561a063a400acdbb395","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e05c1c9b2504f86c72accdbf61d0a062d53086630680561a063a400acdbb395","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PositiveUnitCoefficient.Variant3e05c1c9b2504f86c72accdbf61d0a062d53086630680561a063a400acdbb395","mathematical_subject":"Analysis.Integration","original_sha256":"3e05c1c9b2504f86c72accdbf61d0a062d53086630680561a063a400acdbb395","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/3e05c1c9b2504f86c72a-SourceFactorialMellinCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFactorialTailDecomposition
import SourceFullPositiveKappa
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
The genuine factorial defect has a signed full positive-axis Mellin moment.
Its closed Abel jumps, true lower interval and integrability at both endpoints
are retained before using Fubini. No signed Chebyshev estimate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PositiveUnitCoefficient.Variant3e05c1c9b2504f86c72accdbf61d0a062d53086630680561a063a400acdbb395

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFactorialMellinCancellation

open MeasureTheory Set Filter
open scoped BigOperators Interval
open SourceActualFactorialTailDecomposition SourceFullPositiveKappa
open SourceSamplingCoefficients SourceCubicUpperLogMoments

noncomputable section

private def positiveUnitCoefficient (n : ℕ) : ℝ := if n = 0 then 0 else 1

private theorem positiveUnitCoefficient_sum (n : ℕ) :
    (∑ k ∈ Finset.Icc 0 n, positiveUnitCoefficient k) = (n : ℝ) := by
  rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [positiveUnitCoefficient, ↓reduceIte, zero_add]
  have he : (∑ k ∈ Finset.Ioc 0 n, if k = 0 then (0 : ℝ) else 1) =
      ∑ _k ∈ Finset.Ioc 0 n, (1 : ℝ) := by
    apply Finset.sum_congr rfl
    intro k hk
    simp [ne_of_gt (Finset.mem_Ioc.mp hk).1]
  rw [he]
  simp

/-- Ordinary log smoothness is used only on the true closed interval from one. -/
theorem factorial_log_closed_Abel {y : ℝ} (hy : 1 ≤ y) :
    Real.log (⌊y⌋₊.factorial : ℝ) =
      (⌊y⌋₊ : ℝ) * Real.log y - ∫ t in 1..y, (⌊t⌋₊ : ℝ) / t := by
  have hd : ∀ t ∈ Icc (1 : ℝ) y, DifferentiableAt ℝ Real.log t := by
    intro t ht
    exact (Real.hasDerivAt_log (by linarith [ht.1] : t ≠ 0)).differentiableAt
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) := by
    exact continuousOn_id.inv₀ (fun t ht => by
        simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t)))
  have hi : IntegrableOn (deriv Real.log) (Icc 1 y) := by
    rw [Real.deriv_log']
    exact (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
      (hc.intervalIntegrable_of_Icc hy)
  have ha := sum_mul_eq_sub_integral_mul₀ positiveUnitCoefficient
    (by simp [positiveUnitCoefficient])
    y hd hi
  have hs : (∑ k ∈ Finset.Icc 0 ⌊y⌋₊, Real.log (k : ℝ) * positiveUnitCoefficient k) =
      Real.log (⌊y⌋₊.factorial : ℝ) := by
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [positiveUnitCoefficient, ↓reduceIte, mul_zero, zero_add]
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    simp only [Nat.zero_add]
    rw [← sum_log_Icc_eq_log_factorial]
    apply Finset.sum_congr rfl
    intro k hk
    simp [ne_of_gt (by have := (Finset.mem_Icc.mp hk).1; omega : 0 < k)]
  rw [hs, positiveUnitCoefficient_sum, ← intervalIntegral.integral_of_le hy] at ha
  have he : (∫ t in 1..y, deriv Real.log t *
      ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, positiveUnitCoefficient k) =
      ∫ t in 1..y, (⌊t⌋₊ : ℝ) / t := by
    simp_rw [Real.deriv_log, positiveUnitCoefficient_sum]
    congr 1
    funext t
    ring
  rw [he] at ha
  simpa only [mul_comm] using ha

/-- The actual signed fractional primitive retains every integer log jump. -/
theorem factorialLogDefect_eq_fractional_primitive {y : ℝ} (hy : 1 ≤ y) :
    factorialLogDefect y = 1 - Int.fract y * Real.log y +
      ∫ t in 1..y, Int.fract t / t := by
  have hfrac : IntervalIntegrable (fun t : ℝ => Int.fract t / t) volume 1 y := by
    have hi : IntervalIntegrable (fun t : ℝ => t⁻¹) volume 1 y :=
      (continuousOn_id.inv₀ (fun t ht => by
        simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t))) :
        ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
    have hii := (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp hi
    have h := hii.bdd_mul (measurable_fract.aestronglyMeasurable.restrict) (by
      filter_upwards with t
      simpa only [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg t)]
        using (Int.fract_lt_one t).le)
    change Integrable (fun t : ℝ => Int.fract t / t) (volume.restrict (Icc 1 y))
    simpa only [div_eq_mul_inv] using h
  have hf : IntervalIntegrable (fun t : ℝ => (⌊t⌋₊ : ℝ) / t) volume 1 y := by
    have hi : IntegrableOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
      (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
        ((continuousOn_id.inv₀ (fun t ht => by
        simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t))) :
          ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy)
    have hh := integrableOn_mul_sum_Icc (m := 0) positiveUnitCoefficient
      (by norm_num : (0 : ℝ) ≤ 1) hi
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
    apply hh.congr_fun
    · intro t _
      dsimp only
      rw [positiveUnitCoefficient_sum]
      ring
    · exact measurableSet_Icc
  have he : (∫ t in 1..y, (⌊t⌋₊ : ℝ) / t) +
      (∫ t in 1..y, Int.fract t / t) = y - 1 := by
    rw [← intervalIntegral.integral_add hf hfrac]
    have hd : (∫ t in 1..y, (⌊t⌋₊ : ℝ) / t + Int.fract t / t) =
        ∫ _t in 1..y, (1 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro t ht
      rw [uIcc_of_le hy] at ht
      have ht0 : 0 < t := by linarith [ht.1]
      simp only [Int.fract, ← natCast_floor_eq_intCast_floor ht0.le]
      field_simp
      ring
    rw [hd]
    simp
  unfold factorialLogDefect
  rw [factorial_log_closed_Abel hy]
  rw [show Int.fract y = y - (⌊y⌋₊ : ℝ) by
    simp only [Int.fract, ← natCast_floor_eq_intCast_floor (by linarith : 0 ≤ y)] ]
  nlinarith

/-- The below-one defect is genuine and is not a centered sawtooth extension. -/
theorem factorialLogDefect_eq_lower {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialLogDefect y = y * (1 - Real.log y) := by
  unfold factorialLogDefect
  rw [Nat.floor_eq_zero.mpr hy.2]
  simp only [Nat.factorial_zero, Nat.cast_one, Real.log_one, zero_sub]
  ring


private def fractionalTriangle (z : ℝ × ℝ) : ℝ :=
  if z.1 ≤ z.2 then Int.fract z.1 / z.1 * z.2 ^ (-(3 : ℝ) / 2) else 0

private theorem negativeThreeHalves_measurable :
    Measurable (fun y : ℝ => y ^ (-(3 : ℝ) / 2)) := by
  have he : (fun y : ℝ => y ^ (-(3 : ℝ) / 2)) = fun y =>
      if y = 0 then 0 else if y < 0 then
        Real.exp (Real.log y * (-(3 : ℝ) / 2)) * Real.cos ((-(3 : ℝ) / 2) * Real.pi)
      else Real.exp (Real.log y * (-(3 : ℝ) / 2)) := by
    funext y
    split_ifs with h0 hn
    · subst y
      exact Real.zero_rpow (by norm_num)
    · exact Real.rpow_def_of_neg hn _
    · exact Real.rpow_def_of_pos (lt_of_le_of_ne (le_of_not_gt hn) (Ne.symm h0)) _
  rw [he]
  apply Measurable.ite (measurableSet_singleton (0 : ℝ)) measurable_const
  apply Measurable.ite measurableSet_Iio <;> fun_prop

private theorem fractionalTriangle_measurable : Measurable fractionalTriangle := by
  unfold fractionalTriangle
  exact Measurable.ite (measurableSet_le measurable_fst measurable_snd)
    (((measurable_fract.comp measurable_fst).div measurable_fst).mul
      (negativeThreeHalves_measurable.comp measurable_snd)) measurable_const

private theorem fractionalTriangle_nonneg {t y : ℝ} (ht : 1 < t) (hy : 1 < y) :
    0 ≤ fractionalTriangle (t, y) := by
  unfold fractionalTriangle
  split_ifs
  · exact mul_nonneg (div_nonneg (Int.fract_nonneg _) (by linarith))
      (Real.rpow_nonneg (by linarith) _)
  · rfl

private theorem fractionalTriangle_right_integrable {t : ℝ} (_ht : 1 < t) :
    Integrable (fun y => fractionalTriangle (t, y)) (volume.restrict (Ioi 1)) := by
  have hi : IntegrableOn (fun y : ℝ => y ^ (-(3 : ℝ) / 2)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) (by norm_num)
  have he : (fun y => fractionalTriangle (t, y)) =
      (Ici t).indicator (fun y : ℝ => Int.fract t / t * y ^ (-(3 : ℝ) / 2)) := by
    funext y
    simp only [fractionalTriangle, Set.indicator, mem_Ici]
  rw [he]
  exact (hi.const_mul _).indicator measurableSet_Ici

private theorem fractionalTriangle_right_integral {t : ℝ} (ht : 1 < t) :
    (∫ y in Ioi (1 : ℝ), fractionalTriangle (t, y)) =
      2 * Int.fract t * t ^ (-(3 : ℝ) / 2) := by
  have he : (fun y => fractionalTriangle (t, y)) =
      (Ici t).indicator (fun y : ℝ => Int.fract t / t * y ^ (-(3 : ℝ) / 2)) := by
    funext y
    simp only [fractionalTriangle, Set.indicator, mem_Ici]
  rw [he, integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  have hset : Ici t ∩ Ioi (1 : ℝ) = Ici t := inter_eq_left.mpr (by
    intro y hy
    exact lt_of_lt_of_le ht hy)
  rw [hset, integral_Ici_eq_integral_Ioi, integral_const_mul,
    integral_Ioi_rpow_of_lt (by norm_num : -(3 : ℝ) / 2 < -1) (by linarith : 0 < t)]
  norm_num
  have hp : t ^ (-(1 : ℝ) / 2) / t = t ^ (-(3 : ℝ) / 2) := by
    rw [div_eq_mul_inv, ← Real.rpow_neg_one, ← Real.rpow_add (by linarith : 0 < t)]
    norm_num
  norm_num only [neg_div, div_neg] at hp ⊢
  calc
    _ = 2 * Int.fract t * (t ^ (-(1 : ℝ) / 2) / t) := by
      norm_num only [neg_div]
      ring
    _ = _ := by
      norm_num only [neg_div]
      rw [hp]

/-- Genuine two-variable L1 precedes exchanging the upper fractional primitive. -/
theorem fractionalTriangle_integrable :
    Integrable fractionalTriangle ((volume.restrict (Ioi (1 : ℝ))).prod
      (volume.restrict (Ioi (1 : ℝ)))) := by
  apply (integrable_prod_iff fractionalTriangle_measurable.aestronglyMeasurable).mpr
  constructor
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact fractionalTriangle_right_integrable ht
  · have hi : IntegrableOn (coefficientWeight 0) (Ioi (1 : ℝ)) :=
      (coefficientWeight_integrable 0).mono_set (by
      intro t ht
      exact zero_lt_one.trans (mem_Ioi.mp ht))
    apply (hi.const_mul 2).congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have he : (∫ y in Ioi (1 : ℝ), ‖fractionalTriangle (t, y)‖) =
        ∫ y in Ioi (1 : ℝ), fractionalTriangle (t, y) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
      rw [Real.norm_eq_abs, abs_of_nonneg (fractionalTriangle_nonneg ht hy)]
    rw [he, fractionalTriangle_right_integral ht]
    simp only [coefficientWeight, pow_zero, mul_one]
    ring

private theorem fractionalTriangle_left_integral {y : ℝ} (hy : 1 ≤ y) :
    (∫ t in Ioi (1 : ℝ), fractionalTriangle (t, y)) =
      (∫ t in 1..y, Int.fract t / t) * y ^ (-(3 : ℝ) / 2) := by
  have he : (fun t => fractionalTriangle (t, y)) =
      (Iic y).indicator (fun t : ℝ => Int.fract t / t * y ^ (-(3 : ℝ) / 2)) := by
    funext t
    simp only [fractionalTriangle, Set.indicator, mem_Iic]
  rw [he, integral_indicator measurableSet_Iic, Measure.restrict_restrict measurableSet_Iic]
  have hset : Iic y ∩ Ioi (1 : ℝ) = Ioc 1 y := by ext t; simp [and_comm]
  rw [hset, integral_mul_const, ← intervalIntegral.integral_of_le hy]

/-- The cumulative fractional contribution has actual upper L1. -/
theorem fractionalPrimitive_mellin_integrable :
    IntegrableOn (fun y : ℝ => (∫ t in 1..y, Int.fract t / t) *
      y ^ (-(3 : ℝ) / 2)) (Ioi 1) := by
  apply fractionalTriangle_integrable.integral_prod_right.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
  exact fractionalTriangle_left_integral hy.le

/-- Fubini evaluates the genuine upper cumulative contribution without discarding atoms. -/
theorem fractionalPrimitive_mellin_integral :
    (∫ y in Ioi (1 : ℝ), (∫ t in 1..y, Int.fract t / t) * y ^ (-(3 : ℝ) / 2)) =
      2 * ∫ y in Ioi (1 : ℝ), coefficientWeight 0 y := by
  have hs := integral_integral_swap
    (f := fun t y => fractionalTriangle (t, y)) fractionalTriangle_integrable
  have hl : (∫ y in Ioi (1 : ℝ), ∫ t in Ioi (1 : ℝ), fractionalTriangle (t, y)) =
      ∫ y in Ioi (1 : ℝ), (∫ t in 1..y, Int.fract t / t) * y ^ (-(3 : ℝ) / 2) := by
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    exact fractionalTriangle_left_integral hy.le
  have hr : (∫ t in Ioi (1 : ℝ), ∫ y in Ioi (1 : ℝ), fractionalTriangle (t, y)) =
      2 * ∫ t in Ioi (1 : ℝ), coefficientWeight 0 t := by
    rw [← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    rw [fractionalTriangle_right_integral ht]
    simp only [coefficientWeight, pow_zero, mul_one]
    ring
  rw [hl, hr] at hs
  exact hs.symm


/-- The factorial defect density keeps the true positive-axis Mellin measure. -/
def factorialMellinWeight (y : ℝ) : ℝ :=
  factorialLogDefect y * y ^ (-(3 : ℝ) / 2)

theorem factorialMellinWeight_eq_lower {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialMellinWeight y = lowerLogWeight 0 y - lowerLogWeight 1 y := by
  unfold factorialMellinWeight
  rw [factorialLogDefect_eq_lower hy]
  have hp : y * y ^ (-(3 : ℝ) / 2) = y ^ (-(1 : ℝ) / 2) := by
    nth_rw 1 [← Real.rpow_one y]
    rw [← Real.rpow_add hy.1]
    norm_num
  unfold lowerLogWeight
  simp only [pow_zero, pow_one, mul_one]
  calc
    _ = y * y ^ (-(3 : ℝ) / 2) -
        (y * y ^ (-(3 : ℝ) / 2)) * Real.log y := by ring
    _ = _ := by rw [hp]

theorem factorialMellinWeight_lower_integrable :
    IntegrableOn factorialMellinWeight (Ioo (0 : ℝ) 1) := by
  apply ((lowerLogWeight_integrable 0).sub (lowerLogWeight_integrable 1)).congr_fun
  · intro y hy
    exact (factorialMellinWeight_eq_lower hy).symm
  · exact measurableSet_Ioo

/-- The entire genuine lower interval contributes six to the factorial Mellin moment. -/
theorem factorialMellinWeight_lower_integral :
    (∫ y in Ioo (0 : ℝ) 1, factorialMellinWeight y) = 6 := by
  rw [setIntegral_congr_fun measurableSet_Ioo (fun y hy => factorialMellinWeight_eq_lower hy)]
  rw [integral_sub (lowerLogWeight_integrable 0) (lowerLogWeight_integrable 1),
    lowerLogWeight_integral, lowerLogWeight_integral]
  norm_num

theorem factorialMellinWeight_eq_upper {y : ℝ} (hy : 1 ≤ y) :
    factorialMellinWeight y = upperLogWeight 0 y - coefficientWeight 1 y +
      (∫ t in 1..y, Int.fract t / t) * y ^ (-(3 : ℝ) / 2) := by
  unfold factorialMellinWeight
  rw [factorialLogDefect_eq_fractional_primitive hy]
  unfold upperLogWeight coefficientWeight
  simp only [pow_zero, pow_one, mul_one]
  ring

theorem factorialMellinWeight_upper_integrable :
    IntegrableOn factorialMellinWeight (Ioi (1 : ℝ)) := by
  have hi : IntegrableOn (coefficientWeight 1) (Ioi (1 : ℝ)) :=
    (coefficientWeight_integrable 1).mono_set (by
      intro y hy
      exact zero_lt_one.trans (mem_Ioi.mp hy))
  apply (((upperLogWeight_integrable 0).sub hi).add
    fractionalPrimitive_mellin_integrable).congr_fun
  · intro y hy
    exact (factorialMellinWeight_eq_upper hy.le).symm
  · exact measurableSet_Ioi

/-- Both-end L1 of the actual factorial defect is proved before the signed split. -/
theorem factorialMellinWeight_integrable :
    IntegrableOn factorialMellinWeight (Ioi (0 : ℝ)) := by
  have hl : IntegrableOn factorialMellinWeight (Ioc (0 : ℝ) 1) :=
    (integrableOn_Ioc_iff_integrableOn_Ioo (f := factorialMellinWeight)).mpr
      factorialMellinWeight_lower_integrable
  have h := hl.union factorialMellinWeight_upper_integrable
  rw [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] at h
  exact h

theorem factorialMellinWeight_upper_integral :
    (∫ y in Ioi (1 : ℝ), factorialMellinWeight y) =
      2 + 2 * (∫ y in Ioi (1 : ℝ), coefficientWeight 0 y) -
        (∫ y in Ioi (1 : ℝ), coefficientWeight 1 y) := by
  have hi : IntegrableOn (coefficientWeight 1) (Ioi (1 : ℝ)) :=
    (coefficientWeight_integrable 1).mono_set (by
      intro y hy
      exact zero_lt_one.trans (mem_Ioi.mp hy))
  rw [setIntegral_congr_fun measurableSet_Ioi
    (fun y hy => factorialMellinWeight_eq_upper hy.le)]
  rw [integral_add (f := fun y => upperLogWeight 0 y - coefficientWeight 1 y)
    ((upperLogWeight_integrable 0).sub hi) fractionalPrimitive_mellin_integrable,
    integral_sub (upperLogWeight_integrable 0) hi, upperLogWeight_integral,
    fractionalPrimitive_mellin_integral]
  norm_num
  ring

/-- The actual first full fractional coefficient is exactly half the factorial moment. -/
theorem fullPositiveKappa_one_eq_factorial_mellin :
    fullPositiveKappa 1 = (1 / 2 : ℝ) * ∫ y in Ioi (0 : ℝ), factorialMellinWeight y := by
  have hs := intervalIntegral.integral_interval_add_Ioi
    factorialMellinWeight_integrable factorialMellinWeight_upper_integrable
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo, factorialMellinWeight_lower_integral,
    factorialMellinWeight_upper_integral] at hs
  have hk := fullPositiveKappa_four_endpoint_corrections.1
  have hi0 : IntegrableOn (coefficientWeight 0) (Ioi (1 : ℝ)) :=
    (coefficientWeight_integrable 0).mono_set (by
      intro y hy
      exact zero_lt_one.trans (mem_Ioi.mp hy))
  have hi1 : IntegrableOn (coefficientWeight 1) (Ioi (1 : ℝ)) :=
    (coefficientWeight_integrable 1).mono_set (by
      intro y hy
      exact zero_lt_one.trans (mem_Ioi.mp hy))
  have hu := fullPositiveKappa_upper_integral_succ 0
  simp only [Nat.zero_add] at hu
  rw [funext (fullPositiveKappaWeight_eq_moment_densities 1)] at hu
  norm_num only [Nat.sub_self, Nat.cast_one, one_mul] at hu
  rw [integral_sub hi0 (hi1.div_const 2), integral_div] at hu
  rw [← hs, hk, ← hu]
  ring

end
end FormalResearch.RiemannHypothesis.SourceFactorialMellinCancellation
```
