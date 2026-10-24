# Complete source: GRWTSK.Algebra.Set.Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c39b54e6f0c6c80800ff000ca946c5c353c41c15` · SHA-256 `7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Floris van Doorn
-/
module

public import Mathlib.Algebra.Ring.Defs
public import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations of sets in a ring

This file proves properties of pointwise operations of sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/

@[expose] public section

assert_not_exists MulAction IsOrderedMonoid Field

open scoped Pointwise

variable {α : Type*}

namespace Set

/-- `Set α` has distributive negation if `α` has. -/
@[instance_reducible]
protected noncomputable def hasDistribNeg [Mul α] [HasDistribNeg α] : HasDistribNeg (Set α) where
  __ := Set.involutiveNeg
  neg_mul _ _ := by simp_rw [← image_neg_eq_neg]; exact image2_image_left_comm neg_mul
  mul_neg _ _ := by simp_rw [← image_neg_eq_neg]; exact image_image2_right_comm mul_neg

scoped[Pointwise] attribute [instance] Set.hasDistribNeg

section Distrib
variable [Distrib α] (s t u : Set α)

/-!
Note that `Set α` is not a `Distrib` because `s * t + s * u` has cross terms that `s * (t + u)`
lacks.
-/

lemma mul_add_subset : s * (t + u) ⊆ s * t + s * u := image2_distrib_subset_left mul_add
lemma add_mul_subset : (s + t) * u ⊆ s * u + t * u := image2_distrib_subset_right add_mul

end Distrib
end Set
```
