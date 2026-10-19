import FormalResearch.RiemannHypothesis.ThetaPhiSingleModeCharlierObstruction
import Mathlib.LinearAlgebra.Matrix.Block

/-!
# Rank-seven affine reduction to the Touchard--Christoffel Hankel determinant

The one-mode rank-seven Charlier obstruction is already reduced to one exact
finite determinant identity.  This module removes the affine support
`4*l+5` from that determinant.

The generalized signed Touchard values are moments of the affine variable
`4*l+5`.  The corresponding Hankel change of basis is the lower-triangular
Pascal matrix with entries

`choose(i,j) * 4^j * 5^(i-j)`.

At rank seven its determinant is `4^21`.  The Christoffel multiplier
`(4*l+5)+1` contributes a scalar factor two and leaves the simpler moment
sequence

`R_n(y) = 2*T_(n+1)(-y) + 3*T_n(-y)`.

Consequently the oriented rank-seven derivative determinant is exactly
`4^42` times the rank-seven Hankel determinant of `R`.

The remaining bridge is therefore the standard Touchard/Charlier
Christoffel-Hankel identity

`det[R_(i+j)] = (prod_{j=0}^6 j!) * y^21 * C_7(y)`.

This module records that smaller identity as the only unproved finite gate and
proves that it implies the previous rank-seven bridge.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open scoped BigOperators
noncomputable section

/-- The rank-seven affine Pascal matrix for the support transformation
`l |-> 4*l+5`. -/
def thetaPhiAffinePascalSeven :
    Matrix (Fin 7) (Fin 7) ℝ :=
  fun i j =>
    (i.val.choose j.val : ℝ) *
      (4 : ℝ) ^ j.val *
        (5 : ℝ) ^ (i.val - j.val)

/-- The affine Pascal matrix is lower triangular. -/
theorem thetaPhiAffinePascalSeven_lower :
    thetaPhiAffinePascalSeven.IsLowerTriangular := by
  intro i j hij
  change i < j at hij
  have hv : i.val < j.val := by simpa using hij
  simp [thetaPhiAffinePascalSeven,
    Nat.choose_eq_zero_of_lt hv]

/-- The determinant of the rank-seven affine Pascal matrix is `4^21`. -/
theorem thetaPhiAffinePascalSeven_det :
    Matrix.det thetaPhiAffinePascalSeven =
      (4 : ℝ) ^ 21 := by
  rw [Matrix.det_of_isLowerTriangular
    thetaPhiAffinePascalSeven
    thetaPhiAffinePascalSeven_lower]
  norm_num [thetaPhiAffinePascalSeven,
    Fin.prod_univ_succ]

/-- Signed Touchard moment after removing the affine support and retaining the
Christoffel multiplier. -/
def thetaPhiSignedTouchardChristoffelMoment
    (n : ℕ) (y : ℝ) : ℝ :=
  2 * thetaPhiSignedTouchardValue (n + 1) y +
    3 * thetaPhiSignedTouchardValue n y

/-- Rank-seven Hankel matrix of the reduced Touchard--Christoffel moments. -/
def thetaPhiSignedTouchardChristoffelHankelSeven
    (y : ℝ) : Matrix (Fin 7) (Fin 7) ℝ :=
  Matrix.of fun i j =>
    thetaPhiSignedTouchardChristoffelMoment
      (i.val + j.val) y

/- Exact rank-seven affine change of basis.  The factor two is the
Christoffel identity `4*l+6 = 2*(2*l+3)`. -/
set_option maxHeartbeats 8000000 in
-- Fixed rank-seven matrix normalization expands 49 finite binomial identities.
theorem thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine
    (y : ℝ) :
    thetaPhiChristoffelHankel 7
        (fun n =>
          thetaPhiGeneralizedSignedTouchardValue n y) =
      (2 : ℝ) •
        (thetaPhiAffinePascalSeven *
          thetaPhiSignedTouchardChristoffelHankelSeven y *
            thetaPhiAffinePascalSeven.transpose) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [thetaPhiChristoffelHankel,
      thetaPhiAffinePascalSeven,
      thetaPhiSignedTouchardChristoffelHankelSeven,
      thetaPhiSignedTouchardChristoffelMoment,
      thetaPhiGeneralizedSignedTouchardValue,
      Matrix.mul_apply, Fin.sum_univ_succ,
      Finset.sum_range_succ, Nat.choose] <;>
    ring

/-- The derivative-polynomial Hankel matrix is `-1/2` times the generalized
Touchard Christoffel-Hankel matrix. -/
theorem thetaPhiDerivativePolynomialHankelSeven_eq_christoffel
    (y : ℝ) :
    (Matrix.of fun i j : Fin 7 =>
        (thetaPhiDerivativePolynomial
          (i.val + j.val)).eval y) =
      (-1 / 2 : ℝ) •
        thetaPhiChristoffelHankel 7
          (fun n =>
            thetaPhiGeneralizedSignedTouchardValue n y) := by
  ext i j
  simp only [Matrix.of_apply, Matrix.smul_apply,
    smul_eq_mul, thetaPhiChristoffelHankel]
  rw [thetaPhiDerivativePolynomial_eval_christoffel]
  rw [thetaPhiBaseGeneralizedTouchardIdentification,
    thetaPhiBaseGeneralizedTouchardIdentification]

/-- The oriented rank-seven derivative determinant is exactly `4^42` times
the reduced Touchard--Christoffel Hankel determinant. -/
theorem thetaPhiRankSevenSignedJet_eq_touchardChristoffel
    (y : ℝ) :
    signedJetDet 7
        (fun n =>
          (thetaPhiDerivativePolynomial n).eval y) =
      (4 : ℝ) ^ 42 *
        Matrix.det
          (thetaPhiSignedTouchardChristoffelHankelSeven y) := by
  unfold signedJetDet
  rw [thetaPhiDerivativePolynomialHankelSeven_eq_christoffel]
  rw [thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine]
  rw [Matrix.det_smul, Matrix.det_smul,
    Matrix.det_mul, Matrix.det_mul,
    Matrix.det_transpose, thetaPhiAffinePascalSeven_det]
  norm_num
  ring

/-- Product of the first seven factorial norms appearing in the Charlier
Hankel determinant. -/
theorem thetaPhiRankSeven_factorial_product :
    (∏ j : Fin 7, j.val.factorial : ℕ) =
      24883200 := by
  norm_num [Fin.prod_univ_succ]

/-- Smaller finite algebraic gate left after removing the affine support. -/
def ThetaPhiOneModeRankSevenTouchardChristoffelBridge : Prop :=
  Matrix.det
      (thetaPhiSignedTouchardChristoffelHankelSeven Real.pi) =
    (24883200 : ℝ) *
      Real.pi ^ 21 *
        thetaPhiShiftedCharlier 7 Real.pi

/-- The reduced Touchard--Christoffel identity implies the original
rank-seven determinant bridge. -/
theorem thetaPhiOneModeRankSevenCharlierBridge_of_touchardChristoffel
    (h :
      ThetaPhiOneModeRankSevenTouchardChristoffelBridge) :
    ThetaPhiOneModeRankSevenCharlierBridge := by
  unfold ThetaPhiOneModeRankSevenTouchardChristoffelBridge at h
  unfold ThetaPhiOneModeRankSevenCharlierBridge
  rw [thetaPhiRankSevenSignedJet_eq_touchardChristoffel]
  rw [h]
  norm_num
  ring

/-- Thus the smaller Touchard--Christoffel gate is already sufficient to
refute the current all-cutoff parity criterion. -/
theorem not_thetaPhiSignedMomentParityCriterion_of_touchardChristoffel
    (h :
      ThetaPhiOneModeRankSevenTouchardChristoffelBridge) :
    ¬ ThetaPhiSignedMomentParityCriterion :=
  not_thetaPhiSignedMomentParityCriterion_of_rankSevenBridge
    (thetaPhiOneModeRankSevenCharlierBridge_of_touchardChristoffel h)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
