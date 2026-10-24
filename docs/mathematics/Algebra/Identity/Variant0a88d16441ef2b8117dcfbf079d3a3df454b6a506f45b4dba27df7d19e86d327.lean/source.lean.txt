-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Carrier.Variant1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Carrier.Variant1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Identity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Carrier

/-!
# Boolean identity neighborhood

Elementary bounded-lattice identities are exposed under source-facing names,
but proved by the canonical Mathlib structure.
-/


namespace GRWTSK.Algebra.Carrier.Variant1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem bot_join (a : B) : ⊥ ⊔ a = a := by simp
@[simp] theorem top_meet (a : B) : ⊤ ⊓ a = a := by simp
@[simp] theorem complement_join (a : B) : aᶜ ⊔ a = ⊤ := by simp
@[simp] theorem complement_meet (a : B) : aᶜ ⊓ a = ⊥ := by simp
@[simp] theorem join_idempotent (a : B) : a ⊔ a = a := by simp
@[simp] theorem meet_idempotent (a : B) : a ⊓ a = a := by simp
@[simp] theorem join_top (a : B) : a ⊔ ⊤ = ⊤ := by simp
@[simp] theorem top_join (a : B) : ⊤ ⊔ a = ⊤ := by simp
@[simp] theorem meet_bot (a : B) : a ⊓ ⊥ = ⊥ := by simp
@[simp] theorem bot_meet (a : B) : ⊥ ⊓ a = ⊥ := by simp

end Mathematics.Boolean
