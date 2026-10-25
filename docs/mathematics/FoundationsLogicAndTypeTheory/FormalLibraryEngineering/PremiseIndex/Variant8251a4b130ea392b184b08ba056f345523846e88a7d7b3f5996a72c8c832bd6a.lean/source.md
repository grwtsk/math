# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PremiseIndex.Variant8251a4b130ea392b184b08ba056f345523846e88a7d7b3f5996a72c8c832bd6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `787bf068db06ba0244ed4eaaa7df1a7139aa5dd0` · SHA-256 `8251a4b130ea392b184b08ba056f345523846e88a7d7b3f5996a72c8c832bd6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public section

namespace Aesop

structure PremiseIndex where
  toNat : Nat
  deriving Inhabited, BEq, Hashable, DecidableEq, Ord

instance : LT PremiseIndex where
  lt i j := i.toNat < j.toNat

instance : DecidableRel (α := PremiseIndex) (· < ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat < j.toNat)

instance : LE PremiseIndex where
  le i j := i.toNat ≤ j.toNat

instance : DecidableRel (α := PremiseIndex) (· ≤ ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat ≤ j.toNat)

instance : ToString PremiseIndex where
  toString i := toString i.toNat

end Aesop
```
