# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantd3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e409e970a7dc4a9fa065b54eb6db34241feab23` · SHA-256 `d3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
public import Init.Data.String.Basic
import Init.Data.Char.Lemmas
import Init.Data.String.Lemmas.StringOrder

public section

/-!
# Instances for strings.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace String

/--
Lexicographic comparison of strings
-/
@[extern "lean_string_compare"]
def compare (s₁ s₂ : @& String) : Ordering :=
  compareOfLessAndEq s₁ s₂

instance : Ord String where
  compare := String.compare

instance : TransOrd String :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    String.le_antisymm String.le_trans String.le_total String.not_le

instance : LawfulEqOrd String where
  eq_of_compare h := compareOfLessAndEq_eq_eq String.le_refl String.not_le |>.mp h

end String

namespace Char

instance : TransOrd Char :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Char.le_antisymm Char.le_trans Char.le_total Char.not_le

instance : LawfulEqOrd Char where
  eq_of_compare h := compareOfLessAndEq_eq_eq Char.le_refl Char.not_le |>.mp h

end Char
```
