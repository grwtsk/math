-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoShrink.Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderIsoShrink.Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd","mathematical_subject":"Algebra.OrderTheory","original_sha256":"448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.SuccPred.Basic
import Mathlib.Logic.Small.Defs

/-!
# Order instances on Shrink

If `α : Type v` is `u`-small, we transport various order related
instances on `α` to `Shrink.{u} α`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoShrink.Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd

universe u v

variable (α : Type v) [Small.{u} α]

instance [Preorder α] : Preorder (Shrink.{u} α) where
  le a b := (equivShrink α).symm a ≤ (equivShrink _).symm b
  le_refl a := le_refl _
  le_trans _ _ _ h₁ h₂ := h₁.trans h₂

/-- The order isomorphism `α ≃o Shrink.{u} α`. -/
noncomputable def orderIsoShrink [Preorder α] : α ≃o Shrink.{u} α where
  toEquiv := equivShrink α
  map_rel_iff' {a b} := by
    obtain ⟨a, rfl⟩ := (equivShrink.{u} α).symm.surjective a
    obtain ⟨b, rfl⟩ := (equivShrink.{u} α).symm.surjective b
    simp only [Equiv.apply_symm_apply]
    rfl

variable {α}

@[simp]
lemma orderIsoShrink_apply [Preorder α] (a : α) :
    orderIsoShrink α a = equivShrink α a := rfl

@[simp]
lemma orderIsoShrink_symm_apply [Preorder α] (a : Shrink.{u} α) :
    (orderIsoShrink α).symm a = (equivShrink α).symm a := rfl

instance [PartialOrder α] : PartialOrder (Shrink.{u} α) where
  le_antisymm _ _ h₁ h₂ := (equivShrink _).symm.injective (le_antisymm h₁ h₂)

noncomputable instance [LinearOrder α] : LinearOrder (Shrink.{u} α) where
  le_total _ _ := le_total _ _
  toDecidableLE _ _ := LinearOrder.toDecidableLE _ _

noncomputable instance [Bot α] : Bot (Shrink.{u} α) where
  bot := equivShrink _ ⊥

@[simp]
lemma equivShrink_bot [Bot α]: equivShrink.{u} α ⊥ = ⊥ := rfl

@[simp]
lemma equivShrink_symm_bot [Bot α] : (equivShrink.{u} α).symm ⊥ = ⊥ :=
  (equivShrink.{u} α).injective (by simp)

noncomputable instance [Top α] : Top (Shrink.{u} α) where
  top := equivShrink _ ⊤

@[simp]
lemma equivShrink_top [Top α] : equivShrink.{u} α ⊤ = ⊤ := rfl

@[simp]
lemma equivShrink_symm_top [Top α] : (equivShrink.{u} α).symm ⊤ = ⊤ :=
  (equivShrink.{u} α).injective (by simp)

section Preorder

variable [Preorder α]

noncomputable instance [OrderBot α] :
    OrderBot (Shrink.{u} α) where
  bot_le a := by
    simp only [← (orderIsoShrink.{u} α).symm.le_iff_le,
      orderIsoShrink_symm_apply, equivShrink_symm_bot, bot_le]

noncomputable instance [OrderTop α] :
    OrderTop (Shrink.{u} α) where
  le_top a := by
    simp only [← (orderIsoShrink.{u} α).symm.le_iff_le,
      orderIsoShrink_symm_apply, equivShrink_symm_top, le_top]

noncomputable instance [SuccOrder α] :
    SuccOrder (Shrink.{u} α) :=
  SuccOrder.ofOrderIso (orderIsoShrink.{u} α)

noncomputable instance [PredOrder α] :
    PredOrder (Shrink.{u} α) :=
  PredOrder.ofOrderIso (orderIsoShrink.{u} α)

instance [WellFoundedLT α] : WellFoundedLT (Shrink.{u} α) where
  wf := (orderIsoShrink.{u} α).symm.toRelIsoLT.toRelEmbedding.isWellFounded.wf

end Preorder
