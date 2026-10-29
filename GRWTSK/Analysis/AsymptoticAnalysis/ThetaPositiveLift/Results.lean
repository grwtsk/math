import FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentFactorization
import Mathlib.Combinatorics.Enumerative.Stirling
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Data.Nat.Choose.Sum

/-!
# Generalized signed-Poisson bridge for the theta base tape

The finite signed-moment Cauchy--Binet factorization is verified. The remaining
analytic bridge is the identification of the verified base polynomial tape
with a signed Poisson / generalized Touchard moment sequence.

This module proves the analytic summation side without differentiating an
infinite series. Powers of the Poisson index are expanded into descending
factorials by Stirling numbers; the descending-factorial exponential sums are
then reduced to the ordinary exponential series by a natural-index shift.

The result is an explicit generalized signed Touchard value on the arithmetic
support 4*l+5. A single finite algebraic identification remains:
thetaPhiBasePolynomial n must evaluate to that generalized Touchard value.
Once that finite polynomial identity is supplied, the already-defined
ThetaPhiBaseSignedMomentRepresentation follows by finite summation over the
literal theta modes.

No positivity, PF-infinity, zero localization, or RH statement is introduced.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Polynomial
open scoped BigOperators
noncomputable section

/-- Exponential sum for one descending factorial. -/
theorem hasSum_descFactorial_mul_pow_div_factorial
    (j : ℕ) (x : ℝ) :
    HasSum
      (fun n : ℕ =>
        (n.descFactorial j : ℝ) * x ^ n /
          (n.factorial : ℝ))
      (x ^ j * Real.exp x) := by
  rw [← hasSum_nat_add_iff' j]
  have h :=
    (NormedSpace.expSeries_div_hasSum_exp (x : ℝ)).mul_left
      (x ^ j)
  rw [← Real.exp_eq_exp_ℝ] at h
  have hzero :
      (∑ i ∈ Finset.range j,
        (i.descFactorial j : ℝ) * x ^ i /
          (i.factorial : ℝ)) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hij : i < j := Finset.mem_range.mp hi
    rw [Nat.descFactorial_eq_zero_iff_lt.mpr hij]
    norm_num
  rw [hzero, sub_zero]
  refine HasSum.congr_fun h (fun n => ?_)
  have hfacNat :
      n.factorial * (n + j).descFactorial j =
        (n + j).factorial := by
    have h :=
      Nat.factorial_mul_descFactorial
        (n := n + j) (k := j) (by omega)
    rw [Nat.add_sub_cancel_right] at h
    exact h
  have hfac :
      (n.factorial : ℝ) *
          ((n + j).descFactorial j : ℝ) =
        ((n + j).factorial : ℝ) := by
    exact_mod_cast hfacNat
  have hn : (n.factorial : ℝ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero n
  have hdNat : (n + j).descFactorial j ≠ 0 := by
    exact Nat.ne_of_gt ((Nat.descFactorial_pos).2 (by omega))
  have hd : ((n + j).descFactorial j : ℝ) ≠ 0 := by
    exact_mod_cast hdNat
  rw [pow_add, ← hfac]
  field_simp [hn, hd]

/-- Pinned-Mathlib compatibility lemma: multiplication by the base variable
splits a descending factorial into the next descending factorial plus the
index-weighted current one. -/
private theorem descFactorial_mul_self_local (n j : ℕ) :
    n.descFactorial j * n =
      n.descFactorial (j + 1) +
        j * n.descFactorial j := by
  rcases le_or_gt j n with h | h
  · rw [Nat.descFactorial_succ, ← Nat.add_mul,
      Nat.sub_add_cancel h, Nat.mul_comm]
  · simp [Nat.descFactorial_of_lt h]

/-- Pinned-Mathlib compatibility lemma: every power is a Stirling-weighted
sum of descending factorials. -/
private theorem pow_eq_sum_stirlingSecond_mul_descFactorial_local
    (n k : ℕ) :
    n ^ k =
      ∑ j ∈ Finset.range (k + 1),
        Nat.stirlingSecond k j * n.descFactorial j := by
  induction k with
  | zero =>
      simp
  | succ k ih =>
      have hshift :
          ∑ j ∈ Finset.range (k + 1),
              Nat.stirlingSecond k j *
                (j * n.descFactorial j) =
            ∑ j ∈ Finset.range (k + 1),
              (j + 1) *
                (Nat.stirlingSecond k (j + 1) *
                  n.descFactorial (j + 1)) := by
        rw [Finset.sum_range_succ'
              (fun j =>
                Nat.stirlingSecond k j *
                  (j * n.descFactorial j)) k,
          Finset.sum_range_succ
              (fun j =>
                (j + 1) *
                  (Nat.stirlingSecond k (j + 1) *
                    n.descFactorial (j + 1))) k,
          Nat.stirlingSecond_eq_zero_of_lt k.lt_add_one]
        simp [mul_left_comm]
      rw [pow_succ, ih, Finset.sum_mul,
        Finset.sum_range_succ'
          (fun j =>
            Nat.stirlingSecond (k + 1) j *
              n.descFactorial j) (k + 1)]
      simp only [mul_assoc, descFactorial_mul_self_local,
        mul_add, Finset.sum_add_distrib, hshift,
        Nat.stirlingSecond_succ_succ, add_mul,
        Nat.stirlingSecond_succ_zero, zero_mul, add_zero]
      exact add_comm _ _

/-- Signed Touchard value T_n(-y) written with Stirling numbers of the second
kind. -/
def thetaPhiSignedTouchardValue
    (n : ℕ) (y : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (n + 1),
    (Nat.stirlingSecond n j : ℝ) * (-y) ^ j

/-- Dobinski/Touchard identity for ordinary powers, specialized to the signed
argument -y. -/
theorem hasSum_signedTouchard
    (n : ℕ) (y : ℝ) :
    HasSum
      (fun l : ℕ =>
        (l : ℝ) ^ n * (-y) ^ l /
          (l.factorial : ℝ))
      (Real.exp (-y) *
        thetaPhiSignedTouchardValue n y) := by
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ j ∈ Finset.range (n + 1),
            (Nat.stirlingSecond n j : ℝ) *
              ((l.descFactorial j : ℝ) *
                (-y) ^ l / (l.factorial : ℝ)))
        (∑ j ∈ Finset.range (n + 1),
          (Nat.stirlingSecond n j : ℝ) *
            ((-y) ^ j * Real.exp (-y))) := by
    exact hasSum_sum fun j hj =>
      (hasSum_descFactorial_mul_pow_div_factorial
        j (-y)).mul_left (Nat.stirlingSecond n j : ℝ)
  convert hsum using 1
  · funext l
    have hp :
        (l : ℝ) ^ n =
          ∑ j ∈ Finset.range (n + 1),
            (Nat.stirlingSecond n j : ℝ) *
              (l.descFactorial j : ℝ) := by
      exact_mod_cast
        pow_eq_sum_stirlingSecond_mul_descFactorial_local l n
    rw [hp, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  · unfold thetaPhiSignedTouchardValue
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring

/-- The generalized signed Touchard value associated with the affine support
4*l+5. -/
def thetaPhiGeneralizedSignedTouchardValue
    (n : ℕ) (y : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (n + 1),
    (n.choose j : ℝ) *
      (4 : ℝ) ^ j *
      (5 : ℝ) ^ (n - j) *
        thetaPhiSignedTouchardValue j y

/-- Signed-Poisson moment formula for the exact arithmetic support 4*l+5. -/
theorem hasSum_thetaPhiGeneralizedSignedPoisson
    (n : ℕ) (y : ℝ) :
    HasSum
      (fun l : ℕ =>
        thetaPhiSignedMomentNode l ^ n *
          (-y) ^ l / (l.factorial : ℝ))
      (Real.exp (-y) *
        thetaPhiGeneralizedSignedTouchardValue n y) := by
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ j ∈ Finset.range (n + 1),
            ((n.choose j : ℝ) *
              (4 : ℝ) ^ j *
              (5 : ℝ) ^ (n - j)) *
                ((l : ℝ) ^ j *
                  (-y) ^ l / (l.factorial : ℝ)))
        (∑ j ∈ Finset.range (n + 1),
          ((n.choose j : ℝ) *
            (4 : ℝ) ^ j *
            (5 : ℝ) ^ (n - j)) *
              (Real.exp (-y) *
                thetaPhiSignedTouchardValue j y)) := by
    exact hasSum_sum fun j hj =>
      (hasSum_signedTouchard j y).mul_left
        ((n.choose j : ℝ) *
          (4 : ℝ) ^ j *
          (5 : ℝ) ^ (n - j))
  convert hsum using 1
  · funext l
    have hnode :
        thetaPhiSignedMomentNode l =
          (4 : ℝ) * (l : ℝ) + 5 := by
      norm_num [thetaPhiSignedMomentNode]
    rw [hnode, add_pow, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  · unfold thetaPhiGeneralizedSignedTouchardValue
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring

/-- The signed-Poisson series itself evaluates to the generalized signed
Touchard value after multiplication by exp(y). -/
theorem thetaPhiGeneralizedSignedPoisson_tsum
    (n : ℕ) (y : ℝ) :
    Real.exp y *
        (∑' l : ℕ,
          thetaPhiSignedMomentNode l ^ n *
            (-y) ^ l / (l.factorial : ℝ)) =
      thetaPhiGeneralizedSignedTouchardValue n y := by
  rw [(hasSum_thetaPhiGeneralizedSignedPoisson n y).tsum_eq]
  rw [← mul_assoc, ← Real.exp_add]
  simp

/-- The sole finite algebraic identification left by the analytic
signed-Poisson calculation. -/
def ThetaPhiBaseGeneralizedTouchardIdentification : Prop :=
  ∀ n : ℕ, ∀ y : ℝ,
    (thetaPhiBasePolynomial n).eval y =
      thetaPhiGeneralizedSignedTouchardValue n y

/-- One literal theta mode has the desired signed-moment expansion as soon as
the finite generalized Touchard identification is supplied. -/
theorem hasSum_thetaPhiBaseMode_signedMoment
    (hident : ThetaPhiBaseGeneralizedTouchardIdentification)
    (n m : ℕ) (t : ℝ) :
    HasSum
      (fun l : ℕ =>
        (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t)) *
          (thetaPhiSignedMomentNode l ^ n *
            (-thetaModeY m t) ^ l /
              (l.factorial : ℝ)))
      (thetaPhiBaseModeValue n m t) := by
  have h :=
    (hasSum_thetaPhiGeneralizedSignedPoisson
      n (thetaModeY m t)).mul_left
        (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t))
  have hvalue :
      (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t)) *
          (Real.exp (-thetaModeY m t) *
            thetaPhiGeneralizedSignedTouchardValue
              n (thetaModeY m t)) =
        thetaPhiBaseModeValue n m t := by
    rw [← hident n (thetaModeY m t)]
    unfold thetaPhiBaseModeValue
      thetaPhiDerivativeModeWeight
    ring
  rw [← hvalue]
  exact h

/-- The generalized Touchard identification closes the previously recorded
analytic bridge for every finite theta-mode truncation. -/
theorem thetaPhiBaseSignedMomentRepresentation_of_generalizedTouchard
    (hident : ThetaPhiBaseGeneralizedTouchardIdentification) :
    ThetaPhiBaseSignedMomentRepresentation := by
  intro N n t
  have hmode :
      ∀ m : Fin N,
        HasSum
          (fun l : ℕ =>
            (Real.pi * ((m.val : ℝ) + 1) ^ 2 *
              Real.exp (5 * t)) *
              (thetaPhiSignedMomentNode l ^ n *
                (-thetaModeY m.val t) ^ l /
                  (l.factorial : ℝ)))
          (thetaPhiBaseModeValue n m.val t) := by
    intro m
    exact hasSum_thetaPhiBaseMode_signedMoment
      hident n m.val t
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ m : Fin N,
            (Real.pi * ((m.val : ℝ) + 1) ^ 2 *
              Real.exp (5 * t)) *
              (thetaPhiSignedMomentNode l ^ n *
                (-thetaModeY m.val t) ^ l /
                  (l.factorial : ℝ)))
        (∑ m : Fin N,
          thetaPhiBaseModeValue n m.val t) := by
    exact hasSum_sum fun m hm => hmode m
  have hsum' :
      HasSum
        (fun l : ℕ =>
          thetaPhiBaseSignedMomentWeight N t l *
            thetaPhiSignedMomentNode l ^ n)
        (thetaPhiBaseTapeTruncation N n t) := by
    convert hsum using 1
    · funext l
      unfold thetaPhiBaseSignedMomentWeight
        thetaPhiBaseMomentMagnitude
      rw [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro m hm
      rw [neg_pow]
      ring
    · rfl
  exact hsum'.tsum_eq.symm

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
