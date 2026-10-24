# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Variante1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eb40461c6e561ee005e9a9678293f5cc29569e1` · SHA-256 `e1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/

import Mathlib.Data.Fintype.Perm
import Mathlib.SetTheory.Cardinal.Finite

/-! # Properties of `Equiv.Perm` on `Finite` types

-/

assert_not_exists Field

namespace Nat

theorem card_perm {α : Type*} [Finite α] : Nat.card (Equiv.Perm α) = (Nat.card α)! := by
  classical
  have := Fintype.ofFinite α
  rw [card_eq_fintype_card, card_eq_fintype_card, Fintype.card_perm]

end Nat
```
