# Complete source: GRWTSK.Algebra.LinearAlgebra.CharP.Variant67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9404e225bf7a41ede0708576e2d2f5190f14c572` · SHA-256 `67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Algebra.CharP.Defs
import Mathlib.Data.Matrix.Diagonal

/-!
# Matrices in prime characteristic

In this file we prove that matrices over a ring of characteristic `p`
with nonempty index type have the same characteristic.
-/


open Matrix

variable {n : Type*} {R : Type*} [AddMonoidWithOne R]

instance Matrix.charP [DecidableEq n] [Nonempty n] (p : ℕ) [CharP R p] :
    CharP (Matrix n n R) p where
  cast_eq_zero_iff k := by simp_rw [← diagonal_natCast, ← diagonal_zero, diagonal_eq_diagonal_iff,
    CharP.cast_eq_zero_iff R p k, forall_const]
```
