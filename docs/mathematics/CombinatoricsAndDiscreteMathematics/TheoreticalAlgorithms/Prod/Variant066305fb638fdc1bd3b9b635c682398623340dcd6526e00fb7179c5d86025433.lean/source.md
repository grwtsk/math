# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variant066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6131e6c83f2fbb730b5327c0cbec5027cfd40102` · SHA-256 `066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import Init.Data.List.Lemmas
import Init.Data.Int.Lemmas
public import Init.Data.Int.Pow
public import Init.Data.List.Basic

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

@[simp]
theorem prod_replicate_int {n : Nat} {a : Int} : (replicate n a).prod = a ^ n := by
  induction n <;> simp_all [replicate_succ, Int.pow_succ, Int.mul_comm]

theorem prod_append_int {l₁ l₂ : List Int} : (l₁ ++ l₂).prod = l₁.prod * l₂.prod := by
  simp [prod_append]

theorem prod_reverse_int (xs : List Int) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

end List
```
