# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2b5d1a38ddafa8e0c2674694fd65f1547f3575a` · SHA-256 `17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.Basic
import Mathlib.CategoryTheory.SingleObj

/-!
# `SingleObj α` is preadditive when `α` is a ring.

-/


namespace CategoryTheory

variable {α : Type*} [Ring α]

instance : Preadditive (SingleObj α) where
  add_comp _ _ _ f f' g := mul_add g f f'
  comp_add _ _ _ f g g' := add_mul g g' f

-- TODO define `PreAddCat` (with additive functors as morphisms), and `Ring ⥤ PreAddCat`.
end CategoryTheory
```
