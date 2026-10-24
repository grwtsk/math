# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177RHEstimateConver.Variant4709c077602ae530bd695e2b28837a982391db5259bae3e5cb55418de4040c73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f0b38a69589d65640ab02c5bd5950429a8d8c33` · SHA-256 `24c0a678cd2827385bf6c51acc965c2d86a8d76619a5ceb094f1258a68b9a982`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTransformConjugate.Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualTransformConjugate.Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/75/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177--RHEstimateConversePrototype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.RiemannHypothesis.Landau.Bridge
import FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTransformConjugate.Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177

namespace FormalResearch.RiemannHypothesis.EstimateConverse
open MeasureTheory
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets
noncomputable section

theorem actual_transform_conjugate (A : ℝ) (z : ℂ) :
    conj (bilateralTransform A z) = bilateralTransform A (conj z) := by
  unfold bilateralTransform
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with x
  simp [map_mul, ← Complex.exp_conj]

theorem actual_transform_even (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    bilateralTransform A (-z) = bilateralTransform A z := by
  unfold bilateralTransform
  rw [← integral_neg_eq_self (fun x : ℝ ↦
    (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) volume]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [ZeroTestRegularity.actualTest_even A hA x]
  simp [neg_mul, mul_neg]

theorem actual_transform_im_zero (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z.re = 0) :
    (bilateralTransform A z).im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  rw [actual_transform_conjugate]
  have hc : conj z = -z := by
    apply Complex.ext <;> simp [hz]
  rw [hc, actual_transform_even A hA]

theorem shifted_value_re_zero_of_rh (hRH : _root_.RiemannHypothesis)
    (o : ZeroOccurrence) : (shiftedValue o).re = 0 := by
  have hp := point_nontrivial o.1
  have hr := hRH o.1.val hp.1 hp.2.1 hp.2.2
  simp [shiftedValue, hr]

theorem source_quadratic_nonneg_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A := by
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hi (o : ZeroOccurrence) : (bilateralTransform A (shiftedValue o)).im = 0 :=
    actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    apply tsum_nonneg
    intro o
    simp only [pow_two, Complex.mul_re, hi o, mul_zero, sub_zero]
    exact mul_self_nonneg _
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

theorem estimate_of_riemann_hypothesis (hRH : _root_.RiemannHypothesis) :
    CorrelationAssembly.EstimateObligation :=
  ⟨0, fun A hA ↦ source_quadratic_nonneg_of_rh hRH A hA⟩

theorem estimate_iff_riemann_hypothesis :
    CorrelationAssembly.EstimateObligation ↔ _root_.RiemannHypothesis :=
  ⟨Landau.Bridge.riemann_hypothesis_of_uniform_lower_bound, estimate_of_riemann_hypothesis⟩

end
end FormalResearch.RiemannHypothesis.EstimateConverse
```
