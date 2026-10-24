# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetStatement.Variant76819d1b42b65a8170163717ce4c28740d4bcfa5d3a5f4d180ad0e14e57b6c1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4264dd6afd6351d4b04cbb5677fd2d3dcbf59272` · SHA-256 `07689f20787e75ab834071625694aad265a0a73bb031202f36a095c988a51108`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variant7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Statement.Variant7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/TargetStatement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Independent statement comparator

This small statement repeats the pinned Mathlib target without importing any
project proof. Definitional comparison must succeed before the reformulation is
accepted. This is a proposition, never a declaration of a proof of RH.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variant7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754

namespace FormalResearch.RiemannHypothesis.Target

/-- Exact quantifiers, trivial-zero exclusions, and pole exclusion of the fixed target. -/
def Statement : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → (¬ ∃ n : ℕ, s = -2 * (n + 1)) →
    s ≠ 1 → s.re = 1 / 2

/-- A stricter target or an omitted hypothesis cannot pass this definitional comparison. -/
theorem statement_eq_mathlib : Statement = _root_.RiemannHypothesis := rfl

end FormalResearch.RiemannHypothesis.Target
```
