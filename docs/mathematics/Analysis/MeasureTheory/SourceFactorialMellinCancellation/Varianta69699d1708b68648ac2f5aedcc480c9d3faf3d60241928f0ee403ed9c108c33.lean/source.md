# Complete source: GRWTSK.Analysis.MeasureTheory.SourceFactorialMellinCancellation.Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45b8b7d6de186ed19f3a4615f4c6e4fbc025b981` · SHA-256 `6fa2a1a69aa7e2971934c3599c0c5c50cea1f84ab0b10e9e71dae20f67a23f57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.PositiveUnitCoefficient.Variantad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PositiveUnitCoefficient.Variantad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/packet-followup-lamzouri-unit/source/ad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7/SourceFactorialMellinCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.MeasureTheory.PositiveUnitCoefficient.Variantad8c589208bdead34a86aa9f1ba4eac7c0dea157e2cacb85e894c473862f15b7

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
  simp only [positiveUnitCoefficient, if_pos rfl, zero_add]
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
    exact continuousOn_id.inv₀ (fun t ht => by linarith [ht.1])
  have hi : IntegrableOn (deriv Real.log) (Icc 1 y) := by
    rw [Real.deriv_log']
    exact (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
      (hc.intervalIntegrable_of_Icc hy)
  have ha := sum_mul_eq_sub_integral_mul₀ positiveUnitCoefficient (by simp [positiveUnitCoefficient])
    y hd hi
  have hs : (∑ k ∈ Finset.Icc 0 ⌊y⌋₊, Real.log (k : ℝ) * positiveUnitCoefficient k) =
      Real.log (⌊y⌋₊.factorial : ℝ) := by
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [positiveUnitCoefficient, if_pos rfl, mul_zero, zero_add]
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
      (continuousOn_id.inv₀ (fun t ht => by linarith [ht.1]) :
        ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy
    exact hi.mul_bdd measurable_fract.aestronglyMeasurable
      (by filter_upwards with t; simpa only [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg t)]
        using (Int.fract_lt_one t).le)
  have hf : IntervalIntegrable (fun t : ℝ => (⌊t⌋₊ : ℝ) / t) volume 1 y := by
    have hi : IntegrableOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
      (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp
        ((continuousOn_id.inv₀ (fun t ht => by linarith [ht.1]) :
          ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y)).intervalIntegrable_of_Icc hy)
    have hh := integrableOn_mul_sum_Icc positiveUnitCoefficient (by norm_num : (0 : ℝ) ≤ 1) hi
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
    apply hh.congr_fun
    · intro t _
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
      rw [Int.fract, Int.floor_natCast ht0.le]
      field_simp
      ring
    rw [hd]
    simp
  unfold factorialLogDefect
  rw [factorial_log_closed_Abel hy, Int.fract, Int.floor_natCast (by linarith : 0 ≤ y)]
  linarith

/-- The below-one defect is genuine and is not a centered sawtooth extension. -/
theorem factorialLogDefect_eq_lower {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialLogDefect y = y * (1 - Real.log y) := by
  unfold factorialLogDefect
  rw [Nat.floor_eq_zero.mpr hy.2]
  simp only [Nat.factorial_zero, Nat.cast_one, Real.log_one, zero_sub]
  ring

end
end FormalResearch.RiemannHypothesis.SourceFactorialMellinCancellation
```
