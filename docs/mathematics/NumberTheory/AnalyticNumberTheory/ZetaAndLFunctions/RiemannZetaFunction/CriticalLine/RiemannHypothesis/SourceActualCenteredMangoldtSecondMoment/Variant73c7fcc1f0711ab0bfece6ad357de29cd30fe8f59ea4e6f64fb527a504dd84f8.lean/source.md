# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualCenteredMangoldtSecondMoment.Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bbfd8909c40f357362a41e70bbd176c87e72fa8` · SHA-256 `78c5d5abf5cb42376725b4bc316f29c96a595c8777fd01f2923b656e316f1f68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredBDensity.Variantf50254848941743f087aae10f8333c1ac59f74a440d06853c840ac50b8ec37d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f50254848941743f087aae10f8333c1ac59f74a440d06853c840ac50b8ec37d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCenteredBDensity.Variantf50254848941743f087aae10f8333c1ac59f74a440d06853c840ac50b8ec37d1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f50254848941743f087aae10f8333c1ac59f74a440d06853c840ac50b8ec37d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352215495349000/SourceActualCenteredMangoldtSecondMoment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualClosedXiSignedMoment
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
An actual-arithmetic obstruction to the unweighted centered second-moment
Cauchy scheme. The full closed Mangoldt discrepancy is retained; no divergence
of the actual signed moment and no uniform J witness are asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredBDensity.Variantf50254848941743f087aae10f8333c1ac59f74a440d06853c840ac50b8ec37d1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredMangoldtSecondMoment
open MeasureTheory Set SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open scoped Interval

def actualCenteredBDensity (Y x : ℝ) : ℝ :=
  (mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y)) ^ 2

def actualCenteredBSecondMoment (Y : ℝ) : ℝ :=
  ∫ x in 1..Y, actualCenteredBDensity Y x

theorem actual_weighted_error_measurable :
    Measurable (fun x : ℝ => mangoldtLogError (Real.log x)) := by
  have hm : Measurable weightedMangoldt := measurable_from_nat
  unfold mangoldtLogError mangoldtLogPrefix
  exact (hm.comp (Nat.measurable_floor.comp
    (Real.measurable_exp.comp Real.measurable_log))).sub Real.measurable_log

theorem actualCenteredBDensity_intervalIntegrable (Y : ℝ) (hY : 2 ≤ Y) :
    IntervalIntegrable (actualCenteredBDensity Y) volume 1 Y := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2
  have hC : 0 ≤ C := by
    dsimp only [C]
    positivity
  have hg : Measurable (actualCenteredBDensity Y) := by
    exact (actual_weighted_error_measurable.sub measurable_const).pow_const 2
  have hi : IntervalIntegrable (fun _ : ℝ => (2 * C) ^ 2) volume 1 Y :=
    continuous_const.intervalIntegrable _ _
  apply hi.mono_fun' hg.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with x hx
  rw [uIoc_of_le (by linarith : (1 : ℝ) ≤ Y)] at hx
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx.1.le
  have hYlog : 0 ≤ Real.log Y := Real.log_nonneg (by linarith)
  have he : |mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y)| ≤ 2 * C := by
    have hxE := mangoldtLogError_abs_le (Real.log x) hxlog
    have hYE := mangoldtLogError_abs_le (Real.log Y) hYlog
    exact (abs_sub _ _).trans (by dsimp only [C]; linarith)
  rw [Real.norm_eq_abs, actualCenteredBDensity, abs_of_nonneg (sq_nonneg _)]
  have hs := (sq_le_sq₀ (abs_nonneg
    (mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y)))
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hC)).2 he
  simpa only [sq_abs] using hs

private def squareLogPrimitive (q x : ℝ) : ℝ :=
  x * ((q - Real.log x) ^ 2 + 2 * (q - Real.log x) + 2)

private theorem squareLogPrimitive_hasDerivAt (q x : ℝ) (hx : 0 < x) :
    HasDerivAt (squareLogPrimitive q) ((q - Real.log x) ^ 2) x := by
  have hu := (hasDerivAt_const x q).sub (Real.hasDerivAt_log hx.ne')
  exact ((hasDerivAt_id x).mul
    (((hu.pow 2).add (hu.const_mul 2)).add_const 2)).congr_deriv (by
      simp only [Pi.add_apply, Pi.sub_apply, Pi.pow_apply, id_eq]
      field_simp
      ring)

theorem exact_log_variance (q : ℝ) :
    (∫ x in (1 : ℝ)..2, (q - Real.log x) ^ 2) =
      (q - (2 * Real.log 2 - 1)) ^ 2 + 1 - 2 * (Real.log 2) ^ 2 := by
  have hc : ContinuousOn (fun x : ℝ => (q - Real.log x) ^ 2) (Icc 1 2) := by
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact ((continuousAt_const.sub (Real.continuousAt_log hp.ne')).pow 2).continuousWithinAt
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x (hx : x ∈ uIcc (1 : ℝ) 2) => squareLogPrimitive_hasDerivAt q x (by
      rw [uIcc_of_le (by norm_num : (1 : ℝ) ≤ 2)] at hx
      linarith [hx.1])) (hc.intervalIntegrable_of_Icc (by norm_num))
  rw [hi]
  unfold squareLogPrimitive
  rw [Real.log_one]
  ring

/-- The actual empty-prefix cell cannot have vanishing variance after any constant centering. -/
theorem actual_empty_prefix_variance_lower (Y : ℝ) :
    (1 / 50 : ℝ) ≤ ∫ x in (1 : ℝ)..2, actualCenteredBDensity Y x := by
  have he : (∫ x in (1 : ℝ)..2, actualCenteredBDensity Y x) =
      ∫ x in (1 : ℝ)..2, (-mangoldtLogError (Real.log Y) - Real.log x) ^ 2 := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by norm_num)
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    have hlog : Real.log x < Real.log 2 :=
      (Real.log_lt_log_iff hp (by norm_num : (0 : ℝ) < 2)).mpr hx.2
    unfold actualCenteredBDensity
    rw [mangoldtLogError_below_first_atom hlog]
    ring
  rw [he, exact_log_variance]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl7 : Real.log (2 : ℝ) ≤ (7 / 10 : ℝ) := by
    linarith [Real.log_two_lt_d9]
  have hs := mul_self_le_mul_self hl0 hl7
  nlinarith [sq_nonneg (-mangoldtLogError (Real.log Y) - (2 * Real.log 2 - 1))]

/-- This is a positive actual second-moment floor, not a signed-target divergence claim. -/
theorem actualCenteredBSecondMoment_lower (Y : ℝ) (hY : 2 ≤ Y) :
    (1 / 50 : ℝ) ≤ actualCenteredBSecondMoment Y := by
  have hm := intervalIntegral.integral_mono_interval (μ := volume) le_rfl
    (by norm_num : (1 : ℝ) ≤ 2) hY
    (f := actualCenteredBDensity Y)
    (Filter.Eventually.of_forall (fun x => sq_nonneg
      (mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y))))
    (actualCenteredBDensity_intervalIntegrable Y hY)
  exact (actual_empty_prefix_variance_lower Y).trans hm

end FormalResearch.RiemannHypothesis.SourceActualCenteredMangoldtSecondMoment
```
