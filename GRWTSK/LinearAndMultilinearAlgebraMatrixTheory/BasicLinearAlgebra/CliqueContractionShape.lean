/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Real.Basic
import Mathlib.Data.Tree.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Dense rectangular shapes of complete-clique contraction trees

A merge with disjoint terminal parts of sizes a, b and c has three pairwise
edge counts a*b, a*c and b*c. This module evaluates the explicit rectangular
expression on those weights and proves that every binary tree has a merge
attaining the resulting size benchmark. The comparison with formal arithmetic
matrix complexity is supplied separately by the upstream exponent theorem.

See Majdoddin, arXiv:2610.41622v1, §2, for the clique contraction model.
-/

set_option autoImplicit false

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent

private theorem positive_clique_formula (a b c : ℝ)
    (hc : 0 < c) (hbc : c ≤ b) (hab : b ≤ a) :
    a * b + a * c + (max ((a * b + a * c) * (b * c) - a * b * (a * c)) 0) ^ 2 /
      (4 * (a * b) * (a * c) * (b * c)) =
        (a + b + c) ^ 2 / 4 - (max (a - (a + b + c) / 2) 0) ^ 2 := by
  have ha : 0 < a := hc.trans_le (hbc.trans hab)
  have hb : 0 < b := hc.trans_le hbc
  have hd : (a * b + a * c) * (b * c) - a * b * (a * c) = a * b * c * (b + c - a) := by ring
  rw [hd]
  by_cases h : a ≤ b + c
  · rw [max_eq_left (mul_nonneg (by positivity) (sub_nonneg.mpr h)),
      max_eq_right (show a - (a + b + c) / 2 ≤ 0 by linarith)]
    field_simp [ha.ne', hb.ne', hc.ne']
    ring
  · rw [max_eq_right (mul_nonpos_of_nonneg_of_nonpos (by positivity) (by linarith)),
      max_eq_left (show 0 ≤ a - (a + b + c) / 2 by linarith)]
    simp only [zero_pow (by decide : 2 ≠ 0), zero_div, add_zero]
    ring

/-- Evaluate the exact rectangular expression of the pinned exponent theorem
on nonnegative sorted clique part sizes, including an empty complement. -/
theorem clique_rectangular_formula (a b c : ℝ)
    (hc : 0 ≤ c) (hbc : c ≤ b) (hab : b ≤ a) :
    (let A := max (a * b) 0
     let B := max (a * c) 0
     let C := max (b * c) 0
     let x := max A (max B C)
     let z := min A (min B C)
     let y := A + B + C - x - z
     x + y + (max ((x + y) * z - x * y) 0) ^ 2 / (4 * x * y * z)) =
      (a + b + c) ^ 2 / 4 - (max (a - (a + b + c) / 2) 0) ^ 2 := by
  have hb : 0 ≤ b := hc.trans hbc
  have ha : 0 ≤ a := hb.trans hab
  have hx : a * c ≤ a * b := mul_le_mul_of_nonneg_left hbc ha
  have hz : b * c ≤ a * c := mul_le_mul_of_nonneg_right hab hc
  simp only [max_eq_left (mul_nonneg ha hb), max_eq_left (mul_nonneg ha hc),
    max_eq_left (mul_nonneg hb hc), max_eq_left hx, max_eq_left hz,
    min_eq_right hz, min_eq_right (hz.trans hx)]
  have hm : a * b + a * c + b * c - a * b - b * c = a * c := by ring
  rw [hm]
  rcases hc.eq_or_lt with hzero | hc'
  · subst c
    simp only [mul_zero, add_zero, div_zero]
    rw [max_eq_left (show 0 ≤ a - (a + b) / 2 by linarith)]
    ring
  · exact positive_clique_formula a b c hc' hbc hab

/-- The counts of the two child leaf sets at every internal merge. -/
def mergeSizes {α : Type*} : BinaryTree α → List (ℕ × ℕ)
  | .nil => []
  | .node _ left right =>
      (left.numLeaves, right.numLeaves) :: (mergeSizes left ++ mergeSizes right)

private theorem exists_merge_at_cutoff {α : Type*} (tree : BinaryTree α) (K : ℕ)
    (hK : 2 ≤ K) (hLarge : K < 2 * tree.numLeaves) (hSmall : tree.numLeaves ≤ K) :
    ∃ a b : ℕ, (a, b) ∈ mergeSizes tree ∧
      2 * a ≤ K ∧ 2 * b ≤ K ∧ K < 2 * (a + b) := by
  induction tree with
  | nil =>
    simp only [BinaryTree.numLeaves] at hLarge
    omega
  | node val left right ihLeft ihRight =>
    simp only [BinaryTree.numLeaves] at hLarge hSmall
    by_cases hLeft : K < 2 * left.numLeaves
    · obtain ⟨a, b, hab, ha, hb, hsum⟩ := ihLeft hLeft (by omega)
      exact ⟨a, b, List.mem_cons_of_mem _ (List.mem_append_left _ hab), ha, hb, hsum⟩
    by_cases hRight : K < 2 * right.numLeaves
    · obtain ⟨a, b, hab, ha, hb, hsum⟩ := ihRight hRight (by omega)
      exact ⟨a, b, List.mem_cons_of_mem _ (List.mem_append_right _ hab), ha, hb, hsum⟩
    exact ⟨left.numLeaves, right.numLeaves, List.mem_cons_self, by omega, by omega, hLarge⟩

/-- Some merge has both child leaf counts and its complement at most half of
the total. The strict inequality for the complement follows by descending to
a subtree larger than half whose children each have size at most half. -/
theorem exists_balanced_merge {α : Type*} (tree : BinaryTree α) (hTree : 2 ≤ tree.numLeaves) :
    ∃ a b : ℕ, (a, b) ∈ mergeSizes tree ∧
      2 * a ≤ tree.numLeaves ∧ 2 * b ≤ tree.numLeaves ∧
      2 * (tree.numLeaves - (a + b)) ≤ tree.numLeaves := by
  obtain ⟨a, b, hab, ha, hb, hsum⟩ :=
    exists_merge_at_cutoff tree tree.numLeaves hTree (by omega) le_rfl
  exact ⟨a, b, hab, ha, hb, by omega⟩

/-- Closed-form shape expression for a clique merge, using the largest of the
two child counts and the complement count. -/
noncomputable def denseMergeShape (K a b : ℕ) : ℝ :=
  (K : ℝ) ^ 2 / 4 -
    (max ((max a (max b (K - (a + b))) : ℕ) - (K : ℝ) / 2) 0) ^ 2

/-- The maximum of the dense merge shape values is exactly K²/4 for every
binary contraction tree with K ≥ 2. This is a statement about the shape
values, which need not be lower bounds for algorithms on correlated
intermediate operands. -/
theorem denseMergeShape_max {α : Type*} (tree : BinaryTree α) (hTree : 2 ≤ tree.numLeaves) :
    (∀ a b : ℕ, (a, b) ∈ mergeSizes tree →
      denseMergeShape tree.numLeaves a b ≤ (tree.numLeaves : ℝ) ^ 2 / 4) ∧
    ∃ a b : ℕ, (a, b) ∈ mergeSizes tree ∧
      denseMergeShape tree.numLeaves a b = (tree.numLeaves : ℝ) ^ 2 / 4 := by
  refine ⟨fun _ _ _ => sub_le_self _ (sq_nonneg _), ?_⟩
  obtain ⟨a, b, hab, ha, hb, hc⟩ := exists_balanced_merge tree hTree
  have hmax : max a (max b (tree.numLeaves - (a + b))) ≤ tree.numLeaves / 2 :=
    max_le (by omega) (max_le (by omega) (by omega))
  have hmaxTwice : 2 * max a (max b (tree.numLeaves - (a + b))) ≤ tree.numLeaves := by omega
  have hmaxReal : (2 : ℝ) * (↑(max a (max b (tree.numLeaves - (a + b)))) : ℝ) ≤
      (tree.numLeaves : ℝ) := by exact_mod_cast hmaxTwice
  refine ⟨a, b, hab, ?_⟩
  unfold denseMergeShape
  rw [max_eq_right (show (↑(max a (max b (tree.numLeaves - (a + b)))) : ℝ) -
    (tree.numLeaves : ℝ) / 2 ≤ 0 by linarith)]
  ring

/-- Four-node covering construction with covering fraction 25/32. The first
value is the exact rectangular expression for the two outer weights and
the inner weight. The second bounds the full subset compression using
9^5 < 2^16. The third is the bound on pairing and kernel work. -/
theorem fourNode_cover_rectangular_benchmark :
    (let p : ℝ := 121 / 64
     let q : ℝ := 39 / 32
     2 * p + (max ((2 * p) * q - p * p) 0) ^ 2 / (4 * p * p * q)) =
       76729 / 19968 ∧
    (3 : ℝ) + (25 / 32) * (16 / 15) = 23 / 6 ∧
    (23 : ℝ) / 6 < 76729 / 19968 ∧
    (9 : ℕ) ^ 5 < 2 ^ 16 := by
  norm_num [max_def]

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent
