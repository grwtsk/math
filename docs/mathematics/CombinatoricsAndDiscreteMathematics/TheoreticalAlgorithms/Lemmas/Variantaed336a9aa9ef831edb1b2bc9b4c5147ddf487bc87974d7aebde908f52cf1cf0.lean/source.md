# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eb5d83e4427118c39910a14598a40e7cc70970d` · SHA-256 `aed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Chris Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Bailey
-/
import Mathlib.Data.Nat.Notation
import Mathlib.Data.String.Defs
import Mathlib.Tactic.Basic
import Batteries.Tactic.Alias

/-!
# Miscellaneous lemmas about strings
-/

namespace String

lemma congr_append : ∀ (a b : String), a ++ b = String.mk (a.data ++ b.data)
  | ⟨_⟩, ⟨_⟩ => rfl

@[simp] lemma length_replicate (n : ℕ) (c : Char) : (replicate n c).length = n := by
  simp only [String.length, String.replicate, List.length_replicate]

lemma length_eq_list_length (l : List Char) : (String.mk l).length = l.length := by
  simp only [String.length]

/-- The length of the String returned by `String.leftpad n a c` is equal
  to the larger of `n` and `s.length` -/
@[simp] lemma length_leftpad (n : ℕ) (c : Char) :
    ∀ (s : String), (leftpad n c s).length = max n s.length
  | ⟨s⟩ => by simp only [leftpad, String.length, List.length_leftpad]

@[deprecated (since := "2025-02-24")]
alias leftpad_length := length_leftpad

lemma leftpad_prefix (n : ℕ) (c : Char) : ∀ s, IsPrefix (replicate (n - length s) c) (leftpad n c s)
  | ⟨l⟩ => by simp only [IsPrefix, replicate, leftpad, String.length, List.leftpad_prefix]

lemma leftpad_suffix (n : ℕ) (c : Char) : ∀ s, IsSuffix s (leftpad n c s)
  | ⟨l⟩ => by simp only [IsSuffix, replicate, leftpad, String.length, List.leftpad_suffix]

end String
```
