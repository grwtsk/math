# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variante47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82aae7e3adf6e6346f28acf63b4e524aa582e53` · SHA-256 `e47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
import all Init.Data.Array.Basic
public import Init.Data.Array.Basic
public import Init.NotationExtra
import Init.Data.Array.Lemmas
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.TakeDrop

public section

/-!
These lemmas are used in the internals of HashMap.
They should find a new home and/or be reformulated.
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

theorem exists_of_set {i : Nat} {a' : α} {l : List α} (h : i < l.length) :
    ∃ l₁ l₂, l = l₁ ++ l[i] :: l₂ ∧ l₁.length = i ∧ l.set i a' = l₁ ++ a' :: l₂ := by
  refine ⟨l.take i, l.drop (i + 1), ⟨by simp, ⟨length_take_of_le (Nat.le_of_lt h), ?_⟩⟩⟩
  simp [set_eq_take_append_cons_drop, h]

end List

namespace Array

theorem exists_of_uset {xs : Array α} {i d} (h) :
    ∃ l₁ l₂, xs.toList = l₁ ++ xs[i] :: l₂ ∧ List.length l₁ = i.toNat ∧
      (xs.uset i d h).toList = l₁ ++ d :: l₂ := by
  simpa only [ugetElem_eq_getElem, ← getElem_toList, uset, toList_set] using
    List.exists_of_set _

end Array
```
