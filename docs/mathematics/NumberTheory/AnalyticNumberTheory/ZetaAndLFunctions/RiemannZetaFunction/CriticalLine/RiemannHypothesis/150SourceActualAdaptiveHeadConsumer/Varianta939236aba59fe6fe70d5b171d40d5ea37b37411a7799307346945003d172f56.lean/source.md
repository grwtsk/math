# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.150SourceActualAdaptiveHeadConsumer.Varianta939236aba59fe6fe70d5b171d40d5ea37b37411a7799307346945003d172f56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5129fdd6077ced5547f97dcf9566c2c8a01e1d21` · SHA-256 `762433bffb2a07fc28661c91589f8aedc0c7a9e1e3ebc0027c7211c2168df62c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OriginalQuadraticLowerOfAdaptiveHead.Variante0a39145f6affce19d5fc383e693154210341c1660b527de341a0a9286382be6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0a39145f6affce19d5fc383e693154210341c1660b527de341a0a9286382be6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OriginalQuadraticLowerOfAdaptiveHead.Variante0a39145f6affce19d5fc383e693154210341c1660b527de341a0a9286382be6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e0a39145f6affce19d5fc383e693154210341c1660b527de341a0a9286382be6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-actual-offcritical-quartet-phase/source-copies/150-SourceActualAdaptiveHeadConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdaptiveSharpHeight
import SourceActualZeroArithmeticDictionary
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

/-! Apply the sharper actual adaptive tail to the original signed head and literal #16.
Direction and conceptual origin: grwtsk contributors.
Actual source consumer formalization: OpenAI Codex root.
The actual uniform signed head witness is an explicit supplied premise. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OriginalQuadraticLowerOfAdaptiveHead.Variante0a39145f6affce19d5fc383e693154210341c1660b527de341a0a9286382be6

set_option autoImplicit false
noncomputable section
namespace RH16ActualAdaptiveHeadConsumer
open RH16ActualAdaptiveSharpHeight
open FormalResearch.RiemannHypothesis
open SourcePairing SourceActualFullZeroContour SourceActualZeroTailBudget
open SourceActualZeroArithmeticDictionary
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationAssembly EstimateTailReduction

/-- Original complete ordinary-square source, with its closed omitted tail paid once. -/
theorem original_quadratic_lower_of_adaptive_head {A0 η Q D A : ℝ}
    (hA : 1 ≤ A)
    (htail : ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
      actualAdaptiveSharpTailCost A0 η Q)
    (hhead : -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) :
    -D - actualAdaptiveSharpTailCost A0 η Q ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  have he := congrArg Complex.re
    (actualFullZeroContribution_eq_head_add_tail A (actualAdaptiveSharpHeight η A) hA)
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA,
    Complex.ofReal_re, Complex.add_re] at he
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualAdaptiveSharpHeight η A))).trans htail
  have hl := (abs_le.mp ht).1
  linarith

/-- A supplied all-real actual signed head cap reaches the same original finite prefix. -/
theorem estimate_of_actual_adaptive_head {A0 η Q D : ℝ} (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q)
    (hhead : ∀ A : ℝ, Q ≤ A →
      -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) :
    EstimateObligation := by
  apply estimate_of_quadratic_tail_lower_bound
  refine ⟨-D - actualAdaptiveSharpTailCost A0 η Q, Q, by linarith, ?_⟩
  intro A hQA
  exact original_quadratic_lower_of_adaptive_head (by linarith) (htail A hQA) (hhead A hQA)

/-- The source constructs the tail witness; only the literal signed arithmetic head remains. -/
theorem actual_adaptive_head_estimate_source_witness :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ η Q D : ℝ, 1 ≤ η → 91 ≤ Q →
      (∀ A : ℝ, Q ≤ A →
        -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) →
      EstimateObligation := by
  obtain ⟨A0, hA0, ht⟩ := actualAdaptiveSharpTail_uniform_bound
  refine ⟨A0, hA0, fun η Q D hη hQ hhead => ?_⟩
  exact estimate_of_actual_adaptive_head hQ
    (fun A hQA => ht η Q A hη hQ hQA) hhead

end RH16ActualAdaptiveHeadConsumer
```
