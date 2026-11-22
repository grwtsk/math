/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit and fresh kernel replay: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic
import Mathlib.Tactic

/-!
# All-rank prime-specific Jacobi coefficient recurrence envelope

This file proves that the scalar envelope obtained from the THREE-TERM
orthonormal prime-Jacobi recurrence is bounded uniformly by (n+2)/2.
It consumes bond n = Nat.nth Nat.Prime n from the actual source.
No RH, L-function, zeta zero, or Alpoge final theorem is imported.

The polynomial-coefficient l1 norm is dominated by this scalar
recurrence via a separate coefficient-convolution triangle inequality;
formalizing that link to the genuine inverse Krylov matrix is the
remaining source-interface obligation, explicitly not assumed here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiCoefficientEnvelope

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic

/-- Actual prime bonds have a source-verified increasing order. -/
theorem bond_nondecreasing (n : ℕ) : bond n ≤ bond (n + 1) := by
  change (Nat.nth Nat.Prime n : ℝ) ≤ (Nat.nth Nat.Prime (n + 1) : ℝ)
  have h := (Nat.nth_strictMono Nat.infinite_setOfPred_prime).monotone (Nat.le_succ n)
  exact_mod_cast h

/-- Each actual prime ordinal is at least its ordinal plus two. -/
theorem bond_at_least_index (n : ℕ) : ((n + 2 : ℕ) : ℝ) ≤ bond n := by
  change ((n + 2 : ℕ) : ℝ) ≤ (Nat.nth Nat.Prime n : ℝ)
  exact_mod_cast Nat.add_two_le_nth_prime n

/-- Scalar l1-coefficient envelope of the genuine three-term
prime-Jacobi orthonormal polynomial recurrence. -/
def coeffEnvelope : ℕ → ℝ
  | 0 => 1
  | 1 => 1 / bond 0
  | n + 2 => coeffEnvelope (n + 1) / bond (n + 1) +
      (bond n / bond (n + 1)) * coeffEnvelope n

/-- All scalar envelope entries are nonnegative. -/
theorem coeffEnvelope_nonnegative (n : ℕ) : 0 ≤ coeffEnvelope n := by
  induction n using Nat.twoStepInduction with
  | zero => norm_num [coeffEnvelope]
  | one =>
      change 0 ≤ (1 : ℝ) / bond 0
      exact div_nonneg (by norm_num) (bond_pos 0).le
  | more n ih ih1 =>
      change 0 ≤ coeffEnvelope (n + 1) / bond (n + 1) +
        (bond n / bond (n + 1)) * coeffEnvelope n
      exact add_nonneg (div_nonneg ih1 (bond_pos _).le)
        (mul_nonneg (div_nonneg (bond_pos _).le (bond_pos _).le) ih)

/-- Uniform all-index polynomial-envelope bound, derived solely from
p_n >= n+2 and p_n <= p_(n+1). -/
theorem coeffEnvelope_le_index (n : ℕ) :
    coeffEnvelope n ≤ ((n : ℝ) + 2) / 2 := by
  induction n using Nat.twoStepInduction with
  | zero => norm_num [coeffEnvelope]
  | one =>
      change (1 : ℝ) / bond 0 ≤ (1 + 2) / 2
      have hp := bond_at_least_index 0
      have hpos := bond_pos 0
      have hh : (1 : ℝ) / bond 0 ≤ 1 :=
        (div_le_iff₀ hpos).mpr (by linarith)
      nlinarith
  | more n ih ih1 =>
      have hden : (0 : ℝ) < bond (n + 1) := bond_pos _
      have hmin : ((n : ℝ) + 3) ≤ bond (n + 1) := by
        convert bond_at_least_index (n + 1) using 1 <;> push_cast <;> ring
      have hsmall : coeffEnvelope (n + 1) / bond (n + 1) ≤ 1 / 2 := by
        apply (div_le_iff₀ hden).mpr
        have hupper : coeffEnvelope (n + 1) ≤ ((n : ℝ) + 3) / 2 := by
          simpa only [Nat.cast_add, Nat.cast_one] using ih1
        nlinarith [hupper]
      have hratio : bond n / bond (n + 1) ≤ 1 := by
        apply (div_le_iff₀ hden).mpr
        nlinarith [bond_nondecreasing n]
      have hsmall2 :
          (bond n / bond (n + 1)) * coeffEnvelope n ≤ coeffEnvelope n := by
        nlinarith [mul_nonneg (sub_nonneg.mpr hratio) (coeffEnvelope_nonnegative n)]
      change coeffEnvelope (n + 1) / bond (n + 1) +
        (bond n / bond (n + 1)) * coeffEnvelope n ≤
        (((n + 2 : ℕ) : ℝ) + 2) / 2
      push_cast
      linarith

/-- Integer prime gaps are at least one; the actual bond index matters. -/
theorem bond_succ_gap_one (n : ℕ) : bond n + 1 ≤ bond (n + 1) := by
  change (Nat.nth Nat.Prime n : ℝ) + 1 ≤
    (Nat.nth Nat.Prime (n + 1) : ℝ)
  have hstrict : Nat.nth Nat.Prime n < Nat.nth Nat.Prime (n + 1) :=
    (Nat.nth_strictMono Nat.infinite_setOfPred_prime) (Nat.lt_succ_self n)
  exact_mod_cast (Nat.succ_le_iff.mpr hstrict)

/-- A much sharper UNIFORM envelope: the three-term Jacobi
coefficient l1-norm is bounded by one for ALL prime bond ranks.
The proof uses the integer prime gap, not RH or any zero data. -/
theorem coeffEnvelope_le_one (n : ℕ) :
    coeffEnvelope n ≤ 1 := by
  induction n using Nat.twoStepInduction with
  | zero =>
      norm_num [coeffEnvelope]
  | one =>
      change (1 : ℝ) / bond 0 ≤ 1
      apply (div_le_iff₀ (bond_pos 0)).mpr
      have h : (2 : ℝ) ≤ bond 0 := by
        simpa only [zero_add, Nat.cast_ofNat] using bond_at_least_index 0
      linarith
  | more n ih ih1 =>
      change coeffEnvelope (n + 1) / bond (n + 1) +
        (bond n / bond (n + 1)) * coeffEnvelope n ≤ 1
      have hsum : coeffEnvelope (n + 1) +
          bond n * coeffEnvelope n ≤ 1 + bond n := by
        exact add_le_add ih1 (mul_le_mul_of_nonneg_left ih (bond_pos n).le)
      calc
        coeffEnvelope (n + 1) / bond (n + 1) +
            (bond n / bond (n + 1)) * coeffEnvelope n =
          (coeffEnvelope (n + 1) + bond n * coeffEnvelope n) /
            bond (n + 1) := by ring
        _ ≤ (1 + bond n) / bond (n + 1) :=
          div_le_div_of_nonneg_right hsum (bond_pos (n + 1)).le
        _ ≤ 1 := (div_le_iff₀ (bond_pos (n + 1))).mpr
          (bond_succ_gap_one n)

/-- The scalar prime coefficient envelope is nonnegative AND at most
one; the latter is much stronger than its previous linear bound. -/
theorem coeffEnvelope_mem_Icc (n : ℕ) :
    coeffEnvelope n ∈ Set.Icc (0 : ℝ) 1 :=
  ⟨coeffEnvelope_nonnegative n, coeffEnvelope_le_one n⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiCoefficientEnvelope
