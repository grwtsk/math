# Complete source: GRWTSK.Algebra.Sym.Variant2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a8f0751e8f6a28c50687ac37563d53b073c95e1` · SHA-256 `2cd9ba2933a27806a0afd593a4bfd11842014254001e15aa0cdd0b893f9c0ed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Finset.Sym
import Mathlib.Data.Sym.Sym2.Order
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Lemmas on `Finset.sum` and `Finset.prod` involving `Finset.sym2` or `Finset.sym`.
-/

namespace Finset

open Multiset

theorem sum_sym2_filter_not_isDiag {ι α} [LinearOrder ι] [AddCommMonoid α]
    (s : Finset ι) (p : Sym2 ι → α) :
    ∑ i ∈ s.sym2 with ¬ i.IsDiag, p i = ∑ i ∈ s.offDiag with i.1 < i.2, p s(i.1, i.2) := by
  rw [Finset.offDiag_filter_lt_eq_filter_le]
  conv_rhs => rw [← Finset.sum_subtype_eq_sum_filter]
  refine (Finset.sum_equiv Sym2.sortEquiv.symm ?_ ?_).symm
  all_goals aesop

theorem sum_count_of_mem_sym {α} [DecidableEq α] {m : ℕ} {k : Sym α m} {s : Finset α}
    (hk : k ∈ s.sym m) : (∑ i ∈ s, count i k) = m := by
  simp_rw [← k.prop, ← toFinset_sum_count_eq, eq_comm]
  refine sum_subset_zero_on_sdiff (fun _ _ ↦ ?_) ?_ (fun _ _ ↦ rfl)
  all_goals aesop

end Finset
```
