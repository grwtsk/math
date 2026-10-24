# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b67f80b810707563623896c33a620fe0b68195ed` · SHA-256 `8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Endomorphism

/-!
# The center of a category

Given a category `C`, we introduce an abbreviation `CatCenter C` for
the center of the category `C`, which is `End (𝟭 C)`, the
type of endomorphisms of the identity functor of `C`.

## References
* https://ncatlab.org/nlab/show/center+of+a+category

-/
universe v u

namespace CategoryTheory

open Category

variable (C : Type u) [Category.{v} C]

/-- The center of a category `C` is the type `End (𝟭 C)` of the endomorphisms
of the identify functor of `C`. -/
abbrev CatCenter := End (𝟭 C)

namespace CatCenter

variable {C}

@[ext]
lemma ext (x y : CatCenter C) (h : ∀ (X : C), x.app X = y.app X) : x = y :=
  NatTrans.ext (funext h)

@[reassoc]
lemma mul_app' (x y : CatCenter C) (X : C) : (x * y).app X = y.app X ≫ x.app X := rfl

@[reassoc]
lemma mul_app (x y : CatCenter C) (X : C) : (x * y).app X = x.app X ≫ y.app X := by
  rw [mul_app']
  exact x.naturality (y.app X)

instance : IsMulCommutative (CatCenter C) where
  is_comm := ⟨fun x y ↦ by
    ext X
    rw [mul_app' x y, mul_app y x]⟩

end CatCenter

end CategoryTheory
```
