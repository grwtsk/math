import FormalResearch.RiemannHypothesis.ThetaPhiChristoffelReduction
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.LinearAlgebra.Vandermonde

/-!
# Signed-moment Cauchy--Binet factorization for the theta base tape

The verified Christoffel reduction moves the finite theta signed-jet problem to
one whole Hankel determinant built from the base polynomial tape.

This module isolates the generic algebra needed for a moment representation.
For a finite signed moment tape

`mu_n = sum_l a_l x_l^n`,

the Christoffel-Hankel matrix with entries
`mu_(i+j+1) + mu_(i+j)` factors as a rectangular Vandermonde matrix times a
weighted Vandermonde matrix.  Finite Cauchy--Binet therefore gives an exact sum
of squared Vandermonde determinants times the signed weights
`a_l * (x_l + 1)`.

The theta specialization uses the fixed arithmetic support
`x_l = 4*l + 5` and the signed coefficients predicted by the generalized
Touchard / signed-Poisson representation of the verified base polynomials.
The analytic equality between that infinite signed-moment tape and
`thetaPhiBaseTapeTruncation` is retained as an explicit unproved proposition.
No positivity is inferred from the signed finite expansion.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
noncomputable section

/-- A finite scalar moment tape. -/
def finiteSignedMomentTape {L : ℕ}
    (nodes weights : Fin L → ℝ) (n : ℕ) : ℝ :=
  ∑ l : Fin L, weights l * nodes l ^ n

/-- Left rectangular Vandermonde factor for a finite moment tape. -/
def finiteMomentLeft {k L : ℕ}
    (nodes : Fin L → ℝ) :
    Matrix (Fin k) (Fin L) ℝ :=
  fun i l => nodes l ^ i.val

/-- Right rectangular factor carrying the signed moment weight and the
Christoffel multiplier `x+1`. -/
def finiteChristoffelMomentRight {k L : ℕ}
    (nodes weights : Fin L → ℝ) :
    Matrix (Fin L) (Fin k) ℝ :=
  fun l j =>
    weights l * (nodes l + 1) * nodes l ^ j.val

/-- The whole finite Christoffel-Hankel matrix factors exactly as a rectangular
Vandermonde product. -/
theorem finiteSignedMoment_christoffelHankel_eq_mul
    {k L : ℕ} (nodes weights : Fin L → ℝ) :
    thetaPhiChristoffelHankel k
        (finiteSignedMomentTape nodes weights) =
      finiteMomentLeft nodes *
        finiteChristoffelMomentRight nodes weights := by
  ext i j
  simp only [thetaPhiChristoffelHankel, Matrix.of_apply,
    finiteSignedMomentTape, finiteMomentLeft,
    finiteChristoffelMomentRight, Matrix.mul_apply]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro l hl
  rw [pow_succ, pow_add]
  ring

/-- Vandermonde determinant attached to a finite intermediate mode choice. -/
def finiteMomentVandermondeDet
    {k L : ℕ} (nodes : Fin L → ℝ)
    (f : Fin k → Fin L) : ℝ :=
  Matrix.det
    (Matrix.vandermonde (fun i : Fin k => nodes (f i)))

/-- The left selected determinant is the Vandermonde determinant, up to
transpose, hence exactly the same scalar. -/
theorem finiteMomentLeft_selected_det
    {k L : ℕ} (nodes : Fin L → ℝ)
    (f : Fin k → Fin L) :
    Matrix.det
        ((finiteMomentLeft nodes).submatrix id f) =
      finiteMomentVandermondeDet nodes f := by
  have hm :
      (finiteMomentLeft nodes).submatrix id f =
        (Matrix.vandermonde
          (fun i : Fin k => nodes (f i))).transpose := by
    ext i j
    rfl
  rw [hm, Matrix.det_transpose]
  rfl

/-- The right selected determinant is the same Vandermonde determinant times
the product of the signed Christoffel weights. -/
theorem finiteChristoffelMomentRight_selected_det
    {k L : ℕ} (nodes weights : Fin L → ℝ)
    (f : Fin k → Fin L) :
    Matrix.det
        ((finiteChristoffelMomentRight
          (k := k) nodes weights).submatrix f id) =
      (∏ i : Fin k,
        weights (f i) * (nodes (f i) + 1)) *
        finiteMomentVandermondeDet nodes f := by
  let v : Fin k → ℝ := fun i => nodes (f i)
  let w : Fin k → ℝ :=
    fun i => weights (f i) * (nodes (f i) + 1)
  have hm :
      (finiteChristoffelMomentRight
          (k := k) nodes weights).submatrix f id =
        Matrix.of
          (fun i j : Fin k =>
            w i * (Matrix.vandermonde v) i j) := by
    ext i j
    rfl
  rw [hm, Matrix.det_mul_column]
  rfl

/-- Exact finite signed-moment Cauchy--Binet formula.  Repeated selections
automatically contribute zero through the Vandermonde determinant; no
injectivity restriction or absolute value is inserted. -/
theorem factorial_mul_det_christoffel_finiteSignedMoment
    {k L : ℕ} (nodes weights : Fin L → ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (finiteSignedMomentTape nodes weights)) =
      ∑ f : Fin k → Fin L,
        (∏ i : Fin k,
          weights (f i) * (nodes (f i) + 1)) *
          (finiteMomentVandermondeDet nodes f) ^ 2 := by
  rw [finiteSignedMoment_christoffelHankel_eq_mul]
  rw [cauchyBinet_all_functions]
  apply Finset.sum_congr rfl
  intro f hf
  rw [finiteMomentLeft_selected_det,
    finiteChristoffelMomentRight_selected_det]
  ring

/-- Fixed arithmetic support naturally selected by the theta derivative
operator. -/
def thetaPhiSignedMomentNode (l : ℕ) : ℝ :=
  ((4 * l + 5 : ℕ) : ℝ)

/-- The fixed arithmetic support is strictly positive, and its Christoffel
multiplier is strictly positive as well. -/
theorem thetaPhiSignedMomentNode_add_one_pos (l : ℕ) :
    0 < thetaPhiSignedMomentNode l + 1 := by
  unfold thetaPhiSignedMomentNode
  positivity

/-- Every literal theta mode coordinate is strictly positive. -/
theorem thetaModeY_pos_signedMoment (m : ℕ) (t : ℝ) :
    0 < thetaModeY m t := by
  unfold thetaModeY thetaModeA
  positivity

/-- Nonnegative magnitude of the candidate signed moment weight after summing
the first `N` literal theta modes. -/
def thetaPhiBaseMomentMagnitude
    (N : ℕ) (t : ℝ) (l : ℕ) : ℝ :=
  ∑ m : Fin N,
    Real.pi * ((m.val : ℝ) + 1) ^ 2 *
      Real.exp (5 * t) *
        thetaModeY m.val t ^ l /
          (l.factorial : ℝ)

/-- The candidate magnitude is nonnegative term by term. -/
theorem thetaPhiBaseMomentMagnitude_nonnegative
    (N : ℕ) (t : ℝ) (l : ℕ) :
    0 ≤ thetaPhiBaseMomentMagnitude N t l := by
  unfold thetaPhiBaseMomentMagnitude
  apply Finset.sum_nonneg
  intro m hm
  have hy : 0 ≤ thetaModeY m.val t :=
    (thetaModeY_pos_signedMoment m.val t).le
  positivity

/-- Signed moment weight predicted by the generalized Touchard / signed
Poisson expansion of the base polynomial sequence. -/
def thetaPhiBaseSignedMomentWeight
    (N : ℕ) (t : ℝ) (l : ℕ) : ℝ :=
  (-1 : ℝ) ^ l *
    thetaPhiBaseMomentMagnitude N t l

/-- Finite truncation in the signed-moment index. -/
def thetaPhiBaseSignedMomentTruncation
    (L N n : ℕ) (t : ℝ) : ℝ :=
  ∑ l : Fin L,
    thetaPhiBaseSignedMomentWeight N t l.val *
      thetaPhiSignedMomentNode l.val ^ n

/-- Vandermonde determinant on the fixed arithmetic support. -/
def thetaPhiSignedMomentVandermondeDet
    {k L : ℕ} (f : Fin k → Fin L) : ℝ :=
  Matrix.det
    (Matrix.vandermonde
      (fun i : Fin k =>
        thetaPhiSignedMomentNode (f i).val))

/-- Exact finite signed-moment factorization specialized to the arithmetic
support selected by the theta derivative operator. -/
theorem factorial_mul_det_thetaPhi_signedMomentTruncation
    (k L N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) =
      ∑ f : Fin k → Fin L,
        (∏ i : Fin k,
          thetaPhiBaseSignedMomentWeight
              N t (f i).val *
            (thetaPhiSignedMomentNode
              (f i).val + 1)) *
          (thetaPhiSignedMomentVandermondeDet f) ^ 2 := by
  let nodes : Fin L → ℝ :=
    fun l => thetaPhiSignedMomentNode l.val
  let weights : Fin L → ℝ :=
    fun l => thetaPhiBaseSignedMomentWeight N t l.val
  have htape :
      (fun n =>
        thetaPhiBaseSignedMomentTruncation L N n t) =
        finiteSignedMomentTape nodes weights := by
    funext n
    rfl
  rw [htape]
  simpa only [nodes, weights,
    thetaPhiSignedMomentVandermondeDet,
    finiteMomentVandermondeDet] using
      (factorial_mul_det_christoffel_finiteSignedMoment
        (k := k) nodes weights)

/-- Exact analytic bridge still required to identify the verified finite base
tape with the infinite signed moment sequence on the arithmetic support
`4*l+5`.  It is recorded as a target, not installed as an axiom or theorem. -/
def ThetaPhiBaseSignedMomentRepresentation : Prop :=
  ∀ N n : ℕ, ∀ t : ℝ,
    thetaPhiBaseTapeTruncation N n t =
      ∑' l : ℕ,
        thetaPhiBaseSignedMomentWeight N t l *
          thetaPhiSignedMomentNode l ^ n

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
