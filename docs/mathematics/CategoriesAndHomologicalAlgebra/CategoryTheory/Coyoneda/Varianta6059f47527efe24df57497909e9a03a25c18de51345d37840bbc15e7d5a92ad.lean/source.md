# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coyoneda.Varianta6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47dfdb37e364d7db659cc762e7b7f037f6dc56b9` · SHA-256 `a6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Types.Basic
import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas

/-!
# `(𝟙_ C ⟶ -)` is a lax monoidal functor to `Type`
-/

universe v u

namespace CategoryTheory

open Opposite MonoidalCategory

instance (C : Type u) [Category.{v} C] [MonoidalCategory C] :
    (coyoneda.obj (op (𝟙_ C))).LaxMonoidal :=
  Functor.LaxMonoidal.ofTensorHom
    (ε' := fun _ => 𝟙 _)
    (μ' := fun X Y p ↦ (λ_ (𝟙_ C)).inv ≫ (p.1 ⊗ p.2))
    (μ'_natural := by aesop_cat)
    (associativity' := fun X Y Z => by
      ext ⟨⟨f, g⟩, h⟩; dsimp at f g h
      dsimp; simp only [Iso.cancel_iso_inv_left, Category.assoc]
      conv_lhs =>
        rw [← Category.id_comp h, tensor_comp, Category.assoc, associator_naturality,
          ← Category.assoc, unitors_inv_equal, tensorHom_id, triangle_assoc_comp_right_inv]
      conv_rhs => rw [← Category.id_comp f, tensor_comp]
      simp)
    (left_unitality' := by
      intros
      ext ⟨⟨⟩, f⟩; dsimp at f
      dsimp
      simp)
    (right_unitality' := fun X => by
      ext ⟨f, ⟨⟩⟩; dsimp at f
      dsimp
      simp [unitors_inv_equal])

end CategoryTheory
```
