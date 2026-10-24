# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantf52f692246609d99171717b844944cea8042bc67080ff3851555df15a8c07167

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa1aac0666638ac78cfd457dd434cc2bb523a0b2` · SHA-256 `f52f692246609d99171717b844944cea8042bc67080ff3851555df15a8c07167`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Pointwise.Finset.Basic
public import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
public import Mathlib.Algebra.Module.Torsion.Free
public import Mathlib.Algebra.Ring.Action.Pointwise.Set

/-!
# Pointwise actions on sets in a ring

This file proves properties of pointwise actions on sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/

public section

open Module
open scoped Pointwise

variable {R G M : Type*}

namespace Finset
section Semiring
variable [Semiring R] [IsDomain R] [AddCommMonoid M] [DecidableEq M] [Module R M]
  [IsTorsionFree R M] {s : Finset R} {t : Finset M} {r : R}

lemma zero_mem_smul_finset_iff (hr : r ≠ 0) : 0 ∈ r • t ↔ 0 ∈ t := by
  rw [← mem_coe, coe_smul_finset, Set.zero_mem_smul_set_iff hr, mem_coe]

lemma zero_mem_smul_iff : (0 : M) ∈ s • t ↔ 0 ∈ s ∧ t.Nonempty ∨ 0 ∈ t ∧ s.Nonempty := by
  rw [← mem_coe, coe_smul, Set.zero_mem_smul_iff]; rfl

end Semiring

variable [Ring R] [AddCommGroup G] [Module R G] [DecidableEq G] {s : Finset R} {t : Finset G}
  {a : R}

@[simp] lemma neg_smul_finset : -a • t = -(a • t) := by
  simp only [← image_smul, ← image_neg_eq_neg, image_image, neg_smul, Function.comp_def]

@[simp] protected lemma neg_smul [DecidableEq R] : -s • t = -(s • t) := by
  simp_rw [← image_neg_eq_neg]
  exact image₂_image_left_comm neg_smul

end Finset
```
