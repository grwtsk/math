# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WellFoundedTactics.Variantebaf3dbfdfa7fa5cfc3afc1e8f3cf0f0f277997c13c121fe24ab97c01face1d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e758f906e6960d1787ae85d9637e4145a734682` · SHA-256 `ebaf3dbfdfa7fa5cfc3afc1e8f3cf0f0f277997c13c121fe24ab97c01face1d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
prelude
import Mathlib.Init.Data.Nat.Lemmas

#align_import init.meta.well_founded_tactics from "leanprover-community/lean"@"855e5b74e3a52a40552e8f067169d747d48743fd"

-- Porting note: meta code used to implement well-founded recursion is not ported

theorem Nat.lt_add_of_zero_lt_left (a b : Nat) (h : 0 < b) : a < a + b :=
  show a + 0 < a + b by
    apply Nat.add_lt_add_left
    assumption
#align nat.lt_add_of_zero_lt_left Nat.lt_add_of_zero_lt_left

theorem Nat.zero_lt_one_add (a : Nat) : 0 < 1 + a :=
  suffices 0 < a + 1 by
    simp [Nat.add_comm]
    assumption
  Nat.zero_lt_succ _
#align nat.zero_lt_one_add Nat.zero_lt_one_add

#align nat.lt_add_right Nat.lt_add_right

theorem Nat.lt_add_left (a b c : Nat) : a < b → a < c + b := fun h =>
  lt_of_lt_of_le h (Nat.le_add_left _ _)
#align nat.lt_add_left Nat.lt_add_left

/-
The remainder of the original Lean 3 source module is subsumed by Lean 4 core.
-/
```
