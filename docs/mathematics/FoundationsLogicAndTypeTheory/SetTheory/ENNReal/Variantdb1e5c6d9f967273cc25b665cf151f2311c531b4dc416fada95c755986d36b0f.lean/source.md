# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ENNReal.Variantdb1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `251926b5019d369c46fde8321a1e61cd25bd7f2e` · SHA-256 `db1e5c6d9f967273cc25b665cf151f2311c531b4dc416fada95c755986d36b0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Real.ENatENNReal
public import Mathlib.SetTheory.Cardinal.NatCard

/-!
# Lemmas about `Nat.card` and `ENNReal`
-/

public section

namespace ENNReal

@[simp] lemma toReal_enatCard (α : Type*) : ENNReal.toReal (ENat.card α) = Nat.card α := by
  cases finite_or_infinite α <;> simp [ENat.card_eq_coe_natCard]

end ENNReal
```
