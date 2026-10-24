# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cf7b182567d3c1756bbedcbcebe4dbcbe41872b` · SHA-256 `5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Types.Basic

/-!
# The hom functor

The hom functor, sending `(X, Y)` to the type `X ⟶ Y`.
-/

@[expose] public section


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
  map f := ↾fun h => f.1.unop ≫ h ≫ f.2

end CategoryTheory.Functor
```
