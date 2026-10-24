# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variant5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `639cb684ae6a259b69014413a269e0fcad7e2d77` · SHA-256 `5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Closed.Types
import Mathlib.CategoryTheory.Sites.CartesianClosed
import Mathlib.CategoryTheory.Sites.Equivalence
import Mathlib.Condensed.Light.Basic
/-!

# Light condensed sets form a cartesian closed category
-/

universe u

noncomputable section

open CategoryTheory

variable {C : Type u} [SmallCategory C]

instance : CartesianMonoidalCategory (LightCondSet.{u}) :=
  inferInstanceAs (CartesianMonoidalCategory (Sheaf _ _))

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
instance : CartesianClosed (LightCondSet.{u}) := inferInstanceAs (CartesianClosed (Sheaf _ _))
```
