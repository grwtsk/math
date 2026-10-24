# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusSourceFilterQuotient.Variant92ab4f09c465173afaadc316c6206ae912da2e31a20c576c2ce759975c725e71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc9e1af2fae5685957d9f8e56b000706fdc645b1` · SHA-256 `4e5757cbcd0d6aa6b97264ab13ba8675450a1437b69c4dcd6127d2e4f1bb4d8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.W.Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.W.Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5","mathematical_subject":"Analysis.Calculus","original_sha256":"2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/MobiusSourceFilterQuotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer

/-!
Local cancellation of the actual corrected finite Möbius numerator against
the actual translated source filter. No global inverse or Hardy admission is
asserted, and the signed logarithmic normalization remains unevaluated.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.W.Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5

set_option autoImplicit false
namespace MobiusSourceFilterQuotientScratch

open Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedSourceTransfer MobiusPoleNumerator

noncomputable section

/-- The unchanged translated source-filter transform used in the genuine kernel transfer. -/
def W (z : ℂ) : ℂ := Complex.exp (-z) * V z

/-- The actual translated source filter retains the prescribed zero at one half. -/
theorem W_half_zero : W (1 / 2) = 0 := by
  rw [W, V_positive_pole_zero, mul_zero]

/-- Translation contributes no extra slope term because the original filter vanishes. -/
theorem W_hasDerivAt_half : HasDerivAt W removedPoleValue (1 / 2) := by
  have he := ((hasDerivAt_id (1 / 2 : ℂ)).neg).cexp
  have h := he.mul V_hasDerivAt_positive_pole
  simpa only [W, removedPoleValue, V_positive_pole_zero, mul_zero, zero_add,
    id_eq, Pi.neg_apply] using! h

/-- The source derivative has the literal normalization and polynomial-exponential value. -/
theorem W_deriv_half : deriv W (1 / 2) =
    Complex.exp (-(1 / 2 : ℂ)) *
      ((12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
        Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ) := by
  simpa only [removedPoleValue, positivePoleSlope] using W_hasDerivAt_half.deriv

/-- The checked positive source slope makes this a genuine simple zero. -/
theorem W_deriv_half_ne_zero : deriv W (1 / 2) ≠ 0 := by
  rw [W_hasDerivAt_half.deriv]
  exact removedPoleValue_ne_zero

private theorem W_removed_half_limit :
    Tendsto (fun z : ℂ => W z / (z - 1 / 2)) (𝓝[≠] (1 / 2))
      (𝓝 (deriv W (1 / 2))) := by
  have h := W_hasDerivAt_half.tendsto_slope
  rw [← W_hasDerivAt_half.deriv] at h
  have hs : slope W (1 / 2) = (fun z : ℂ => W z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, W_half_zero, sub_zero]
  rw [hs] at h
  exact h

/-- Canceling both source zeros gives the actual finite signed normalization divided by the slope. -/
theorem correctedNumerator_div_W_limit (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) := by
  have h := (correctedQuotient_tendsto_half X hX).div W_removed_half_limit
    W_deriv_half_ne_zero
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hz) _ _

end
end MobiusSourceFilterQuotientScratch
```
