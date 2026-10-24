# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ae32a6bd2c3ae7acea2561270f02483a0e2146c` · SHA-256 `bec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Generator.Basic
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic

/-!
# Separators in preadditive categories

This file contains characterizations of separating sets and objects that are valid in all
preadditive categories.

-/


universe v u

open CategoryTheory Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Preadditive C]

theorem Preadditive.isSeparating_iff (𝒢 : Set C) :
    IsSeparating 𝒢 ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ G ∈ 𝒢, ∀ (h : G ⟶ X), h ≫ f = 0) → f = 0 :=
  ⟨fun h𝒢 X Y f hf => h𝒢 _ _ (by simpa only [Limits.comp_zero] using hf), fun h𝒢 X Y f g hfg =>
    sub_eq_zero.1 <| h𝒢 _ (by simpa only [Preadditive.comp_sub, sub_eq_zero] using hfg)⟩

theorem Preadditive.isCoseparating_iff (𝒢 : Set C) :
    IsCoseparating 𝒢 ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ G ∈ 𝒢, ∀ (h : Y ⟶ G), f ≫ h = 0) → f = 0 :=
  ⟨fun h𝒢 X Y f hf => h𝒢 _ _ (by simpa only [Limits.zero_comp] using hf), fun h𝒢 X Y f g hfg =>
    sub_eq_zero.1 <| h𝒢 _ (by simpa only [Preadditive.sub_comp, sub_eq_zero] using hfg)⟩

theorem Preadditive.isSeparator_iff (G : C) :
    IsSeparator G ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ h : G ⟶ X, h ≫ f = 0) → f = 0 :=
  ⟨fun hG X Y f hf => hG.def _ _ (by simpa only [Limits.comp_zero] using hf), fun hG =>
    (isSeparator_def _).2 fun X Y f g hfg =>
      sub_eq_zero.1 <| hG _ (by simpa only [Preadditive.comp_sub, sub_eq_zero] using hfg)⟩

theorem Preadditive.isCoseparator_iff (G : C) :
    IsCoseparator G ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ h : Y ⟶ G, f ≫ h = 0) → f = 0 :=
  ⟨fun hG X Y f hf => hG.def _ _ (by simpa only [Limits.zero_comp] using hf), fun hG =>
    (isCoseparator_def _).2 fun X Y f g hfg =>
      sub_eq_zero.1 <| hG _ (by simpa only [Preadditive.sub_comp, sub_eq_zero] using hfg)⟩

theorem isSeparator_iff_faithful_preadditiveCoyoneda (G : C) :
    IsSeparator G ↔ (preadditiveCoyoneda.obj (op G)).Faithful := by
  rw [isSeparator_iff_faithful_coyoneda_obj, ← whiskering_preadditiveCoyoneda, Functor.comp_obj,
    whiskeringRight_obj_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget AddCommGrp),
    fun h => Functor.Faithful.comp _ _⟩

theorem isSeparator_iff_faithful_preadditiveCoyonedaObj (G : C) :
    IsSeparator G ↔ (preadditiveCoyonedaObj G).Faithful := by
  rw [isSeparator_iff_faithful_preadditiveCoyoneda, preadditiveCoyoneda_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget₂ _ AddCommGrp.{v}),
    fun h => Functor.Faithful.comp _ _⟩

theorem isCoseparator_iff_faithful_preadditiveYoneda (G : C) :
    IsCoseparator G ↔ (preadditiveYoneda.obj G).Faithful := by
  rw [isCoseparator_iff_faithful_yoneda_obj, ← whiskering_preadditiveYoneda, Functor.comp_obj,
    whiskeringRight_obj_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget AddCommGrp),
    fun h => Functor.Faithful.comp _ _⟩

theorem isCoseparator_iff_faithful_preadditiveYonedaObj (G : C) :
    IsCoseparator G ↔ (preadditiveYonedaObj G).Faithful := by
  rw [isCoseparator_iff_faithful_preadditiveYoneda, preadditiveYoneda_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget₂ _ AddCommGrp.{v}),
    fun h => Functor.Faithful.comp _ _⟩

end CategoryTheory
```
