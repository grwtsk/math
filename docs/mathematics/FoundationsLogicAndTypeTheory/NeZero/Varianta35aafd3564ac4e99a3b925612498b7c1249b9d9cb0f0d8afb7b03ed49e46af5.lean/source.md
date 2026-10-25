# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.NeZero.Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3f00eb8b882090c66c16521c81d1941b2b8734e` · SHA-256 `a35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
import Mathlib.Data.Nat.Cast.Defs

/-!
# Lemmas about nonzero elements of an `AddMonoidWithOne`
-/

open Nat

namespace NeZero

theorem one_le {n : ℕ} [NeZero n] : 1 ≤ n := by have := NeZero.ne n; omega

lemma natCast_ne (n : ℕ) (R) [AddMonoidWithOne R] [h : NeZero (n : R)] : (n : R) ≠ 0 := h.out

lemma of_neZero_natCast (R) [AddMonoidWithOne R] {n : ℕ} [h : NeZero (n : R)] : NeZero n :=
  ⟨by rintro rfl; exact h.out Nat.cast_zero⟩

lemma pos_of_neZero_natCast (R) [AddMonoidWithOne R] {n : ℕ} [NeZero (n : R)] : 0 < n :=
  Nat.pos_of_ne_zero (of_neZero_natCast R).out

end NeZero
```
