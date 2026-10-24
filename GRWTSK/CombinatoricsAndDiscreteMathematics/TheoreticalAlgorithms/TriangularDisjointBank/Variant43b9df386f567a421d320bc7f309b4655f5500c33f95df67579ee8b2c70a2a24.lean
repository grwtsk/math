import FormalResearch.RiemannHypothesis.Conversation.TriangularCountingPulse
import Mathlib.Data.Finset.Lattice.Fold

/-!
# An explicit infinite bank retains the literal positive counting pulses

The finite maximum at each integer selects the full literal source pulse,
with no omitted central or endpoint rows. Its cutoff is proved sufficient.
Disjoint intervals identify the bank with each original pulse on its entire
inventory. Uniform positive weights and the all-real square-root counting
error are proved for the resulting single infinite counting system. These
are changed positive weights, not prime or von Mangoldt coefficients.
Human countermodel and complete-inventory direction: grwtsk contributors.
Local bank construction and source-preserving assembly: OpenAI Codex.
Mathlib finite suprema, square roots and finite sums retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularDisjointBank
open TriangularCountingPulse
open scoped BigOperators
noncomputable section

def height (M : ℕ → ℕ) (n : ℕ) : ℕ :=
  (Finset.range (n + 1)).sup (fun j ↦ triangle (M j) n)
def bankStorage (M : ℕ → ℕ) (a : ℝ) (n : ℕ) : ℝ := a * height M n
def bankWeight (M : ℕ → ℕ) (a : ℝ) (n : ℕ) : ℝ :=
  1 + bankStorage M a n - bankStorage M a (n - 1)
def count (M : ℕ → ℕ) (a x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, bankWeight M a n

def Separated (M : ℕ → ℕ) : Prop := ∀ i j, i ≠ j →
  (M i) ^ 2 + 2 * M i ≤ (M j) ^ 2 ∨ (M j) ^ 2 + 2 * M j ≤ (M i) ^ 2

private theorem triangle_zero {M n : ℕ} (h : n ≤ M ^ 2 ∨ M ^ 2 + 2 * M ≤ n) :
    triangle M n = 0 := by
  rcases h with h | h <;> simp [triangle, Nat.sub_eq_zero_of_le h]

private theorem nat_adjacent_bounds (M n : ℕ) :
    triangle M n ≤ triangle M (n - 1) + 1 ∧
    triangle M (n - 1) ≤ triangle M n + 1 := by
  unfold triangle
  omega

theorem sufficient_cutoff (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {j n : ℕ} (hn : n < j) : triangle (M j) n = 0 := by
  apply triangle_zero (Or.inl ?_)
  have := hM j
  nlinarith

theorem bank_adjacent_height_bounds (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j) (n : ℕ) :
    height M n ≤ height M (n - 1) + 1 ∧ height M (n - 1) ≤ height M n + 1 := by
  by_cases hn : n = 0
  · subst n; simp
  have hn1 : 1 ≤ n := by omega
  constructor
  · apply Finset.sup_le
    intro j hj
    have hjn := Finset.mem_range.mp hj
    by_cases hjlt : j < n
    · have hjprev : j ∈ Finset.range (n - 1 + 1) := Finset.mem_range.mpr (by omega)
      exact (nat_adjacent_bounds (M j) n).1.trans
        (Nat.add_le_add_right (Finset.le_sup (f := fun k ↦ triangle (M k) (n - 1)) hjprev) 1)
    · have hjeq : j = n := by omega
      subst j
      have hzero : triangle (M n) n = 0 := by
        apply triangle_zero (Or.inl ?_)
        have := hM n
        nlinarith
      rw [hzero]
      omega
  · apply Finset.sup_le
    intro j hj
    have hjnow : j ∈ Finset.range (n + 1) := Finset.mem_range.mpr
      (by have := Finset.mem_range.mp hj; omega)
    exact (nat_adjacent_bounds (M j) n).2.trans
      (Nat.add_le_add_right (Finset.le_sup (f := fun k ↦ triangle (M k) n) hjnow) 1)

theorem bank_positive_weight_bounds (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    1 - a ≤ bankWeight M a n ∧ bankWeight M a n ≤ 1 + a := by
  have h := bank_adjacent_height_bounds M hM n
  have hl : (height M n : ℝ) ≤ height M (n - 1) + 1 := by exact_mod_cast h.1
  have hr : (height M (n - 1) : ℝ) ≤ height M n + 1 := by exact_mod_cast h.2
  have hp := mul_le_mul_of_nonneg_left hl ha
  have hm := mul_le_mul_of_nonneg_left hr ha
  unfold bankWeight bankStorage
  constructor <;> nlinarith

theorem every_bank_weight_positive (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (n : ℕ) {a : ℝ} (ha : 0 ≤ a) (ha1 : a < 1) : 0 < bankWeight M a n := by
  have := (bank_positive_weight_bounds M hM n ha).1
  linarith

theorem bank_square_root_storage (M : ℕ → ℕ) (n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    0 ≤ bankStorage M a n ∧ bankStorage M a n ≤ a * Real.sqrt n := by
  constructor
  · unfold bankStorage; positivity
  · by_cases hz : height M n = 0
    · simp only [bankStorage, hz, Nat.cast_zero, mul_zero]
      positivity
    · have hpos : (0 : ℕ) < height M n := Nat.pos_of_ne_zero hz
      obtain ⟨j, hj, hle⟩ := (Finset.le_sup_iff hpos).mp (le_rfl : height M n ≤ height M n)
      have ht : (height M n : ℝ) ≤ triangle (M j) n := by exact_mod_cast hle
      have hs := (literal_square_root_storage_envelope (M j) n (a := 1) (by norm_num)).2
      simp only [storage, one_mul] at hs
      exact mul_le_mul_of_nonneg_left (ht.trans hs) ha

theorem zero_initial_bank (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : n ≤ 1) (a : ℝ) : bankStorage M a n = 0 := by
  have hz : height M n = 0 := by
    apply Nat.eq_zero_of_le_zero
    apply Finset.sup_le
    intro j _
    have := hM j
    exact le_of_eq (triangle_zero (Or.inl (by nlinarith)))
  simp [bankStorage, hz]

theorem complete_bank_integer_count (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) (a : ℝ) :
    (∑ k ∈ Finset.Icc 1 n, bankWeight M a k) = (n : ℝ) + bankStorage M a n := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n
      simp [bankWeight, zero_initial_bank M hM (by omega : 1 ≤ 1) a,
        zero_initial_bank M hM (by omega : 0 ≤ 1) a]
    · rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1), ih (by omega)]
      simp only [bankWeight, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_one]
      ring

theorem all_real_bank_counting_error (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a x : ℝ} (ha : 0 ≤ a) (hx : 1 ≤ x) :
    |count M a x - x| ≤ (a + 1) * Real.sqrt x := by
  have hn : 1 ≤ ⌊x⌋₊ := Nat.le_floor (by simpa only [Nat.cast_one] using hx)
  have hlo : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have hhi : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
  have hs := bank_square_root_storage M ⌊x⌋₊ ha
  have hsu : bankStorage M a ⌊x⌋₊ ≤ a * Real.sqrt x :=
    hs.2.trans (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hlo) ha)
  have hxroot : 1 ≤ Real.sqrt x := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hx
  unfold count
  rw [complete_bank_integer_count M hM hn]
  apply abs_le.mpr
  constructor <;> nlinarith

theorem bank_retains_complete_pulse (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (hsep : Separated M) (j n : ℕ) (hn : (M j) ^ 2 ≤ n)
    (hnU : n ≤ (M j) ^ 2 + 2 * M j) (a : ℝ) :
    bankStorage M a n = storage (M j) a n := by
  have hjrange : j ∈ Finset.range (n + 1) := by
    apply Finset.mem_range.mpr
    have := hM j
    nlinarith
  have heq : height M n = triangle (M j) n := by
    apply le_antisymm
    · apply Finset.sup_le
      intro k _
      by_cases hkj : k = j
      · subst k; rfl
      · have hkzero : triangle (M k) n = 0 := by
          rcases hsep k j hkj with h | h
          · exact triangle_zero (Or.inr (h.trans hn))
          · exact triangle_zero (Or.inl (hnU.trans h))
        rw [hkzero]
        omega
    · exact Finset.le_sup (f := fun k ↦ triangle (M k) n) hjrange
  simp [bankStorage, storage, heq]

def dyadicSize (j : ℕ) : ℕ := 2 ^ (j + 1)

theorem dyadic_size_sufficient (j : ℕ) : j + 2 ≤ dyadicSize j := by
  induction j with
  | zero => norm_num [dyadicSize]
  | succ j ih =>
    have heq : dyadicSize (j + 1) = 2 * dyadicSize j := by simp [dyadicSize, pow_succ]; ring
    rw [heq]
    nlinarith

theorem dyadic_intervals_separated : Separated dyadicSize := by
  have hstrict : StrictMono dyadicSize := by
    apply strictMono_nat_of_lt_succ
    intro j
    have heq : dyadicSize (j + 1) = 2 * dyadicSize j := by simp [dyadicSize, pow_succ]; ring
    rw [heq]
    have := dyadic_size_sufficient j
    omega
  have hgap (i j : ℕ) (hij : i < j) : (dyadicSize i) ^ 2 + 2 * dyadicSize i ≤
      (dyadicSize j) ^ 2 := by
    have hd := hstrict.monotone (Nat.succ_le_of_lt hij)
    have heq : dyadicSize (i + 1) = 2 * dyadicSize i := by simp [dyadicSize, pow_succ]; ring
    rw [heq] at hd
    have hi := dyadic_size_sufficient i
    nlinarith
  intro i j hij
  rcases lt_or_gt_of_ne hij with h | h
  · exact Or.inl (hgap i j h)
  · exact Or.inr (hgap j i h)

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularDisjointBank
