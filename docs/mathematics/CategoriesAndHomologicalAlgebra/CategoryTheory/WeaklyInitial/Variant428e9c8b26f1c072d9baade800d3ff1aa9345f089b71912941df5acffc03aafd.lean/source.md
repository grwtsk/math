# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WeaklyInitial.Variant428e9c8b26f1c072d9baade800d3ff1aa9345f089b71912941df5acffc03aafd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6834fbca42835e6ffe18b3b63d3fd73f4dc553ae` · SHA-256 `428e9c8b26f1c072d9baade800d3ff1aa9345f089b71912941df5acffc03aafd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.WideEqualizers
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Constructions related to weakly initial objects

This file gives constructions related to weakly initial objects, namely:
* If a category has small products and a small weakly initial set of objects, then it has a weakly
  initial object.
* If a category has wide equalizers and a weakly initial object, then it has an initial object.

These are primarily useful to show the General Adjoint Functor Theorem.
-/


universe v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

/--
If `C` has (small) products and a small weakly initial set of objects, then it has a weakly initial
object.
-/
theorem has_weakly_initial_of_weakly_initial_set_and_hasProducts [HasProducts.{v} C] {ι : Type v}
    {B : ι → C} (hB : ∀ A : C, ∃ i, Nonempty (B i ⟶ A)) : ∃ T : C, ∀ X, Nonempty (T ⟶ X) :=
  ⟨∏ᶜ B, fun X => ⟨Pi.π _ _ ≫ (hB X).choose_spec.some⟩⟩

/-- If `C` has (small) wide equalizers and a weakly initial object, then it has an initial object.

The initial object is constructed as the wide equalizer of all endomorphisms on the given weakly
initial object.
-/
theorem hasInitial_of_weakly_initial_and_hasWideEqualizers [HasWideEqualizers.{v} C] {T : C}
    (hT : ∀ X, Nonempty (T ⟶ X)) : HasInitial C := by
  let endos := T ⟶ T
  let i := wideEqualizer.ι (id : endos → endos)
  haveI : Nonempty endos := ⟨𝟙 _⟩
  have : ∀ X : C, Unique (wideEqualizer (id : endos → endos) ⟶ X) := by
    intro X
    refine ⟨⟨i ≫ Classical.choice (hT X)⟩, fun a => ?_⟩
    let E := equalizer a (i ≫ Classical.choice (hT _))
    let e : E ⟶ wideEqualizer id := equalizer.ι _ _
    let h : T ⟶ E := Classical.choice (hT E)
    have : ((i ≫ h) ≫ e) ≫ i = i ≫ 𝟙 _ := by
      rw [Category.assoc, Category.assoc]
      apply wideEqualizer.condition (id : endos → endos) (h ≫ e ≫ i)
    rw [Category.comp_id, cancel_mono_id i] at this
    haveI : IsSplitEpi e := IsSplitEpi.mk' ⟨i ≫ h, this⟩
    rw [← cancel_epi e]
    apply equalizer.condition
  exact hasInitial_of_unique (wideEqualizer (id : endos → endos))

end CategoryTheory
```
