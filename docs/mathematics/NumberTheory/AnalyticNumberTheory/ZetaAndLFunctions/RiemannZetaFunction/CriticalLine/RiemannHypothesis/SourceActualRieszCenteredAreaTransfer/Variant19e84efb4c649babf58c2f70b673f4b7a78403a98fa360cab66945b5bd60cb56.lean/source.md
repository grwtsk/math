# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRieszCenteredAreaTransfer.Variant19e84efb4c649babf58c2f70b673f4b7a78403a98fa360cab66945b5bd60cb56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b34bdc65aca6a7859a2b658de4fca0cf76b313d` · SHA-256 `0fd220ba7f7a82eca350a0302589f396e76d9e0fe84ccfc4c65d26483d759738`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredProfilesSub.Variantdc87128a5e4e03c7d55b808941282a7411433cd54e8f6a550d8936c504d28b17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc87128a5e4e03c7d55b808941282a7411433cd54e8f6a550d8936c504d28b17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredProfilesSub.Variantdc87128a5e4e03c7d55b808941282a7411433cd54e8f6a550d8936c504d28b17","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dc87128a5e4e03c7d55b808941282a7411433cd54e8f6a550d8936c504d28b17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T084332Z-1791362612878019000/SourceActualRieszCenteredAreaTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszFixedCenterTransfer

/-!
The full absolute centered Riesz areas at the finite and authentic fixed
centers differ by a proved bounded payment. The same real constant is retained
in both profiles and the entire finite time interval is integrated. No area
budget witness or signed arithmetic upper bound is constructed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredProfilesSub.Variantdc87128a5e4e03c7d55b808941282a7411433cd54e8f6a550d8936c504d28b17

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszCenteredAreaTransfer
open MeasureTheory Set
open scoped Interval
open SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceActualRieszFixedCenterTransfer

private theorem centered_profiles_sub (A b t : ℝ) :
    actualFixedCenteredMangoldtRieszPrimitive b t -
      actualCenteredMangoldtRieszPrimitive A b t =
        -(actualRieszLimitingLinearCenter - actualRieszLinearCenter A) * t := by
  unfold actualFixedCenteredMangoldtRieszPrimitive actualCenteredMangoldtRieszPrimitive
  ring

/-- Honest finite absolute areas differ by the exact integrated linear payment. -/
theorem actualRiesz_centered_absolute_area_difference_bound {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    |(∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) -
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|)| ≤
        2 * (actualRieszLimitingLinearCenter - actualRieszLinearCenter A) * A ^ 2 := by
  have hA0 : 0 < A := by linarith
  have h2A : 0 ≤ 2 * A := by linarith
  let δ := actualRieszLimitingLinearCenter - actualRieszLinearCenter A
  have hδ : 0 ≤ δ := (actualRiesz_finite_center_payment_bound hA0).1
  have hfixed := (actualFixedCenteredMangoldtRiesz_intervalIntegrable hA b).abs
  have hfinite := (actualCenteredMangoldtRiesz_intervalIntegrable hA b).abs
  have hlinear : IntervalIntegrable (fun t : ℝ => δ * t) volume 0 (2 * A) :=
    (continuous_const.mul continuous_id).intervalIntegrable 0 (2 * A)
  have htime : (∫ t in 0..2 * A, t) = 2 * A ^ 2 := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ => x ^ 2 / 2) t t := by
      simpa using ((hasDerivAt_id t).pow 2).div_const (2 : ℝ)
    calc
      _ = (2 * A) ^ 2 / 2 - (0 : ℝ) ^ 2 / 2 :=
        intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
          (continuous_id.intervalIntegrable 0 (2 * A))
      _ = _ := by ring
  have hb := intervalIntegral.norm_integral_le_of_norm_le h2A
    (f := fun t : ℝ => |actualFixedCenteredMangoldtRieszPrimitive b t| -
      |actualCenteredMangoldtRieszPrimitive A b t|) (g := fun t : ℝ => δ * t) ?_ hlinear
  · calc
      _ = |(∫ t in 0..2 * A, (|actualFixedCenteredMangoldtRieszPrimitive b t| -
          |actualCenteredMangoldtRieszPrimitive A b t|))| := by
        rw [intervalIntegral.integral_sub hfixed hfinite]
      _ ≤ ∫ t in 0..2 * A, δ * t := by simpa only [Real.norm_eq_abs] using hb
      _ = _ := by
        rw [intervalIntegral.integral_const_mul, htime]
        dsimp only [δ]
        ring
  · apply Filter.Eventually.of_forall
    intro t ht
    have ht0 : 0 ≤ t := ht.1.le
    rw [Real.norm_eq_abs]
    have hh := abs_abs_sub_abs_le_abs_sub
      (actualFixedCenteredMangoldtRieszPrimitive b t)
      (actualCenteredMangoldtRieszPrimitive A b t)
    rw [centered_profiles_sub, abs_mul, abs_neg, abs_of_nonneg hδ,
      abs_of_nonneg ht0] at hh
    exact hh

/-- The exact finite payment makes the full area difference uniformly at most 112. -/
theorem actualRiesz_centered_absolute_area_difference_le_112 {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    |(∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) -
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|)| ≤ 112 := by
  have hA0 : 0 < A := by linarith
  have hA2 : 0 < A ^ 2 := by positivity
  have hd := (le_div_iff₀ hA2).mp (actualRiesz_finite_center_payment_bound hA0).2
  exact (actualRiesz_centered_absolute_area_difference_bound hA b).trans (by nlinarith)

/-- Both full area inequalities retain the same real constant and all original atoms. -/
theorem actualRiesz_centered_absolute_area_paid_bounds {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) + 112 ∧
    (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤
      (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) + 112 := by
  have h := abs_le.mp (actualRiesz_centered_absolute_area_difference_le_112 hA b)
  constructor <;> linarith [h.1,h.2]

/-- An optional quadratic area budget transfers either way; no such budget is supplied. -/
theorem actualRiesz_centered_quadratic_area_budget_transfer {A M : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    ((∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤ M * A ^ 2 →
      (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤
        (M + 112) * A ^ 2) ∧
    ((∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤ M * A ^ 2 →
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤
        (M + 112) * A ^ 2) := by
  have hb := actualRiesz_centered_absolute_area_paid_bounds hA b
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  constructor
  · intro h
    nlinarith [hb.1]
  · intro h
    nlinarith [hb.2]

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredAreaTransfer
```
