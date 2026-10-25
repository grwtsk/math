# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variant614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a801c49ed59a219ed7d79a1264f7992ec502e849` · SHA-256 `614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kim Morrison, Eric Wieser, Junyan Xu, Andrew Yang
-/
import Mathlib.LinearAlgebra.Dimension.Basic

/-!
# Dimension of trivial modules
-/

variable (R M : Type*) [Semiring R] [AddCommMonoid M] [Module R M]

section

variable [Nontrivial R]

/-- See `rank_subsingleton` that assumes `Subsingleton R` instead. -/
@[simp, nontriviality] theorem rank_subsingleton' [Subsingleton M] : Module.rank R M = 0 := by
  rw [Module.rank, ← bot_eq_zero, eq_bot_iff]
  exact ciSup_le fun s ↦ by simp [(linearIndependent_subsingleton_iff _).mp s.2]

theorem rank_punit : Module.rank R PUnit = 0 := rank_subsingleton' _ _

theorem rank_bot : Module.rank R (⊥ : Submodule R M) = 0 := rank_subsingleton' _ _

end

@[nontriviality, simp]
theorem rank_subsingleton [Subsingleton R] : Module.rank R M = 1 := by
  haveI := Module.subsingleton R M
  have : Nonempty { s : Set M // LinearIndepOn R id s} := ⟨⟨∅, linearIndepOn_empty _ _⟩⟩
  rw [Module.rank_def, ciSup_eq_of_forall_le_of_forall_lt_exists_gt]
  · rintro ⟨s, hs⟩
    rw [Cardinal.mk_le_one_iff_set_subsingleton]
    apply Set.subsingleton_of_subsingleton
  intro w hw
  exact ⟨⟨{0}, LinearIndepOn.of_subsingleton⟩, hw.trans_eq (Cardinal.mk_singleton _).symm⟩
```
