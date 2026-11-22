/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, fresh kernel replay and transitive axioms: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiRecurrenceAction
import Mathlib.Tactic

/-!
# Algebraic prime polynomial -> literal Krylov basis, without RH

This closes the mathematical coefficient-action interface by two finite
sum identities: multiplying a polynomial by x shifts its coefficients
and Jacobi action commutes with every original Krylov power. Its only
degree-bound input is the explicitly proved finite recurrence
coefficient support. The code is a proposed Lean implementation,
NOT kernel evidence.

The separate coefficient l1 triangle estimate and its all-N
consequence are still to be checked in the source proof neighborhood.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialActionCompatibility

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiHankelInverse
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiRecurrenceAction

/-- Unbounded monomial coefficient sequence: degree is tracked by
finite ranges, instead of artificially truncating a polynomial at N. -/
def actionPrefix (N : ℕ) (coeff : ℕ → ℝ) (k : ℕ) : Fin N → ℝ :=
  fun i => ∑ j ∈ Finset.range k,
    coeff j * iterateJacobi j (rootVector N) i

def shiftedCoeff (coeff : ℕ → ℝ) : ℕ → ℝ
  | 0 => 0
  | j + 1 => coeff j

/-- The true Jacobi recurrence coefficients are supported in
degrees at most n; a boundary coefficient is not silently dropped. -/
theorem recurrencePolynomialCoefficient_support (n j : ℕ)
    (h : n < j) :
    recurrencePolynomialCoefficient n j = 0 := by
  induction n using Nat.twoStepInduction generalizing j with
  | zero =>
      have hj : j ≠ 0 := by omega
      simp [recurrencePolynomialCoefficient, hj]
  | one =>
      have hj : j ≠ 1 := by omega
      simp [recurrencePolynomialCoefficient, hj]
  | more n ih ih1 =>
      have hj : j ≠ 0 := by omega
      have hs : n + 1 < j - 1 := by omega
      have ht : n < j := by omega
      change ((if j = 0 then 0 else
          recurrencePolynomialCoefficient (n + 1) (j - 1)) -
          bond n * recurrencePolynomialCoefficient n j) /
        bond (n + 1) = 0
      rw [if_neg hj, ih1 (j - 1) hs, ih j ht]
      ring

/-- Exact finite-sum shift, including the zero initial term. -/
theorem shiftedCoeff_sum (coeff : ℕ → ℝ)
    (f : ℕ → ℝ) (k : ℕ) :
    (∑ j ∈ Finset.range (k + 1), shiftedCoeff coeff j * f j) =
      ∑ j ∈ Finset.range k, coeff j * f (j + 1) := by
  rw [Finset.sum_range_succ']
  simp [shiftedCoeff]

/-- Finite-range original prime Jacobi action is linear and commutes
with the monomial basis, hence it is a coefficient shift. -/
theorem actionPrefix_shift (N : ℕ) (coeff : ℕ → ℝ)
    (k : ℕ) :
    actionPrefix N (shiftedCoeff coeff) (k + 1) =
      applyJacobi (actionPrefix N coeff k) := by
  classical
  funext i
  change (∑ j ∈ Finset.range (k + 1),
    shiftedCoeff coeff j * iterateJacobi j (rootVector N) i) =
      ∑ u : Fin N, knotWeight i u *
        (∑ j ∈ Finset.range k,
          coeff j * iterateJacobi j (rootVector N) u)
  rw [shiftedCoeff_sum]
  calc
    (∑ j ∈ Finset.range k,
        coeff j * iterateJacobi (j + 1) (rootVector N) i) =
      ∑ j ∈ Finset.range k, ∑ u : Fin N,
        knotWeight i u * (coeff j *
          iterateJacobi j (rootVector N) u) := by
          apply Finset.sum_congr rfl
          intro j _
          simp only [iterateJacobi_succ, applyJacobi]
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro u _
          ring
    _ = ∑ u : Fin N, knotWeight i u *
        (∑ j ∈ Finset.range k,
          coeff j * iterateJacobi j (rootVector N) u) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro u _
          rw [Finset.mul_sum]

/-- Extension by an all-zero high-degree tail changes no finite
prime-Jacobi polynomial action. -/
theorem actionPrefix_extend (N : ℕ) (coeff : ℕ → ℝ)
    (k t : ℕ)
    (h : ∀ j, k ≤ j → coeff j = 0) :
    actionPrefix N coeff (k + t) = actionPrefix N coeff k := by
  induction t with
  | zero => simp
  | succ t ih =>
      funext i
      have hk : coeff (k + t) = 0 := h _ (Nat.le_add_right k t)
      change (∑ j ∈ Finset.range (k + (t + 1)),
          coeff j * iterateJacobi j (rootVector N) i) =
        actionPrefix N coeff k i
      rw [show k + (t + 1) = (k + t) + 1 by omega,
        Finset.sum_range_succ, hk, zero_mul, add_zero]
      exact congrFun ih i

/-- Generic linearity of polynomial action, including division only
by the real scalar; no source RH or spectral inference. -/
theorem actionPrefix_sub_div (N k : ℕ)
    (r s : ℕ → ℝ) (a b : ℝ) :
    actionPrefix N (fun j => (r j - a * s j) / b) k =
      fun i =>
        (actionPrefix N r k i - a * actionPrefix N s k i) / b := by
  funext i
  simp only [actionPrefix]
  rw [← Finset.sum_sub_distrib]
  rw [← Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The independently defined natural-number coefficient recursion
evaluates to the source-defined *vector* three-term recurrence.
Its proof uses exactly finite-sum reindexing, not a spectral theorem. -/
theorem recurrence_actionPrefix_eq_vector (N n : ℕ) :
    actionPrefix N (recurrencePolynomialCoefficient n) (n + 1) =
      primeRecurrenceVector N n := by
  induction n using Nat.twoStepInduction with
  | zero =>
      funext i
      simp [actionPrefix, recurrencePolynomialCoefficient,
        primeRecurrenceVector]
  | one =>
      funext i
      simp [actionPrefix, recurrencePolynomialCoefficient,
        primeRecurrenceVector, iterateJacobi_succ]
      ring
  | more n ih ih1 =>
      have hcoeff : recurrencePolynomialCoefficient (n + 2) =
          (fun j => (shiftedCoeff
             (recurrencePolynomialCoefficient (n + 1)) j -
             bond n * recurrencePolynomialCoefficient n j) /
             bond (n + 1)) := by
        funext j
        cases j with
        | zero => simp [recurrencePolynomialCoefficient, shiftedCoeff]
        | succ j => rfl
      rw [hcoeff, actionPrefix_sub_div]
      have hshift := actionPrefix_shift N
        (recurrencePolynomialCoefficient (n + 1)) (n + 2)
      have hdrop : actionPrefix N
          (recurrencePolynomialCoefficient n) (n + 3) =
          actionPrefix N (recurrencePolynomialCoefficient n) (n + 1) := by
        have h := actionPrefix_extend N
          (recurrencePolynomialCoefficient n) (n + 1) 2
          (fun j hj =>
            recurrencePolynomialCoefficient_support n j (by omega))
        simpa only [show n + 1 + 2 = n + 3 by omega] using h
      rw [hshift, hdrop, ih, ih1]
      rfl

/-- A finite polynomial row in degree n<N equals its natural-index
finite range; support makes the high tail identically zero. -/
theorem finitePolynomialAction_eq_prefix (N : ℕ) (n : Fin N) :
    primePolynomialAction N (recurrencePolynomialMatrix N n) =
      actionPrefix N (recurrencePolynomialCoefficient n.val)
        (n.val + 1) := by
  classical
  funext i
  change (∑ j : Fin N,
      recurrencePolynomialCoefficient n.val j.val *
        iterateJacobi j.val (rootVector N) i) =
    ∑ j ∈ Finset.range (n.val + 1),
      recurrencePolynomialCoefficient n.val j *
        iterateJacobi j (rootVector N) i
  rw [Fin.sum_univ_eq_sum_range]
  have hlo : n.val + 1 ≤ N := Nat.succ_le_iff.mpr n.isLt
  rw [← Finset.sum_range_add_sum_Ico
    (fun j => recurrencePolynomialCoefficient n.val j *
      iterateJacobi j (rootVector N) i) hlo]
  have hzero : (∑ j ∈ Finset.Ico (n.val + 1) N,
      recurrencePolynomialCoefficient n.val j *
      iterateJacobi j (rootVector N) i) = 0 := by
    apply Finset.sum_eq_zero
    intro j hj
    have hj1 : n.val < j := by
      have := (Finset.mem_Ico.mp hj).1
      omega
    simp [recurrencePolynomialCoefficient_support n.val j hj1]
  simp [hzero]

/-- The polynomial-to-Krylov source compatibility proof candidate:
the recurrence is evaluated by ACTUAL prime adjacency and is not
postulated to be an eigenvalue/zero oracle. -/
theorem recurrence_polynomial_action_compatibility
    (N : ℕ) (n : Fin N) :
    primePolynomialAction N (recurrencePolynomialMatrix N n) =
      primeRecurrenceVector N n.val := by
  rw [finitePolynomialAction_eq_prefix]
  exact recurrence_actionPrefix_eq_vector N n.val

/-- The main mathematical polynomial inverse identification has no
RH hypothesis, no abstract compatibility parameter and no new axiom.
Its candidate implementation must be elaborated before promotion. -/
theorem recurrencePolynomialMatrix_eq_coeffMatrix (N : ℕ) :
    recurrencePolynomialMatrix N = coeffMatrix N := by
  apply recurrence_polynomial_eq_inverse_of_action_compatibility N
  exact recurrence_polynomial_action_compatibility N

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialActionCompatibility
