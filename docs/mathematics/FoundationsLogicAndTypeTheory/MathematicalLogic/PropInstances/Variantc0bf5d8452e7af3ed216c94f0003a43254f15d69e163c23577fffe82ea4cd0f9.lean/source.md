# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropInstances.Variantc0bf5d8452e7af3ed216c94f0003a43254f15d69e163c23577fffe82ea4cd0f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42b3dd368aeb4858775cd82d333c58864e5fbc4d` · SHA-256 `9a8ee6bd8fbe12f60fc2a4d24d80eda30a6306d42af88aa8ce1c3c99ed236b06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropBotEqFalse.Variantd50cb1851985d3915e960e5921a55c463b7b64cb67acd771b88a17fe3114bef3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d50cb1851985d3915e960e5921a55c463b7b64cb67acd771b88a17fe3114bef3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.PropBotEqFalse.Variantd50cb1851985d3915e960e5921a55c463b7b64cb67acd771b88a17fe3114bef3","mathematical_subject":"Logic.Foundations","original_sha256":"d50cb1851985d3915e960e5921a55c463b7b64cb67acd771b88a17fe3114bef3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/PropInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Order.Disjoint

/-!

# The order on `Prop`

Instances on `Prop` such as `DistribLattice`, `BoundedOrder`, `LinearOrder`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropBotEqFalse.Variantd50cb1851985d3915e960e5921a55c463b7b64cb67acd771b88a17fe3114bef3

public section

/-- Propositions form a distributive lattice. -/
instance Prop.instDistribLattice : DistribLattice Prop where
  sup := Or
  le_sup_left := @Or.inl
  le_sup_right := @Or.inr
  sup_le := fun _ _ _ => Or.rec
  inf := And
  inf_le_left := @And.left
  inf_le_right := @And.right
  le_inf := fun _ _ _ Hab Hac Ha => And.intro (Hab Ha) (Hac Ha)
  le_sup_inf := fun _ _ _ => or_and_left.2

/-- Propositions form a bounded order. -/
instance Prop.instBoundedOrder : BoundedOrder Prop where
  top := True
  le_top _ _ := True.intro
  bot := False
  bot_le := @False.elim

@[simp]
theorem Prop.bot_eq_false : (⊥ : Prop) = False :=
  rfl

@[simp]
theorem Prop.top_eq_true : (⊤ : Prop) = True :=
  rfl

instance Prop.le_total : @Std.Total Prop (· ≤ ·) :=
  ⟨fun p q => by by_cases h : q <;> simp [h]⟩

/-- The order on `Prop` is a `LinearOrder`.

This is not an instance since `LinearOrder` includes decidability instances, which we want to avoid
for `Prop`. -/
@[expose, instance_reducible]
noncomputable def Prop.linearOrder : LinearOrder Prop := by
  classical
  exact Lattice.toLinearOrder Prop

@[simp]
theorem sup_Prop_eq : (· ⊔ ·) = (· ∨ ·) :=
  rfl

@[simp]
theorem inf_Prop_eq : (· ⊓ ·) = (· ∧ ·) :=
  rfl

namespace Pi

variable {ι α : Type*} {α' : ι → Type*} [∀ i, PartialOrder (α' i)]

theorem disjoint_iff [∀ i, OrderBot (α' i)] {f g : ∀ i, α' i} :
    Disjoint f g ↔ ∀ i, Disjoint (f i) (g i) := by
  classical
  constructor
  · intro h i x hf hg
    exact (update_le_iff.mp <| h (update_le_iff.mpr ⟨hf, fun _ _ => bot_le⟩)
      (update_le_iff.mpr ⟨hg, fun _ _ => bot_le⟩)).1
  · intro h x hf hg i
    apply h i (hf i) (hg i)

theorem codisjoint_iff [∀ i, OrderTop (α' i)] {f g : ∀ i, α' i} :
    Codisjoint f g ↔ ∀ i, Codisjoint (f i) (g i) :=
  @disjoint_iff _ (fun i => (α' i)ᵒᵈ) _ _ _ _

theorem isCompl_iff [∀ i, BoundedOrder (α' i)] {f g : ∀ i, α' i} :
    IsCompl f g ↔ ∀ i, IsCompl (f i) (g i) := by
  simp_rw [_root_.isCompl_iff, disjoint_iff, codisjoint_iff, forall_and]

instance (α : Type*) : Std.Symm (α := α) ⊤ where
  symm _ _ := id

instance (α : Type*) : Std.Symm (α := α) ⊥ where
  symm _ _ := id

@[nontriviality]
theorem eq_top_iff_refl_of_subsingleton [Subsingleton α] {r : α → α → Prop} : r = ⊤ ↔ Std.Refl r :=
  ⟨fun h ↦ ⟨by simp [h]⟩, fun _ ↦ funext₂ <| by simp [rel_of_subsingleton]⟩

@[nontriviality]
theorem eq_bot_iff_irrefl_of_subsingleton [Subsingleton α] {r : α → α → Prop} :
    r = ⊥ ↔ Std.Irrefl r :=
  ⟨fun h ↦ ⟨by simp [h]⟩, fun _ ↦ funext₂ <| by simp [not_rel_of_subsingleton]⟩

end Pi

@[simp]
theorem Prop.disjoint_iff {P Q : Prop} : Disjoint P Q ↔ ¬(P ∧ Q) :=
  disjoint_iff_inf_le

@[simp]
theorem Prop.codisjoint_iff {P Q : Prop} : Codisjoint P Q ↔ P ∨ Q :=
  codisjoint_iff_le_sup.trans <| forall_const True

@[simp]
theorem Prop.isCompl_iff {P Q : Prop} : IsCompl P Q ↔ ¬(P ↔ Q) := by
  rw [_root_.isCompl_iff, Prop.disjoint_iff, Prop.codisjoint_iff, not_iff]
  by_cases P <;> by_cases Q <;> simp [*]

section decidable_instances

universe u
variable {α : Type u}

instance Prop.decidablePredBot : DecidablePred (⊥ : α → Prop) := fun _ => instDecidableFalse

instance Prop.decidablePredTop : DecidablePred (⊤ : α → Prop) := fun _ => instDecidableTrue

instance Prop.decidableRelBot : DecidableRel (⊥ : α → α → Prop) := fun _ _ => instDecidableFalse

instance Prop.decidableRelTop : DecidableRel (⊤ : α → α → Prop) := fun _ _ => instDecidableTrue

end decidable_instances
```
