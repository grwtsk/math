/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration / kernel replay / transitive axiom audit: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiPolynomialKrylov
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiParitySquare
import Mathlib.Tactic

/-!
# Genuine prime Jacobi basis and vector-polynomial recursion

Unlike the prior coefficient row equivalence under a hypothesis,
the following lemmas work with the ACTUAL tridiagonal action and
explicit prime bonds. They establish an independent finite-vector
three-term recurrence, which is the mathematical engine behind the
P_n(J)e0=e_n polynomial/Krylov identification.

One additional coefficient-action commuting lemma is required to
identify the separately generated monomial coefficients with these
recurrence vectors; that source-level bridge is explicitly not claimed
as Lean-verified or replaced with a zeta/RH assumption.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiRecurrenceAction

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiParitySquare
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov

/-- The actual standard coordinate vector, not a fitted eigenvector. -/
def basisVertex {N : ℕ} (n : Fin N) : Fin N → ℝ :=
  fun i => if i = n then 1 else 0

theorem applyJacobi_basisVertex {N : ℕ} (n i : Fin N) :
    applyJacobi (basisVertex n) i = knotWeight i n := by
  classical
  simp [applyJacobi, basisVertex]

theorem rootVector_eq_basisVertex {N : ℕ} (h : 0 < N) :
    rootVector N = basisVertex (⟨0, h⟩ : Fin N) := by
  funext i
  simp [rootVector, basisVertex, Fin.ext_iff]

/-- The source support lemma makes the root edge unique. -/
theorem applyJacobi_basis_zero (N : ℕ) (h : 1 < N) :
    applyJacobi (basisVertex (⟨0, by omega⟩ : Fin N)) =
      fun i => bond 0 * basisVertex (⟨1, h⟩ : Fin N) i := by
  classical
  funext i
  rw [applyJacobi_basisVertex]
  by_cases hi : i.val = 1
  · have hd : Nat.dist i.val 0 = 1 := by
      unfold Nat.dist
      omega
    have hm : min i.val 0 = 0 := by omega
    have hcoord : basisVertex (⟨1, h⟩ : Fin N) i = 1 := by
      simp [basisVertex, Fin.ext_iff, hi]
    simp [knotWeight, hd, hm, hcoord]
  · have hd : Nat.dist i.val 0 ≠ 1 := by
      unfold Nat.dist
      omega
    have hcoord : basisVertex (⟨1, h⟩ : Fin N) i = 0 := by
      simp [basisVertex, Fin.ext_iff, hi]
    simp [knotWeight, hd, hcoord]

/-- Every interior prime-Jacobi basis edge is the exact three-term
tridiagonal recurrence. No spectral theorem is needed. -/
theorem applyJacobi_basis_succ (N n : ℕ) (h : n + 2 < N) :
    applyJacobi (basisVertex (⟨n + 1, by omega⟩ : Fin N)) =
      fun i => bond n * basisVertex (⟨n, by omega⟩ : Fin N) i +
        bond (n + 1) * basisVertex (⟨n + 2, h⟩ : Fin N) i := by
  classical
  funext i
  rw [applyJacobi_basisVertex]
  by_cases hleft : i.val = n
  · have hd : Nat.dist i.val (n + 1) = 1 := by
      unfold Nat.dist
      omega
    have hm : min i.val (n + 1) = n := by omega
    have ha : basisVertex (⟨n, by omega⟩ : Fin N) i = 1 := by
      simp [basisVertex, Fin.ext_iff, hleft]
    have hb : basisVertex (⟨n + 2, h⟩ : Fin N) i = 0 := by
      simp [basisVertex, Fin.ext_iff]
      omega
    simp [knotWeight, hd, hm, ha, hb]
  · by_cases hright : i.val = n + 2
    · have hd : Nat.dist i.val (n + 1) = 1 := by
        unfold Nat.dist
        omega
      have hm : min i.val (n + 1) = n + 1 := by omega
      have ha : basisVertex (⟨n, by omega⟩ : Fin N) i = 0 := by
        simp [basisVertex, Fin.ext_iff]
        omega
      have hb : basisVertex (⟨n + 2, h⟩ : Fin N) i = 1 := by
        simp [basisVertex, Fin.ext_iff, hright]
      simp [knotWeight, hd, hm, ha, hb]
    · have hzero : knotWeight i (⟨n + 1, by omega⟩ : Fin N) = 0 := by
        by_contra hz
        rcases knotWeight_support_successor i
            (⟨n + 1, by omega⟩ : Fin N) hz with h1 | h2
        · omega
        · omega
      have ha : basisVertex (⟨n, by omega⟩ : Fin N) i = 0 := by
        simp [basisVertex, Fin.ext_iff, hleft]
      have hb : basisVertex (⟨n + 2, h⟩ : Fin N) i = 0 := by
        simp [basisVertex, Fin.ext_iff, hright]
      simp [hzero, ha, hb]

/-- Evaluate the abstract three-term recurrence directly as vectors
using the genuine source Jacobi action. -/
def primeRecurrenceVector (N : ℕ) : ℕ → Fin N → ℝ
  | 0 => rootVector N
  | 1 => fun i => applyJacobi (rootVector N) i / bond 0
  | n + 2 => fun i =>
      (applyJacobi (primeRecurrenceVector N (n + 1)) i -
        bond n * primeRecurrenceVector N n i) / bond (n + 1)

/-- Exact vector recurrence for all n strictly inside the finite
prime-only Jacobi section, including the source dimension boundary. -/
theorem primeRecurrenceVector_eq_basis (N : ℕ) :
    ∀ n : ℕ, ∀ h : n < N,
      primeRecurrenceVector N n =
        basisVertex (⟨n, h⟩ : Fin N) := by
  intro n
  induction n using Nat.twoStepInduction with
  | zero =>
      intro h
      change rootVector N = basisVertex (⟨0, h⟩ : Fin N)
      exact rootVector_eq_basisVertex h
  | one =>
      intro h
      have hzero : 0 < N := by omega
      have hbase := applyJacobi_basis_zero N h
      funext i
      change applyJacobi (rootVector N) i / bond 0 =
        basisVertex (⟨1, h⟩ : Fin N) i
      rw [rootVector_eq_basisVertex hzero]
      rw [congrFun hbase i]
      exact div_mul_cancel₀ _ (ne_of_gt (bond_pos 0))
  | more n ih ih1 =>
      intro h
      have hn : n < N := by omega
      have hn1 : n + 1 < N := by omega
      have hbase := applyJacobi_basis_succ N n h
      funext i
      change
        (applyJacobi (primeRecurrenceVector N (n + 1)) i -
          bond n * primeRecurrenceVector N n i) / bond (n + 1) =
        basisVertex (⟨n + 2, h⟩ : Fin N) i
      rw [ih hn, ih1 hn1]
      rw [congrFun hbase i]
      field_simp [ne_of_gt (bond_pos (n + 1))]
      ring

/-- A single exact coefficient-evaluation identity is sufficient to
complete the polynomial-to-inverse-Krylov bridge. The extra premise
is precisely the still-unproved coefficient-action commuting lemma;
it is NOT assumed by any theorem claimed unconditional. -/
theorem recurrence_polynomial_eq_inverse_of_action_compatibility
    (N : ℕ)
    (hCompat : ∀ n : Fin N,
      primePolynomialAction N (recurrencePolynomialMatrix N n) =
        primeRecurrenceVector N n.val) :
    recurrencePolynomialMatrix N = coeffMatrix N := by
  apply recurrence_polynomial_eq_inverse_krylov_of_basis N
  intro i n
  rw [hCompat n, primeRecurrenceVector_eq_basis N n.val n.isLt]
  simp [basisVertex]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiRecurrenceAction
