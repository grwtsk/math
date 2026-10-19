import FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion

/-!
# Exact counterexample to the column-wise theta mode sign criterion

The all-rank mode decomposition and finite-cutoff determinant expansion remain
valid.  However, the sufficient criterion
`ThetaPhiModeChoiceSignedNonnegative` is stronger than the actual source-sign
problem and is false.

The obstruction already occurs at rank two, at the literal source coordinate
`t = 0`, for the column-wise mode choice `f j = j.val`, i.e. modes
`(0,1)`.

This module proves the exact value of that oriented polynomial determinant and
its strict negativity.  Consequently the route that tries to prove every
individual column-wise mode-choice summand nonnegative must stop here.  The
finite sum in `signedJetDet_truncation_eq_mode_sum` may still be nonnegative
through cancellation between signed summands; no statement about the literal
source signed-jet theorem is negated by this counterexample.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Polynomial
noncomputable section

/-- The first recurrence polynomial has the maintained explicit evaluation. -/
@[simp] theorem thetaPhiDerivativePolynomial_one_eval (y : ℝ) :
    (thetaPhiDerivativePolynomial 1).eval y =
      -8 * y ^ 2 + 30 * y - 15 := by
  change
    (thetaPhiDerivativeStep
      (Polynomial.monomial 0 (-3) +
        Polynomial.monomial 1 2)).eval y = _
  simp only [thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial,
    Polynomial.eval_add, Polynomial.eval_monomial]
  norm_num
  ring

/-- The second recurrence polynomial has the maintained explicit evaluation. -/
@[simp] theorem thetaPhiDerivativePolynomial_two_eval (y : ℝ) :
    (thetaPhiDerivativePolynomial 2).eval y =
      32 * y ^ 3 - 224 * y ^ 2 + 330 * y - 75 := by
  change
    (thetaPhiDerivativeStep
      (thetaPhiDerivativeStep
        (Polynomial.monomial 0 (-3) +
          Polynomial.monomial 1 2))).eval y = _
  simp only [thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial,
    Polynomial.eval_add, Polynomial.eval_monomial]
  norm_num
  ring

/-- At the source origin, the first positive mode coordinate is `pi`. -/
@[simp] theorem thetaModeY_zero_zero :
    thetaModeY 0 0 = Real.pi := by
  norm_num [thetaModeY, thetaModeA]

/-- At the source origin, the second positive mode coordinate is `4*pi`. -/
@[simp] theorem thetaModeY_one_zero :
    thetaModeY 1 0 = 4 * Real.pi := by
  norm_num [thetaModeY, thetaModeA, mul_comm]

/-- Exact rank-two mode-choice determinant for the two consecutive positive
modes at the source origin. -/
theorem thetaPhiModeChoiceSignedDet_two_zero_01 :
    thetaPhiModeChoiceSignedDet 2 0
        (fun j : Fin 2 => j.val) =
      -4 * Real.pi *
        (768 * Real.pi ^ 3 - 2128 * Real.pi ^ 2 +
          1938 * Real.pi - 465) := by
  unfold thetaPhiModeChoiceSignedDet
  norm_num [Matrix.det_fin_two,
    thetaPhiDerivativePolynomial_zero_eval]
  ring

/-- The cubic factor in the rank-two counterexample is strictly positive. -/
theorem thetaPhiModeChoice_two_zero_01_cubic_pos :
    0 <
      768 * Real.pi ^ 3 - 2128 * Real.pi ^ 2 +
        1938 * Real.pi - 465 := by
  have hx : 0 < Real.pi - 3 := sub_pos.mpr Real.pi_gt_three
  have hid :
      768 * Real.pi ^ 3 - 2128 * Real.pi ^ 2 +
          1938 * Real.pi - 465 =
        768 * (Real.pi - 3) ^ 3 +
          4784 * (Real.pi - 3) ^ 2 +
            9906 * (Real.pi - 3) + 6933 := by
    ring
  rw [hid]
  positivity

/-- The proposed column-wise mode-choice sign criterion fails already at
rank two. -/
theorem thetaPhiModeChoiceSignedDet_two_zero_01_neg :
    thetaPhiModeChoiceSignedDet 2 0
        (fun j : Fin 2 => j.val) < 0 := by
  rw [thetaPhiModeChoiceSignedDet_two_zero_01]
  have hq := thetaPhiModeChoice_two_zero_01_cubic_pos
  have hp :
      0 < 4 * Real.pi *
        (768 * Real.pi ^ 3 - 2128 * Real.pi ^ 2 +
          1938 * Real.pi - 465) := by
    positivity
  linarith

/-- Therefore the sufficient criterion introduced by the finite mode
decomposition is not the correct all-rank source theorem. -/
theorem not_thetaPhiModeChoiceSignedNonnegative :
    ¬ ThetaPhiModeChoiceSignedNonnegative := by
  intro h
  have hnonneg :=
    h 2 0 (by norm_num) (fun j : Fin 2 => j.val)
  have hneg := thetaPhiModeChoiceSignedDet_two_zero_01_neg
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
