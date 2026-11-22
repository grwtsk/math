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

<<<<<<< HEAD
=======
/-- Independent diagonal rescalings preserve the balance of the products
along a permutation and its reversed arrows. -/
theorem twoHop_cycle_product_balance [Fintype Slot]
    (s : Source Prime Knot) (weight : Knot → ℝ) (encode : Slot → Prime)
    (next : Equiv.Perm Slot) (row col : Slot → ℝ) :
    (∏ i, |row i * twoHop s weight (encode i) (encode (next i)) * col (next i)|) =
      ∏ i, |row (next i) * twoHop s weight (encode (next i)) (encode i) * col i| := by
  simp only [abs_mul, Finset.prod_mul_distrib, Equiv.prod_comp next (fun i => |row i|),
    Equiv.prod_comp next (fun i => |col i|)]
  congr 2
  apply Finset.prod_congr rfl
  intro i _
  rw [twoHop_symm]

/-- Even with unconstrained real diagonal scalings, errors strictly below
one half cannot turn the two-hop return into unit forward arrows and
zero reverse arrows around the 95-cycle. -/
theorem no_twoHop_95_cycle_half_error (s : Source Prime Knot) (weight : Knot → ℝ)
    (encode : Fin 95 → Prime) (row col : Fin 95 → ℝ) :
    ¬ ((∀ i, |row i * twoHop s weight (encode i) (encode (nextSlot95 i)) *
        col (nextSlot95 i) - 1| < 1 / 2) ∧
      (∀ i, |row (nextSlot95 i) * twoHop s weight (encode (nextSlot95 i)) (encode i) *
        col i| < 1 / 2)) := by
  rintro ⟨forward, reverse⟩
  let next : Equiv.Perm (Fin 95) := Equiv.addRight 1
  have balance := twoHop_cycle_product_balance s weight encode next row col
  change (∏ i, |row i * twoHop s weight (encode i) (encode (nextSlot95 i)) *
    col (nextSlot95 i)|) = _ at balance
  have big : (∏ _i : Fin 95, (1 / 2 : ℝ)) <
      ∏ i, |row i * twoHop s weight (encode i) (encode (nextSlot95 i)) *
        col (nextSlot95 i)| := by
    apply Finset.prod_lt_prod_of_nonempty₀ (by intros; norm_num) _ Finset.univ_nonempty
    intro i _
    exact (by linarith [(abs_lt.mp (forward i)).1] : (1 / 2 : ℝ) < _).trans_le (le_abs_self _)
  have small : (∏ i, |row (nextSlot95 i) *
      twoHop s weight (encode (nextSlot95 i)) (encode i) * col i|) ≤
        ∏ _i : Fin 95, (1 / 2 : ℝ) :=
    Finset.prod_le_prod₀ (fun _ _ => abs_nonneg _) (fun i _ => (reverse i).le)
  exact (not_lt_of_ge small) (balance ▸ big)


/-- At the half-error threshold every forward entry equals one half and
every reverse entry has magnitude one half. This holds for any finite
permutation of the slots, with signed weights and independent scalings. -/
theorem twoHop_cycle_half_error_rigid [Fintype Slot]
    (s : Source Prime Knot) (weight : Knot → ℝ) (encode : Slot → Prime)
    (next : Equiv.Perm Slot) (row col : Slot → ℝ)
    (forward : ∀ i, |row i * twoHop s weight (encode i) (encode (next i)) *
        col (next i) - 1| ≤ 1 / 2)
    (reverse : ∀ i, |row (next i) * twoHop s weight (encode (next i)) (encode i) *
        col i| ≤ 1 / 2) :
    ∀ i, row i * twoHop s weight (encode i) (encode (next i)) * col (next i) = 1 / 2 ∧
      |row (next i) * twoHop s weight (encode (next i)) (encode i) * col i| = 1 / 2 := by
  let f (i : Slot) := row i * twoHop s weight (encode i) (encode (next i)) * col (next i)
  let b (i : Slot) := |row (next i) * twoHop s weight (encode (next i)) (encode i) * col i|
  have lower (i : Slot) : (1 / 2 : ℝ) ≤ f i := by
    have h := (abs_le.mp (forward i)).1
    change -(1 / 2 : ℝ) ≤ f i - 1 at h
    linarith
  have upper (i : Slot) : b i ≤ (1 / 2 : ℝ) := reverse i
  have positive (i : Slot) : 0 < f i := (by norm_num : (0 : ℝ) < 1 / 2).trans_le (lower i)
  have balance : (∏ i, f i) = ∏ i, b i := by
    have eq := twoHop_cycle_product_balance s weight encode next row col
    change (∏ i, |f i|) = ∏ i, b i at eq
    simpa only [abs_of_pos (positive _)] using eq
  have bpos (i : Slot) : 0 < b i := by
    have product : (0 : ℝ) < ∏ j, b j :=
      balance ▸ Finset.prod_pos (fun j _ => positive j)
    exact lt_of_le_of_ne (abs_nonneg _) fun h =>
      Finset.prod_ne_zero_iff.mp product.ne' i (Finset.mem_univ _) h.symm
  have pointwise (i : Slot) : b i ≤ f i := (upper i).trans (lower i)
  intro i
  have eq : b i = f i := by
    by_contra unequal
    have strict : (∏ j, b j) < ∏ j, f j :=
      Finset.prod_lt_prod₀ (fun j _ => bpos j) (fun j _ => pointwise j)
        ⟨i, Finset.mem_univ _, lt_of_le_of_ne (pointwise i) unequal⟩
    exact (lt_irrefl _) (balance ▸ strict)
  change f i = 1 / 2 ∧ b i = 1 / 2
  have equalHalf : f i = 1 / 2 := le_antisymm (by rw [← eq]; exact upper i) (lower i)
  exact ⟨equalHalf, eq.trans equalHalf⟩

/-- A common incident knot realizes the boundary with a single active
weight. The half-error threshold is attained on every entry of the
95-cycle target, including its zero diagonal. -/
theorem twoHop_95_cycle_half_error_attained
    (s : Source Prime Knot) (encode : Fin 95 → Prime)
    (knot : Knot) (linked : ∀ i, Linked s (encode i) knot) :
    ∃ weight : Knot → ℝ, (∀ k, 0 ≤ weight k) ∧
      ∀ i j, |(1 / 2 : ℝ) * twoHop s weight (encode i) (encode j) -
        (if nextSlot95 i = j then 1 else 0)| = 1 / 2 := by
  classical
  let weight (k : Knot) : ℝ := if k = knot then 1 else 0
  refine ⟨weight, ?_, ?_⟩
  · intro k
    simp only [weight]
    split <;> norm_num
  · intro i j
    have entry : twoHop s weight (encode i) (encode j) = 1 := by
      unfold twoHop
      rw [Finset.sum_eq_single knot]
      · simp [weight, edgeWeight, linked i, linked j]
      · intro k _ hk
        simp [weight, hk]
      · simp
    rw [entry]
    split <;> norm_num


/-- Nonnegative weights make the unchanged two-hop entries satisfy the
diagonal Cauchy–Schwarz bound. -/
theorem twoHop_sq_le_diagonal (s : Source Prime Knot) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k) (p q : Prime) :
    twoHop s weight p q ^ 2 ≤ twoHop s weight p p * twoHop s weight q q := by
  let a (k : Knot) := edgeWeight s (.inl p) (.inr k)
  let b (k : Knot) := edgeWeight s (.inl q) (.inr k)
  have gram (u v : Prime) :
      twoHop s weight u v =
        ∑ k, weight k * (edgeWeight s (.inl u) (.inr k) * edgeWeight s (.inl v) (.inr k)) := by
    unfold twoHop
    exact Finset.sum_congr rfl fun k _ => by rw [edgeWeight_symmetric s (.inr k) (.inl v)]
  rw [gram p q, gram p p, gram q q]
  change (∑ k, weight k * (a k * b k)) ^ 2 ≤
    (∑ k, weight k * (a k * a k)) * ∑ k, weight k * (b k * b k)
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
  · intro k _
    exact mul_nonneg (nonneg k) (mul_self_nonneg _)
  · intro k _
    exact mul_nonneg (nonneg k) (mul_self_nonneg _)
  · intro k _
    exact le_of_eq (by ring)

/-- Diagonal leakage alone bounds the product of forward entries. Row
and column scaling preserves this inequality, even with signed scalings. -/
theorem twoHop_cycle_product_le_diagonal [Fintype Slot]
    (s : Source Prime Knot) (weight : Knot → ℝ) (nonneg : ∀ k, 0 ≤ weight k)
    (encode : Slot → Prime) (next : Equiv.Perm Slot) (row col : Slot → ℝ) :
    (∏ i, |row i * twoHop s weight (encode i) (encode (next i)) * col (next i)|) ≤
      ∏ i, |row i * twoHop s weight (encode i) (encode i) * col i| := by
  let f (i : Slot) := |twoHop s weight (encode i) (encode (next i))|
  let diag (i : Slot) := |twoHop s weight (encode i) (encode i)|
  have point (i : Slot) : f i ^ 2 ≤ diag i * diag (next i) := by
    dsimp only [f, diag]
    rw [sq_abs, ← abs_mul]
    exact (twoHop_sq_le_diagonal s weight nonneg _ _).trans (le_abs_self _)
  have squares : (∏ i, f i) ^ 2 ≤ (∏ i, diag i) ^ 2 := by
    have h := Finset.prod_le_prod₀ (s := Finset.univ)
      (fun i _ => sq_nonneg (f i)) (fun i _ => point i)
    rwa [Finset.prod_pow, Finset.prod_mul_distrib, Equiv.prod_comp next diag, ← pow_two] at h
  have product : (∏ i, f i) ≤ ∏ i, diag i :=
    (sq_le_sq₀ (Finset.prod_nonneg fun _ _ => abs_nonneg _)
      (Finset.prod_nonneg fun _ _ => abs_nonneg _)).mp squares
  simp only [abs_mul, Finset.prod_mul_distrib, Equiv.prod_comp next (fun i => |col i|)]
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left product (Finset.prod_nonneg fun _ _ => abs_nonneg _))
    (Finset.prod_nonneg fun _ _ => abs_nonneg _)

/-- For a nonempty permutation, a forward error budget forces diagonal
leakage of at least one minus that budget. Reverse entries may be unmeasured. -/
theorem twoHop_cycle_diagonal_leak [Fintype Slot] [Nonempty Slot]
    (s : Source Prime Knot) (weight : Knot → ℝ) (nonneg : ∀ k, 0 ≤ weight k)
    (encode : Slot → Prime) (next : Equiv.Perm Slot) (row col : Slot → ℝ)
    (error : ℝ) (cap : error < 1)
    (forward : ∀ i, |row i * twoHop s weight (encode i) (encode (next i)) *
        col (next i) - 1| ≤ error) :
    ∃ i, 1 - error ≤ |row i * twoHop s weight (encode i) (encode i) * col i| := by
  by_contra absent
  push Not at absent
  have budget := twoHop_cycle_product_le_diagonal s weight nonneg encode next row col
  have lower : (∏ _i : Slot, (1 - error)) ≤
      ∏ i, |row i * twoHop s weight (encode i) (encode (next i)) * col (next i)| :=
    Finset.prod_le_prod₀ (fun _ _ => sub_nonneg.mpr cap.le) (fun i _ =>
      (by linarith [(abs_le.mp (forward i)).1] : 1 - error ≤ _).trans (le_abs_self _))
  have diagPos : 0 < ∏ i, |row i * twoHop s weight (encode i) (encode i) * col i| :=
    (Finset.prod_pos fun _ _ => sub_pos.mpr cap).trans_le (lower.trans budget)
  have eachPos (i : Slot) : 0 < |row i * twoHop s weight (encode i) (encode i) * col i| :=
    lt_of_le_of_ne (abs_nonneg _) fun h =>
      Finset.prod_ne_zero_iff.mp diagPos.ne' i (Finset.mem_univ _) h.symm
  have upper : (∏ i, |row i * twoHop s weight (encode i) (encode i) * col i|) <
      ∏ _i : Slot, (1 - error) :=
    Finset.prod_lt_prod_of_nonempty₀ (fun i _ => eachPos i) (fun i _ => absent i)
      Finset.univ_nonempty
  exact (not_lt_of_ge (lower.trans budget)) upper

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
