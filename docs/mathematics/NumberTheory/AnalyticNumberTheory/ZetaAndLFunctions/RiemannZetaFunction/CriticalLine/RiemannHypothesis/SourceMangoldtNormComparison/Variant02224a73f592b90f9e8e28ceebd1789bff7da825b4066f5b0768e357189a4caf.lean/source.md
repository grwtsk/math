# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtNormComparison.Variant02224a73f592b90f9e8e28ceebd1789bff7da825b4066f5b0768e357189a4caf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4427fa259f8485ed009399f53124d89abc3d7213` · SHA-256 `ec5bf7d93faac87a172e52edf3407e56adfe37000a7f432e49fe69d57afd13d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFullOperatorComparisonNormLower.Variant2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFullOperatorComparisonNormLower.Variant2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/mutation-issue-regent-v1/source-high-time-budget-and-comparison-obstruction-v1/root-semantic-readback-and-norm-preparation-v1/SourceMangoldtNormComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
# Pointwise full-norm comparison obstruction for the actual Mangoldt operator

Prepared from existing literal-source declarations; this ignored module is
UNCOMPILED. The inequality is an obstruction to bounded full-norm models.
It is not an upper bound on the matched source form or the signed RH residual.
No unbounded theta operator or unsupported common-carrier transport is assumed.

AI attribution: prepared with OpenAI Codex; no Lean verification claimed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFullOperatorComparisonNormLower.Variant2fa917de88e5f1ee0562a1d1db81289225e8a670051377012f57008766b23f47

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open SourceReflectionDuality SourceMangoldtInteraction

/-- Any full-norm comparison pays the actual source operator's proved lower mass. -/
theorem actual_full_operator_comparison_norm_lower {A : ℝ} (hA : 1 ≤ A)
    (B : ComplexL2 →L[ℂ] ComplexL2) :
    2 * A - Real.log 2 - 1 - ‖B‖ ≤ ‖mangoldtInteraction A - B‖ := by
  have hl := mangoldtInteraction_norm_lower hA
  have ht := norm_add_le (mangoldtInteraction A - B) B
  rw [sub_add_cancel] at ht
  linarith

end FormalResearch.RiemannHypothesis.SourceMangoldtNorm
```
