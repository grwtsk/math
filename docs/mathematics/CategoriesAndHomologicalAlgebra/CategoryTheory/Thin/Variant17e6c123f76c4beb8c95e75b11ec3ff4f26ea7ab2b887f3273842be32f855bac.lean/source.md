# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Thin.Variant17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2c9cb1099b9cf28473a19d34f3dd19856d2649a` · SHA-256 `17e6c123f76c4beb8c95e75b11ec3ff4f26ea7ab2b887f3273842be32f855bac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kim Morrison, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Functor.Category
import Mathlib.CategoryTheory.Iso

/-!
# Thin categories
A thin category (also known as a sparse category) is a category with at most one morphism between
each pair of objects.
Examples include posets, but also some indexing categories (diagrams) for special shapes of
(co)limits.
To construct a category instance one only needs to specify the `category_struct` part,
as the axioms hold for free.
If `C` is thin, then the category of functors to `C` is also thin.
Further, to show two objects are isomorphic in a thin category, it suffices only to give a morphism
in each direction.
-/


universe v₁ v₂ u₁ u₂

namespace CategoryTheory

variable {C : Type u₁}

section

variable [CategoryStruct.{v₁} C] [Quiver.IsThin C]

/-- Construct a category instance from a category_struct, using the fact that
    hom spaces are subsingletons to prove the axioms. -/
def thin_category : Category C where

end

-- We don't assume anything about where the category instance on `C` came from.
-- In particular this allows `C` to be a preorder, with the category instance inherited from the
-- preorder structure.
variable [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
variable [Quiver.IsThin C]

/-- If `C` is a thin category, then `D ⥤ C` is a thin category. -/
instance functor_thin : Quiver.IsThin (D ⥤ C) := fun _ _ =>
  ⟨fun α β => NatTrans.ext (by subsingleton)⟩

/-- To show `X ≅ Y` in a thin category, it suffices to just give any morphism in each direction. -/
def iso_of_both_ways {X Y : C} (f : X ⟶ Y) (g : Y ⟶ X) :
    X ≅ Y where
  hom := f
  inv := g

instance subsingleton_iso {X Y : C} : Subsingleton (X ≅ Y) :=
  ⟨by
    intro i₁ i₂
    ext1
    subsingleton⟩

end CategoryTheory
```
