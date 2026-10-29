-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FgSystem.Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FgSystem.Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1","mathematical_subject":"Logic.Foundations","original_sha256":"7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Colimit/Finiteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Colimit.Module
import Mathlib.RingTheory.Finiteness.Basic

/-!
# Modules as direct limits of finitely generated submodules

We show that every module is the direct limit of its finitely generated submodules.

## Main definitions

* `Module.fgSystem`: the directed system of finitely generated submodules of a module.

* `Module.fgSystem.equiv`: the isomorphism between a module and the direct limit of its
  finitely generated submodules.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FgSystem.Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1

namespace Module

variable (R M : Type*) [Semiring R] [AddCommMonoid M] [Module R M]

/-- The directed system of finitely generated submodules of a module. -/
def fgSystem (N₁ N₂ : {N : Submodule R M // N.FG}) (le : N₁ ≤ N₂) : N₁ →ₗ[R] N₂ :=
  Submodule.inclusion le

open DirectLimit

namespace fgSystem

instance : IsDirected {N : Submodule R M // N.FG} (· ≤ ·) where
  directed N₁ N₂ :=
    ⟨⟨_, N₁.2.sup N₂.2⟩, Subtype.coe_le_coe.mp le_sup_left, Subtype.coe_le_coe.mp le_sup_right⟩

instance : DirectedSystem _ (fgSystem R M · · · ·) where
  map_self _ _ := rfl
  map_map _ _ _ _ _ _ := rfl

variable [DecidableEq (Submodule R M)]

open Submodule in
/-- Every module is the direct limit of its finitely generated submodules. -/
noncomputable def equiv : DirectLimit _ (fgSystem R M) ≃ₗ[R] M :=
  .ofBijective (lift _ _ _ _ (fun _ ↦ Submodule.subtype _) fun _ _ _ _ ↦ rfl)
    ⟨lift_injective _ _ fun _ ↦ Subtype.val_injective, fun x ↦
      ⟨of _ _ _ _ ⟨_, fg_span_singleton x⟩ ⟨x, subset_span <| by rfl⟩, lift_of ..⟩⟩

variable {R M}

lemma equiv_comp_of (N : {N : Submodule R M // N.FG}) :
    (equiv R M).toLinearMap ∘ₗ of _ _ _ _ N = N.1.subtype := by
  ext; simp [equiv]

end fgSystem

end Module
