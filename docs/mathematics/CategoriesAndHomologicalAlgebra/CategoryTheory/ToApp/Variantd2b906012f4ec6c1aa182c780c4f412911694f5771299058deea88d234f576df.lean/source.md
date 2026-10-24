# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToApp.Variantd2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a4da3643397e5d3e8845059811dda56a45376b0` · SHA-256 `d2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.ToApp
import Mathlib.CategoryTheory.Bicategory.Functor.Prelax

universe w v u

namespace CategoryTheory.ToAppTest

open Bicategory Category

variable {B : Type u} [Bicategory.{w, v} B] {a b c d e : B}

@[to_app]
theorem whiskerLeft_hom_inv (f : a ⟶ b) {g h : b ⟶ c} (η : g ≅ h) :
    f ◁ η.hom ≫ f ◁ η.inv = 𝟙 (f ≫ g) := by
  rw [← Bicategory.whiskerLeft_comp, Iso.hom_inv_id, Bicategory.whiskerLeft_id]

example {a b c : Cat} (f : a ⟶ b) {g h : b ⟶ c} (η : g ≅ h) (X : a) :
    η.hom.app (f.obj X) ≫ η.inv.app (f.obj X) = 𝟙 ((f ≫ g).obj X) :=
  whiskerLeft_hom_inv_app f η X

@[to_app]
theorem pentagon_hom_hom_inv_inv_hom (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : d ⟶ e) :
    (α_ f (g ≫ h) i).hom ≫ f ◁ (α_ g h i).hom ≫ (α_ f g (h ≫ i)).inv =
      (α_ f g h).inv ▷ i ≫ (α_ (f ≫ g) h i).hom :=
  eq_of_inv_eq_inv (by simp)

example {a b c d e : Cat} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : d ⟶ e) (X : ↑a) :
    (α_ f (g ≫ h) i).hom.app X ≫ (α_ g h i).hom.app (f.obj X) ≫ (α_ f g (h ≫ i)).inv.app X =
      i.map ((α_ f g h).inv.app X) ≫ (α_ (f ≫ g) h i).hom.app X :=
  pentagon_hom_hom_inv_inv_hom_app f g h i X

@[to_app]
theorem testThm {C : Type*} [Bicategory C] (F : PrelaxFunctor B C) {a b : B} {f g : a ⟶ b}
    (η : f ⟶ g) : F.map₂ η ≫ F.map₂ (𝟙 g) = F.map₂ η := by simp

example {B : Type u_1} [Bicategory B] (F : PrelaxFunctor B Cat)
    {a b : B} {f g : a ⟶ b} (η : f ⟶ g) (X : ↑(F.obj a)) :
    (F.map₂ η).app X ≫ (F.map₂ (𝟙 g)).app X = (F.map₂ η).app X :=
  testThm_app F η X

end CategoryTheory.ToAppTest
```
