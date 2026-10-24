# Complete source: GRWTSK.Algebra.UniversalAlgebra.Factorial.Variant0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38431550012918b33bbc6ece94611d4690c35d13` · SHA-256 `0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Moritz Firsching. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Firsching
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.ZMod.Basic

/-!
# Facts about factorials in ZMod

We collect facts about factorials in context of modular arithmetic.

## Main statements

* `ZMod.cast_descFactorial`: For natural numbers `n` and `p`, where `n` is less than or equal to `p`
  the descending factorial of `(p - 1)` taken `n` times modulo `p` equals `(-1) ^ n * n!`.

## See also

For the prime case and involving `factorial` rather than `descFactorial`, see Wilson's theorem:
* Nat.prime_iff_fac_equiv_neg_one

-/

assert_not_exists TwoSidedIdeal

open Finset Nat

namespace ZMod

theorem cast_descFactorial {n p : ℕ} (h : n ≤ p) :
    (descFactorial (p - 1) n : ZMod p) = (-1) ^ n * n ! := by
  rw [descFactorial_eq_prod_range, ← prod_range_add_one_eq_factorial]
  simp only [cast_prod]
  nth_rw 2 [← card_range n]
  rw [pow_card_mul_prod]
  refine prod_congr rfl ?_
  intro x hx
  rw [← tsub_add_eq_tsub_tsub_swap,
    Nat.cast_sub <| Nat.le_trans (Nat.add_one_le_iff.mpr (List.mem_range.mp hx)) h,
    CharP.cast_eq_zero, zero_sub, cast_succ, neg_add_rev, mul_add, neg_mul, one_mul,
    mul_one, add_comm]

end ZMod
```
