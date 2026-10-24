# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Instances.Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01a637cd38176af4abf4cfec0019471d2367986a` · SHA-256 `e4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Data.Fintype.Basic
import Mathlib.Control.EquivFunctor

#align_import control.equiv_functor.instances from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# `EquivFunctor` instances

We derive some `EquivFunctor` instances, to enable `equiv_rw` to rewrite under these functions.
-/


open Equiv

instance EquivFunctorUnique : EquivFunctor Unique where
  map e := Equiv.uniqueCongr e
  map_refl' α := by simp
  map_trans' := by simp
#align equiv_functor_unique EquivFunctorUnique

instance EquivFunctorPerm : EquivFunctor Perm where
  map e p := (e.symm.trans p).trans e
  map_refl' α := by ext; simp
  map_trans' _ _ := by ext; simp
#align equiv_functor_perm EquivFunctorPerm

-- There is a classical instance of `LawfulFunctor Finset` available,
-- but we provide this computable alternative separately.
instance EquivFunctorFinset : EquivFunctor Finset where
  map e s := s.map e.toEmbedding
  map_refl' α := by ext; simp
  map_trans' k h := by
    ext _ a; simp; constructor <;> intro h'
    · let ⟨a, ha₁, ha₂⟩ := h'
      rw [← ha₂]; simp; apply ha₁
    · exists (Equiv.symm k) ((Equiv.symm h) a)
      simp [h']
#align equiv_functor_finset EquivFunctorFinset

instance EquivFunctorFintype : EquivFunctor Fintype where
  map e s := Fintype.ofBijective e e.bijective
  map_refl' α := by ext; simp
  map_trans' := by simp
#align equiv_functor_fintype EquivFunctorFintype
```
