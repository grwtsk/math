# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiPrincipalTailWitness.Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4e0fcfdb234b38b457155eeed7f05b316d1a826` · SHA-256 `87aacad590540056dc148414762f2d7a9b6feb3c237e3163778ad531ff9e1354`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrincipalCompleteTailBudget.Variant64bfe50225036efdf9dc48c420be8ccb9055cebfcb93f4e1036a8bcd618d01ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64bfe50225036efdf9dc48c420be8ccb9055cebfcb93f4e1036a8bcd618d01ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrincipalCompleteTailBudget.Variant64bfe50225036efdf9dc48c420be8ccb9055cebfcb93f4e1036a8bcd618d01ab","mathematical_subject":"Foundations.Unclassified","original_sha256":"64bfe50225036efdf9dc48c420be8ccb9055cebfcb93f4e1036a8bcd618d01ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceActualXiPrincipalTailWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiBoundaryTailApplication
import SourceCompleteDivisorRadiusTailReturn

/-!
The actual COMPLETE signed-block hypothesis is the sole unproved input to this
principal complete-tail witness. All finite head and PLUS gamma costs are supplied
by actual-source bounds, on the original F7 closure at max(91,R).
Direction, selection, corrections and evaluation: grwtsk contributors.
Conditional formal application and focused checking: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrincipalCompleteTailBudget.Variant64bfe50225036efdf9dc48c420be8ccb9055cebfcb93f4e1036a8bcd618d01ab

set_option autoImplicit false
noncomputable section
namespace RH16ActualXiPrincipalTailWitness
open RH16ActualXiWholeHead RH16ActualXiBoundaryApplication
open RH16CompleteDivisorRadiusTailReturn RH16CompleteDivisorTailReturn
open RH16CompleteDivisorCancellation RH16CompleteXiTail RH16CompleteXiComplement

/-- The explicit nonnegative fixed tail cost is calibrated before quantifying A. -/
def principalCompleteTailBudget (DX R : ℝ) : ℝ :=
  max 0 (DX + radiusSamplingBudget (calibratedRadius R) + 2 +
    gammaTraceBudget + wholeHeadBudget)

theorem principalCompleteTailBudget_nonneg (DX R : ℝ) :
    0 ≤ principalCompleteTailBudget DX R := le_max_left _ _

/-- Fixed-radius actual sampling, closed-head and gamma costs discharge every finite premise. -/
theorem complete_tail_lower_of_actual_signed_block (DX R : ℝ)
    (hx : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∀ A : ℝ, calibratedRadius R ≤ A →
      -principalCompleteTailBudget DX R ≤ completeXiTail A := by
  intro A hA
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hA40 : (40 : ℝ) ≤ A := by linarith
  have ht := complete_tail_lower_of_complete_block_at_radius A DX (calibratedRadius R)
    wholeHeadBudget gammaTraceBudget (by linarith : 40 ≤ calibratedRadius R) hA
    (hx A ((le_max_right _ _).trans hA))
    (by simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA40)
    (actual_gamma_trace_upper A (by linarith))
  have hm : radiusCompleteBlockTailBudget DX (calibratedRadius R)
      gammaTraceBudget wholeHeadBudget ≤ principalCompleteTailBudget DX R :=
    le_max_right _ _
  exact (neg_le_neg hm).trans ht

/-- The actual all-real signed arithmetic witness remains explicit and is not constructed. -/
theorem complete_tail_witness_of_actual_signed_block
    (hx : ∃ DX R : ℝ, ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∃ K R : ℝ, 0 ≤ K ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A := by
  obtain ⟨DX, R, hb⟩ := hx
  refine ⟨principalCompleteTailBudget DX R, calibratedRadius R,
    principalCompleteTailBudget_nonneg DX R, ?_,
    complete_tail_lower_of_actual_signed_block DX R hb⟩
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  linarith

end RH16ActualXiPrincipalTailWitness
```
