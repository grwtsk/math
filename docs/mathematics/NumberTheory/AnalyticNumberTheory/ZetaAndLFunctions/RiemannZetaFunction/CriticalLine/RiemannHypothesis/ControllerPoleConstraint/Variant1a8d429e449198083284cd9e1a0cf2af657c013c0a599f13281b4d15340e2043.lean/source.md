# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ControllerPoleConstraint.Variant1a8d429e449198083284cd9e1a0cf2af657c013c0a599f13281b4d15340e2043

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae2f4decd6820800f17b862d83d853eff96b0ba8` · SHA-256 `854fe07cefcb93d788f51b95b5a08e408bae5dcf93e86b58e3aa9326fd0c96d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceResidualEvaluationOfInputZero.Variantb8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceResidualEvaluationOfInputZero.Variantb8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/ControllerPoleConstraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential

/-!
A controller whose own Laplace evaluation vanishes at the removed source pole
cannot track the reference. This rules out that particular over-cancellation,
not all controllers and not the source resolvent limit.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceResidualEvaluationOfInputZero.Variantb8edf3fbb85c3c5d1a8d372ce1e839d322b8b74c0eca0196cab560b648f6dd76

set_option autoImplicit false
namespace ControllerPoleConstraintScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
noncomputable section

/-- The source preserves an input's vanishing exponential evaluation. -/
theorem source_residual_evaluation_of_input_zero (z : ℂ) (hz : 0 < z.re)
    (q : H) (hq : inner ℂ (exponentialVector z hz) q = 0) :
    inner ℂ (exponentialVector z hz) (referenceVector - sourceOperator q) =
      1 / (z + 1) := by
  rw [inner_sub_right, exponential_inner_sourceOperator, hq, mul_zero,
    sub_zero, inner_exponential_reference]

/-- Vanishing of the controller evaluation at one half forces a full residual floor. -/
theorem source_residual_sq_ge_of_input_half_zero (q : H)
    (hq : inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 := by
  have he := source_residual_evaluation_of_input_zero (1 / 2) (by norm_num) q hq
  have hn := norm_inner_le_norm (𝕜 := ℂ)
    (exponentialVector (1 / 2) (by norm_num)) (referenceVector - sourceOperator q)
  have hs := exponentialVector_norm_sq (1 / 2) (by norm_num)
  have hv : ‖exponentialVector (1 / 2) (by norm_num)‖ = 1 := by
    norm_num at hs
    rcases hs with hs | hs
    · exact hs
    · exfalso
      nlinarith [norm_nonneg (exponentialVector (1 / 2) (by norm_num))]
  rw [he, hv, one_mul] at hn
  norm_num at hn
  nlinarith [norm_nonneg (referenceVector - sourceOperator q)]

/-- The same obstruction remains after adding the nonnegative full input cost. -/
theorem source_full_energy_ge_of_input_half_zero (α : ℝ) (hα : 0 ≤ α) (q : H)
    (hq : inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 := by
  have h := source_residual_sq_ge_of_input_half_zero q hq
  have hc := mul_nonneg hα (sq_nonneg ‖q‖)
  linarith

end
end ControllerPoleConstraintScratch
```
