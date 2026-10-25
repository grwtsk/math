# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlotIndex.Variantbbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4c25ca83bd5273738df036871c46fbe4aeb901f` · SHA-256 `bbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public section

namespace Aesop

structure SlotIndex where
  toNat : Nat
  deriving Inhabited, BEq, Hashable, DecidableEq, Ord

instance : LT SlotIndex where
  lt i j := i.toNat < j.toNat

instance : DecidableRel (α := SlotIndex) (· < ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat < j.toNat)

instance : LE SlotIndex where
  le i j := i.toNat ≤ j.toNat

instance : DecidableRel (α := SlotIndex) (· ≤ ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat ≤ j.toNat)

instance : HAdd SlotIndex Nat SlotIndex where
  hAdd i j := ⟨i.toNat + j⟩

instance : HSub SlotIndex Nat SlotIndex where
  hSub i j := ⟨i.toNat - j⟩

instance : ToString SlotIndex where
  toString i := toString i.toNat

end Aesop
```
