# Complete source: GRWTSK.Algebra.Finset.Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c7b8e9c33dd9825313afd3944dc41588f928101` · SHA-256 `84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Pointwise actions on sets in a ring

This file proves properties of pointwise actions on sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/

open scoped Pointwise

variable {R G : Type*}

namespace Finset
variable [Ring R] [AddCommGroup G] [Module R G] [DecidableEq G] {s : Finset R} {t : Finset G}
  {a : R}

@[simp] lemma neg_smul_finset : -a • t = -(a • t) := by
  simp only [← image_smul, ← image_neg_eq_neg, image_image, neg_smul, Function.comp_def]

@[simp] protected lemma neg_smul [DecidableEq R] : -s • t = -(s • t) := by
  simp_rw [← image_neg_eq_neg]
  exact image₂_image_left_comm neg_smul

end Finset
```
