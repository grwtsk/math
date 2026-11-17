/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderSpectralTriple

/-!
# Routing obstruction for Alexander incidence through knot vertices

A weighted two-hop return through the original Alexander divisibility
edges is a symmetric Gram matrix. Nonnegative knot weights give a self
return at every active polynomial vertex. Even if the diagonal is removed
and rows and columns are independently rescaled, the off-diagonal support
is symmetric. Consequently it cannot represent an oriented 95-cycle.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot Slot : Type*} [Fintype Knot]

/-- Both steps use the literal edges of the same Alexander source. -/
def twoHop (s : Source Prime Knot) (weight : Knot → ℝ) (p q : Prime) : ℝ :=
  ∑ k : Knot, weight k * (edgeWeight s (.inl p) (.inr k) * edgeWeight s (.inr k) (.inl q))

theorem twoHop_symm (s : Source Prime Knot) (weight : Knot → ℝ) (p q : Prime) :
    twoHop s weight p q = twoHop s weight q p := by
  unfold twoHop
  apply Finset.sum_congr rfl
  intro k _
  rw [edgeWeight_symmetric s (.inr k) (.inl q), edgeWeight_symmetric s (.inr k) (.inl p)]
  rw [mul_comm (edgeWeight s (.inl p) (.inr k))]

/-- With unit knot weights the new coefficients are the prime-polynomial
block of the square of the original incidence operator. -/
theorem twoHop_eq_realDirac_sq_entry [Fintype Prime] [DecidableEq Prime]
    (s : Source Prime Knot) (p q : Prime) :
    twoHop s (fun _ => 1) p q =
      realDirac s (realDirac s (Sum.elim (fun r => if r = q then 1 else 0) (fun _ => 0)))
        (.inl p) := by
  classical
  have basis (v : Vertex Prime Knot) :
      realDirac s (Sum.elim (fun r => if r = q then 1 else 0) (fun _ => 0)) v =
        edgeWeight s v (.inl q) := by
    simp [realDirac, Fintype.sum_sum_type, mul_ite]
  conv_rhs => unfold realDirac
  simp only [Fintype.sum_sum_type, twoHop, one_mul]
  have zero (r : Prime) : edgeWeight s (.inl p) (.inl r) = 0 := by simp [edgeWeight]
  simp [zero]

/-- A return is positive exactly when some intervening knot with positive
weight is incident to both endpoints. -/
theorem twoHop_pos_iff (s : Source Prime Knot) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k) (p q : Prime) :
    0 < twoHop s weight p q ↔ ∃ k, 0 < weight k ∧ Linked s p k ∧ Linked s q k := by
  classical
  have entry (k : Knot) :
      weight k * (edgeWeight s (.inl p) (.inr k) * edgeWeight s (.inr k) (.inl q)) =
        if Linked s p k ∧ Linked s q k then weight k else 0 := by
    by_cases hp : Linked s p k <;> by_cases hq : Linked s q k <;> simp [edgeWeight, hp, hq]
  simp only [twoHop, entry]
  rw [Finset.sum_pos_iff_of_nonneg (fun k _ => by split <;> simp [nonneg])]
  simp only [Finset.mem_univ, true_and]
  constructor
  · rintro ⟨k, hk⟩
    split at hk
    · exact ⟨k, hk, by assumption⟩
    · exact (lt_irrefl _ hk).elim
  · rintro ⟨k, hk, hp, hq⟩
    exact ⟨k, by simp [hp, hq, hk]⟩

/-- Including the self returns, a deterministic routing table can only
send each slot to itself. -/
theorem twoHop_deterministic_fixed (s : Source Prime Knot) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k) (encode : Slot → Prime) (next : Slot → Slot)
    (exactSupport : ∀ i j, 0 < twoHop s weight (encode i) (encode j) ↔ next i = j) :
    ∀ i, next i = i := by
  intro i
  have active := (exactSupport i (next i)).2 rfl
  obtain ⟨k, hk, hp, _⟩ := (twoHop_pos_iff s weight nonneg _ _).1 active
  exact (exactSupport i i).1 ((twoHop_pos_iff s weight nonneg _ _).2 ⟨k, hk, hp, hp⟩)

/-- With loop deletion and arbitrary nonzero row and column rescalings,
any deterministic nontrivial move must be undone by the very next move.
This uses symmetry alone and allows signed knot weights. -/
theorem twoHop_offDiag_route_returns (s : Source Prime Knot) (weight : Knot → ℝ)
    (encode : Slot → Prime) (next : Slot → Slot) (row col : Slot → ℝ)
    (row_ne : ∀ i, row i ≠ 0) (col_ne : ∀ i, col i ≠ 0)
    (exactSupport : ∀ i j, i ≠ j →
      (row i * twoHop s weight (encode i) (encode j) * col j ≠ 0 ↔ next i = j)) :
    ∀ i, next (next i) = i := by
  intro i
  by_cases fixed : next i = i
  · simp [fixed]
  · have out := (exactSupport i (next i) (Ne.symm fixed)).2 rfl
    have notZero : twoHop s weight (encode i) (encode (next i)) ≠ 0 := by
      intro zero
      simp [zero] at out
    rw [twoHop_symm] at notZero
    exact (exactSupport (next i) i fixed).1 (mul_ne_zero (mul_ne_zero (row_ne _) notZero) (col_ne _))

/-- The off-diagonal obstruction is sharp. Two slots sharing a knot
realize the directed two-cycle when that knot has unit weight. -/
theorem twoHop_two_cycle_control (s : Source Prime Knot) (encode : Bool → Prime)
    (k : Knot) (h₀ : Linked s (encode false) k) (h₁ : Linked s (encode true) k) :
    ∀ i j, i ≠ j →
      (twoHop s (fun _ => 1) (encode i) (encode j) ≠ 0 ↔ (!i) = j) := by
  have pos : 0 < twoHop s (fun _ => 1) (encode false) (encode true) :=
    (twoHop_pos_iff s (fun _ => 1) (by intro; norm_num) _ _).2 ⟨k, by norm_num, h₀, h₁⟩
  have reverse : 0 < twoHop s (fun _ => 1) (encode true) (encode false) := by
    rwa [twoHop_symm]
  intro i j h
  cases i <;> cases j <;> simp_all [ne_of_gt pos, ne_of_gt reverse]

/-- Native 95-position cyclic successor. -/
def nextSlot95 (i : Fin 95) : Fin 95 := i + 1

/-- A symmetric two-hop return cannot realize the directed 95-lane ring,
even after removal of self loops and nonzero diagonal rescaling. -/
theorem no_twoHop_95_cycle (s : Source Prime Knot) (weight : Knot → ℝ)
    (encode : Fin 95 → Prime) (row col : Fin 95 → ℝ)
    (row_ne : ∀ i, row i ≠ 0) (col_ne : ∀ i, col i ≠ 0) :
    ¬ ∀ i j, i ≠ j →
      (row i * twoHop s weight (encode i) (encode j) * col j ≠ 0 ↔ nextSlot95 i = j) := by
  intro exactSupport
  have returns := twoHop_offDiag_route_returns s weight encode nextSlot95 row col row_ne col_ne
    exactSupport 0
  exact (by decide : nextSlot95 (nextSlot95 0) ≠ 0) returns

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
