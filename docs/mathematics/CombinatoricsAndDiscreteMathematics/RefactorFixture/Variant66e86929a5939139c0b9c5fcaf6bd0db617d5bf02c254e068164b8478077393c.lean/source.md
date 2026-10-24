# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant66e86929a5939139c0b9c5fcaf6bd0db617d5bf02c254e068164b8478077393c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa807a36d5d505d81d50a56a4f12bae5c2ba38d6` · SHA-256 `4cccc601b29c080b741f282f3e031833addd377f35def7a275ac1d28b7fc0989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantc5a29d13ee28830ab7ceb59850da688ae4c8de9c1079ff23847b3e5afffc2a09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5a29d13ee28830ab7ceb59850da688ae4c8de9c1079ff23847b3e5afffc2a09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variantc5a29d13ee28830ab7ceb59850da688ae4c8de9c1079ff23847b3e5afffc2a09","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5a29d13ee28830ab7ceb59850da688ae4c8de9c1079ff23847b3e5afffc2a09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:d446e7de7222be94764dcf1c/workspace/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantc5a29d13ee28830ab7ceb59850da688ae4c8de9c1079ff23847b3e5afffc2a09

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
