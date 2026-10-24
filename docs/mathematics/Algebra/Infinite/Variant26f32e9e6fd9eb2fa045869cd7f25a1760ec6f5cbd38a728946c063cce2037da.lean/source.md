# Complete source: GRWTSK.Algebra.Infinite.Variant26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb2f94fb4e8d095ae765af6b611befd8bab04112` · SHA-256 `26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.CharZero.Defs
public import Mathlib.Data.Fintype.EquivFin

/-! # A characteristic-zero semiring is infinite -/

public section

variable (M : Type*) [AddMonoidWithOne M] [CharZero M]

-- see Note [lower instance priority]
instance (priority := 100) CharZero.infinite : Infinite M :=
  Infinite.of_injective Nat.cast Nat.cast_injective
```
