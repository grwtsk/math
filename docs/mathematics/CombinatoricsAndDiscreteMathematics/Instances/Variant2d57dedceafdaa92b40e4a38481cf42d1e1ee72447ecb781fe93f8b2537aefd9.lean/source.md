# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Instances.Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b98d0ef997718a98b7b8e94b0215774420d6eaa` · SHA-256 `2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Control.EquivFunctor
import Mathlib.Data.Fintype.OfMap

/-!
# `EquivFunctor` instances

We derive some `EquivFunctor` instances, to enable `equiv_rw` to rewrite under these functions.
-/


open Equiv

instance EquivFunctorUnique : EquivFunctor Unique where
  map e := Equiv.uniqueCongr e
  map_refl' α := by simp [eq_iff_true_of_subsingleton]
  map_trans' := by simp [eq_iff_true_of_subsingleton]

instance EquivFunctorPerm : EquivFunctor Perm where
  map e p := (e.symm.trans p).trans e
  map_refl' α := by ext; simp
  map_trans' _ _ := by ext; simp

-- There is a classical instance of `LawfulFunctor Finset` available,
-- but we provide this computable alternative separately.
instance EquivFunctorFinset : EquivFunctor Finset where
  map e s := s.map e.toEmbedding
  map_refl' α := by ext; simp
  map_trans' k h := by
    ext _ a; simp; constructor <;> intro h'
    · let ⟨a, ha₁, ha₂⟩ := h'
      rw [← ha₂]; simpa
    · exists (Equiv.symm k) ((Equiv.symm h) a)
      simp [h']

instance EquivFunctorFintype : EquivFunctor Fintype where
  map e _ := Fintype.ofBijective e e.bijective
  map_refl' α := by ext; simp [eq_iff_true_of_subsingleton]
  map_trans' := by simp [eq_iff_true_of_subsingleton]
```
