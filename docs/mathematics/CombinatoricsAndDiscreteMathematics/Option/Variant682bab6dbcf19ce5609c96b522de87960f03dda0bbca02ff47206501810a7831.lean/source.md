# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da90a5e1ab7006777ef8b9d6236f4aa28383911d` · SHA-256 `682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Data.Finset.Option

#align_import algebra.big_operators.option from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-!
# Lemmas about products and sums over finite sets in `Option α`

In this file we prove formulas for products and sums over `Finset.insertNone s` and
`Finset.eraseNone s`.
-/

open BigOperators

open Function

namespace Finset

variable {α M : Type*} [CommMonoid M]

@[to_additive (attr := simp)]
theorem prod_insertNone (f : Option α → M) (s : Finset α) :
    ∏ x in insertNone s, f x = f none * ∏ x in s, f (some x) := by simp [insertNone]
#align finset.prod_insert_none Finset.prod_insertNone
#align finset.sum_insert_none Finset.sum_insertNone

@[to_additive]
theorem prod_eraseNone (f : α → M) (s : Finset (Option α)) :
    ∏ x in eraseNone s, f x = ∏ x in s, Option.elim' 1 f x := by
  classical calc
      ∏ x in eraseNone s, f x = ∏ x in (eraseNone s).map Embedding.some, Option.elim' 1 f x :=
        (prod_map (eraseNone s) Embedding.some <| Option.elim' 1 f).symm
      _ = ∏ x in s.erase none, Option.elim' 1 f x := by rw [map_some_eraseNone]
      _ = ∏ x in s, Option.elim' 1 f x := prod_erase _ rfl
#align finset.prod_erase_none Finset.prod_eraseNone
#align finset.sum_erase_none Finset.sum_eraseNone

end Finset
```
