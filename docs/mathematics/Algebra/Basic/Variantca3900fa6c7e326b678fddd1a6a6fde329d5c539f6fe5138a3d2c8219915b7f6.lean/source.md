# Complete source: GRWTSK.Algebra.Basic.Variantca3900fa6c7e326b678fddd1a6a6fde329d5c539f6fe5138a3d2c8219915b7f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cba711267992af0b47f0b7bef195c7bc35601e7b` · SHA-256 `ca3900fa6c7e326b678fddd1a6a6fde329d5c539f6fe5138a3d2c8219915b7f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Embedding
public import Mathlib.Algebra.Order.Interval.Set.Monoid
public import Mathlib.Order.Interval.Finset.Defs

/-!
# Algebraic properties of finset intervals

This file provides results about the interaction of algebra with `Finset.Ixx`.
-/

public section

open Function

variable {α : Type*}

namespace Finset
variable [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α]
  [ExistsAddOfLE α] [LocallyFiniteOrder α]

@[simp] lemma map_add_left_Icc (a b c : α) :
    (Icc a b).map (addLeftEmbedding c) = Icc (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Icc, coe_Icc]
  exact Set.image_const_add_Icc _ _ _

@[simp] lemma map_add_right_Icc (a b c : α) :
    (Icc a b).map (addRightEmbedding c) = Icc (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Icc, coe_Icc]
  exact Set.image_add_const_Icc _ _ _

@[simp] lemma map_add_left_Ico (a b c : α) :
    (Ico a b).map (addLeftEmbedding c) = Ico (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ico, coe_Ico]
  exact Set.image_const_add_Ico _ _ _

@[simp] lemma map_add_right_Ico (a b c : α) :
    (Ico a b).map (addRightEmbedding c) = Ico (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ico, coe_Ico]
  exact Set.image_add_const_Ico _ _ _

@[simp] lemma map_add_left_Ioc (a b c : α) :
    (Ioc a b).map (addLeftEmbedding c) = Ioc (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ioc, coe_Ioc]
  exact Set.image_const_add_Ioc _ _ _

@[simp] lemma map_add_right_Ioc (a b c : α) :
    (Ioc a b).map (addRightEmbedding c) = Ioc (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ioc, coe_Ioc]
  exact Set.image_add_const_Ioc _ _ _

@[simp] lemma map_add_left_Ioo (a b c : α) :
    (Ioo a b).map (addLeftEmbedding c) = Ioo (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ioo, coe_Ioo]
  exact Set.image_const_add_Ioo _ _ _

@[simp] lemma map_add_right_Ioo (a b c : α) :
    (Ioo a b).map (addRightEmbedding c) = Ioo (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ioo, coe_Ioo]
  exact Set.image_add_const_Ioo _ _ _

variable [DecidableEq α]

@[simp] lemma image_add_left_Icc (a b c : α) : (Icc a b).image (c + ·) = Icc (c + a) (c + b) := by
  rw [← map_add_left_Icc, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ico (a b c : α) : (Ico a b).image (c + ·) = Ico (c + a) (c + b) := by
  rw [← map_add_left_Ico, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ioc (a b c : α) : (Ioc a b).image (c + ·) = Ioc (c + a) (c + b) := by
  rw [← map_add_left_Ioc, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ioo (a b c : α) : (Ioo a b).image (c + ·) = Ioo (c + a) (c + b) := by
  rw [← map_add_left_Ioo, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Icc (a b c : α) : (Icc a b).image (· + c) = Icc (a + c) (b + c) := by
  rw [← map_add_right_Icc, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ico (a b c : α) : (Ico a b).image (· + c) = Ico (a + c) (b + c) := by
  rw [← map_add_right_Ico, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ioc (a b c : α) : (Ioc a b).image (· + c) = Ioc (a + c) (b + c) := by
  rw [← map_add_right_Ioc, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ioo (a b c : α) : (Ioo a b).image (· + c) = Ioo (a + c) (b + c) := by
  rw [← map_add_right_Ioo, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

end Finset
```
