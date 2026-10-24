# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant543520c8afbf8d79eb666422ae6e4fbc577fb52646d33613f36a1a38013e6fef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bd94e0fb812fe245a411bc2a17f50ed5a170f5c` · SHA-256 `194d601aa748789541000399433917493ade045863f6e9359d0ed0a6fe03d863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant6d83d75351108e70aab03187cf010dd4cb40707f5fe2c8e27948e0ca40bc8ef7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d83d75351108e70aab03187cf010dd4cb40707f5fe2c8e27948e0ca40bc8ef7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variant6d83d75351108e70aab03187cf010dd4cb40707f5fe2c8e27948e0ca40bc8ef7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6d83d75351108e70aab03187cf010dd4cb40707f5fe2c8e27948e0ca40bc8ef7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:649c48e1e985db45bb8d3860/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant6d83d75351108e70aab03187cf010dd4cb40707f5fe2c8e27948e0ca40bc8ef7

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

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
