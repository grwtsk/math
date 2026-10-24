# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b649619328e65778614f1e5c0ce6036a4a304c3` · SHA-256 `0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.Slice

open CategoryTheory

variable (C : Type) [Category C] (X Y Z W U : C)
variable (f₁ f₂ : X ⟶ Y) (g g₁ g₂ : Y ⟶ Z) (h : Z ⟶ W) (l : W ⟶ U)

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  conv =>
    rhs
    slice 2 3
  show f₁ ≫ g₁ ≫ h ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 1 2
    rw [hyp]
  show ((f₂ ≫ g₂) ≫ h) ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 2 3

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  slice_lhs 1 2 => { rw [hyp] }; slice_rhs 1 2 => skip

example (h₁ : f₁ = f₂) : f₁ ≫ g ≫ h ≫ l = ((f₂ ≫ g) ≫ h) ≫ l := by
  slice_lhs 1 1 => rw [h₁]

example (h₁ : f₁ = f₂) : ((f₂ ≫ g) ≫ h) ≫ l = f₁ ≫ g ≫ h ≫ l := by
  slice_rhs 1 1 => rw [h₁]
```
