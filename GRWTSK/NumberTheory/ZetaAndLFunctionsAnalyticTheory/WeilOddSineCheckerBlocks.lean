/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTriangle

/-!
# A block decomposition of the conductor-three checker numerator

Partition the positive-price cells into disjoint finite sets. The checker can
compute one block of row and column indices at a time, with diagonal weight
one, strict lower weight two, and upper weight zero. The decomposition uses
the same two signed sinc entries and the same clipped prices as `total`.
Only the retained prices and the sinc entries through twice the last retained
index plus one need to be supplied to the block computation.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def weightedCost (prices : Fin 32768 → ℕ) (sincs : ℕ → ℤ) (i j : Fin 32768) : ℕ :=
  let cost := prices i * prices j *
    ((sincs (Nat.dist i.val j.val) - sincs (i.val + j.val + 1)).natAbs + variation) ^ 2
  if j < i then 2 * cost else if j = i then cost else 0

/-- The contribution from a finite set of rows and a finite set of columns.
The weight uses the original global index order, including across blocks. -/
def triangleBlock (prices : Fin 32768 → ℕ) (sincs : ℕ → ℤ)
    (rows columns : Finset (Fin 32768)) : ℕ :=
  ∑ i ∈ rows, ∑ j ∈ columns, weightedCost prices sincs i j

theorem triangleBlock_eq_zero_of_lt (prices : Fin 32768 → ℕ) (sincs : ℕ → ℤ)
    (rows columns : Finset (Fin 32768))
    (h : ∀ i ∈ rows, ∀ j ∈ columns, i < j) :
    triangleBlock prices sincs rows columns = 0 := by
  apply Finset.sum_eq_zero
  intro i hi
  apply Finset.sum_eq_zero
  intro j hj
  have hij := h i hi j hj
  simp [weightedCost, hij.not_gt, hij.ne']

/-- A block certificate only needs to check the prices of its cells and
the two sinc entries for each pair in the original lower triangle. -/
theorem triangleBlock_congr (prices prices' : Fin 32768 → ℕ) (sincs sincs' : ℕ → ℤ)
    (rows columns : Finset (Fin 32768))
    (hprice : ∀ i ∈ rows ∪ columns, prices i = prices' i)
    (hsinc : ∀ i ∈ rows, ∀ j ∈ columns, j ≤ i →
      sincs (Nat.dist i.val j.val) = sincs' (Nat.dist i.val j.val) ∧
      sincs (i.val + j.val + 1) = sincs' (i.val + j.val + 1)) :
    triangleBlock prices sincs rows columns = triangleBlock prices' sincs' rows columns := by
  unfold triangleBlock
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  by_cases h : j ≤ i
  · obtain ⟨hdiff, hsum⟩ := hsinc i hi j hj h
    simp only [weightedCost, hprice i (Finset.mem_union_left _ hi),
      hprice j (Finset.mem_union_right _ hj), hdiff, hsum]
  · have hij := lt_of_not_ge h
    simp [weightedCost, hij.not_gt, hij.ne']

private theorem triangleBlock_retained_eq_total (midpointLower : Fin 32768 → ℤ) :
    triangleBlock (price (rawDeficit midpointLower)) sincEntry
      (retained (rawDeficit midpointLower)) (retained (rawDeficit midpointLower)) =
      total midpointLower := by
  let raw := rawDeficit midpointLower
  let cost (i j : Fin 32768) := price raw i * price raw j * pairMajor i.val j.val ^ 2
  unfold triangleBlock total triangularSum
  apply Finset.sum_congr rfl
  intro i hi
  change i ∈ retained raw at hi
  change (∑ j ∈ retained raw, (if j < i then 2 * cost i j else if j = i then cost i j else 0)) =
    cost i i + ∑ j ∈ (retained raw).filter (· < i), 2 * cost i j
  have hdiag : (∑ j ∈ retained raw, if j = i then cost i j else 0) = cost i i := by
    simp [hi]
  rw [← hdiag, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  rcases lt_trichotomy j i with h | rfl | h
  · simp [h, h.ne]
  · simp
  · simp [h.not_gt, h.ne']

/-- A disjoint cover of the retained indices gives the exact numerator as a
sum of independently evaluable blocks. The table hypotheses need only the
retained prices and the lookups bounded by `last`. -/
theorem total_eq_sum_blocks {ι : Type*} (midpointLower : Fin 32768 → ℤ)
    (blocks : Finset ι) (cells : ι → Finset (Fin 32768))
    (hcover : blocks.biUnion cells = retained (rawDeficit midpointLower))
    (hdisjoint : Set.PairwiseDisjoint (↑blocks) cells)
    (prices : Fin 32768 → ℕ) (sincs : ℕ → ℤ) (last : ℕ)
    (hlast : ∀ i ∈ retained (rawDeficit midpointLower), i.val ≤ last)
    (hprice : ∀ i ∈ retained (rawDeficit midpointLower), prices i = price (rawDeficit midpointLower) i)
    (hsinc : ∀ j < 2 * last + 2, sincs j = sincEntry j) :
    total midpointLower = ∑ a ∈ blocks, ∑ b ∈ blocks, triangleBlock prices sincs (cells a) (cells b) := by
  let kept := retained (rawDeficit midpointLower)
  have htables : triangleBlock prices sincs kept kept =
      triangleBlock (price (rawDeficit midpointLower)) sincEntry kept kept := by
    apply triangleBlock_congr
    · intro i hi
      exact hprice i (by simpa only [Finset.union_self] using hi)
    · intro i hi j hj _
      obtain ⟨hdiff, hsum⟩ := table_indices_lt (hlast i hi) (hlast j hj)
      exact ⟨hsinc _ hdiff, hsinc _ hsum⟩
  calc
    total midpointLower = triangleBlock prices sincs kept kept :=
      (htables.trans (triangleBlock_retained_eq_total midpointLower)).symm
    _ = ∑ a ∈ blocks, ∑ b ∈ blocks, triangleBlock prices sincs (cells a) (cells b) := by
      change triangleBlock prices sincs (retained _) (retained _) = _
      rw [← hcover]
      unfold triangleBlock
      rw [Finset.sum_biUnion hdisjoint]
      apply Finset.sum_congr rfl
      intro a _
      simp_rw [Finset.sum_biUnion hdisjoint]
      rw [Finset.sum_comm]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
