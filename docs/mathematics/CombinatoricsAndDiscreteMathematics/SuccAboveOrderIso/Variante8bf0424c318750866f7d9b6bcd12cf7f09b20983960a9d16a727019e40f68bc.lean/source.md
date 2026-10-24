# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SuccAboveOrderIso.Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e7776ad5c59a1128841cde5ae340077d497986` · SHA-256 `e8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Order.Fin.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.FinCases

/-!
# The order isomorphism `Fin (n + 1) ≃o {i}ᶜ`

Given `i : Fin (n + 2)`, we show that `Fin.succAboveOrderEmb` induces
an order isomorphism `Fin (n + 1) ≃o ({i}ᶜ : Finset (Fin (n + 2)))`.

-/

open Finset

/-- Given `i : Fin (n + 2)`, this is the order isomorphism
between `Fin (n + 1)` and the finite set `{i}ᶜ`. -/
noncomputable def Fin.succAboveOrderIso {n : ℕ} (i : Fin (n + 2)) :
    Fin (n + 1) ≃o ({i}ᶜ : Finset (Fin (n + 2))) where
  toEquiv :=
    Equiv.ofBijective (f := fun a ↦ ⟨Fin.succAboveOrderEmb i a, by simp⟩) (by
      constructor
      · intro a b h
        exact (Fin.succAboveOrderEmb i).injective (by simpa using h)
      · rintro ⟨j, hj⟩
        simp only [mem_compl, mem_singleton] at hj
        obtain rfl | ⟨i, rfl⟩ := Fin.eq_zero_or_eq_succ i
        · exact ⟨j.pred hj, by simp⟩
        · exact ⟨i.predAbove j, by aesop⟩)
  map_rel_iff' {a b} := by
    simp only [Equiv.ofBijective_apply, Subtype.mk_le_mk, OrderEmbedding.le_iff_le]
```
