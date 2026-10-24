# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variantb46ffe6449ecc41b7a8094688e9c07c8cbfdba33aa336e8e3add9b9ecbd088f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1be6d58368432813c77ad43ab21e3cb33ee33e8` · SHA-256 `a70889c10fb62f5afc5ad82b689d271cf121e79d651393ceafd70fa062e40137`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantc6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variantc6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:5a34c94f09a2383d69b92a9f/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantc6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  exact Classical.choice ⟨Nat.add_zero value⟩

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture

```
