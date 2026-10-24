# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantc53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5104921194d1e6cad56f7993ffde3dd39a55136e` · SHA-256 `c53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet

#align_import algebraic_topology.nerve from "leanprover-community/mathlib"@"841aef25c9d7a5a5d63a3dcf7bc43386b2c206d6"

/-!

# The nerve of a category

This file provides the definition of the nerve of a category `C`,
which is a simplicial set `nerve C` (see [goerss-jardine-2009], Example I.1.4).

## References
* [Paul G. Goerss, John F. Jardine, *Simplical Homotopy Theory*][goerss-jardine-2009]

-/


open CategoryTheory.Category

universe v u

namespace CategoryTheory

/-- The nerve of a category -/
@[simps]
def nerve (C : Type u) [Category.{v} C] : SSet.{max u v} where
  obj Δ := SimplexCategory.toCat.obj Δ.unop ⥤ C
  map f x := SimplexCategory.toCat.map f.unop ⋙ x
#align category_theory.nerve CategoryTheory.nerve

instance {C : Type*} [Category C] {Δ : SimplexCategoryᵒᵖ} : Category ((nerve C).obj Δ) :=
  (inferInstance : Category (SimplexCategory.toCat.obj Δ.unop ⥤ C))

/-- The nerve of a category, as a functor `Cat ⥤ SSet` -/
@[simps]
def nerveFunctor : Cat ⥤ SSet where
  obj C := nerve C
  map F := { app := fun Δ x => x ⋙ F }
#align category_theory.nerve_functor CategoryTheory.nerveFunctor

end CategoryTheory
```
