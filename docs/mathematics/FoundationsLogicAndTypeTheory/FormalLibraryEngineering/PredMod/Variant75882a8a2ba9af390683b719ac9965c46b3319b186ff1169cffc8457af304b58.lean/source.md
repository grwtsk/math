# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PredMod.Variant75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6213f338667d3a96b78884161dd924fc50f202c1` · SHA-256 `75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/

/-! # Efficient computation of `(a - 1) % N`

`predModKR` computes `(a + (N - 1)) % N` using `Nat.rec` so the kernel can reduce it
via `eagerReduce`, avoiding the overhead of general modular arithmetic.
-/

/-- Kernel-reducible predecessor mod: computes `(a + (N - 1)) % N` for `a ≤ N`. -/
def predModKR (a N : Nat) : Nat :=
  a.rec N.pred fun a _ ↦ a

theorem predModKR_eq {a N : Nat} (hn : N ≠ 0) (ha : a ≤ N) :
    predModKR a N = (a + (N - 1)) % N := by
  delta predModKR
  cases a with
  | zero => rw [Nat.zero_add, Nat.mod_eq_of_lt (by grind)]; rfl
  | succ a =>
    rw [Nat.add_assoc, ← Nat.succ_eq_one_add, ← Nat.pred_eq_sub_one, Nat.succ_pred hn,
      Nat.add_mod_right, Nat.mod_eq_of_lt (by grind), ← Nat.succ_eq_add_one]
```
