# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualBalancedCompensation.Variant03279c4a1b2769329d8beea5824593c0b3be9f08c02267c01a506ec37f1aa56a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266a6acfcba7ee3ed6b6c7bc8cec90f1e1385800` · SHA-256 `f2f6eac167daaa9423734247f6d65bb738bda7b283682efc19fa40712b3f3d61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerStripInteriorQuadraticAbsLe.Variant313691b444250f2fc6c3bab1b21ab08203d932f4ea112563380ecb9560f2291e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"313691b444250f2fc6c3bab1b21ab08203d932f4ea112563380ecb9560f2291e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLowerStripInteriorQuadraticAbsLe.Variant313691b444250f2fc6c3bab1b21ab08203d932f4ea112563380ecb9560f2291e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"313691b444250f2fc6c3bab1b21ab08203d932f4ea112563380ecb9560f2291e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T214425Z-1791323065687524000/RootActualBalancedCompensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdjointCompensationLocalization
import RootActualAnchoredStripRefinement

/-!
The actual anchored strip estimate applies to the unchanged compensated work
with its literal retained upper-time, trace, diagonal and independent main.
No uniform bound for that retained signed arithmetic remainder is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerStripInteriorQuadraticAbsLe.Variant313691b444250f2fc6c3bab1b21ab08203d932f4ea112563380ecb9560f2291e

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
open SourceActualAdjointLowerStrip RootActualAnchoredStripRefinement
open SourceActualAdjointCompensationLocalization SourceJointWorkConsumer
noncomputable section

/-- Every actual strip of width at most two has a genuine quadratic interior budget. -/
theorem actualLowerStripInterior_quadratic_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |actualLowerStripInterior A offset w| ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) * w ^ 2 := by
  have hp : |w / 2| ≤ 1 := by rw [abs_of_nonneg (by linarith)]; linarith
  have hn : |-w / 2| ≤ 1 := by rw [abs_of_nonpos (by linarith)]; linarith
  have he1 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hp)).2
  have he2 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hn)).2
  have he : Real.exp (w / 2) + Real.exp (-w / 2) - 2 ≤ w ^ 2 / 2 := by
    nlinarith
  calc
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) :=
      actualLowerStripInterior_balanced_abs_le hA hw
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (w ^ 2 / 2) :=
      mul_le_mul_of_nonneg_left he (by positivity)
    _ = _ := by ring

/-- The original compensated signed work has the balanced anchored localization bound. -/
theorem compensatedJointWork_sub_retained_balanced_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      32 * (Real.log 4 + 4 + Real.log 2) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_balanced_abs_le (offset := 0) hA hw

/-- Widths at most two give a genuine quadratic error in the literal source remainder. -/
theorem compensatedJointWork_sub_retained_quadratic_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2 := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_quadratic_abs_le (offset := 0) hA hw hw2

end
end FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
```
