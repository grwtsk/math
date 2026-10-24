# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variant65616118249efe37a6c3834c438e6363cdc3b0a4f0ebbe304cefc58ab711ad5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca0b2742dae5009738c0161f8d6bf9d2205703c7` · SHA-256 `665f96563d4e2c8438dc8903a8150398b04e8cf4ee482c263f67526f354b3dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MapInf.Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MapInf.Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a","mathematical_subject":"Algebra.OrderTheory","original_sha256":"09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/RelIso/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Order.Directed
import Mathlib.Order.RelIso.Basic
import Mathlib.Logic.Embedding.Set
import Mathlib.Logic.Equiv.Set

/-!
# Interactions between relation homomorphisms and sets

It is likely that there are better homes for many of these statement,
in files further down the import graph.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MapInf.Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a

open Function

universe u v w

variable {α β : Type*} {r : α → α → Prop} {s : β → β → Prop}

namespace RelHomClass

variable {F : Type*}

theorem map_inf [SemilatticeInf α] [LinearOrder β] [FunLike F β α]
    [RelHomClass F (· < ·) (· < ·)] (a : F) (m n : β) :
    a (m ⊓ n) = a m ⊓ a n :=
  (StrictMono.monotone fun _ _ => map_rel a).map_inf m n

theorem map_sup [SemilatticeSup α] [LinearOrder β] [FunLike F β α]
    [RelHomClass F (· > ·) (· > ·)] (a : F) (m n : β) :
    a (m ⊔ n) = a m ⊔ a n :=
  map_inf (α := αᵒᵈ) (β := βᵒᵈ) _ _ _

theorem directed [FunLike F α β] [RelHomClass F r s] {ι : Sort*} {a : ι → α} {f : F}
    (ha : Directed r a) : Directed s (f ∘ a) :=
  ha.mono_comp _ fun _ _ h ↦ map_rel f h

theorem directedOn [FunLike F α β] [RelHomClass F r s] {f : F}
    {t : Set α} (hs : DirectedOn r t) : DirectedOn s (f '' t) :=
  hs.mono_comp fun _ _ h ↦ map_rel f h

end RelHomClass

namespace RelIso

theorem range_eq (e : r ≃r s) : Set.range e = Set.univ := by simp

end RelIso

/-- `Subrel r p` is the inherited relation on a subtype.

We could also consider a Set.Subrel r s variant for dot notation, but this ends up interacting
poorly with `simpNF`. -/
def Subrel (r : α → α → Prop) (p : α → Prop) : Subtype p → Subtype p → Prop :=
  Subtype.val ⁻¹'o r

@[simp]
theorem subrel_val (r : α → α → Prop) (p : α → Prop) {a b} : Subrel r p a b ↔ r a.1 b.1 :=
  Iff.rfl

namespace Subrel

/-- The relation embedding from the inherited relation on a subset. -/
protected def relEmbedding (r : α → α → Prop) (p : α → Prop) : Subrel r p ↪r r :=
  ⟨Embedding.subtype _, Iff.rfl⟩

@[simp]
theorem relEmbedding_apply (r : α → α → Prop) (p a) : Subrel.relEmbedding r p a = a.1 :=
  rfl

/-- `Set.inclusion` as a relation embedding. -/
protected def inclusionEmbedding (r : α → α → Prop) {s t : Set α} (h : s ⊆ t) :
    Subrel r (· ∈ s) ↪r Subrel r (· ∈ t) where
  toFun := Set.inclusion h
  inj' _ _ h := (Set.inclusion_inj _).mp h
  map_rel_iff' := Iff.rfl

@[simp]
theorem coe_inclusionEmbedding (r : α → α → Prop) {s t : Set α} (h : s ⊆ t) :
    (Subrel.inclusionEmbedding r h : s → t) = Set.inclusion h :=
  rfl

instance (r : α → α → Prop) [IsRefl α r] (p : α → Prop) : IsRefl _ (Subrel r p) :=
  ⟨fun x => @IsRefl.refl α r _ x⟩

instance (r : α → α → Prop) [IsSymm α r] (p : α → Prop) : IsSymm _ (Subrel r p) :=
  ⟨fun x y => @IsSymm.symm α r _ x y⟩

instance (r : α → α → Prop) [IsAsymm α r] (p : α → Prop) : IsAsymm _ (Subrel r p) :=
  ⟨fun x y => @IsAsymm.asymm α r _ x y⟩

instance (r : α → α → Prop) [IsTrans α r] (p : α → Prop) : IsTrans _ (Subrel r p) :=
  ⟨fun x y z => @IsTrans.trans α r _ x y z⟩

instance (r : α → α → Prop) [IsIrrefl α r] (p : α → Prop) : IsIrrefl _ (Subrel r p) :=
  ⟨fun x => @IsIrrefl.irrefl α r _ x⟩

instance (r : α → α → Prop) [IsTrichotomous α r] (p : α → Prop) : IsTrichotomous _ (Subrel r p) :=
  ⟨fun x y => by rw [Subtype.eq_iff]; exact @IsTrichotomous.trichotomous α r _ x y⟩

instance (r : α → α → Prop) [IsWellFounded α r] (p : α → Prop) : IsWellFounded _ (Subrel r p) :=
  (Subrel.relEmbedding r p).isWellFounded

instance (r : α → α → Prop) [IsPreorder α r] (p : α → Prop) : IsPreorder _ (Subrel r p) where
instance (r : α → α → Prop) [IsStrictOrder α r] (p : α → Prop) : IsStrictOrder _ (Subrel r p) where
instance (r : α → α → Prop) [IsWellOrder α r] (p : α → Prop) : IsWellOrder _ (Subrel r p) where

end Subrel

/-- Restrict the codomain of a relation embedding. -/
def RelEmbedding.codRestrict (p : Set β) (f : r ↪r s) (H : ∀ a, f a ∈ p) : r ↪r Subrel s (· ∈ p) :=
  ⟨f.toEmbedding.codRestrict p H, f.map_rel_iff'⟩

@[simp]
theorem RelEmbedding.codRestrict_apply (p) (f : r ↪r s) (H a) :
    RelEmbedding.codRestrict p f H a = ⟨f a, H a⟩ :=
  rfl

section image

theorem RelIso.image_eq_preimage_symm (e : r ≃r s) (t : Set α) : e '' t = e.symm ⁻¹' t :=
  e.toEquiv.image_eq_preimage t

theorem RelIso.preimage_eq_image_symm (e : r ≃r s) (t : Set β) : e ⁻¹' t = e.symm '' t := by
  rw [e.symm.image_eq_preimage_symm]; rfl

end image

theorem Acc.of_subrel {r : α → α → Prop} [IsTrans α r] {b : α} (a : { a // r a b })
    (h : Acc (Subrel r (r · b)) a) : Acc r a.1 :=
  h.recOn fun a _ IH ↦ ⟨_, fun _ hb ↦ IH ⟨_, _root_.trans hb a.2⟩ hb⟩

/-- A relation `r` is well-founded iff every downward-interval `{ a | r a b }` of it is
well-founded. -/
theorem wellFounded_iff_wellFounded_subrel {r : α → α → Prop} [IsTrans α r] :
    WellFounded r ↔ ∀ b, WellFounded (Subrel r (r · b)) where
  mp h _ := InvImage.wf Subtype.val h
  mpr h := ⟨fun a ↦ ⟨_, fun b hr ↦ ((h a).apply _).of_subrel ⟨b, hr⟩⟩⟩
```
