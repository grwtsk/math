# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.12.Variant350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1d98c0ee0d04a34987d107b683250a1684b8896` · SHA-256 `350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop

set_option aesop.check.all true

attribute [aesop unsafe 50% constructors] List.Mem

@[aesop safe [constructors, cases (cases_patterns := [All _ [], All _ (_ :: _)])]]
inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more (x xs) : P x → All P xs → All P (x :: xs)

theorem weaken (P Q : α → Prop) (wk : ∀ x, P x → Q x) (xs : List α) (h : All P xs)
  : All Q xs := by
  induction h <;> aesop

theorem in_self (xs : List α) : All (· ∈ xs) xs := by
  induction xs
  case nil =>
    aesop
  case cons x xs ih =>
    have wk : ∀ a, a ∈ xs → a ∈ x :: xs := by aesop
    have ih' : All (fun a => a ∈ x :: xs) xs := by aesop (add unsafe 1% weaken)
    aesop
```
