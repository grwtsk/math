# Complete source: GRWTSK.Topology.GeneralTopology.Exponential.Variant929b307e7015cd25ebd63ea89a601996ca53bf5e62413290072bedb5775712b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a071739713bb483d023e0f2c00ad490e3006268` · SHA-256 `929b307e7015cd25ebd63ea89a601996ca53bf5e62413290072bedb5775712b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Henry Swanson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henry Swanson, Patrick Massot
-/
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Combinatorics.Derangements.Finite
import Mathlib.Order.Filter.Basic

#align_import combinatorics.derangements.exponential from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Derangement exponential series

This file proves that the probability of a permutation on n elements being a derangement is 1/e.
The specific lemma is `numDerangements_tendsto_inv_e`.
-/


open Filter

open scoped BigOperators

open scoped Topology

theorem numDerangements_tendsto_inv_e :
    Tendsto (fun n => (numDerangements n : ℝ) / n.factorial) atTop (𝓝 (Real.exp (-1))) := by
  -- we show that d(n)/n! is the partial sum of exp(-1), but offset by 1.
  -- this isn't entirely obvious, since we have to ensure that asc_factorial and
  -- factorial interact in the right way, e.g., that k ≤ n always
  let s : ℕ → ℝ := fun n => ∑ k in Finset.range n, (-1 : ℝ) ^ k / k.factorial
  suffices ∀ n : ℕ, (numDerangements n : ℝ) / n.factorial = s (n + 1) by
    simp_rw [this]
    -- shift the function by 1, and then use the fact that the partial sums
    -- converge to the infinite sum
    rw [tendsto_add_atTop_iff_nat
      (f := fun n => ∑ k in Finset.range n, (-1 : ℝ) ^ k / k.factorial) 1]
    apply HasSum.tendsto_sum_nat
    -- there's no specific lemma for ℝ that ∑ x^k/k! sums to exp(x), but it's
    -- true in more general fields, so use that lemma
    rw [Real.exp_eq_exp_ℝ]
    exact expSeries_div_hasSum_exp ℝ (-1 : ℝ)
  intro n
  rw [← Int.cast_ofNat, numDerangements_sum]
  push_cast
  rw [Finset.sum_div]
  -- get down to individual terms
  refine' Finset.sum_congr (refl _) _
  intro k hk
  have h_le : k ≤ n := Finset.mem_range_succ_iff.mp hk
  rw [Nat.ascFactorial_eq_div, add_tsub_cancel_of_le h_le]
  push_cast [Nat.factorial_dvd_factorial h_le]
  field_simp [Nat.factorial_ne_zero]
  ring
#align num_derangements_tendsto_inv_e numDerangements_tendsto_inv_e
```
