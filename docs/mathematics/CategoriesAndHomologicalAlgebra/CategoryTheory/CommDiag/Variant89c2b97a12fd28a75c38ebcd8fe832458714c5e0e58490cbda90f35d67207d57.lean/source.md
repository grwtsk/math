# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommDiag.Variant89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd982289e9421c01e21df7b4ecae22673129e599` · SHA-256 `89c2b97a12fd28a75c38ebcd8fe832458714c5e0e58490cbda90f35d67207d57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Widget.CommDiag
import ProofWidgets.Component.Panel.SelectionPanel
import ProofWidgets.Component.Panel.GoalTypePanel

/-! # Example use of commutative diagram widgets -/

universe u
namespace CategoryTheory
open ProofWidgets

/-- Local instance to make examples work. -/
local instance : Category (Type u) where
  Hom α β := α → β
  id _ := id
  comp f g := g ∘ f
  id_comp _ := rfl
  comp_id _ := rfl
  assoc _ _ _ := rfl

example {f g : Nat ⟶ Bool}: f = g → (f ≫ 𝟙 Bool) = (g ≫ 𝟙 Bool) := by
  with_panel_widgets [GoalTypePanel]
    intro h
    exact h

example {fButActuallyTheNameIsReallyLong g : Nat ⟶ Bool}: fButActuallyTheNameIsReallyLong = g →
    fButActuallyTheNameIsReallyLong = (g ≫ 𝟙 Bool) := by
  with_panel_widgets [GoalTypePanel]
    intro h
    conv =>
      rhs
      enter [1]
      rw [← h]
    rfl

-- from Sina Hazratpour
example {X Y Z : Type} {f g : X ⟶ Y} {k : Y ⟶ Y} {f' : Y ⟶ Z} {i : X ⟶ Z}
    (h' : g ≫ f' = i) :
    (f ≫ k) = g → ((f ≫ k) ≫ f') = (g ≫ 𝟙 Y ≫ f') := by
  with_panel_widgets [GoalTypePanel]
    intro h
    rw [
      h,
      ← Category.assoc g (𝟙 Y) f',
      h',
      Category.comp_id g, h'
    ]

example {X Y Z : Type} {f i : X ⟶ Y}
    {g j : Y ⟶ Z} {h : X ⟶ Z} :
    h = f ≫ g →
    i ≫ j = h →
    f ≫ g = i ≫ j := by
  with_panel_widgets [SelectionPanel]
    intro h₁ h₂
    rw [← h₁, h₂]

end CategoryTheory
```
