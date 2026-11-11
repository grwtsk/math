/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteMomentCertificates
import GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-!
# Rational interval quadratic certificates, with complex source return

OCERT-1 follow-up, math issue #1807; research issue #47. Reuses the original
rational Gram/multiplier checker, Program 6's entrywise error theorem and
Program 3's negative-index interface. No second PSD checker is introduced.

For a symmetric nonnegative radius matrix E, charge its entire row-diagonal
penalty D(E), not a finite observation without its error. A checked identity
for M + epsilon G - D(E) implies Q_H(x) >= -epsilon Q_G(x) whenever the TRUE
matrix H lies in the specified entrywise enclosure. G is the retained metric;
it need not be an identity matrix or invertible. Complex tests are handled by
an exact realification, including the imaginary off-diagonal blocks.

These are standard finite algebra/inequality consequences, not a new arithmetic
positivity theorem. Exact arithmetic enclosure, admissibility, all-window
coverage and full pole-inclusive Weil source return remain separate premises.
SOURCE_PROOF_CANDIDATE: elaboration, kernel replay, axiom audit and independent
review NOT_RUN. No executable byte parser or arithmetic evaluator is asserted.
-/

set_option autoImplicit false
open scoped BigOperators
open Matrix
open scoped ComplexConjugate

namespace GRWTSK.LinearAlgebra.RationalEnclosureCertificates

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver
open GRWTSK.HermiteMomentCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

variable {ι ν : Type*} [Fintype ι] [DecidableEq ι] [Fintype ν]

/-- Exact agreement of the two already-maintained quadratic conventions. -/
theorem quadratic_eq_quadraticValue (M : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic M x = quadraticValue M x := by
  simp only [quadratic, quadraticValue, Matrix.mulVec, dotProduct,
    Finset.mul_sum, mul_assoc]

/-- Subtraction in the existing quadratic evaluator. -/
theorem quadratic_subtraction (A B : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (A - B) x = quadratic A x - quadratic B x := by
  simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub]

/-- Row-dependent error price; retaining it avoids a maximum-row scalarization. -/
def rowPenalty {R : Type*} [Semiring R] (E : Matrix ι ι R) : Matrix ι ι R :=
  Matrix.diagonal (fun i => ∑ j, E i j)

/-- The penalty is the exact diagonal quadratic, not an operator-norm claim. -/
theorem quadratic_rowPenalty (E : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (rowPenalty E) x = ∑ i, (∑ j, E i j) * x i ^ 2 := by
  simp [quadratic, rowPenalty, Matrix.mulVec, dotProduct, Matrix.diagonal,
    pow_two, mul_comm, mul_left_comm, mul_assoc]

/-- Young's inequality summed over ALL entries of a symmetric radius matrix. -/
theorem errorBudget_le_rowPenalty (E : Matrix ι ι ℝ) (x : ι → ℝ)
    (hE : ∀ i j, 0 ≤ E i j) (hsym : ∀ i j, E i j = E j i) :
    errorBudget E x ≤ quadratic (rowPenalty E) x := by
  have hentry (i j : ι) :
      2 * (E i j * |x i * x j|) ≤ E i j * x i ^ 2 + E i j * x j ^ 2 := by
    have hy : 2 * |x i * x j| ≤ x i ^ 2 + x j ^ 2 := by
      rw [abs_mul]
      nlinarith [sq_nonneg (|x i| - |x j|), sq_abs (x i), sq_abs (x j)]
    have hh := mul_le_mul_of_nonneg_left hy (hE i j)
    nlinarith
  have hswap : (∑ i, ∑ j, E i j * x j ^ 2) = ∑ i, ∑ j, E i j * x i ^ 2 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [hsym j i]
  have hsum : 2 * errorBudget E x ≤ 2 * quadratic (rowPenalty E) x := by
    calc
      2 * errorBudget E x = ∑ i, ∑ j, 2 * (E i j * |x i * x j|) := by
        simp only [errorBudget, Finset.mul_sum]
      _ ≤ ∑ i, ∑ j, (E i j * x i ^ 2 + E i j * x j ^ 2) :=
        Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => hentry i j
      _ = 2 * quadratic (rowPenalty E) x := by
        simp only [Finset.sum_add_distrib]
        rw [hswap, quadratic_rowPenalty]
        simp only [Finset.sum_mul]
        ring
  linarith

/-- Finite rational input data. No conclusion or enclosure proof is a field. -/
structure Packet (ι : Type*) [Fintype ι] [DecidableEq ι] where
  center : Matrix ι ι ℚ
  radius : Matrix ι ι ℚ
  metric : Matrix ι ι ℚ
  tolerance : ℚ
  deriving DecidableEq

/-- The exact rational matrix passed to the pre-existing finite checker. -/
def Packet.lowerTarget (P : Packet ι) : Matrix ι ι ℚ :=
  P.center + P.tolerance • P.metric - rowPenalty P.radius

/-- This guard validates radii and tolerance; it does not validate a source. -/
def Packet.Guard (P : Packet ι) : Prop :=
  (∀ i j, 0 ≤ P.radius i j) ∧
    (∀ i j, P.radius i j = P.radius j i) ∧ 0 ≤ P.tolerance

instance (P : Packet ι) : Decidable P.Guard := by
  unfold Packet.Guard
  infer_instance

/-- Executable rational arithmetic only. The original checker owns the identity. -/
def intervalCheck (P : Packet ι) (C : Certificate ℚ ι Empty Empty ν) : Bool :=
  decide P.Guard && check (matrixProblem P.lowerTarget) C

/-- The true matrix must be enclosed, at this exact packet and source. -/
def Encloses (P : Packet ι) (H : Matrix ι ι ℝ) : Prop :=
  ∀ i j, |H i j - (P.center i j : ℝ)| ≤ (P.radius i j : ℝ)

/-- Cast the complete target identity, rather than testing only rational vectors. -/
theorem lowerTarget_cast (P : Packet ι) :
    (fun i j => (P.lowerTarget i j : ℝ)) =
      (fun i j => (P.center i j : ℝ)) +
        (P.tolerance : ℝ) • (fun i j => (P.metric i j : ℝ)) -
          rowPenalty (fun i j => (P.radius i j : ℝ)) := by
  ext i j
  by_cases hij : i = j
  · subst j
    simp [Packet.lowerTarget, rowPenalty, Matrix.diagonal]
  · simp [Packet.lowerTarget, rowPenalty, Matrix.diagonal, hij]

/-- Core rule: exact rational acceptance gives an error-safe bound for all REAL
vectors in the true enclosed matrix, including singular metric directions. -/
theorem checked_enclosure_lower (P : Packet ι)
    (C : Certificate ℚ ι Empty Empty ν) (H : Matrix ι ι ℝ)
    (hencloses : Encloses P H) (hcheck : intervalCheck P C = true) (x : ι → ℝ) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ)) x ≤
      quadratic H x := by
  obtain ⟨hg, hc⟩ := Bool.and_eq_true.mp hcheck
  have hguard : P.Guard := of_decide_eq_true hg
  have hrow := errorBudget_le_rowPenalty (fun i j => (P.radius i j : ℝ)) x
    (fun i j => Rat.cast_nonneg.mpr (hguard.1 i j))
    (fun i j => congrArg (fun r : ℚ => (r : ℝ)) (hguard.2.1 i j))
  have herr := abs_quadraticValue_sub_le_errorBudget H
    (fun i j => (P.center i j : ℝ)) (fun i j => (P.radius i j : ℝ)) x hencloses
  rw [← quadratic_eq_quadraticValue, ← quadratic_eq_quadraticValue] at herr
  have hlo := (abs_le.mp herr).1
  have hcert := checked_rational_matrix_nonneg P.lowerTarget C hc x
  rw [lowerTarget_cast, quadratic_subtraction, quadratic_add, quadratic_smul] at hcert
  linarith

/-- A lower comparison with the ORIGINAL form is sufficient; a numerical matrix
without this comparison does not acquire arithmetic meaning. -/
theorem checked_source_lower (P : Packet ι)
    (C : Certificate ℚ ι Empty Empty ν) (H : Matrix ι ι ℝ) (source : (ι → ℝ) → ℝ)
    (hencloses : Encloses P H) (hcheck : intervalCheck P C = true)
    (hsource : ∀ x, quadratic H x ≤ source x) (x : ι → ℝ) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ)) x ≤ source x :=
  (checked_enclosure_lower P C H hencloses hcheck x).trans (hsource x)

/-- Connect to Program 3: acceptance makes the TOLERANCE-SHIFTED form have zero
real negative index. It does not make the unshifted form nonnegative for free. -/
theorem checked_shifted_negativeIndex_zero (P : Packet ι)
    (C : Certificate ℚ ι Empty Empty ν) (H : Matrix ι ι ℝ)
    (hencloses : Encloses P H) (hcheck : intervalCheck P C = true) :
    GRWTSK.LinearAlgebra.NegativeIndex.negativeIndex (𝕜 := ℝ)
      (fun x => quadratic H x +
        (P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ)) x) = 0 := by
  apply GRWTSK.LinearAlgebra.NegativeIndex.negativeIndex_eq_zero_of_nonneg
  intro x
  have h := checked_enclosure_lower P C H hencloses hcheck x
  linarith

/-- A fixed nonnegative metric price is harmless in the accuracy limit. Zero
price is allowed; no division by a zero norm or strict numerical margin occurs. -/
theorem nonneg_of_scaled_dyadic_lower {a mass : ℝ} (hmass : 0 ≤ mass)
    (lower : ∀ k : ℕ, -((1 / 2 : ℝ) ^ k) * mass ≤ a) : 0 ≤ a := by
  by_cases hz : mass = 0
  · simpa [hz] using lower 0
  have hp : 0 < mass := lt_of_le_of_ne hmass (Ne.symm hz)
  apply nonneg_of_small_error_lower_bounds (fun k => (1 / 2 : ℝ) ^ k * mass)
  · intro δ hδ
    obtain ⟨k, hk⟩ := dyadic_errors_arbitrarily_small (δ / mass) (div_pos hδ hp)
    exact ⟨k, (lt_div_iff₀ hp).mp hk⟩
  · intro k
    simpa only [neg_mul] using lower k

/-- Realification retains all imaginary coupling entries. -/
def realification (H : Matrix ι ι ℂ) : Matrix (ι ⊕ ι) (ι ⊕ ι) ℝ :=
  Matrix.fromBlocks (fun i j => (H i j).re) (fun i j => -(H i j).im)
    (fun i j => (H i j).im) (fun i j => (H i j).re)

def splitVector (v : ι → ℂ) : (ι ⊕ ι) → ℝ :=
  Sum.elim (fun i => (v i).re) (fun i => (v i).im)

/-- The real part of the conjugate-transpose quadratic, not a transpose square.
For a Hermitian source this is the actual real quadratic value. -/
noncomputable def complexQuadratic (H : Matrix ι ι ℂ) (v : ι → ℂ) : ℝ :=
  (∑ i, ∑ j, conj (v i) * H i j * v j).re

/-- Exact complex-to-real return. No reality restriction on the test vector. -/
theorem quadratic_realification (H : Matrix ι ι ℂ) (v : ι → ℂ) :
    quadratic (realification H) (splitVector v) = complexQuadratic H v := by
  have hentry (i j : ι) : (conj (v i) * H i j * v j).re =
      (v i).re * (H i j).re * (v j).re -
      (v i).re * (H i j).im * (v j).im +
      (v i).im * (H i j).im * (v j).re +
      (v i).im * (H i j).re * (v j).im := by
    simp only [Complex.mul_re, Complex.mul_im, Complex.conj_re, Complex.conj_im]
    ring
  have hre (f : ι → ℂ) : (∑ i, f i).re = ∑ i, (f i).re := by
    exact map_sum Complex.reAddGroupHom f Finset.univ
  rw [quadratic_eq_quadraticValue]
  simp only [complexQuadratic, hre]
  simp_rw [hentry]
  simp [quadraticValue, realification, splitVector, Matrix.fromBlocks,
    Fintype.sum_sum_type, Finset.sum_add_distrib, Finset.sum_sub_distrib,
    Finset.sum_neg_distrib, mul_neg, neg_mul, sub_eq_add_neg, add_assoc] <;> ring

/-- All complex directions inherit the rational bound on the realified matrix.
The supplied enclosure must cover both real and imaginary source entries. -/
theorem checked_complex_enclosure_lower (P : Packet (ι ⊕ ι))
    (C : Certificate ℚ (ι ⊕ ι) Empty Empty ν) (H : Matrix ι ι ℂ)
    (hencloses : Encloses P (realification H)) (hcheck : intervalCheck P C = true)
    (v : ι → ℂ) :
    -(P.tolerance : ℝ) *
        quadratic (fun i j => (P.metric i j : ℝ)) (splitVector v) ≤ complexQuadratic H v := by
  have h := checked_enclosure_lower P C (realification H) hencloses hcheck (splitVector v)
  rwa [quadratic_realification] at h

/-- Hostile control: every real direction is positive, but an imaginary coupling
creates a negative complex direction. This is not an arithmetic counterexample. -/
theorem real_tests_miss_complex_negative :
    (∀ x : Fin 2 → ℝ,
      0 ≤ complexQuadratic !![(1 : ℂ), 2 * Complex.I; -2 * Complex.I, 1]
        (fun i => (x i : ℂ))) ∧
    complexQuadratic !![(1 : ℂ), 2 * Complex.I; -2 * Complex.I, 1]
      ![1, Complex.I] = -2 := by
  constructor
  · intro x
    simp [complexQuadratic, Fin.sum_univ_two, Complex.mul_re, Complex.mul_im] <;>
      nlinarith [sq_nonneg (x 0), sq_nonneg (x 1)]
  · norm_num [complexQuadratic, Fin.sum_univ_two, Complex.mul_re, Complex.mul_im]

end GRWTSK.LinearAlgebra.RationalEnclosureCertificates
