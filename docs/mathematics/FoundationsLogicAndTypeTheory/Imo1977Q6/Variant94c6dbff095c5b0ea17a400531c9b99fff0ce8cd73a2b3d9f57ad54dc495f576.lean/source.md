# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Imo1977Q6.Variant94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a787ee8de7a6932aeb1c0e6df42ebe4360a4b69` · SHA-256 `94c6dbff095c5b0ea17a400531c9b99fff0ce8cd73a2b3d9f57ad54dc495f576`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
import Mathlib.Data.PNat.Basic

/-!
# IMO 1977 Q6

Suppose `f : ℕ+ → ℕ+` satisfies `f(f(n)) < f(n + 1)` for all `n`.
Prove that `f(n) = n` for all `n`.

We first prove the problem statement for `f : ℕ → ℕ`
then we use it to prove the statement for positive naturals.
-/


namespace Imo1977Q6

theorem imo1977_q6_nat (f : ℕ → ℕ) (h : ∀ n, f (f n) < f (n + 1)) : ∀ n, f n = n := by
  have h' : ∀ k n : ℕ, k ≤ n → k ≤ f n := by
    intro k
    induction' k with k h_ind
    · intros; exact Nat.zero_le _
    · intro n hk
      apply Nat.succ_le_of_lt
      calc
        k ≤ f (f (n - 1)) := h_ind _ (h_ind (n - 1) (le_tsub_of_add_le_right hk))
        _ < f n := tsub_add_cancel_of_le (le_trans (Nat.succ_le_succ (Nat.zero_le _)) hk) ▸ h _
  have hf : ∀ n, n ≤ f n := fun n => h' n n rfl.le
  have hf_mono : StrictMono f := strictMono_nat_of_lt_succ fun _ => lt_of_le_of_lt (hf _) (h _)
  intro
  exact Nat.eq_of_le_of_lt_succ (hf _) (hf_mono.lt_iff_lt.mp (h _))

end Imo1977Q6

open Imo1977Q6

theorem imo1977_q6 (f : ℕ+ → ℕ+) (h : ∀ n, f (f n) < f (n + 1)) : ∀ n, f n = n := by
  intro n
  have := by
    refine imo1977_q6_nat (fun m => if 0 < m then f m.toPNat' else 0) ?_ n
    intro x; cases x
    · simp
    · simpa using h _
  simpa
```
