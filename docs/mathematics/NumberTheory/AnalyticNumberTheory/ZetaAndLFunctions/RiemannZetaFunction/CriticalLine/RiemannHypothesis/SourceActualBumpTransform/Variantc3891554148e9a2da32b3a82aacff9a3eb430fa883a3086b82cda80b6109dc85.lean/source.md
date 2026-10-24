# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualBumpTransform.Variantc3891554148e9a2da32b3a82aacff9a3eb430fa883a3086b82cda80b6109dc85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18322f40e9a17afc10d0019e4d6143c25d060169` · SHA-256 `216429ec22f46c48c3b6bea3290772585a4250754244d715380716861631d8d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpInteriorTransformEq.Variantfa64a7bb8b41bbb8a9a9c5f236ececf1053657eb2ad0cb96e56f5a1f76f7d824","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa64a7bb8b41bbb8a9a9c5f236ececf1053657eb2ad0cb96e56f5a1f76f7d824","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualBumpInteriorTransformEq.Variantfa64a7bb8b41bbb8a9a9c5f236ececf1053657eb2ad0cb96e56f5a1f76f7d824","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fa64a7bb8b41bbb8a9a9c5f236ececf1053657eb2ad0cb96e56f5a1f76f7d824","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T042658Z-1791347218989718000/SourceActualBumpTransform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexCorrelationSquare
import SourceBumpLaplace

/-!
The literal actual normalized source transform has the original bump multiplier.
Both bump and first-derivative endpoint traces are retained in two finite FTC
identities; all finite integrals are genuinely L1. The resulting correlation
weight is an ordinary complex square, with the prescribed normalization.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpInteriorTransformEq.Variantfa64a7bb8b41bbb8a9a9c5f236ececf1053657eb2ad0cb96e56f5a1f76f7d824

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualBumpTransform
open MeasureTheory Set
open scoped Interval
open SourcePairing SourceBumpLaplace SourceActualComplexEndpointAsymptotic
open ActualCorrelationOppositeHalf ActualComplexCorrelationSquare
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- Exact dilation of the original polynomial bump, including both finite endpoints. -/
theorem actualBumpInteriorTransform_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ x in -A..A, (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Real.sqrt A : ℂ) * bumpLaplace ((A : ℂ) * z) := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℂ := fun u => (((1-u^2)^4 : ℝ) : ℂ) *
    Complex.exp (((A : ℂ) * z) * (u : ℂ))
  have he (x : ℝ) : (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ)) =
      (Real.sqrt A : ℂ)⁻¹ * f (x / A) := by
    dsimp [bumpInterior, f]
    push_cast
    have hex : ((A : ℂ) * z) * ((x : ℂ) / (A : ℂ)) = z * (x : ℂ) := by
      field_simp [Complex.ofReal_ne_zero.mpr hp.ne']
    rw [hex]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_comp_div f hp.ne']
  simp only [neg_div, div_self hp.ne']
  rw [Real.smul_def, Complex.real_smul]
  change (Real.sqrt A : ℂ)⁻¹ * ((A : ℂ) * bumpLaplace ((A : ℂ) * z)) = _
  have hs : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hp.le
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (Real.sqrt_pos.mpr hp).ne'
  rw [← hs]
  field_simp

/-- Two genuine finite FTC identities supply the second derivative multiplier. -/
theorem actualSecondInteriorTransform_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ x in -A..A, (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) =
      z^2 * (∫ x in -A..A, (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hn : A ≠ 0 := by linarith
  let b : ℝ → ℂ := fun x => (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  let d : ℝ → ℂ := fun x => (firstInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  let e : ℝ → ℂ := fun x => (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  have hc : Continuous b :=
    (Complex.continuous_ofReal.comp (bumpInterior_continuous A)).mul (by fun_prop)
  have hd : Continuous d :=
    (Complex.continuous_ofReal.comp (firstInterior_continuous A)).mul (by fun_prop)
  have he : Continuous e :=
    (Complex.continuous_ofReal.comp (secondInterior_continuous A)).mul (by fun_prop)
  have hb' (x : ℝ) : HasDerivAt b (d x + z * b x) x := by
    have hh := (bumpInterior_hasDerivAt A x).ofReal_comp.mul
      (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp)
    convert! hh using 1
    dsimp [b, d]
    ring
  have hd' (x : ℝ) : HasDerivAt d (e x + z * d x) x := by
    have hh := (firstInterior_hasDerivAt A x).ofReal_comp.mul
      (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp)
    convert! hh using 1
    dsimp [d, e]
    ring
  have hb0 := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hb' x)
    ((hd.add (hc.const_mul z)).intervalIntegrable (-A) A)
  have hd0 := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hd' x)
    ((he.add (hd.const_mul z)).intervalIntegrable (-A) A)
  have hbt := bumpInterior_endpoints A hn
  have hdt := firstInterior_endpoints A hn
  have hbz : b A - b (-A) = 0 := by simp [b, hbt.1, hbt.2]
  have hdz : d A - d (-A) = 0 := by simp [d, hdt.1, hdt.2]
  rw [hbz, intervalIntegral.integral_add (hd.intervalIntegrable _ _)
    ((hc.const_mul z).intervalIntegrable _ _), intervalIntegral.integral_const_mul] at hb0
  rw [hdz, intervalIntegral.integral_add (he.intervalIntegrable _ _)
    ((hd.const_mul z).intervalIntegrable _ _), intervalIntegral.integral_const_mul] at hd0
  change (∫ x in -A..A, e x) = z^2 * (∫ x in -A..A, b x)
  linear_combination hd0 - z * hb0

/-- The actual source q-transform is exactly the original pole-annihilated bump transform. -/
theorem actualSourceComplexTransform_eq_bump {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualSourceComplexTransform A z =
      ((Real.sqrt A / Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        (z^2 - 1/4) * bumpLaplace ((A : ℂ) * z) := by
  have hp : 0 < A := by linarith
  have hb : Continuous (fun x : ℝ => (bumpInterior A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (bumpInterior_continuous A)).mul (by fun_prop)
  have he : Continuous (fun x : ℝ => (secondInterior A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (secondInterior_continuous A)).mul (by fun_prop)
  have hq : actualSourceComplexTransform A z = (Real.sqrt (sourceNormalization A) : ℂ)⁻¹ *
      ((∫ x in -A..A, (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) -
       (1/4 : ℂ) * (∫ x in -A..A, (bumpInterior A x : ℂ) *
         Complex.exp (z * (x : ℂ)))) := by
    unfold actualSourceComplexTransform
    rw [← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_sub (he.intervalIntegrable _ _)
        ((hb.const_mul (1/4 : ℂ)).intervalIntegrable _ _)]
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le (by linarith : -A ≤ A)] at hx
    rw [normalizedTest_eq_indicator A hp, indicator_of_mem hx]
    dsimp [normalizedInterior]
    push_cast
    ring
  rw [hq, actualSecondInteriorTransform_eq hA z, actualBumpInteriorTransform_eq hA z]
  push_cast
  ring

/-- The prescribed Mellin polynomial contains both actual annihilation endpoints. -/
theorem actualBilateralCorrelationTransform_eq_bump {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualBilateralCorrelationTransform A (s-1/2) =
      ((A / sourceNormalization A : ℝ) : ℂ) * s^2 * (s-1)^2 *
        bumpLaplace ((A : ℂ) * (s-1/2))^2 := by
  rw [actualBilateralCorrelationTransform_eq_square hA (s-1/2),
    actualSourceComplexTransform_eq_bump hA (s-1/2)]
  have hk : (((Real.sqrt A / Real.sqrt (sourceNormalization A) : ℝ) : ℂ))^2 =
      ((A / sourceNormalization A : ℝ) : ℂ) := by
    push_cast
    rw [div_pow]
    norm_cast
    rw [Real.sq_sqrt (show 0 ≤ A by linarith),
      Real.sq_sqrt (source_normalization_pos A hA).le]
  rw [mul_pow, mul_pow, hk]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpTransform
```
