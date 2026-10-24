# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `deb092646fa53031e42073e032f350d8da413483` · SHA-256 `a7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Moisés Herradón Cueto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moisés Herradón Cueto
-/
import Mathlib.CategoryTheory.FinCategory.Basic
import Mathlib.CategoryTheory.WithTerminal.Basic
import Mathlib.Data.Fintype.Option

/-!

# `WithTerminal C` and `WithInitial C` are finite whenever `C` is

If `C` has finitely many objects, then so do `WithTerminal C` and `WithInitial C`,
and likewise if `C` has finitely many morphisms as well.

-/


universe v u

variable (C : Type u) [CategoryTheory.Category.{v} C]

namespace CategoryTheory.WithTerminal

/-- The equivalence between `Option C` and `WithTerminal C` (they are both the
type `C` plus an extra object `none` or `star`). -/
def optionEquiv : Option C ≃ WithTerminal C where
  toFun
  | some a => of a
  | none => star
  invFun
  | of a => some a
  | star => none
  left_inv a := by cases a <;> simp
  right_inv a := by cases a <;> simp

instance instFintype [Fintype C] : Fintype (WithTerminal C) :=
  .ofEquiv (Option C) <| optionEquiv C

instance instFinCategory [SmallCategory C] [FinCategory C] :
    FinCategory (WithTerminal C) where
  fintypeObj := inferInstance
  fintypeHom
  | star, star
  | of _, star => (inferInstance : Fintype PUnit)
  | star, of _ => (inferInstance : Fintype PEmpty)
  | of a, of b => (inferInstance : Fintype (a ⟶ b))

end CategoryTheory.WithTerminal

namespace CategoryTheory.WithInitial

/-- The equivalence between `Option C` and `WithInitial C` (they are both the
type `C` plus an extra object `none` or `star`). -/
def optionEquiv : Option C ≃ WithInitial C where
  toFun
  | some a => of a
  | none => star
  invFun
  | of a => some a
  | star => none
  left_inv a := by cases a <;> simp
  right_inv a := by cases a <;> simp

instance instFintype [Fintype C] : Fintype (WithInitial C) :=
  .ofEquiv (Option C) <| optionEquiv C

instance instFinCategory [SmallCategory C] [FinCategory C] :
    FinCategory (WithInitial C) where
  fintypeObj := inferInstance
  fintypeHom
  | star, star
  | star, of _ => (inferInstance : Fintype PUnit)
  | of _, star => (inferInstance : Fintype PEmpty)
  | of a, of b => (inferInstance : Fintype (a ⟶ b))

end CategoryTheory.WithInitial
```
