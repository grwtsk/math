-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ENatENNReal.Variantdb1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.ENatENNReal.Variantdb1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f","mathematical_subject":"Logic.SetTheory","original_sha256":"db1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/SetTheory/Cardinal/ENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Real.ENatENNReal
public import Mathlib.SetTheory.Cardinal.NatCard

/-!
# Lemmas about `Nat.card` and `ENNReal`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ENatENNReal.Variantdb1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f

public section

namespace ENNReal

@[simp] lemma toReal_enatCard (α : Type*) : ENNReal.toReal (ENat.card α) = Nat.card α := by
  cases finite_or_infinite α <;> simp [ENat.card_eq_coe_natCard]

end ENNReal
