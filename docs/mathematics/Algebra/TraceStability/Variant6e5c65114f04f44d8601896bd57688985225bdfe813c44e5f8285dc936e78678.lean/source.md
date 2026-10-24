# Complete source: GRWTSK.Algebra.TraceStability.Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e2ae40e080f3109ff035c0fe0acf450920ca982` · SHA-256 `dbce88e492c42bca9bda2428d2c157e0a6cb65e2baa73707e70c0c8362bc840b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LawTraceStabilityObligation.Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LawTraceStabilityObligation.Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/TraceStability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Trace
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Tactic.Ring

/-!
# Trace-defect composition

This module proves the finite algebra used to combine separately certified law,
operator, correspondence, and remainder defects.  Wasserstein duality itself
remains an explicit obligation.
-/


namespace GRWTSK.Algebra.LawTraceStabilityObligation.Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b

namespace Mathematics.SpectralClosure

structure LawTraceStabilityObligation where
  lipschitzConstant : ℝ
  lawDistance : ℝ
  expectationDifference : ℝ
  wassersteinDualityStatement :
    |expectationDifference| ≤
      lipschitzConstant * lawDistance
  status : ProofDisposition

structure OperatorTraceStabilityCertificate where
  canonicalTraceValue : ℝ
  perturbedAtCanonicalLaw : ℝ
  operatorDefect : ℝ
  defectNonnegative : 0 ≤ operatorDefect
  certified :
    |perturbedAtCanonicalLaw - canonicalTraceValue| ≤
      operatorDefect
  proofRef : SpectralId

theorem stableTrace_law_perturbation_from_certified_duality
    (expectationDifference lipschitzConstant
      lawDistance kernelDefect factor : ℝ)
    (lipschitzNonnegative : 0 ≤ lipschitzConstant)
    (duality :
      |expectationDifference| ≤
        lipschitzConstant * lawDistance)
    (displacement :
      lawDistance ≤ kernelDefect / (1 - factor)) :
    |expectationDifference| ≤
      lipschitzConstant * (kernelDefect / (1 - factor)) :=
  le_trans duality
    (mul_le_mul_of_nonneg_left
      displacement lipschitzNonnegative)

theorem law_and_operator_trace_defects_compose
    (canonical perturbedAtCanonical perturbed : ℝ)
    (lawDefect operatorDefect : ℝ)
    (lawBound :
      |perturbed - perturbedAtCanonical| ≤ lawDefect)
    (operatorBound :
      |perturbedAtCanonical - canonical| ≤ operatorDefect) :
    |perturbed - canonical| ≤ lawDefect + operatorDefect := by
  have decomposition :
      perturbed - canonical =
        (perturbed - perturbedAtCanonical) +
          (perturbedAtCanonical - canonical) := by
    ring
  rw [decomposition]
  exact le_trans (abs_add_le _ _)
    (add_le_add lawBound operatorBound)

theorem global_trace_defects_remain_separate
    (canonical afterLaw afterOperator afterCorrespondence : ℝ)
    (lawDefect operatorDefect correspondenceDefect : ℝ)
    (lawBound : |afterLaw - canonical| ≤ lawDefect)
    (operatorBound :
      |afterOperator - afterLaw| ≤ operatorDefect)
    (correspondenceBound :
      |afterCorrespondence - afterOperator| ≤
        correspondenceDefect) :
    |afterCorrespondence - canonical| ≤
      lawDefect + operatorDefect + correspondenceDefect := by
  have first :=
    law_and_operator_trace_defects_compose
      canonical afterLaw afterOperator
      operatorDefect lawDefect
      operatorBound lawBound
  have firstReordered :
      |afterOperator - canonical| ≤
        lawDefect + operatorDefect := by
    linarith
  have second :=
    law_and_operator_trace_defects_compose
      canonical afterOperator afterCorrespondence
      correspondenceDefect
      (lawDefect + operatorDefect)
      correspondenceBound firstReordered
  linarith

theorem global_trace_defects_with_remainder_remain_separate
    (canonical afterLaw afterOperator
      afterCorrespondence afterRemainder : ℝ)
    (lawDefect operatorDefect
      correspondenceDefect remainderDefect : ℝ)
    (lawBound : |afterLaw - canonical| ≤ lawDefect)
    (operatorBound :
      |afterOperator - afterLaw| ≤ operatorDefect)
    (correspondenceBound :
      |afterCorrespondence - afterOperator| ≤
        correspondenceDefect)
    (remainderBound :
      |afterRemainder - afterCorrespondence| ≤
        remainderDefect) :
    |afterRemainder - canonical| ≤
      lawDefect + operatorDefect +
        correspondenceDefect + remainderDefect := by
  have first :=
    global_trace_defects_remain_separate
      canonical afterLaw afterOperator afterCorrespondence
      lawDefect operatorDefect correspondenceDefect
      lawBound operatorBound correspondenceBound
  have second :=
    law_and_operator_trace_defects_compose
      canonical afterCorrespondence afterRemainder
      remainderDefect
      (lawDefect + operatorDefect + correspondenceDefect)
      remainderBound first
  linarith

theorem global_trace_defects_with_two_remainders_remain_separate
    (canonical afterLaw afterOperator afterCorrespondence
      afterRegularization afterBitfield : ℝ)
    (lawDefect operatorDefect correspondenceDefect
      regularizationDefect bitfieldDefect : ℝ)
    (lawBound : |afterLaw - canonical| ≤ lawDefect)
    (operatorBound :
      |afterOperator - afterLaw| ≤ operatorDefect)
    (correspondenceBound :
      |afterCorrespondence - afterOperator| ≤
        correspondenceDefect)
    (regularizationBound :
      |afterRegularization - afterCorrespondence| ≤
        regularizationDefect)
    (bitfieldBound :
      |afterBitfield - afterRegularization| ≤
        bitfieldDefect) :
    |afterBitfield - canonical| ≤
      lawDefect + operatorDefect + correspondenceDefect +
        regularizationDefect + bitfieldDefect := by
  have first :=
    global_trace_defects_with_remainder_remain_separate
      canonical afterLaw afterOperator afterCorrespondence
      afterRegularization
      lawDefect operatorDefect correspondenceDefect
      regularizationDefect
      lawBound operatorBound correspondenceBound
      regularizationBound
  have second :=
    law_and_operator_trace_defects_compose
      canonical afterRegularization afterBitfield
      bitfieldDefect
      (lawDefect + operatorDefect + correspondenceDefect +
        regularizationDefect)
      bitfieldBound first
  linarith

end Mathematics.SpectralClosure
```
