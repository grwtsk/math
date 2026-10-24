# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Variantdbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b0bc6904b01fbf50045c7d6e9bf2f8dc33d0a3` · SHA-256 `dbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.EpiMono

/-!
# Balanced categories

A category is called balanced if any morphism that is both monic and epic is an isomorphism.

Balanced categories arise frequently. For example, categories in which every monomorphism
(or epimorphism) is strong are balanced. Examples of this are abelian categories and toposes, such
as the category of types.

-/


universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section

variable (C)

/-- A category is called balanced if any morphism that is both monic and epic is an isomorphism. -/
class Balanced : Prop where
  isIso_of_mono_of_epi : ∀ {X Y : C} (f : X ⟶ Y) [Mono f] [Epi f], IsIso f

end

theorem isIso_of_mono_of_epi [Balanced C] {X Y : C} (f : X ⟶ Y) [Mono f] [Epi f] : IsIso f :=
  Balanced.isIso_of_mono_of_epi _

theorem isIso_iff_mono_and_epi [Balanced C] {X Y : C} (f : X ⟶ Y) : IsIso f ↔ Mono f ∧ Epi f :=
  ⟨fun _ => ⟨inferInstance, inferInstance⟩, fun ⟨_, _⟩ => isIso_of_mono_of_epi _⟩

section

attribute [local instance] isIso_of_mono_of_epi

instance balanced_opposite [Balanced C] : Balanced Cᵒᵖ :=
  { isIso_of_mono_of_epi := fun f fmono fepi => by
      rw [← Quiver.Hom.op_unop f]
      exact isIso_of_op _ }

end

end CategoryTheory
```
