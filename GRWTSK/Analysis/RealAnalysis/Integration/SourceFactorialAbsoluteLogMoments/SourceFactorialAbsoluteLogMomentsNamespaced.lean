-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FractionalPrimitiveIntervalIntegrable.Variant96dcf7cf09eab397917e65395e1ac870c136927f10436c5266449854f6e0f1da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96dcf7cf09eab397917e65395e1ac870c136927f10436c5266449854f6e0f1da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FractionalPrimitiveIntervalIntegrable.Variant96dcf7cf09eab397917e65395e1ac870c136927f10436c5266449854f6e0f1da","mathematical_subject":"Analysis.Integration","original_sha256":"96dcf7cf09eab397917e65395e1ac870c136927f10436c5266449854f6e0f1da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/96dcf7cf09eab397917e-SourceFactorialAbsoluteLogMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFactorialJointCancellation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
Absolute logarithmic Mellin moments of the genuine signed factorial defect.
The defect is never assumed nonnegative above one. True lower behavior and
closed upper Abel give both-end L1 and quantitative moments for cancellation.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FractionalPrimitiveIntervalIntegrable.Variant96dcf7cf09eab397917e65395e1ac870c136927f10436c5266449854f6e0f1da

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFactorialAbsoluteLogMoments
open MeasureTheory Set
open scoped BigOperators Interval
open SourceFactorialMellinCancellation SourceActualFactorialTailDecomposition
open SourceFullPositiveKappa SourceCubicUpperLogMoments
noncomputable section

private theorem fractionalPrimitive_interval_integrable {y : ℝ} (hy : 1 ≤ y) :
    IntervalIntegrable (fun t : ℝ => Int.fract t / t) volume 1 y := by
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
    continuousOn_id.inv₀ (fun t ht => by
      simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t)))
  have hi : IntervalIntegrable (fun t : ℝ => t⁻¹) volume 1 y :=
    hc.intervalIntegrable_of_Icc hy
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
  have hii := (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp hi
  have h := hii.bdd_mul (measurable_fract.aestronglyMeasurable.restrict) (by
    filter_upwards with t
    simpa only [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg t)]
      using (Int.fract_lt_one t).le)
  change Integrable (fun t : ℝ => Int.fract t / t) (volume.restrict (Icc 1 y))
  simpa only [div_eq_mul_inv] using h

/-- Upper signed growth is bounded without assigning a sign to the actual defect. -/
theorem factorialLogDefect_abs_le_one_add_log {y : ℝ} (hy : 1 ≤ y) :
    |factorialLogDefect y| ≤ 1 + Real.log y := by
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
    continuousOn_id.inv₀ (fun t ht => by
      simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t)))
  have hi : IntervalIntegrable (fun t : ℝ => 1 / t) volume 1 y := by
    simpa only [one_div] using hc.intervalIntegrable_of_Icc hy
  have hlo : 0 ≤ ∫ t in 1..y, Int.fract t / t :=
    intervalIntegral.integral_nonneg hy (fun t ht =>
      div_nonneg (Int.fract_nonneg t) (by linarith [ht.1]))
  have hhi := intervalIntegral.integral_mono_on hy
    (fractionalPrimitive_interval_integrable hy) hi (fun t ht =>
      div_le_div_of_nonneg_right (Int.fract_lt_one t).le (by linarith [ht.1]))
  rw [integral_one_div_of_pos (by norm_num : (0 : ℝ) < 1) (by linarith : 0 < y),
    div_one] at hhi
  have hl := Real.log_nonneg hy
  have hf0 := Int.fract_nonneg y
  have hf1 := (Int.fract_lt_one y).le
  rw [factorialLogDefect_eq_fractional_primitive hy, abs_le]
  constructor <;> nlinarith

/-- Genuine absolute-log density; the signed Mellin weight supplies measurability. -/
def factorialAbsLogWeight (j : ℕ) (y : ℝ) : ℝ :=
  |factorialMellinWeight y| * |Real.log y| ^ j

def factorialAbsLogMoment (j : ℕ) : ℝ :=
  ∫ y in Ioi (0 : ℝ), factorialAbsLogWeight j y

theorem factorialAbsLogWeight_eq_literal (j : ℕ) {y : ℝ} (hy : 0 < y) :
    factorialAbsLogWeight j y = |factorialLogDefect y| *
      y ^ (-(3 : ℝ) / 2) * |Real.log y| ^ j := by
  unfold factorialAbsLogWeight factorialMellinWeight
  rw [abs_mul, abs_of_nonneg (Real.rpow_nonneg hy.le _)]

private theorem factorialAbsLogWeight_measurable (j : ℕ) :
    AEStronglyMeasurable (factorialAbsLogWeight j) (volume.restrict (Ioi (0 : ℝ))) := by
  unfold factorialAbsLogWeight
  have hm := factorialMellinWeight_integrable.aestronglyMeasurable.norm
  apply (hm.mul
    ((Real.measurable_log.abs.pow_const j).aestronglyMeasurable.restrict)).congr
  filter_upwards with y
  simp only [Pi.mul_apply, Real.norm_eq_abs]

theorem factorialAbsLogWeight_eq_lower (j : ℕ) {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialAbsLogWeight j y =
      (-1 : ℝ) ^ j * (lowerLogWeight j y - lowerLogWeight (j + 1) y) := by
  have hlog : Real.log y ≤ 0 := Real.log_nonpos hy.1.le hy.2.le
  have hn : 0 ≤ factorialMellinWeight y := by
    unfold factorialMellinWeight
    rw [factorialLogDefect_eq_lower hy]
    exact mul_nonneg (mul_nonneg hy.1.le (by linarith)) (Real.rpow_nonneg hy.1.le _)
  unfold factorialAbsLogWeight
  rw [abs_of_nonneg hn, factorialMellinWeight_eq_lower hy, abs_of_nonpos hlog, neg_pow]
  unfold lowerLogWeight
  simp only [pow_zero, mul_one, pow_succ]
  ring

theorem factorialAbsLogWeight_lower_integrable (j : ℕ) :
    IntegrableOn (factorialAbsLogWeight j) (Ioo (0 : ℝ) 1) := by
  have hi : IntegrableOn
      (fun y => (-1 : ℝ) ^ j * (lowerLogWeight j y - lowerLogWeight (j + 1) y))
        (Ioo (0 : ℝ) 1) :=
    ((lowerLogWeight_integrable j).sub (lowerLogWeight_integrable (j + 1))).const_mul _
  apply hi.congr_fun
  · intro y hy
    exact (factorialAbsLogWeight_eq_lower j hy).symm
  · exact measurableSet_Ioo

theorem factorialAbsLogWeight_lower_integral (j : ℕ) :
    (∫ y in Ioo (0 : ℝ) 1, factorialAbsLogWeight j y) =
      (2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) +
        (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) := by
  rw [setIntegral_congr_fun measurableSet_Ioo
    (fun y hy => factorialAbsLogWeight_eq_lower j hy), integral_const_mul,
    integral_sub (lowerLogWeight_integrable j) (lowerLogWeight_integrable (j + 1)),
    lowerLogWeight_integral, lowerLogWeight_integral]
  have hs : (-1 : ℝ) ^ j * (-1 : ℝ) ^ j = 1 := by rw [← mul_pow]; norm_num
  rw [pow_succ (-1 : ℝ)]
  rw [show j + 1 + 1 = j + 2 by omega]
  calc
    _ = ((-1 : ℝ) ^ j * (-1 : ℝ) ^ j) *
        ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) +
          (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ)) := by ring
    _ = _ := by rw [hs, one_mul]

theorem factorialAbsLogWeight_upper_le (j : ℕ) {y : ℝ} (hy : 1 < y) :
    factorialAbsLogWeight j y ≤ upperLogWeight j y + upperLogWeight (j + 1) y := by
  rw [factorialAbsLogWeight_eq_literal j (zero_lt_one.trans hy)]
  have hl := Real.log_nonneg hy.le
  rw [abs_of_nonneg hl]
  calc
    _ ≤ (1 + Real.log y) * y ^ (-(3 : ℝ) / 2) * Real.log y ^ j :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right (factorialLogDefect_abs_le_one_add_log hy.le)
          (Real.rpow_nonneg (by linarith) _)) (pow_nonneg hl _)
    _ = _ := by unfold upperLogWeight; rw [pow_succ]; ring

theorem factorialAbsLogWeight_upper_integrable (j : ℕ) :
    IntegrableOn (factorialAbsLogWeight j) (Ioi (1 : ℝ)) := by
  have hm := (factorialAbsLogWeight_measurable j).mono_measure
    (Measure.restrict_mono (by intro y hy; exact zero_lt_one.trans (mem_Ioi.mp hy)) le_rfl)
  apply ((upperLogWeight_integrable j).add (upperLogWeight_integrable (j + 1))).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
  have hn : 0 ≤ factorialAbsLogWeight j y := by unfold factorialAbsLogWeight; positivity
  simpa only [Real.norm_eq_abs, abs_of_nonneg hn, Pi.add_apply]
    using factorialAbsLogWeight_upper_le j hy

/-- Every absolute-log Mellin moment is genuinely integrable at both endpoints. -/
theorem factorialAbsLogWeight_integrable (j : ℕ) :
    IntegrableOn (factorialAbsLogWeight j) (Ioi (0 : ℝ)) := by
  have hl : IntegrableOn (factorialAbsLogWeight j) (Ioc (0 : ℝ) 1) :=
    (integrableOn_Ioc_iff_integrableOn_Ioo (f := factorialAbsLogWeight j)).mpr
      (factorialAbsLogWeight_lower_integrable j)
  have h := hl.union (factorialAbsLogWeight_upper_integrable j)
  rw [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] at h
  exact h

theorem factorialAbsLogMoment_le (j : ℕ) :
    factorialAbsLogMoment j ≤ 2 * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) +
      (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ)) := by
  have hu := setIntegral_mono_on (factorialAbsLogWeight_upper_integrable j)
    ((upperLogWeight_integrable j).add (upperLogWeight_integrable (j + 1)))
    measurableSet_Ioi (fun y hy => factorialAbsLogWeight_upper_le j hy)
  simp only [Pi.add_apply] at hu
  rw [integral_add (upperLogWeight_integrable j) (upperLogWeight_integrable (j + 1)),
    upperLogWeight_integral, upperLogWeight_integral] at hu
  have hs := intervalIntegral.integral_interval_add_Ioi
    (factorialAbsLogWeight_integrable j) (factorialAbsLogWeight_upper_integrable j)
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo, factorialAbsLogWeight_lower_integral] at hs
  unfold factorialAbsLogMoment
  rw [← hs]
  have he : j + 1 + 1 = j + 2 := by omega
  rw [he] at hu
  linarith

/-- Exact genuine bounds needed for the cancelled factorial sector. -/
theorem factorialAbsLogMoment_first_three :
    factorialAbsLogMoment 0 ≤ 12 ∧ factorialAbsLogMoment 1 ≤ 40 ∧
      factorialAbsLogMoment 2 ≤ 224 := by
  have h0 := factorialAbsLogMoment_le 0
  have h1 := factorialAbsLogMoment_le 1
  have h2 := factorialAbsLogMoment_le 2
  norm_num at h0 h1 h2
  exact ⟨h0, h1, h2⟩

end
end FormalResearch.RiemannHypothesis.SourceFactorialAbsoluteLogMoments
