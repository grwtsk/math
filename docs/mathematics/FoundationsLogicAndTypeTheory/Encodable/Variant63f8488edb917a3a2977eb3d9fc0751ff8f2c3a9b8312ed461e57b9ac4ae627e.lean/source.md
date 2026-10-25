# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c280b75f92afca17c7953bb32ffc90fe72b4c48` · SHA-256 `63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Encodable.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Rat.Init

#align_import data.rat.encodable from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-! # The rationals are `Encodable`.

As a consequence we also get the instance `Countable ℚ`.

This is kept separate from `Data.Rat.Defs` in order to minimize imports.
-/


namespace Rat

instance : Encodable ℚ :=
  Encodable.ofEquiv (Σn : ℤ, { d : ℕ // 0 < d ∧ n.natAbs.coprime d })
    ⟨fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_of_ne_zero c, d⟩,
      fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_iff_ne_zero.mp c, d⟩,
      fun _ => rfl, fun ⟨_, _, _, _⟩ => rfl⟩

end Rat
```
