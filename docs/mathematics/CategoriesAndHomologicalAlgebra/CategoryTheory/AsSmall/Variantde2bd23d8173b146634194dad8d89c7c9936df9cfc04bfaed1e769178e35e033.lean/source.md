# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmall.Variantde2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f65cd41c8bb6d3e59074db97d6312a00ec434c2d` · SHA-256 `de2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Category.ULift

/-!
# Functorially embedding `Cat` into the category of small categories

There is a canonical functor `asSmallFunctor` between the category of categories of any size and
any larger category of small categories.

## Future Work

Show that `asSmallFunctor` is faithful.
-/

universe w v u

namespace CategoryTheory

namespace Cat

/-- Assigning to each category `C` the small category `AsSmall C` induces a functor `Cat ⥤ Cat`. -/
@[simps]
def asSmallFunctor : Cat.{v, u} ⥤ Cat.{max w v u, max w v u} where
  obj C := .of <| AsSmall C
  map F := AsSmall.down ⋙ F ⋙ AsSmall.up

end Cat

end CategoryTheory
```
