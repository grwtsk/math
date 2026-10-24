# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c003140e47a35af1f7b1ebf6b031d6a89aad6daa` · SHA-256 `82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.Monoidal.Basic

open CategoryTheory Mathlib.Tactic BicategoryLike
open MonoidalCategory

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]
variable {X Y Z W : C} (f : X ⟶ Y) (g : Y ⟶ Z)

example (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) :
    f ⊗≫ g = f ≫ (α_ _ _ _).inv ≫ g := by
  monoidal

example (f : Z ⟶ W) : (X ⊗ Y) ◁ f = (α_ _ _ _).hom ≫ X ◁ Y ◁ f ≫ (α_ _ _ _).inv := by
  monoidal

example : f ≫ g = f ≫ g := by
  monoidal

example : (f ⊗ g) ▷ X = (α_ _ _ _).hom ≫ (f ⊗ g ▷ X) ≫ (α_ _ _ _).inv := by
  monoidal

example {V₁ V₂ V₃ : C} (R : ∀ V₁ V₂ : C, V₁ ⊗ V₂ ⟶ V₂ ⊗ V₁) :
    R V₁ V₂ ▷ V₃ ⊗≫ V₂ ◁ R V₁ V₃ =
      R V₁ V₂ ▷ V₃ ≫ (α_ _ _ _).hom ⊗≫ 𝟙 _ ≫ V₂ ◁ R V₁ V₃ := by
  monoidal
```
