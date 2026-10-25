# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Notation.Variant5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be4a3da696f59cad36a9de351b08a138520b4b35` · SHA-256 `5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Yury Kudryashov
-/

import Mathlib.Data.Nat.Notation

/-! # Definition and notation for positive natural numbers -/

/-- `ℕ+` is the type of positive natural numbers. It is defined as a subtype,
  and the VM representation of `ℕ+` is the same as `ℕ` because the proof
  is not stored. -/
def PNat := { n : ℕ // 0 < n } deriving DecidableEq

@[inherit_doc]
notation "ℕ+" => PNat

/-- The underlying natural number -/
@[coe]
def PNat.val : ℕ+ → ℕ := Subtype.val

instance coePNatNat : Coe ℕ+ ℕ :=
  ⟨PNat.val⟩

instance : Repr ℕ+ :=
  ⟨fun n n' => reprPrec n.1 n'⟩
```
