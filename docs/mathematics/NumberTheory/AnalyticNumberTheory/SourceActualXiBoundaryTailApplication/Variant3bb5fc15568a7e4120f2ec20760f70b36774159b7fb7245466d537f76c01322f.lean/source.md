# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualXiBoundaryTailApplication.Variant3bb5fc15568a7e4120f2ec20760f70b36774159b7fb7245466d537f76c01322f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f06d69b84e55a920d10e6d75a288ac4ecb6f1e9` · SHA-256 `051f7a3cbbff38d07170181d81759f042dfe45541383daa8c7af3883d57a0e9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHeadEqActualWholeXiHead.Variant1614f94c970cb1602980d89b1027f2dccb94c2ec4d64bc9179e94ff022dd3bf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1614f94c970cb1602980d89b1027f2dccb94c2ec4d64bc9179e94ff022dd3bf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.CompleteXiHeadEqActualWholeXiHead.Variant1614f94c970cb1602980d89b1027f2dccb94c2ec4d64bc9179e94ff022dd3bf0","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"1614f94c970cb1602980d89b1027f2dccb94c2ec4d64bc9179e94ff022dd3bf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceActualXiBoundaryTailApplication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiWholeHeadBounds
import SourceCompleteDivisorTailReturn

/-!
Concrete discharge of the finite H/G gates in the original-F7 signed-tail return.
The actual uniform complete divisor-block premise stays explicit.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal substitution and focused checking: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHeadEqActualWholeXiHead.Variant1614f94c970cb1602980d89b1027f2dccb94c2ec4d64bc9179e94ff022dd3bf0

set_option autoImplicit false
noncomputable section
namespace RH16ActualXiBoundaryApplication
open RH16ActualXiWholeHead RH16CompleteDivisorTailReturn
open RH16CompleteDivisorCancellation RH16CompleteXiTail RH16CompleteXiComplement
open FormalResearch.RiemannHypothesis SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

theorem completeXiHead_eq_actualWholeXiHead (A : ℝ) :
    completeXiHead A = actualWholeXiHead A := rfl

/-- Coarse fixed finite costs turn the actual residual upper bound into the complete tail. -/
theorem residual_upper_implies_tail_lower_with_closed_boundary (A B : ℝ)
    (hA : 40 ≤ A) (hr : mertensResidual A ≤ B) :
    -(B + 2 + gammaTraceBudget + wholeHeadBudget) ≤ completeXiTail A := by
  apply residual_upper_implies_complete_tail_lower A B wholeHeadBudget gammaTraceBudget hA hr
  · simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA
  · exact actual_gamma_trace_upper A (by linarith)

/-- No head or gamma premise remains; the actual all-real signed arithmetic premise does. -/
theorem estimate_of_complete_block_without_boundary (DX R : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_block DX R wholeHeadBudget gammaTraceBudget hb
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    simpa only [completeXiHead_eq_actualWholeXiHead] using
      actualWholeXiHead_upper A (by linarith)
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact actual_gamma_trace_upper A (by linarith)

end RH16ActualXiBoundaryApplication
```
