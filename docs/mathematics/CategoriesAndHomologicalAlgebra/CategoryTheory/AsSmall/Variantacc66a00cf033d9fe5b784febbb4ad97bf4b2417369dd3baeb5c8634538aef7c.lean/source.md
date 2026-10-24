# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmall.Variantacc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de3de5f5c3aadc845e732ff78b1787403ce71553` · SHA-256 `acc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Category.Cat
public import Mathlib.CategoryTheory.Category.ULift

/-!
# Functorially embedding `Cat` into the category of small categories

There is a canonical functor `asSmallFunctor` between the category of categories of any size and
any larger category of small categories.

## Future Work

Show that `asSmallFunctor` is faithful.
-/

@[expose] public section

universe w v u

namespace CategoryTheory

namespace Cat

/-- Assigning to each category `C` the small category `AsSmall C` induces a functor `Cat ⥤ Cat`. -/
@[simps]
def asSmallFunctor : Cat.{v, u} ⥤ Cat.{max w v u, max w v u} where
  obj C := ↧(AsSmall C)
  map F := (AsSmall.down ⋙ F.toFunctor ⋙ AsSmall.up).toCatHom

end Cat

end CategoryTheory
```
