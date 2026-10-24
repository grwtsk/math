# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetComparator.Variant1176e82642d778097810e0de34284e21a63875657a07084da75aca5f40e9b3e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa0413535b669c6fc2078395cfce93599c2dfb70` · SHA-256 `9070a529aa01bb60bf506ac596f0769bdd8e587db11a761072759197361929bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StatementIffDefectZero.Variantb9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StatementIffDefectZero.Variantb9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/TargetComparator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.TargetStatement
import FormalResearch.RiemannHypothesis.Defect

/-!
# Comparison of the proved reformulation with the independent exact statement

This composes an equivalence only; neither side of the equivalence is proved.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StatementIffDefectZero.Variantb9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653

namespace FormalResearch.RiemannHypothesis.Target

/-- The defect theorem terminates in the independently fixed Mathlib proposition. -/
theorem statement_iff_defect_zero :
    Statement ↔ ∀ s, NontrivialZetaZero s → rhDefect s = 0 := by
  rw [statement_eq_mathlib]
  exact riemann_hypothesis_iff_defect_zero

end FormalResearch.RiemannHypothesis.Target
```
