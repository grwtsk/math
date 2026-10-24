# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantad128006242155e1cf69f9d1f9cc40b2c27858e40832e6162e346e2b47c7e09c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d529cbd44dfba10396aecf9820824f4e4ca238fb` · SHA-256 `754f0a3bfafe4c9de168c549769b76bc059ec631bf8e97e31602379d4e4cdf74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationDerivZero.Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceCorrelationDerivZero.Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d","mathematical_subject":"Analysis.Calculus","original_sha256":"8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAnchoredTwoMomentSampling

/-!
# The origin anchor of the actual source correlation

Evenness anchors the derivative at zero. The proved global curvature envelope
then gives a linear, scale-sensitive bound for this signed derivative profile.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationDerivZero.Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceKernelAnchor

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateSourceCorrelationDerivative
open EstimateSourceKernelLogProfile EstimateSourceKernelDerivative
open EstimateAnchoredTwoMomentSampling EstimateSourceMobiusKernel

noncomputable section

/-- The derivative of the actual even autocorrelation vanishes at its origin. -/
theorem sourceCorrelation_deriv_zero (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) 0).hasDerivAt
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hd
  have hn := hdneg.comp 0 (hasDerivAt_id (0 : ℝ)).neg
  have he : (fun x ↦ sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  simp only [Function.comp_def, mul_neg, mul_one] at hn
  rw [he] at hn
  have hh := hd.unique hn
  linarith

/-- Curvature and the genuine origin anchor control the derivative at every real point. -/
theorem sourceCorrelation_deriv_abs_le_anchored (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      65 * |t| / (3 * A ^ 2) := by
  have hd := (sourceCorrelation_deriv_contDiff A hA).differentiable (by norm_num)
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (x := (0 : ℝ)) (y := t)
    (fun x _ ↦ hd x)
    (fun x _ ↦ show ‖deriv (deriv (sourceCorrelation explicitSecondDerivative A)) x‖ ≤
      65 / (3 * A ^ 2) by
      simpa only [Real.norm_eq_abs] using sourceCorrelation_second_deriv_abs_le A x hA)
    (convex_univ : Convex ℝ (Set.univ : Set ℝ)) (mem_univ _) (mem_univ _)
  simpa only [sourceCorrelation_deriv_zero A (by linarith), sub_zero, Real.norm_eq_abs,
    div_mul_eq_mul_div] using h

/-- The actual signed source sampler gains a second inverse scale near its origin. -/
theorem sourceLogKernel_deriv_abs_le_anchored (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |deriv (sourceLogKernel A) s| ≤ 520 * (s + 4) / (3 * A ^ 2) := by
  have h := anchored_two_moment_sampling_bound
    (sourceCorrelation_deriv_contDiff A hA) (sourceCorrelation_deriv_twoMomentProfile A hA)
    (sourceCorrelation_deriv_zero A (by linarith))
    (show 0 ≤ 65 / (3 * A ^ 2) by positivity)
    (fun t ↦ sourceCorrelation_second_deriv_abs_le A t hA) s hs (sourceKernelCutoff A)
    (sourceCorrelation_deriv_samplingTailZero A (Real.exp s) hA (Real.one_le_exp_iff.mpr hs))
  rw [sourceLogKernel_deriv_eq_sum A s (by linarith)]
  convert h using 1
  ring

/-- Both genuine source envelopes remain available pointwise. -/
theorem sourceLogKernel_deriv_abs_le_min (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |deriv (sourceLogKernel A) s| ≤
      min (40 / A + 260 / (3 * A ^ 2)) (520 * (s + 4) / (3 * A ^ 2)) :=
  le_min (sourceLogKernel_deriv_abs_le A s hA hs)
    (sourceLogKernel_deriv_abs_le_anchored A s hA hs)

end
end EstimateSourceKernelAnchor
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
