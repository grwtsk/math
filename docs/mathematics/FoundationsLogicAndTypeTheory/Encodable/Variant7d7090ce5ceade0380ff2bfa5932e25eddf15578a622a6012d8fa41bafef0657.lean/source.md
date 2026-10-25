# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4779cf7a54c823462be59e071468b2dc40e81a0f` · SHA-256 `7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Encodable.Basic
import Mathlib.Data.Rat.Init

/-! # The rationals are `Encodable`.

As a consequence we also get the instance `Countable ℚ`.

This is kept separate from `Data.Rat.Defs` in order to minimize imports.
-/


namespace Rat

instance : Encodable ℚ :=
  Encodable.ofEquiv (Σn : ℤ, { d : ℕ // 0 < d ∧ n.natAbs.Coprime d })
    ⟨fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_of_ne_zero c, d⟩,
      fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_iff_ne_zero.mp c, d⟩,
      fun _ => rfl, fun ⟨_, _, _, _⟩ => rfl⟩

end Rat
```
