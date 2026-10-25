# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NatCount.Variant9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1dd768f97867ff3e0f9dc592034d2a276deb32a` · SHA-256 `9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Vladimir Goryachev. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Goryachev
-/
module

public import Mathlib.Data.Nat.Count
public import Mathlib.Data.Set.Card

/-!
# Counting on ℕ

This file provides lemmas about the relation of `Nat.count` with cardinality functions.
-/

public section


namespace Nat
open Nat

variable {p : ℕ → Prop} [DecidablePred p] (n : ℕ)

theorem count_le_cardinal : (count p n : Cardinal) ≤ Cardinal.mk { k | p k } := by
  rw [count_eq_card_fintype, ← Cardinal.mk_fintype]
  exact Cardinal.mk_subtype_mono fun x hx ↦ hx.2

theorem count_le_setENCard : count p n ≤ Set.encard { k | p k } := by
  simp only [Set.encard, ENat.card, Set.coe_ofPred, Cardinal.natCast_le_toENat]
  exact Nat.count_le_cardinal n

theorem count_le_setNCard (h : { k | p k }.Finite) : count p n ≤ Set.ncard { k | p k } := by
  rw [Set.ncard_def, ← ENat.natCast_le_natCast, ENat.natCast_toNat (by simpa)]
  exact count_le_setENCard n

end Nat
```
