/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerBlocks
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportFirst
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportSecond
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportThird
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportFourth

/-!
# The retained support of the conductor-three checker

The midpoint table is an input with the literal signed formula as its
pointwise equality. The checked grid blocks identify the full retained set
as the disjoint union of the thirteen closed index intervals. Every omitted
cell participates in the sign checks.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

open CheckerRounding (scale roundedPrimeMidpoint)

private theorem allSupportBlocks (b : Fin 128) : supportBlockCheck b := by
  by_cases hFirst : b.val < 32
  · have h := supportBlocksFirst ⟨b.val, hFirst⟩
    simpa only [Nat.zero_add, Fin.eta] using h
  by_cases hSecond : b.val < 64
  · let i : Fin 32 := ⟨b.val - 32, by omega⟩
    have h := supportBlocksSecond i
    have he : (⟨32 + i.val, by omega⟩ : Fin 128) = b := Fin.ext (by dsimp [i]; omega)
    exact he ▸ h
  by_cases hThird : b.val < 96
  · let i : Fin 32 := ⟨b.val - 64, by omega⟩
    have h := supportBlocksThird i
    have he : (⟨64 + i.val, by omega⟩ : Fin 128) = b := Fin.ext (by dsimp [i]; omega)
    exact he ▸ h
  · let i : Fin 32 := ⟨b.val - 96, by omega⟩
    have h := supportBlocksFourth i
    have he : (⟨96 + i.val, by omega⟩ : Fin 128) = b := Fin.ext (by dsimp [i]; omega)
    exact he ▸ h

theorem literalRawDeficit_pos_iff (i : Fin 32768) :
    0 < literalRawDeficit i ↔ inRetainedRuns i = true := by
  let b : Fin 128 := ⟨i.val / 256, by omega⟩
  let r : Fin 256 := ⟨i.val % 256, Nat.mod_lt _ (by decide)⟩
  have hi : supportIndex b r = i := Fin.ext (by dsimp [supportIndex, b, r]; omega)
  have h := allSupportBlocks b r
  rw [hi] at h
  rw [← h, decide_eq_true_eq]

/-- Cells in one of the retained closed intervals of global grid indices. -/
def retainedRunCells (r : ℕ × ℕ) : Finset (Fin 32768) :=
  Finset.univ.filter fun i => r.1 ≤ i.val ∧ i.val ≤ r.2

/-- The explicit support is a replacement for the checker filter at the
literal midpoint table. -/
theorem retained_eq_retainedRuns (m : Fin 32768 → ℤ)
    (hm : ∀ i, m i = -133 * scale / 1000 +
      CheckerGamma.gammaLower (2 * (i.val : ℤ) + 1) 256 -
        scale / 10 ^ (6 : ℕ) + roundedPrimeMidpoint i) :
    retained (rawDeficit m) = retainedRuns.toFinset.biUnion retainedRunCells := by
  ext i
  rw [mem_retained_iff, ← literalRawDeficit_eq m hm, literalRawDeficit_pos_iff]
  simp [inRetainedRuns, retainedRunCells, List.any_eq_true]

theorem retainedRunCells_pairwiseDisjoint :
    Set.PairwiseDisjoint (↑retainedRuns.toFinset) retainedRunCells := by
  have h : ∀ p ∈ retainedRuns.toFinset, ∀ q ∈ retainedRuns.toFinset,
      p ≠ q → p.2 < q.1 ∨ q.2 < p.1 := by decide +kernel
  intro p hp q hq hpq
  apply Finset.disjoint_left.mpr
  intro i hi hj
  have hi' := (Finset.mem_filter.mp hi).2
  have hj' := (Finset.mem_filter.mp hj).2
  rcases h p hp q hq hpq with hlt | hlt <;> omega

theorem le_last_of_mem_retainedRuns {i : Fin 32768}
    (hi : i ∈ retainedRuns.toFinset.biUnion retainedRunCells) : i.val ≤ 20275 := by
  have h : ∀ p ∈ retainedRuns.toFinset, p.2 ≤ 20275 := by decide +kernel
  obtain ⟨p, hp, hip⟩ := Finset.mem_biUnion.mp hi
  exact ((Finset.mem_filter.mp hip).2).2.trans (h p hp)

/-- The thirteen checked runs give the exact integer block sum. -/
theorem total_eq_retainedRunBlocks (m : Fin 32768 → ℤ)
    (hm : ∀ i, m i = -133 * scale / 1000 +
      CheckerGamma.gammaLower (2 * (i.val : ℤ) + 1) 256 -
        scale / 10 ^ (6 : ℕ) + roundedPrimeMidpoint i) :
    total m = ∑ a ∈ retainedRuns.toFinset, ∑ b ∈ retainedRuns.toFinset,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells a) (retainedRunCells b) := by
  have hcover := (retained_eq_retainedRuns m hm).symm
  refine total_eq_sum_blocks m _ _ hcover retainedRunCells_pairwiseDisjoint _ _ 20275 ?_ ?_ ?_
  · intro i hi
    apply le_last_of_mem_retainedRuns
    rwa [hcover]
  · intro i _
    unfold price
    rw [literalRawDeficit_eq m hm]
  · intro j _
    rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
