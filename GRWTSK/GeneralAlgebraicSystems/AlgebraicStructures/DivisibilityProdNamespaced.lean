-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ProdDvdIff.Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ProdDvdIff.Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d","mathematical_subject":"Algebra.Groups","original_sha256":"5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Divisibility/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.Group.Prod
import Mathlib.Tactic.Common

/-!
# Lemmas about the divisibility relation in product (semi)groups
-/


namespace GRWTSK.Algebra.GroupTheory.ProdDvdIff.Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d

variable {ι G₁ G₂ : Type*} {G : ι → Type*} [Semigroup G₁] [Semigroup G₂] [∀ i, Semigroup (G i)]

theorem prod_dvd_iff {x y : G₁ × G₂} :
    x ∣ y ↔ x.1 ∣ y.1 ∧ x.2 ∣ y.2 := by
  cases x; cases y
  simp only [dvd_def, Prod.exists, Prod.mk_mul_mk, Prod.mk.injEq,
    exists_and_left, exists_and_right, and_self, true_and]

@[simp]
theorem Prod.mk_dvd_mk {x₁ y₁ : G₁} {x₂ y₂ : G₂} :
    (x₁, x₂) ∣ (y₁, y₂) ↔ x₁ ∣ y₁ ∧ x₂ ∣ y₂ :=
  prod_dvd_iff

instance [DecompositionMonoid G₁] [DecompositionMonoid G₂] : DecompositionMonoid (G₁ × G₂) where
  primal a b c h := by
    simp_rw [prod_dvd_iff] at h ⊢
    obtain ⟨a₁, a₁', h₁, h₁', eq₁⟩ := DecompositionMonoid.primal a.1 h.1
    obtain ⟨a₂, a₂', h₂, h₂', eq₂⟩ := DecompositionMonoid.primal a.2 h.2
    -- aesop works here
    exact ⟨(a₁, a₂), (a₁', a₂'), ⟨h₁, h₂⟩, ⟨h₁', h₂'⟩, Prod.ext eq₁ eq₂⟩

theorem pi_dvd_iff {x y : ∀ i, G i} : x ∣ y ↔ ∀ i, x i ∣ y i := by
  simp_rw [dvd_def, funext_iff, Classical.skolem]; rfl

instance [∀ i, DecompositionMonoid (G i)] : DecompositionMonoid (∀ i, G i) where
  primal a b c h := by
    simp_rw [pi_dvd_iff] at h ⊢
    choose a₁ a₂ h₁ h₂ eq using fun i ↦ DecompositionMonoid.primal _ (h i)
    exact ⟨a₁, a₂, h₁, h₂, funext eq⟩
