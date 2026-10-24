# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sieves.Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c84f551edcd181e9bc7ad636e0310e25871ae08` · SHA-256 `c5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Subpresheaf.Basic
import Mathlib.CategoryTheory.Sites.IsSheafFor

/-!
# Sieves attached to subpresheaves

Given a subpresheaf `G` of a presheaf of types `F : Cᵒᵖ ⥤ Type w` and
a section `s : F.obj U`, we define a sieve `G.sieveOfSection s : Sieve (unop U)`
and the associated compatible family of elements with values in `G.toPresheaf`.

-/

universe w v u

namespace CategoryTheory.Subpresheaf

open Opposite

variable {C : Type u} [Category.{v} C] {F : Cᵒᵖ ⥤ Type w} (G : Subpresheaf F)

/-- Given a subpresheaf `G` of `F`, an `F`-section `s` on `U`, we may define a sieve of `U`
consisting of all `f : V ⟶ U` such that the restriction of `s` along `f` is in `G`. -/
@[simps]
def sieveOfSection {U : Cᵒᵖ} (s : F.obj U) : Sieve (unop U) where
  arrows V f := F.map f.op s ∈ G.obj (op V)
  downward_closed := @fun V W i hi j => by
    simp only [op_unop, op_comp, FunctorToTypes.map_comp_apply]
    exact G.map _ hi

/-- Given an `F`-section `s` on `U` and a subpresheaf `G`, we may define a family of elements in
`G` consisting of the restrictions of `s` -/
def familyOfElementsOfSection {U : Cᵒᵖ} (s : F.obj U) :
    (G.sieveOfSection s).1.FamilyOfElements G.toPresheaf := fun _ i hi => ⟨F.map i.op s, hi⟩

theorem family_of_elements_compatible {U : Cᵒᵖ} (s : F.obj U) :
    (G.familyOfElementsOfSection s).Compatible := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ e
  refine Subtype.ext ?_ -- Porting note: `ext1` does not work here
  change F.map g₁.op (F.map f₁.op s) = F.map g₂.op (F.map f₂.op s)
  rw [← FunctorToTypes.map_comp_apply, ← FunctorToTypes.map_comp_apply, ← op_comp, ← op_comp, e]

end CategoryTheory.Subpresheaf
```
