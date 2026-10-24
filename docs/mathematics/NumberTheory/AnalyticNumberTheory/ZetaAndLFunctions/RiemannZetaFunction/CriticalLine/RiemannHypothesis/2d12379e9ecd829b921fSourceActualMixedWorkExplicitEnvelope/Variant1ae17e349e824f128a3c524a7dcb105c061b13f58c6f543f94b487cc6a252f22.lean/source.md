# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope.Variant1ae17e349e824f128a3c524a7dcb105c061b13f58c6f543f94b487cc6a252f22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dd7c2e07fa4fe926a39451e7979c9672b7f83a8` · SHA-256 `0d7dab10d4c27bf740e08c3e55515af353fbdd141fa7b75fe9bbf48037d9c0b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualErrorExpMassNonneg.Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualErrorExpMassNonneg.Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/2d12379e9ecd829b921f-SourceActualMixedWorkExplicitEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMixedWorkEnvelope
import SourceColumnEnvelopeMass

/-!
# Explicit actual-work envelope

AI attribution: OpenAI Codex. This all-real estimate uses the actual centered
prefix and the literal strict natural quotient window. Its exponential growth
is an upper budget, not a lower growth claim and not a uniform compensated
signed certificate. The original lower baseline, boundary, full centered
diagonal and independent main term remain in their separate exact equality.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualErrorExpMassNonneg.Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkExplicitEnvelope

open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceJointMangoldtWork SourceActualMixedWorkEstimate
open SourceActualMixedWorkEnvelope SourceColumnEnvelopeMass
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel

/-- The actual exponential-error mass is nonnegative on the original oriented window. -/
theorem actualErrorExpMass_nonneg (A : ℝ) (hA : 1 ≤ A) : 0 ≤ actualErrorExpMass A := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; omega : 0 < vaughanCutoff A)
  unfold actualErrorExpMass
  apply intervalIntegral.integral_nonneg (Real.log_le_log hU0 (by exact_mod_cast hUN))
  intro t _
  positivity

/-- A genuine quantitative bound on the complete actual work, with its precise growth. -/
theorem jointMangoldtErrorWork_abs_le_explicit_envelope (A : ℝ) (hA : 1 ≤ A) :
    |jointMangoldtErrorWork A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) * A * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have he0 := actualErrorExpMass_nonneg A hA
  have hw := jointMangoldtErrorWork_abs_le_mixed_mass A hA
  change |jointMangoldtErrorWork A| ≤ c * actualErrorExpMass A * columnEnvelopeMass A at hw
  calc
    _ ≤ c * actualErrorExpMass A * columnEnvelopeMass A := hw
    _ ≤ c * actualErrorExpMass A * (2 * A) :=
      mul_le_mul_of_nonneg_left (columnEnvelopeMass_le A hA) (mul_nonneg hc he0)
    _ ≤ c * (2 * (Real.log 4 + 4 + Real.log 2) * Real.exp A) * (2 * A) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (actualErrorExpMass_le A hA) hc) (by linarith)
    _ = _ := by ring

end FormalResearch.RiemannHypothesis.SourceActualMixedWorkExplicitEnvelope
```
