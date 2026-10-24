# Complete source: GRWTSK.Topology.GeneralTopology.ActualCriticalPntBudget.Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0656b825795eb6aa152e6620a0b87e6dd2a9a9e` · SHA-256 `7b841b6fc68e7a8d871924f2b74f94a7faffa2330d59ff756e918bc2a5a53e32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCriticalPntAbsoluteIntegrand.Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCriticalPntAbsoluteIntegrand.Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T172033Z-1791307233899293000/ActualCriticalPntBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalAbsoluteGrowth

/-!
Even a classical exp(-c sqrt(t)) PNT envelope has an unbounded absolute budget
against the unchanged actual critical kernel. Arithmetic is not replaced:
this diagnoses the proposed unsigned envelope argument, not actual signed psi.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualCriticalPntAbsoluteIntegrand.Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

def actualCriticalPntAbsoluteIntegrand (A c t : ℝ) : ℝ :=
  Real.exp (-c * Real.sqrt t) * |baselineLogKernel A t|

def actualCriticalPntAbsoluteBudget (A c : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), actualCriticalPntAbsoluteIntegrand A c t

private theorem baseline_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (baselineLogKernel A) := by
  unfold baselineLogKernel criticalWeight
  have hq := sourceCorrelation_contDiff A hA
  exact (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
    ((hq.continuous.div_const 2).sub hq.continuous_deriv_one)

private theorem pnt_integrand_continuous (A c : ℝ) (hA : 0 < A) :
    Continuous (actualCriticalPntAbsoluteIntegrand A c) := by
  unfold actualCriticalPntAbsoluteIntegrand
  exact (Real.continuous_exp.comp (continuous_const.mul Real.continuous_sqrt)).mul
    (baseline_continuous A hA).abs

/-- The entire source envelope integral is genuine at every fixed scale. -/
theorem actualCriticalPntAbsoluteIntegrand_integrable (A c : ℝ) (hA : 4 ≤ A)
    (hc : 0 ≤ c) : IntegrableOn (actualCriticalPntAbsoluteIntegrand A c) (Ioi (0 : ℝ)) := by
  apply ((baselineLogKernel_integrable (A := A) (by linarith : 1 ≤ A)).abs).mono'
    (pnt_integrand_continuous A c (by linarith)).aestronglyMeasurable.restrict
  filter_upwards [] with t
  have he : Real.exp (-c * Real.sqrt t) ≤ 1 := Real.exp_le_one_iff.mpr
    (by nlinarith [Real.sqrt_nonneg t])
  rw [Real.norm_eq_abs, actualCriticalPntAbsoluteIntegrand, abs_mul,
    abs_of_pos (Real.exp_pos _), abs_abs]
  nlinarith [mul_le_mul_of_nonneg_right he (abs_nonneg (baselineLogKernel A t))]

/-- The actual support edge prevents this envelope budget from remaining bounded. -/
theorem actualCriticalPntAbsoluteBudget_lower (A c : ℝ) (hA : 4 ≤ A) (hc : 0 ≤ c) :
    Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) ≤
      actualCriticalPntAbsoluteBudget A c := by
  have hp : 0 < A := by linarith
  have hb := actual_critical_absolute_upper_strip_lower A hA
  have hm : Real.exp (-c * Real.sqrt (2 * A)) *
      (∫ t in (2 * A - 1)..2 * A, |baselineLogKernel A t|) ≤
      ∫ t in (2 * A - 1)..2 * A, actualCriticalPntAbsoluteIntegrand A c t := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_mono_on (by linarith)
      (((baseline_continuous A hp).abs.const_mul _).intervalIntegrable _ _)
      ((pnt_integrand_continuous A c hp).intervalIntegrable _ _)
    intro t ht
    have hs : Real.sqrt t ≤ Real.sqrt (2 * A) := Real.sqrt_le_sqrt ht.2
    have he : Real.exp (-c * Real.sqrt (2 * A)) ≤ Real.exp (-c * Real.sqrt t) :=
      Real.exp_le_exp.mpr (by nlinarith)
    exact mul_le_mul_of_nonneg_right he (abs_nonneg _)
  have hsub : Ioc (2 * A - 1) (2 * A) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact mem_Ioi.mpr (by linarith [ht.1])
  have hf := setIntegral_mono_set (s := Ioc (2 * A - 1) (2 * A))
    (actualCriticalPntAbsoluteIntegrand_integrable A c hA hc)
    (Eventually.of_forall fun t => mul_nonneg (Real.exp_pos _).le (abs_nonneg _))
    (Eventually.of_forall fun t ht => hsub ht)
  rw [← intervalIntegral.integral_of_le (by linarith : 2 * A - 1 ≤ 2 * A)] at hf
  have hlo := mul_le_mul_of_nonneg_left hb (Real.exp_pos (-c * Real.sqrt (2 * A))).le
  have he : Real.exp (-c * Real.sqrt (2 * A)) *
      (Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) := by
    rw [← mul_div_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he] at hlo
  exact hlo.trans (hm.trans hf)

/-- The full PNT absolute envelope budget diverges for every fixed nonnegative c. -/
theorem actualCriticalPntAbsoluteBudget_tendsto_atTop (c : ℝ) (hc : 0 ≤ c) :
    Tendsto (fun A : ℝ => actualCriticalPntAbsoluteBudget A c) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9)) =
      fun A => (Real.exp (-1 / 2) / (30 * 2 ^ 9)) *
        (Real.exp (A / 2) / (A / 2) ^ 9) := by
    funext A
    rw [show A / 2 - 1 / 2 = A / 2 + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    apply Tendsto.const_mul_atTop (by positivity)
    exact (Real.tendsto_exp_div_pow_atTop 9).comp
      (by simpa only [div_eq_mul_inv, mul_comm, one_mul, id_eq] using
        (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 1 / 2)))
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (max (4 : ℝ) (8 * c ^ 2))] with A hA
  have hA4 : 4 ≤ A := (le_max_left _ _).trans hA
  have hAc : 8 * c ^ 2 ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hs : c * Real.sqrt (2 * A) ≤ A / 2 := by
    have he : (c * Real.sqrt (2 * A)) ^ 2 = 2 * c ^ 2 * A := by
      rw [mul_pow, Real.sq_sqrt (by positivity : 0 ≤ 2 * A)]
      ring
    nlinarith [mul_nonneg hc (Real.sqrt_nonneg (2 * A))]
  have hle : Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9) ≤
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) :=
    div_le_div_of_nonneg_right (Real.exp_le_exp.mpr (by linarith)) (by positivity)
  exact hle.trans (actualCriticalPntAbsoluteBudget_lower A c hA4 hc)

end
end RH16IndependentChallengeNext
```
