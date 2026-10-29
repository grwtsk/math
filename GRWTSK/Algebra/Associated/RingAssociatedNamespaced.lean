-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NegLeft.Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NegLeft.Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Associated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker
-/
import Mathlib.Algebra.GroupWithZero.Associated
import Mathlib.Algebra.Ring.Units

/-!
# Associated elements in rings
-/


namespace GRWTSK.Algebra.NegLeft.Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e

assert_not_exists OrderedCommMonoid Multiset Field

namespace Associated
variable {M : Type*} [Monoid M] [HasDistribNeg M] {a b : M}

lemma neg_left (h : Associated a b) : Associated (-a) b := let ⟨u, hu⟩ := h; ⟨-u, by simp [hu]⟩
lemma neg_right (h : Associated a b) : Associated a (-b) := h.symm.neg_left.symm
lemma neg_neg (h : Associated a b) : Associated (-a) (-b) := h.neg_left.neg_right

@[simp]
lemma neg_left_iff : Associated (-a) b ↔ Associated a b :=
  ⟨fun h ↦ _root_.neg_neg a ▸ h.neg_left, fun h ↦ h.neg_left⟩

@[simp]
lemma neg_right_iff : Associated a (-b) ↔ Associated a b :=
  ⟨fun h ↦ _root_.neg_neg b ▸ h.neg_right, fun h ↦ h.neg_right⟩

end Associated
