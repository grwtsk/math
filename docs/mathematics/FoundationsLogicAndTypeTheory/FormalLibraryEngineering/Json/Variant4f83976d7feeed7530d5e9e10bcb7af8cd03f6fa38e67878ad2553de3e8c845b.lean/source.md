# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variant4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5ab7ec13247046aaa680f66ba7d5d26c01ff55c` · SHA-256 `4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.Init
import Lean.Data.Json.FromToJson

/-!
# Json serialization typeclass for `PUnit` & `Fin n` & `Subtype p`
-/

universe u


namespace Lean

deriving instance FromJson, ToJson for PUnit

instance {n : Nat} : FromJson (Fin n) where
  fromJson? j := do
    let i : Nat ← fromJson? j
    if h : i < n then
      return ⟨i, h⟩
    else
      throw s!"must be less than {n}"

instance {n : Nat} : ToJson (Fin n) where
  toJson i := toJson i.val

instance {α : Type u} [FromJson α] (p : α → Prop) [DecidablePred p] : FromJson (Subtype p) where
  fromJson? j := do
    let i : α ← fromJson? j
    if h : p i then
      return ⟨i, h⟩
    else
      throw "condition does not hold"

instance {α : Type u} [ToJson α] (p : α → Prop) : ToJson (Subtype p) where
  toJson x := toJson x.val

end Lean
```
