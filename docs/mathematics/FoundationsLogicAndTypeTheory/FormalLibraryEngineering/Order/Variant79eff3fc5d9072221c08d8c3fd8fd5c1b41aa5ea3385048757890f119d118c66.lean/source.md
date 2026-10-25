# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c40fda165ba18ba8f490db24ea16cdc89ba7ed7b` · SHA-256 `79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Char.Basic
import Init.Data.Char.Lemmas
public import Init.Data.Order.Classes
import Init.Data.Order.Factories
import Init.PropLemmas

open Std

namespace Char

public instance instIsLinearOrder : IsLinearOrder Char := by
  apply IsLinearOrder.of_le
  case le_antisymm => constructor; apply Char.le_antisymm
  case le_trans => constructor; apply Char.le_trans
  case le_total => constructor; apply Char.le_total

public instance : LawfulOrderLT Char where
  lt_iff a b := by
    simp [← Char.not_le, Decidable.imp_iff_not_or, Std.Total.total]

end Char
```
