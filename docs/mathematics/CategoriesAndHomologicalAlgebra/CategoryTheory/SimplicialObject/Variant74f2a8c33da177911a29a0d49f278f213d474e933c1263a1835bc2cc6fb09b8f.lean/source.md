# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialObject.Variant74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dde40d7ea1e5e9db5fabee28adc2134e27c8625` · SHA-256 `74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialCategory.Basic
import Mathlib.CategoryTheory.Functor.FunctorHom

/-!
# The category of simplicial objects is simplicial

In `CategoryTheory.Functor.FunctorHom`, it was shown that a category of functors
`C ⥤ D` is enriched over a suitable category `C ⥤ Type _` of functors to types.

In this file, we deduce that `SimplicialObject D` is enriched over `SSet.{v} D`
(when `D : Type u` and `[Category.{v} D]`) and that `SimplicialObject D`
is actually a simplicial category. In particular, the category of simplicial
sets is a simplicial category.

-/

universe v u

namespace CategoryTheory

variable {D : Type u} [Category.{v} D]

namespace SimplicialObject

noncomputable instance : EnrichedCategory SSet.{v} (SimplicialObject D)  :=
  inferInstanceAs (EnrichedCategory (_ ⥤ Type v) (_ ⥤ D))

noncomputable instance : SimplicialCategory (SimplicialObject D) where
  homEquiv := Functor.natTransEquiv.symm

noncomputable instance : SimplicialCategory SSet.{v} :=
  inferInstanceAs (SimplicialCategory (SimplicialObject (Type v)))

end SimplicialObject

end CategoryTheory
```
