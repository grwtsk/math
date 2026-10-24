# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Fibration.Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebb38a930b0ada4485d7c1a9385a9fe6585cb838` · SHA-256 `396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Sara Rousta
-/
import Mathlib.Order.UpperLower.Basic

/-!
# Upper/lower sets and fibrations
-/

open Set

namespace Relation

variable {α β : Type*} {f : α → β}

lemma Fibration.isLowerSet_image [LE α] [LE β] (hf : Fibration (· ≤ ·) (· ≤ ·) f)
    {s : Set α} (hs : IsLowerSet s) : IsLowerSet (f '' s) := by
  rintro _ y' e ⟨x, hx, rfl⟩; obtain ⟨y, e', rfl⟩ := hf e; exact ⟨_, hs e' hx, rfl⟩

alias _root_.IsLowerSet.image_fibration := Fibration.isLowerSet_image

lemma fibration_iff_isLowerSet_image_Iic [Preorder α] [LE β] :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ x, IsLowerSet (f '' Iic x) :=
  ⟨fun h x ↦ (isLowerSet_Iic x).image_fibration h, fun H x _ e ↦ H x e ⟨x, le_rfl, rfl⟩⟩

lemma fibration_iff_isLowerSet_image [Preorder α] [LE β] :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ s, IsLowerSet s → IsLowerSet (f '' s) :=
  ⟨Fibration.isLowerSet_image,
    fun H ↦ fibration_iff_isLowerSet_image_Iic.mpr (H _ <| isLowerSet_Iic ·)⟩

lemma fibration_iff_image_Iic [Preorder α] [Preorder β] (hf : Monotone f) :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ x, f '' Iic x = Iic (f x) :=
  ⟨fun H x ↦ le_antisymm (fun _ ⟨_, hy, e⟩ ↦ e ▸ hf hy)
    ((H.isLowerSet_image (isLowerSet_Iic x)).Iic_subset ⟨x, le_rfl, rfl⟩),
    fun H ↦ fibration_iff_isLowerSet_image_Iic.mpr (fun x ↦ (H x).symm ▸ isLowerSet_Iic (f x))⟩

lemma Fibration.isUpperSet_image [LE α] [LE β] (hf : Fibration (· ≥ ·) (· ≥ ·) f)
    {s : Set α} (hs : IsUpperSet s) : IsUpperSet (f '' s) :=
  @Fibration.isLowerSet_image αᵒᵈ βᵒᵈ _ _ _ hf s hs

alias _root_.IsUpperSet.image_fibration := Fibration.isUpperSet_image

lemma fibration_iff_isUpperSet_image_Ici [Preorder α] [LE β] :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ x, IsUpperSet (f '' Ici x) :=
  @fibration_iff_isLowerSet_image_Iic αᵒᵈ βᵒᵈ _ _ _

lemma fibration_iff_isUpperSet_image [Preorder α] [LE β] :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ s, IsUpperSet s → IsUpperSet (f '' s) :=
  @fibration_iff_isLowerSet_image αᵒᵈ βᵒᵈ _ _ _

lemma fibration_iff_image_Ici [Preorder α] [Preorder β] (hf : Monotone f) :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ x, f '' Ici x = Ici (f x) :=
  fibration_iff_image_Iic hf.dual

end Relation
```
