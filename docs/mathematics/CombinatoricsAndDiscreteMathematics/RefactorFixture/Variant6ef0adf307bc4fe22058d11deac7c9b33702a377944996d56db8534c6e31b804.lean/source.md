# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant6ef0adf307bc4fe22058d11deac7c9b33702a377944996d56db8534c6e31b804

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0943eee15fb81b53388068bede12a3a107adf67` · SHA-256 `df59e8be6bd1322bab05ebbed508db7ce5ce893f7b39cd77e6fcdbff8756140b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variant261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:7efa13e69b700c346112dd54/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  rfl

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture

```
