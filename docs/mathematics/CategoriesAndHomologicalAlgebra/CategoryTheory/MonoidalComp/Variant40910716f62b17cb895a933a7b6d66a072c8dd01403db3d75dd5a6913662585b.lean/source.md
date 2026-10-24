# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalComp.Variant40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `779ffc87375220680477cc153cb9573b8001c1d3` · SHA-256 `40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.MonoidalComp

universe v u

noncomputable section

namespace CategoryTheory

open scoped MonoidalCategory

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

example (X : C) : X ≅ (X ⊗ (𝟙_ C ⊗ 𝟙_ C)) := monoidalIso _ _

example (X1 X2 X3 X4 X5 X6 X7 X8 X9 : C) :
    (𝟙_ C ⊗ (X1 ⊗ X2 ⊗ ((X3 ⊗ X4) ⊗ X5)) ⊗ X6 ⊗ (X7 ⊗ X8 ⊗ X9)) ≅
    (X1 ⊗ (X2 ⊗ X3) ⊗ X4 ⊗ (X5 ⊗ (𝟙_ C ⊗ X6) ⊗ X7) ⊗ X8 ⊗ X9) :=
  monoidalIso _ _

example {U V W X Y : C} (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) : U ⟶ Y := f ⊗≫ g

-- To automatically insert unitors/associators at the beginning or end,
-- you can use `f ⊗≫ 𝟙 _`
example {W X Y Z : C} (f : W ⟶ (X ⊗ Y) ⊗ Z) : W ⟶ X ⊗ (Y ⊗ Z) := f ⊗≫ 𝟙 _

example {U V W X Y : C} (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) :
    f ⊗≫ g = f ≫ (α_ _ _ _).inv ≫ g := by
  simp [MonoidalCategory.tensorHom_def, monoidalComp]

end CategoryTheory
```
