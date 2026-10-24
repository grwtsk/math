/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Walsh character orthogonality proof drafting assistance: OpenAI.
Mathlib lemmas retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Orthogonality for finite Boolean characters

Continuation of grwtsk/math#630 / draft PR #638.

The calculation is unconditional, and over finite coordinate types and all
Boolean assignments. It supplies the character-orthogonality input required
for a later precise Parseval/chi-squared identity. It does NOT assert that
the Liouville sequence has small nonempty coefficients.

The pattern-correlation interface is reused from FiniteWalshPatterns.
No probabilistic limit, sofic action, GUE law, or RH statement is imported.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The source has not been compiled.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Every Boolean subset character takes values in the two signs.
The chosen pattern ranges over the *entire* finite Boolean cube. -/
def walshCharacter (S : Finset ι) (a : ι → Bool) : ℚ :=
  ∏ i ∈ S, boolSign (a i)

/-- The sign of either Boolean value squares to one. -/
theorem boolSign_square (b : Bool) :
    boolSign b * boolSign b = (1 : ℚ) := by
  cases b <;> norm_num [boolSign]

set_option linter.unusedSectionVars false in
/-- Any Walsh character squares pointwise to one, including the empty
character and the zero-dimensional Boolean cube. -/
theorem walshCharacter_square (S : Finset ι) (a : ι → Bool) :
    walshCharacter S a * walshCharacter S a = (1 : ℚ) := by
  unfold walshCharacter
  rw [← Finset.prod_mul_distrib]
  simp [boolSign_square]

/-- Its diagonal Gram-matrix entry counts every Boolean assignment. -/
theorem walshCharacter_diagonal (S : Finset ι) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter S a) =
      (Fintype.card (ι → Bool) : ℚ) := by
  simp [walshCharacter_square]

/-- Distinct subset characters have zero exact inner product under
the uniform *unweighted* sum over every Boolean assignment. -/
theorem walshCharacter_orthogonal (S T : Finset ι) (hST : S ≠ T) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) = 0 := by
  classical
  obtain ⟨j, hj⟩ : ∃ j : ι, ¬ (j ∈ S ↔ j ∈ T) := by
    by_contra h
    apply hST
    apply Finset.ext
    intro i
    by_contra hi
    exact h ⟨i, hi⟩
  have hzero :
      (∑ b : Bool,
        (if j ∈ S then boolSign b else (1 : ℚ)) *
          (if j ∈ T then boolSign b else (1 : ℚ))) = 0 := by
    by_cases hs : j ∈ S
    · have ht : j ∉ T := by
        intro ht
        exact hj ⟨fun _ => ht, fun _ => hs⟩
      simp [hs, ht, boolSign]
    · have ht : j ∈ T := by
        by_contra ht
        exact hj ⟨fun h => (hs h).elim, fun h => (ht h).elim⟩
      simp [hs, ht, boolSign]
  calc
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
        ∑ a : ι → Bool, ∏ i : ι,
          (if i ∈ S then boolSign (a i) else (1 : ℚ)) *
          (if i ∈ T then boolSign (a i) else (1 : ℚ)) := by
      apply Finset.sum_congr rfl
      intro a _
      rw [Finset.prod_mul_distrib]
      simp only [Finset.prod_ite_mem_eq, walshCharacter]
    _ = ∏ i : ι, ∑ b : Bool,
          (if i ∈ S then boolSign b else (1 : ℚ)) *
          (if i ∈ T then boolSign b else (1 : ℚ)) := by
      exact (Fintype.prod_sum (fun i (b : Bool) =>
        (if i ∈ S then boolSign b else (1 : ℚ)) *
        (if i ∈ T then boolSign b else (1 : ℚ)))).symm
    _ = 0 := by
      exact Finset.prod_eq_zero (Finset.mem_univ j) hzero

/-- Complete Walsh Gram matrix, with the equality case and the
different-character case kept as separate proved inputs. -/
theorem walshCharacter_orthogonality (S T : Finset ι) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
      if S = T then (Fintype.card (ι → Bool) : ℚ) else 0 := by
  by_cases h : S = T
  · subst T
    simpa using walshCharacter_diagonal S
  · simpa [h] using walshCharacter_orthogonal S T h

/-- The unsigned source moment is distinct from a Walsh character.
In particular, it depends on the labels and root set, not on the
pattern being tested. -/
def plainMomentOn (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) : ℚ :=
  ∑ n ∈ roots, ∏ i ∈ S, boolSign (x n i)

set_option linter.unusedSectionVars false in
/-- The parent signed-moment convention factors as its plain source
moment times the precise Walsh character of the tested pattern. -/
theorem signedMomentOn_factor (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    signedMomentOn roots S x a =
      plainMomentOn roots S x * walshCharacter S a := by
  unfold signedMomentOn plainMomentOn walshCharacter
  calc
    (∑ n ∈ roots, ∏ i ∈ S, boolSign (x n i) * boolSign (a i)) =
        ∑ n ∈ roots,
          (∏ i ∈ S, boolSign (x n i)) *
          (∏ i ∈ S, boolSign (a i)) := by
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.prod_mul_distrib]
    _ = (∑ n ∈ roots, ∏ i ∈ S, boolSign (x n i)) *
          (∏ i ∈ S, boolSign (a i)) := by
      rw [Finset.sum_mul]

/-- A normalization/character factorization independent of the
nonemptiness hypothesis; interpretation as an empirical expectation
still REQUIRES a positive root count. -/
theorem empiricalMoment_factor (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    empiricalMoment roots S x a =
      (plainMomentOn roots S x / (roots.card : ℚ)) *
        walshCharacter S a := by
  rw [empiricalMoment, signedMomentOn_factor]
  ring

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
