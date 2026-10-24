# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Bounds.Variant45e06e70aba5284faf091ed18a01cbf65135df0d511f3a7de5dbedc9aa68069c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df3226adff744bb1d765c75900e8a1fc2d624cee` · SHA-256 `45e06e70aba5284faf091ed18a01cbf65135df0d511f3a7de5dbedc9aa68069c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
module

public import Mathlib.Analysis.Normed.Field.Basic
public import Mathlib.NumberTheory.DirichletCharacter.Basic
public import Mathlib.Data.Nat.Totient
public import Mathlib.Data.Sym.Sym2
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Tactic.NormNum.GCD
public import Mathlib.Tactic.Positivity

/-!
# Bounds for values of Dirichlet characters

We consider Dirichlet characters `χ` with values in a normed field `F`.

We show that `‖χ a‖ = 1` if `a` is a unit and `‖χ a‖ ≤ 1` in general.
-/

public section

variable {F : Type*} [NormedField F] {n : ℕ} (χ : DirichletCharacter F n)

namespace DirichletCharacter

/-- The value at a unit of a Dirichlet character with target a normed field has norm `1`. -/
@[simp] lemma unit_norm_eq_one (a : (ZMod n)ˣ) : ‖χ a‖ = 1 := by
  refine (pow_eq_one_iff_of_nonneg (norm_nonneg _) (Nat.card_pos (α := (ZMod n)ˣ)).ne').mp ?_
  rw [← norm_pow, ← map_pow, ← Units.val_pow_eq_pow_val, pow_card_eq_one', Units.val_one, map_one,
    norm_one]

/-- The values of a Dirichlet character with target a normed field have norm bounded by `1`. -/
lemma norm_le_one (a : ZMod n) : ‖χ a‖ ≤ 1 := by
  by_cases h : IsUnit a
  · exact (χ.unit_norm_eq_one h.unit).le
  · rw [χ.map_nonunit h, norm_zero]
    exact zero_le_one


end DirichletCharacter
```
