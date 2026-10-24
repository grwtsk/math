# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Vandermonde.Variantff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17284ebf60a7fe1f4a549484188d20a3c3e992d8` · SHA-256 `ff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Data.Polynomial.Coeff
import Mathlib.Data.Nat.Choose.Basic

#align_import data.nat.choose.vandermonde from "leanprover-community/mathlib"@"d6814c584384ddf2825ff038e868451a7c956f31"

/-!

# Vandermonde's identity

In this file we prove Vandermonde's identity (`Nat.add_choose_eq`):
`(m + n).choose k = ∑ (ij : ℕ × ℕ) in antidiagonal k, m.choose ij.1 * n.choose ij.2`

We follow the algebraic proof from
https://en.wikipedia.org/wiki/Vandermonde%27s_identity#Algebraic_proof .

-/


open BigOperators

open Polynomial Finset.Nat

/-- Vandermonde's identity -/
theorem Nat.add_choose_eq (m n k : ℕ) :
    (m + n).choose k = ∑ ij : ℕ × ℕ in antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
  calc
    (m + n).choose k = ((X + 1) ^ (m + n)).coeff k := by rw [coeff_X_add_one_pow, Nat.cast_id]
    _ = ((X + 1) ^ m * (X + 1) ^ n).coeff k := by rw [pow_add]
    _ = ∑ ij : ℕ × ℕ in antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
      rw [coeff_mul, Finset.sum_congr rfl]
      simp only [coeff_X_add_one_pow, Nat.cast_id, eq_self_iff_true, imp_true_iff]
#align nat.add_choose_eq Nat.add_choose_eq
```
