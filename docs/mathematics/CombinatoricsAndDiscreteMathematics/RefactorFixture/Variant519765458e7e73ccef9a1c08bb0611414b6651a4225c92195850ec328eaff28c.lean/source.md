# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant519765458e7e73ccef9a1c08bb0611414b6651a4225c92195850ec328eaff28c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdc08ce8b5ce59ef77f2201b5a951c5b9a135898` · SHA-256 `49e643210818517dd8b09afd7acc5ece7b02ff13d8c0f0c205bb7af6acfc85e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant0b733566036286714187d036bf6b1a1b4fae8d164f3616c1f5765966e51bc613","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b733566036286714187d036bf6b1a1b4fae8d164f3616c1f5765966e51bc613","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variant0b733566036286714187d036bf6b1a1b4fae8d164f3616c1f5765966e51bc613","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0b733566036286714187d036bf6b1a1b4fae8d164f3616c1f5765966e51bc613","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:cd3c1064ad673298a1f0f534/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant0b733566036286714187d036bf6b1a1b4fae8d164f3616c1f5765966e51bc613

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  apply Eq.trans

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
