# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant0ad621bbb95cdbf72a3bc21ed4b1c7ca8aa3ad18fbc94c2d95c39037fe8ac488

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f80dc1b4c1836df9adf18b8356d4c4e845e05363` · SHA-256 `6dbb6db661b9320f8a50c203ed502e116edf74db2cf3a8e0095f599812d1fd83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantce3834e85a5f10b58fd85583ddbad0d6079a8b21176f64a14adbfd4260c6be52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce3834e85a5f10b58fd85583ddbad0d6079a8b21176f64a14adbfd4260c6be52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variantce3834e85a5f10b58fd85583ddbad0d6079a8b21176f64a14adbfd4260c6be52","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ce3834e85a5f10b58fd85583ddbad0d6079a8b21176f64a14adbfd4260c6be52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantce3834e85a5f10b58fd85583ddbad0d6079a8b21176f64a14adbfd4260c6be52

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

/-- Dedicated target for process-confinement and post-review tamper tests. -/
@[surface_candidate]
theorem sandbox_guard_identity (value : Nat) : value = value := by
  rfl

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture
```
