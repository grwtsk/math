# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variante42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9847d52903c07695ed314ddd9fd3d56fbfe7f254` · SHA-256 `e42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.Types
import Mathlib.Data.Set.Basic

/-!
# The functor from `Set X` to types

Given `X : Type u`, we define the functor `Set.functorToTypes : Set X ⥤ Type u`
which sends `A : Set X` to its underlying type.

-/

universe u

open CategoryTheory

namespace Set

/-- Given `X : Type u`, this the functor `Set X ⥤ Type u` which sends `A`
to its underlying type. -/
@[simps obj map]
def functorToTypes {X : Type u} : Set X ⥤ Type u where
  obj S := S
  map {S T} f := fun ⟨x, hx⟩ ↦ ⟨x, leOfHom f hx⟩

end Set
```
