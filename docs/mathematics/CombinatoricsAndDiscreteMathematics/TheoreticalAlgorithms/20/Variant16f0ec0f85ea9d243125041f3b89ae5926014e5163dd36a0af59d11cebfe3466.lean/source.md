# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.20.Variant16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb1e32ed0c31793db22a5ca558c99737f016397e` · SHA-256 `16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop

set_option aesop.check.all true

attribute [aesop safe cases (cases_patterns := [List.Mem _ []])] List.Mem
attribute [aesop unsafe 50% constructors] List.Mem
attribute [aesop unsafe 50% cases (cases_patterns := [List.Mem _ (_ :: _)])] List.Mem

@[aesop safe [constructors, cases (cases_patterns := [All _ [], All _ (_ :: _)])]]
inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more {x xs} : P x → All P xs → All P (x :: xs)

@[simp]
theorem All.cons (P : α → Prop) (x : α) (xs : List α)
  : All P (x :: xs) ↔ (P x ∧ All P xs) := by
  aesop

theorem mem (P : α → Prop) (xs : List α)
  : All P xs ↔ ∀ a : α, a ∈ xs → P a := by
  induction xs
  case nil => aesop
  case cons x xs ih => aesop (config := { useSimpAll := false })

theorem mem' (P : α → Prop) (xs : List α)
  : All P xs ↔ ∀ a : α, a ∈ xs → P a := by
  induction xs <;> aesop
```
