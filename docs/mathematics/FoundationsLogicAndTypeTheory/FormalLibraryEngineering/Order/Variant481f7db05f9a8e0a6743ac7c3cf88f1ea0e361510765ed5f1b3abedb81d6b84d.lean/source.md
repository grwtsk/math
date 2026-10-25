# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35a2ae9728510141c908b46ba927c3e5f79055a7` · SHA-256 `481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Nat.Basic
import Init.Data.Nat.MinMax
public import Init.Data.Order.Classes
import Init.Data.Order.Factories
import Init.NotationExtra

open Std

namespace Nat

public instance instIsLinearOrder : IsLinearOrder Nat := by
  apply IsLinearOrder.of_le
  · constructor; apply Nat.le_antisymm
  · constructor; apply Nat.le_trans
  · constructor; apply Nat.le_total

public instance : LawfulOrderLT Nat := by
  apply LawfulOrderLT.of_le
  simp [Nat.lt_iff_le_and_ne]

public instance : LawfulOrderMin Nat := by
  apply LawfulOrderMin.of_le_min_iff
  · apply Nat.le_min
  · intro a b
    simp only [Nat.min_def]
    split <;> simp

public instance : LawfulOrderMax Nat := by
  apply LawfulOrderMax.of_max_le_iff
  · apply Nat.max_le
  · intro a b
    simp only [Nat.max_def]
    split <;> simp

end Nat
```
