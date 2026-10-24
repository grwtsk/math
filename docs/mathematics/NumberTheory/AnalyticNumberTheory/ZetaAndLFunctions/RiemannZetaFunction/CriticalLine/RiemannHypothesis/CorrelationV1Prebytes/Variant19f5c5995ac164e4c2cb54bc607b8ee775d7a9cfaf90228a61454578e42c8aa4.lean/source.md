# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationV1Prebytes.Variant19f5c5995ac164e4c2cb54bc607b8ee775d7a9cfaf90228a61454578e42c8aa4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39a066d1a806091c3dd150091cb3970478a50a60` · SHA-256 `6e9d037443cdaca3eacab9f2943cf71f7fe22854eceb982aec8883229d36656c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationEqInner.Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCorrelationEqInner.Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle6/global-scale/correlation-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleDerivative
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import Mathlib.Analysis.InnerProductSpace.Calculus

/-!
# Scale regularity of the literal closed prime moments

Fixed finite inventories and exact source support handle upper-cutoff births.
No continuity of changing arithmetic states or uniform signed bound is asserted.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationEqInner.Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleL2Continuity SourceScaleDerivative SourceReflectionDuality
open SourcePrimePowerPartition WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- The literal stationary correlation is the real part of its actual L² coefficient. -/
theorem sourceCorrelation_eq_inner {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      (⟪originalSourceState A, translation s (originalSourceState A)⟫_ℂ).re := by
  have ht : translation s (originalSourceState A) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A (x - s) : ℂ) := by
    filter_upwards [translation_coe_ae s (originalSourceState A),
      (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae hA)] with x hx hy
    exact hx.trans hy
  have he : ⟪originalSourceState A, translation s (originalSourceState A)⟫_ℂ =
      ((sourceCorrelation explicitSecondDerivative A s : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A x *
          normalizedTest explicitSecondDerivative A (x - s) : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [originalSourceState_coe_ae hA, ht] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp
      _ = _ := integral_complex_ofReal
  rw [he]
  rfl

/-- Independently specified scale derivative retains both source product-rule terms. -/
def correlationScaleDerivative (A s : ℝ) : ℝ :=
  (⟪scaleDerivativeState A, translation s (originalSourceState A)⟫_ℂ +
    ⟪originalSourceState A, translation s (scaleDerivativeState A)⟫_ℂ).re

/-- Actual stationary correlation scale differentiation on every positive scale. -/
theorem sourceCorrelation_hasDerivAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    HasDerivAt (fun B => sourceCorrelation explicitSecondDerivative B s)
      (correlationScaleDerivative A s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hd := originalSourceState_hasDerivAt hA
  have ht := L.hasFDerivAt.comp_hasDerivAt A hd
  have hi := hd.inner ℂ ht
  have hr := Complex.reCLM.hasFDerivAt.comp_hasDerivAt A hi
  have hs : HasDerivAt (fun B =>
      (⟪originalSourceState B, translation s (originalSourceState B)⟫_ℂ).re)
      (correlationScaleDerivative A s) A := by
    simpa [L, correlationScaleDerivative, add_comm, Function.comp_def] using hr
  apply hs.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (sourceCorrelation_eq_inner hB s).symm

/-- Local C¹ comes from norm C¹ of the actual source, rather than a formal integral rule. -/
theorem sourceCorrelation_contDiffAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiffAt ℝ 1 (fun B => sourceCorrelation explicitSecondDerivative B s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hc := originalSourceState_contDiffAt hA
  have hi := hc.inner ℂ (L.contDiff.comp_contDiffAt hc)
  have hr := Complex.reCLM.contDiff.comp_contDiffAt hi
  apply hr.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (sourceCorrelation_eq_inner hB s).symm

end FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
```
