# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `225924cf02b075677ba16527a0657561b7bb998a` · SHA-256 `6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Kim Morrison
-/
import Mathlib.CategoryTheory.Products.Basic
import Mathlib.CategoryTheory.Types

/-!
The hom functor, sending `(X, Y)` to the type `X ⟶ Y`.
-/


universe v u

open Opposite

open CategoryTheory

namespace CategoryTheory.Functor

variable (C : Type u) [Category.{v} C]

/-- `Functor.hom` is the hom-pairing, sending `(X, Y)` to `X ⟶ Y`, contravariant in `X` and
covariant in `Y`. -/
@[simps]
def hom : Cᵒᵖ × C ⥤ Type v where
  obj p := unop p.1 ⟶ p.2
  map f h := f.1.unop ≫ h ≫ f.2

end CategoryTheory.Functor
```
