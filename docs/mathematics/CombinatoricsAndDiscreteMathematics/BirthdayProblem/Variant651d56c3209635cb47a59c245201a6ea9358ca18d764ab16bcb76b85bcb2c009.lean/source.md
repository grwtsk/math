# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BirthdayProblem.Variant651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f06c110429e9cad00f574bdb26cf08454ac46af9` · SHA-256 `651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
module

public import Mathlib.Data.Fintype.CardEmbedding
public import Mathlib.Probability.UniformOn
public import Mathlib.Probability.Notation

/-!
# Birthday Problem

This file proves Theorem 93 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

As opposed to the standard probabilistic statement, we instead state the birthday problem
in terms of injective functions. The general result about `Fintype.card (α ↪ β)` which this proof
uses is `Fintype.card_embedding_eq`.
-/

@[expose] public section

namespace Theorems100

local notation "|" x "|" => Finset.card x
local notation "‖" x "‖" => Fintype.card x

/-- **Birthday Problem**: set cardinality interpretation. -/
theorem birthday :
    2 * ‖Fin 23 ↪ Fin 365‖ < ‖Fin 23 → Fin 365‖ ∧ 2 * ‖Fin 22 ↪ Fin 365‖ > ‖Fin 22 → Fin 365‖ := by
  simp only [Fintype.card_fin, Fintype.card_embedding_eq, Fintype.card_fun]
  decide

open MeasureTheory ProbabilityTheory

variable {n m : ℕ}

/- We then endow the space with a canonical measure, which is called ℙ.
We define this to be the conditional counting measure. -/
noncomputable instance measureSpace : MeasureSpace (Fin n → Fin m) :=
  ⟨uniformOn Set.univ⟩

theorem Fin.measure_apply {s : Set <| Fin n → Fin m} :
    ℙ s = |s.toFinite.toFinset| / ‖Fin n → Fin m‖ := by
  rw [volume, measureSpace, uniformOn_univ, Measure.count_apply_finite]

/-- **Birthday Problem**: first probabilistic interpretation. -/
theorem birthday_measure :
    ℙ ({f | f.Injective} : Set (Fin 23 → Fin 365)) < 1 / 2 := by
  rw [Fin.measure_apply]
  generalize_proofs hfin
  have : |hfin.toFinset| = 42200819302092359872395663074908957253749760700776448000000 := by
    trans ‖Fin 23 ↪ Fin 365‖
    · rw [← Fintype.card_coe]
      apply Fintype.card_congr
      rw [Set.Finite.coeSort_toFinset, Set.coe_ofPred]
      exact Equiv.subtypeInjectiveEquivEmbedding _ _
    · rw [Fintype.card_embedding_eq, Fintype.card_fin, Fintype.card_fin]
      rfl
  rw [this, ENNReal.lt_div_iff_mul_lt, mul_comm, mul_div, ENNReal.div_lt_iff]
  all_goals
    simp only [Fintype.card_pi, Fintype.card_fin, Finset.prod_const, Finset.card_univ]
    norm_num

end Theorems100
```
