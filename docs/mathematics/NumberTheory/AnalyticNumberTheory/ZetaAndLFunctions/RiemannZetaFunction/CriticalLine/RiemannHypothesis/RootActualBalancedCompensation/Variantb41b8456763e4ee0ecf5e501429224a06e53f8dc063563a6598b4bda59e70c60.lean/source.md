# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualBalancedCompensation.Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af29aea157c10a165d6d48dcaaf7e68f5bc460af` · SHA-256 `dc18afca248c11553a91a88f78417dfb86c123435c16022f9272f0e23268c2a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerStripInteriorQuadraticAbsLe.Variant5c435a69e64970b787354fa52179d1f9d9af993e8bc03bdf7cef477b4e55a53a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c435a69e64970b787354fa52179d1f9d9af993e8bc03bdf7cef477b4e55a53a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLowerStripInteriorQuadraticAbsLe.Variant5c435a69e64970b787354fa52179d1f9d9af993e8bc03bdf7cef477b4e55a53a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5c435a69e64970b787354fa52179d1f9d9af993e8bc03bdf7cef477b4e55a53a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T214531Z-1791323131953035000/RootActualBalancedCompensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdjointCompensationLocalization
import RootActualAnchoredStripRefinement

/-!
The actual anchored strip estimate applies to the unchanged compensated work
with its literal retained upper-time, trace, diagonal and independent main.
No uniform bound for that retained signed arithmetic remainder is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerStripInteriorQuadraticAbsLe.Variant5c435a69e64970b787354fa52179d1f9d9af993e8bc03bdf7cef477b4e55a53a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
open SourceActualAdjointLowerStrip RootActualAnchoredStripRefinement
open SourceActualAdjointCompensationLocalization SourceJointWorkConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
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


/-- The proved endpoint and actual ledger transfer this source-specific bound to the residual. -/
theorem originalResidual_upper_retained_quadratic :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A w : ℝ, 25600 ≤ A → 0 ≤ w → w ≤ 2 →
      mertensResidual A ≤ actualRetainedCompensationRemainder A w +
        16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2 + C := by
  obtain ⟨C_F, hF0, hF⟩ := SourceSamplingLedger.actual_ledger_uniform_error
  refine ⟨3 + C_F, by linarith, ?_⟩
  intro A w hA hw hw2
  have hb := compensatedJointWork_sub_retained_quadratic_abs_le hA hw hw2
  have hwork : compensatedJointWork A ≤ actualRetainedCompensationRemainder A w +
      16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2 := by
    have hh := (abs_le.mp hb).2
    linarith
  have h := residual_upper_of_compensatedJointWork_upper A
    (actualRetainedCompensationRemainder A w + 16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2)
      C_F (by linarith) hwork (hF A (by linarith))
  simpa only [add_assoc] using h

end
end FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
```
