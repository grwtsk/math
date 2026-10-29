-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant809d968034e4afc82e90b2b77b61ad7eaffc0966ee13362028ecf6553b596d82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"809d968034e4afc82e90b2b77b61ad7eaffc0966ee13362028ecf6553b596d82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variant809d968034e4afc82e90b2b77b61ad7eaffc0966ee13362028ecf6553b596d82","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"809d968034e4afc82e90b2b77b61ad7eaffc0966ee13362028ecf6553b596d82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/Generated/RefactorFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variant809d968034e4afc82e90b2b77b61ad7eaffc0966ee13362028ecf6553b596d82

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
