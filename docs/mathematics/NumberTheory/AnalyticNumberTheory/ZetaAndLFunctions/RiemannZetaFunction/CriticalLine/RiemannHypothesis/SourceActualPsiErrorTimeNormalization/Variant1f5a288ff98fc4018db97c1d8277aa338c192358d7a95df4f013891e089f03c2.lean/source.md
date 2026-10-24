# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiErrorTimeNormalization.Variant1f5a288ff98fc4018db97c1d8277aa338c192358d7a95df4f013891e089f03c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14107ddf40ab1d4bae6192e9e7e4a052796680d9` · SHA-256 `fb50172c622f1ee723702b09d656bb785c527375ad32003918404915de2b7947`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTimeError.Variant5f605da169e557c0cf4b367ab0492dec6e03153ce48abeb7efe0a71f788f7f5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f605da169e557c0cf4b367ab0492dec6e03153ce48abeb7efe0a71f788f7f5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualRelativePsiTimeError.Variant5f605da169e557c0cf4b367ab0492dec6e03153ce48abeb7efe0a71f788f7f5a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5f605da169e557c0cf4b367ab0492dec6e03153ce48abeb7efe0a71f788f7f5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualPsiErrorTimeNormalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiErrorCriticalCovariance

/-!
The actual relative psi error gives an exact finite-time normalization of E.
The genuine lower trace fixes the additive plus one. No PNT, ordinary limit,
Euler-constant calibration, or critical signed estimate is assumed here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTimeError.Variant5f605da169e557c0cf4b367ab0492dec6e03153ce48abeb7efe0a71f788f7f5a

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualPsiErrorTimeNormalization

open MeasureTheory Set SourceMangoldtAbel SourceActualXiErrorConvolution
open SourceActualXiErrorCriticalCovariance
open scoped Interval

noncomputable section

/-- The literal actual Chebyshev relative error on the logarithmic time axis. -/
def actualRelativePsiTimeError (t : ℝ) : ℝ :=
  Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1

/-- The literal relative error equals the actual normalized psi-minus-x error. -/
theorem actualRelativePsiTimeError_eq_normalizedPsi (t : ℝ) :
    actualRelativePsiTimeError t =
      (Chebyshev.psi (Real.exp t) - Real.exp t) * Real.exp (-t) := by
  have he : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  rw [sub_mul, he]
  unfold actualRelativePsiTimeError
  ring

/-- The actual empty closed unit prefix fixes the lower error trace at minus one. -/
theorem actualRelativePsiTimeError_at_zero : actualRelativePsiTimeError 0 = -1 := by
  simp [actualRelativePsiTimeError, Chebyshev.psi]

/-- Actual finite Abel transport identifies the relative error with the one convolution. -/
theorem actualRelativePsiTimeError_eq_convolution {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTimeError t = actualCenteredMangoldtLogError t -
      actualMangoldtErrorConvolution 1 t -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-t) := by
  have h := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1)
    (by norm_num) ht
  rw [actualNormalizedMangoldtExpReadout_one ht] at h
  simp only [div_one, one_mul, neg_mul] at h
  unfold actualRelativePsiTimeError
  linarith

/-- Genuine finite L1 of the actual relative error follows before any asymptotics. -/
theorem actualRelativePsiTimeError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualRelativePsiTimeError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have hE : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  have hG : IntervalIntegrable actualCenteredMangoldtLogError volume 0 b :=
    hE.add intervalIntegrable_const
  have hQ : IntervalIntegrable (actualMangoldtErrorConvolution 1) volume 0 b :=
    (actualMangoldtErrorConvolution_absolutelyContinuous 1 hb).continuousOn.intervalIntegrable
  have hx : IntervalIntegrable (fun r : ℝ => Real.exp (-r)) volume 0 b :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r))).intervalIntegrable _ _
  apply ((hG.sub hQ).sub (hx.const_mul (Real.eulerMascheroniConstant + 1))).congr_ae
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with r hr
  have hr0 : 0 ≤ r := by
    have hh := uIoc_subset_uIcc hr
    rw [uIcc_of_le hb] at hh
    exact hh.1
  exact (actualRelativePsiTimeError_eq_convolution hr0).symm

/-- The actual one convolution keeps its entire lower exponential contribution. -/
theorem actualMangoldtErrorConvolution_one_eq_relative_primitive
    {t : ℝ} (ht : 0 ≤ t) :
    actualMangoldtErrorConvolution 1 t = (∫ r in 0..t, actualRelativePsiTimeError r) +
      (Real.eulerMascheroniConstant + 1) * (1 - Real.exp (-t)) := by
  have hQ := actualMangoldtErrorConvolution_absolutelyContinuous 1 ht
  have hi := hQ.integral_deriv_eq_sub
  have he : (∫ r in 0..t, deriv (actualMangoldtErrorConvolution 1) r) =
      ∫ r in 0..t, actualRelativePsiTimeError r +
        (Real.eulerMascheroniConstant + 1) * Real.exp (-r) := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualMangoldtErrorConvolution_ae_hasDerivAt 1 ht] with r hr hm
    rw [(hr (uIoc_subset_uIcc hm)).deriv]
    have hr0 : 0 ≤ r := by
      have hh := uIoc_subset_uIcc hm
      rw [uIcc_of_le ht] at hh
      exact hh.1
    rw [actualRelativePsiTimeError_eq_convolution hr0]
    ring
  have hx : IntervalIntegrable (fun r : ℝ => Real.exp (-r)) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r))).intervalIntegrable _ _
  have hdx (r : ℝ) : HasDerivAt (fun r : ℝ => -Real.exp (-r)) (Real.exp (-r)) r := by
    have h := (((hasDerivAt_id r).neg).exp).neg
    exact h.congr_deriv (by
      change -(Real.exp (-r) * (-1)) = Real.exp (-r)
      ring)
  have hex : (∫ r in 0..t, Real.exp (-r)) = 1 - Real.exp (-t) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hdx r) hx]
    simp only [neg_zero, Real.exp_zero]
    ring
  rw [he, actualMangoldtErrorConvolution_at_zero] at hi
  rw [intervalIntegral.integral_add (actualRelativePsiTimeError_intervalIntegrable ht)
    (hx.const_mul _), intervalIntegral.integral_const_mul, hex] at hi
  linarith

/-- The actual finite normalization retains the endpoint one with its correct sign. -/
theorem mangoldtLogError_eq_relative_primitive {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t = 1 + actualRelativePsiTimeError t +
      ∫ r in 0..t, actualRelativePsiTimeError r := by
  have h := actualRelativePsiTimeError_eq_convolution ht
  rw [actualMangoldtErrorConvolution_one_eq_relative_primitive ht] at h
  unfold actualCenteredMangoldtLogError at h
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualPsiErrorTimeNormalization
```
