# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelIndex.Variant98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `009633563e9bcc5a5b066de2da926395200ad08a` · SHA-256 `98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public section

namespace Aesop

structure LevelIndex where
  toNat : Nat
  deriving Inhabited, BEq, Hashable, DecidableEq, Ord

instance : LT LevelIndex where
  lt i j := i.toNat < j.toNat

instance : DecidableRel (α := LevelIndex) (· < ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat < j.toNat)

instance : LE LevelIndex where
  le i j := i.toNat ≤ j.toNat

instance : DecidableRel (α := LevelIndex) (· ≤ ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat ≤ j.toNat)

instance : ToString LevelIndex where
  toString i := toString i.toNat

end Aesop
```
