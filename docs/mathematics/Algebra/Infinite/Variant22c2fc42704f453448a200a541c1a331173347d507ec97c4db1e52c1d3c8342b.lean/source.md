# Complete source: GRWTSK.Algebra.Infinite.Variant22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a76c6548a4f088569e3af5afc2439ecc1681388` · SHA-256 `22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Data.Fintype.EquivFin

/-! # A characteristic-zero semiring is infinite -/


open Set

variable (M : Type*) [AddMonoidWithOne M] [CharZero M]

-- see Note [lower instance priority]
instance (priority := 100) CharZero.infinite : Infinite M :=
  Infinite.of_injective Nat.cast Nat.cast_injective
```
