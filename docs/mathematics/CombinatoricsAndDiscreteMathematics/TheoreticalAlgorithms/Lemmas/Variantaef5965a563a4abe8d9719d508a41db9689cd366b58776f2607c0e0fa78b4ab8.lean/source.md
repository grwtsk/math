# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantaef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01e0bdd75beaa6ad99f43a143ffc744af9c98d08` · SHA-256 `aef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Chris Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Bailey
-/
import Mathlib.Data.List.Basic
import Mathlib.Data.String.Defs

namespace String

lemma congr_append : ∀ (a b : String), a ++ b = String.mk (a.data ++ b.data)
  | ⟨_⟩, ⟨_⟩ => rfl

@[simp] lemma length_append : ∀ (as bs : String), (as ++ bs).length = as.length + bs.length
  | ⟨as⟩, ⟨bs⟩ => by
    rw [congr_append]
    simp only [String.length]
    exact List.length_append as bs

@[simp] lemma length_replicate (n : ℕ) (c : Char) : (replicate n c).length = n := by
  simp only [String.length, String.replicate, List.length_replicate]

lemma length_eq_list_length (l : List Char) : (String.mk l).length = l.length := by
  simp only [String.length]

/-- The length of the String returned by `String.leftpad n a c` is equal
  to the larger of `n` and `s.length` -/
@[simp] lemma leftpad_length (n : ℕ) (c : Char) :
    ∀ (s : String), (leftpad n c s).length = max n s.length
  | ⟨s⟩ => by simp only [leftpad, String.length, List.leftpad_length]

lemma leftpad_prefix (n : ℕ) (c : Char) : ∀ s, isPrefix (replicate (n - length s) c) (leftpad n c s)
  | ⟨l⟩ => by simp only [isPrefix, replicate, leftpad, String.length, List.leftpad_prefix]

lemma leftpad_suffix (n : ℕ) (c : Char) : ∀ s, isSuffix s (leftpad n c s)
  | ⟨l⟩ => by simp only [isSuffix, replicate, leftpad, String.length, List.leftpad_suffix]

end String
```
