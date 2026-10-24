# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variant3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7ae579e09e2b6505b796368ed9b3cd8c4596d3d` · SHA-256 `3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
module

public import Mathlib.Algebra.Order.Group.OrderIso
public import Mathlib.Order.ConditionallyCompleteLattice.Indexed

/-!
# Distributivity of group operations over supremum/infimum
-/

public section

open Set

variable {ι G : Type*} [Group G] [ConditionallyCompleteLattice G] [Nonempty ι] {f : ι → G}

section Right
variable [MulRightMono G]

@[to_additive]
lemma ciSup_mul (hf : BddAbove (range f)) (a : G) : (⨆ i, f i) * a = ⨆ i, f i * a :=
  (OrderIso.mulRight a).map_ciSup hf

@[to_additive]
lemma ciSup_div (hf : BddAbove (range f)) (a : G) : (⨆ i, f i) / a = ⨆ i, f i / a := by
  simp only [div_eq_mul_inv, ciSup_mul hf]

@[to_additive]
lemma ciInf_mul (hf : BddBelow (range f)) (a : G) : (⨅ i, f i) * a = ⨅ i, f i * a :=
  (OrderIso.mulRight a).map_ciInf hf

@[to_additive]
lemma ciInf_div (hf : BddBelow (range f)) (a : G) : (⨅ i, f i) / a = ⨅ i, f i / a := by
  simp only [div_eq_mul_inv, ciInf_mul hf]

end Right

section Left
variable [MulLeftMono G]

@[to_additive]
lemma mul_ciSup (hf : BddAbove (range f)) (a : G) : (a * ⨆ i, f i) = ⨆ i, a * f i :=
  (OrderIso.mulLeft a).map_ciSup hf

@[to_additive]
lemma mul_ciInf (hf : BddBelow (range f)) (a : G) : (a * ⨅ i, f i) = ⨅ i, a * f i :=
  (OrderIso.mulLeft a).map_ciInf hf

end Left
```
