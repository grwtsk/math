/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates
import Mathlib.LinearAlgebra.Matrix.Hermitian

/-!
# Exact complex quadratic reduction on the zero-sum subspace

The first coordinate of a zero-sum vector is the negative sum of its tail.
Substituting that identity in the full conjugate-transpose quadratic gives
the anchored matrix difference below. This keeps all complex directions and
does not assert positivity outside the constrained subspace.

The existing rational enclosure checker is applied to the reduced matrix;
no new checker is introduced. The two-point Green regression is a generic
finite algebra example, not an enclosure of an arithmetic sample matrix.
-/

set_option autoImplicit false
open scoped BigOperators ComplexConjugate

namespace GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction

open Matrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates

variable {n : ℕ}

/-- Coordinates after the distinguished first coordinate. -/
def tailVector (u : Fin (n + 1) → ℂ) : Fin n → ℂ := fun i => u i.succ

/-- The unique zero-sum vector with the specified tail. -/
def zeroSumExtension (z : Fin n → ℂ) : Fin (n + 1) → ℂ :=
  Fin.cases (-(∑ i, z i)) z

/-- The complete anchored difference, including both cross terms. -/
def reducedMatrix (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ) :
    Matrix (Fin n) (Fin n) ℂ := fun i j =>
  H i.succ j.succ - H i.succ 0 - H 0 j.succ + H 0 0

theorem sum_zeroSumExtension (z : Fin n → ℂ) :
    (∑ i, zeroSumExtension z i) = 0 := by
  simp [zeroSumExtension, Fin.sum_univ_succ]

theorem tailVector_zeroSumExtension (z : Fin n → ℂ) :
    tailVector (zeroSumExtension z) = z := by
  funext i
  rfl

/-- Completeness of the coordinates: every zero-sum vector is reconstructed. -/
theorem zeroSumExtension_tailVector (u : Fin (n + 1) → ℂ)
    (hu : (∑ i, u i) = 0) : zeroSumExtension (tailVector u) = u := by
  have hu0 : u 0 = -(∑ i : Fin n, u i.succ) := by
    rw [Fin.sum_univ_succ] at hu
    exact eq_neg_of_add_eq_zero_left hu
  funext i
  refine Fin.cases ?_ (fun j => ?_) i
  · simpa [zeroSumExtension, tailVector] using hu0.symm
  · rfl

private theorem sum_mul_zeroSumExtension (a : Fin (n + 1) → ℂ) (z : Fin n → ℂ) :
    (∑ i, a i * zeroSumExtension z i) = ∑ i, (a i.succ - a 0) * z i := by
  simp [Fin.sum_univ_succ, zeroSumExtension, Finset.mul_sum,
    Finset.sum_sub_distrib, sub_mul]
  ring

private theorem sum_conj_zeroSumExtension_mul (z : Fin n → ℂ) (a : Fin (n + 1) → ℂ) :
    (∑ i, conj (zeroSumExtension z i) * a i) =
      ∑ i, conj (z i) * (a i.succ - a 0) := by
  simp [Fin.sum_univ_succ, zeroSumExtension, map_sum, Finset.sum_mul,
    Finset.sum_sub_distrib, mul_sub]
  ring

/-- The full complex pairing is preserved before taking its real part. -/
theorem pairing_zeroSumExtension
    (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ) (z : Fin n → ℂ) :
    (∑ i, ∑ j, conj (zeroSumExtension z i) * H i j * zeroSumExtension z j) =
      ∑ i, ∑ j, conj (z i) * reducedMatrix H i j * z j := by
  calc
    (∑ i, ∑ j, conj (zeroSumExtension z i) * H i j * zeroSumExtension z j) =
        ∑ i, conj (zeroSumExtension z i) * (∑ j, H i j * zeroSumExtension z j) := by
          simp only [Finset.mul_sum, mul_assoc]
    _ = ∑ i, conj (zeroSumExtension z i) * (∑ j, (H i j.succ - H i 0) * z j) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [sum_mul_zeroSumExtension]
    _ = ∑ i, conj (z i) *
        ((∑ j, (H i.succ j.succ - H i.succ 0) * z j) -
          ∑ j, (H 0 j.succ - H 0 0) * z j) :=
          sum_conj_zeroSumExtension_mul z _
    _ = ∑ i, ∑ j, conj (z i) * reducedMatrix H i j * z j := by
          apply Finset.sum_congr rfl
          intro i _
          rw [← Finset.sum_sub_distrib, Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          simp only [reducedMatrix]
          ring

theorem complexQuadratic_zeroSumExtension
    (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ) (z : Fin n → ℂ) :
    complexQuadratic H (zeroSumExtension z) = complexQuadratic (reducedMatrix H) z := by
  exact congrArg Complex.re (pairing_zeroSumExtension H z)

/-- Exact return from reduced coordinates to the original constrained form. -/
theorem complexQuadratic_eq_reduced_of_sum_zero
    (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ)
    (u : Fin (n + 1) → ℂ) (hu : (∑ i, u i) = 0) :
    complexQuadratic H u = complexQuadratic (reducedMatrix H) (tailVector u) := by
  rw [← zeroSumExtension_tailVector u hu]
  rw [complexQuadratic_zeroSumExtension, tailVector_zeroSumExtension]

theorem reducedMatrix_isHermitian
    (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ) (hH : H.IsHermitian) :
    (reducedMatrix H).IsHermitian := by
  apply Matrix.IsHermitian.ext
  intro i j
  simp only [reducedMatrix, star_add, star_sub, hH.apply]
  ring

/-- Discarding the first coordinate cannot increase the squared Euclidean norm. -/
theorem sum_tail_norm_sq_le (u : Fin (n + 1) → ℂ) :
    (∑ i : Fin n, ‖u i.succ‖ ^ 2) ≤ ∑ i : Fin (n + 1), ‖u i‖ ^ 2 := by
  rw [Fin.sum_univ_succ]
  exact le_add_of_nonneg_left (sq_nonneg ‖u 0‖)

/-- The identity metric on real and imaginary coordinates retains the complete
complex squared norm, with no factor of two. -/
theorem quadratic_identity_splitVector (z : Fin n → ℂ) :
    quadratic (1 : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℝ)
      (splitVector z) = ∑ i, ‖z i‖ ^ 2 := by
  simp [quadratic, Matrix.one_mulVec, dotProduct, splitVector,
    Fintype.sum_sum_type, Complex.sq_norm, Complex.normSq_apply,
    Finset.sum_add_distrib]

/-- A certificate for the reduced source returns a bound on every original
zero-sum vector. The exact packet metric and tolerance are retained. -/
theorem checked_reduced_enclosure_lower {ν : Type*} [Fintype ν]
    (P : Packet (Fin n ⊕ Fin n))
    (C : Certificate ℚ (Fin n ⊕ Fin n) Empty Empty ν)
    (H : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ)
    (hencloses : Encloses P (realification (reducedMatrix H)))
    (hcheck : intervalCheck P C = true)
    (u : Fin (n + 1) → ℂ) (hu : (∑ i, u i) = 0) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
      (splitVector (tailVector u)) ≤ complexQuadratic H u := by
  rw [complexQuadratic_eq_reduced_of_sum_zero H u hu]
  exact checked_complex_enclosure_lower P C (reducedMatrix H) hencloses hcheck
    (tailVector u)

namespace TwoPointGreen

/-- A generic two-point Green matrix, indefinite on the full space. -/
def matrix : Matrix (Fin 2) (Fin 2) ℂ := !![0, -1; -1, 0]

theorem reducedMatrix_eq : reducedMatrix matrix = !![(2 : ℂ)] := by
  ext i j
  fin_cases i
  fin_cases j
  norm_num [reducedMatrix, matrix]

/-- Exact reduced realification; zero radius and tolerance. -/
def packet : Packet (Fin 1 ⊕ Fin 1) where
  center := (2 : ℚ) • 1
  radius := 0
  metric := 1
  tolerance := 0

/-- Two copies of each unit row give the rational Gram matrix `2 I`. -/
def certificate :
    Certificate ℚ (Fin 1 ⊕ Fin 1) Empty Empty (Fin 2 × (Fin 1 ⊕ Fin 1)) where
  gram := fun r j => if r.2 = j then 1 else 0
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun e => nomatch e

/-- Acceptance is evaluated by the existing executable rational checker. -/
theorem checks : intervalCheck packet certificate = true := by decide +kernel

theorem encloses : Encloses packet (realification (reducedMatrix matrix)) := by
  rw [reducedMatrix_eq]
  intro i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    norm_num [Encloses, packet, realification, Matrix.fromBlocks, Matrix.one_apply]

/-- The accepted rational certificate applies to every complex zero-sum input. -/
theorem checked_nonnegative (u : Fin 2 → ℂ) (hu : (∑ i, u i) = 0) :
    0 ≤ complexQuadratic matrix u := by
  have h := checked_reduced_enclosure_lower packet certificate matrix encloses checks u hu
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- Hostile control: the full matrix is indefinite, so the constraint cannot
be silently dropped from the certified statement. -/
theorem indefinite :
    complexQuadratic matrix ![(1 : ℂ), 1] = -2 ∧
      complexQuadratic matrix ![(1 : ℂ), -1] = 2 := by
  constructor <;> norm_num [complexQuadratic, matrix, Fin.sum_univ_two]

end TwoPointGreen

end GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction
