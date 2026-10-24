import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourCompactTail

/-!
# Compact rank-four three-mode bridge

The generic quartic perturbation estimate is too coarse near the left edge of
the compact source interval if it is applied immediately after the first two
theta modes.  This module therefore keeps the third normalized theta mode
exactly as well and pushes the generic Gaussian remainder to modes n >= 4.

No determinant-sign conclusion is asserted here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section
open scoped BigOperators

/-- Exact first-three-mode normalized source jet, with
z = exp(-3A) and w = exp(-8A). -/
def thetaPhiThreeModeJet7
    (A z w : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiTwoModeJet7 A z k +
    9 * w * thetaPhiJetPolynomial7 k (9 * A)

/-- Exact normalized source remainder after the first three theta modes. -/
def thetaPhiThreeModeRemainderJet7
    (t : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiNormalizedJet7 t k -
    thetaPhiThreeModeJet7
      (thetaModeA t)
      (Real.exp (-3 * thetaModeA t))
      (Real.exp (-8 * thetaModeA t)) k

/-- Literal n >= 4 normalized theta mode, indexed from m = 0. -/
def thetaPhiThreeModeRemainderTerm7
    (k : Fin 7) (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 4) ^ 2 *
    thetaPhiJetPolynomial7 k
      (A * ((m : ℝ) + 4) ^ 2) *
      Real.exp
        (-A * (((m : ℝ) + 4) ^ 2 - 1))

private theorem thetaPhiNormalizedModeTerm7_shift_three
    (k : Fin 7) (A : ℝ) (m : ℕ) :
    thetaPhiNormalizedModeTerm7 k A (m + 3) =
      thetaPhiThreeModeRemainderTerm7 k A m := by
  unfold thetaPhiNormalizedModeTerm7
    thetaPhiThreeModeRemainderTerm7
  push_cast
  ring_nf

/-- The normalized source is exactly its first three modes plus the n >= 4
remainder. -/
theorem thetaPhiThreeModeRemainderJet7_eq_tsum
    (k : Fin 7) (t : ℝ) :
    thetaPhiThreeModeRemainderJet7 t k =
      ∑' m : ℕ,
        thetaPhiThreeModeRemainderTerm7
          k (thetaModeA t) m := by
  let f : ℕ → ℝ :=
    thetaPhiNormalizedModeTerm7 k (thetaModeA t)
  have hs : Summable f := by
    change Summable (fun m : ℕ =>
      ((m : ℝ) + 1) ^ 2 *
        thetaPhiJetPolynomial7 k
          (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp
          (-thetaModeA t *
            (((m : ℝ) + 1) ^ 2 - 1)))
    exact thetaPhiJet7_polynomial_summable k t
  have hsplit := hs.sum_add_tsum_nat_add 3
  have h0 :
      f 0 =
        thetaPhiJetPolynomial7 k
          (thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
  have h1 :
      f 1 =
        4 * Real.exp (-3 * thetaModeA t) *
          thetaPhiJetPolynomial7 k
            (4 * thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
    ring
  have h2 :
      f 2 =
        9 * Real.exp (-8 * thetaModeA t) *
          thetaPhiJetPolynomial7 k
            (9 * thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
    ring
  have hhead :
      (∑ i ∈ Finset.range 3, f i) =
        thetaPhiThreeModeJet7
          (thetaModeA t)
          (Real.exp (-3 * thetaModeA t))
          (Real.exp (-8 * thetaModeA t)) k := by
    have hrange :
        (∑ i ∈ Finset.range 3, f i) =
          f 0 + f 1 + f 2 := by
      norm_num [Finset.sum_range_succ]
    rw [hrange, h0, h1, h2]
    unfold thetaPhiThreeModeJet7
      thetaPhiTwoModeJet7
    ring
  have hfull :
      thetaPhiNormalizedJet7 t k =
        ∑' m : ℕ, f m := by
    rfl
  have htail :
      (∑' m : ℕ, f (m + 3)) =
        ∑' m : ℕ,
          thetaPhiThreeModeRemainderTerm7
            k (thetaModeA t) m := by
    apply tsum_congr
    intro m
    exact thetaPhiNormalizedModeTerm7_shift_three
      k (thetaModeA t) m
  unfold thetaPhiThreeModeRemainderJet7
  rw [hfull, ← htail, ← hhead]
  linarith

/-- Coordinatewise exact decomposition of the normalized source around the
first three modes. -/
theorem thetaPhiNormalizedJet7_eq_three_mode_add_remainder
    (t : ℝ) (k : Fin 7) :
    thetaPhiNormalizedJet7 t k =
      thetaPhiThreeModeJet7
          (thetaModeA t)
          (Real.exp (-3 * thetaModeA t))
          (Real.exp (-8 * thetaModeA t)) k +
        thetaPhiThreeModeRemainderJet7 t k := by
  unfold thetaPhiThreeModeRemainderJet7
  ring

private def rankFourGaussianFromFour
    (A : ℝ) (p m : ℕ) : ℝ :=
  ((m : ℝ) + 4) ^ p *
    Real.exp
      (-A * (((m : ℝ) + 4) ^ 2 - 1))

private theorem rankFourGaussianFromFour_ratio_half :
    (2 : ℝ) ^ 16 * Real.exp (-27) ≤ 1 / 2 := by
  have h := pow_lt_pow_left₀
    thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20)
    (by decide : (9 : ℕ) ≠ 0)
  have he : Real.exp (27 : ℝ) =
      Real.exp 3 ^ 9 := by
    convert! Real.exp_nat_mul (3 : ℝ) 9 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem rankFourGaussianFromFour_succ_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromFour A p (m + 1) ≤
      (1 / 2) *
        rankFourGaussianFromFour A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 :
      ((m : ℝ) + 5) ^ p ≤
        (2 * ((m : ℝ) + 4)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 16 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow :
      ((m : ℝ) + 5) ^ p ≤
        (2 : ℝ) ^ 16 *
          ((m : ℝ) + 4) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans
      (mul_le_mul_of_nonneg_right
        hp1 (by positivity))
  have hgap :
      27 ≤ A * (2 * (m : ℝ) + 9) := by
    nlinarith [
      mul_nonneg
        (show 0 ≤ A - 3 by linarith) hm]
  have he :
      Real.exp
          (-A * (((m : ℝ) + 5) ^ 2 - 1)) ≤
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1) -
            27) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold rankFourGaussianFromFour
  push_cast
  calc
    _ = ((m : ℝ) + 5) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 5) ^ 2 - 1)) := by
      ring_nf
    _ ≤
        ((2 : ℝ) ^ 16 *
          ((m : ℝ) + 4) ^ p) *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1) -
            27) :=
      mul_le_mul hpow he
        (by positivity) (by positivity)
    _ =
        ((2 : ℝ) ^ 16 * Real.exp (-27)) *
          rankFourGaussianFromFour A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold rankFourGaussianFromFour
      ring
    _ ≤ _ :=
      mul_le_mul_of_nonneg_right
        rankFourGaussianFromFour_ratio_half
        (by
          unfold rankFourGaussianFromFour
          positivity)

private theorem rankFourGaussianFromFour_geometric
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromFour A p m ≤
      rankFourGaussianFromFour A p 0 *
        (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 2) *
            rankFourGaussianFromFour A p m :=
          rankFourGaussianFromFour_succ_le
            hA p hp m
        _ ≤ (1 / 2) *
            (rankFourGaussianFromFour A p 0 *
              (1 / 2 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left
            ih (by norm_num)
        _ = _ := by
          rw [pow_succ]
          ring

/-- Every shifted n >= 4 Gaussian moment through degree sixteen converges. -/
theorem thetaGaussianFromFour_rankFour_summable
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) :
    Summable (fun m : ℕ =>
      ((m : ℝ) + 4) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1))) := by
  change Summable (rankFourGaussianFromFour A p)
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
      (rankFourGaussianFromFour A p 0)).of_nonneg_of_le
  · intro m
    unfold rankFourGaussianFromFour
    positivity
  · exact rankFourGaussianFromFour_geometric
      hA p hp

/-- The complete n >= 4 Gaussian moment tail is at most twice its first term. -/
theorem thetaGaussianFromFour_rankFour_tsum_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) :
    (∑' m : ℕ,
      ((m : ℝ) + 4) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1))) ≤
      2 * 4 ^ p * Real.exp (-15 * A) := by
  have h :=
    (thetaGaussianFromFour_rankFour_summable
      hA p hp).tsum_le_tsum
        (rankFourGaussianFromFour_geometric
          hA p hp)
        ((summable_geometric_of_norm_lt_one
          (by norm_num :
            ‖(1 / 2 : ℝ)‖ < 1)).mul_left
          (rankFourGaussianFromFour A p 0))
  rw [tsum_mul_left,
    tsum_geometric_of_norm_lt_one
      (by norm_num :
        ‖(1 / 2 : ℝ)‖ < 1)] at h
  change
    (∑' m, rankFourGaussianFromFour A p m) ≤ _
  apply h.trans_eq
  simp only [rankFourGaussianFromFour,
    Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- Exact coefficient in the seven-coordinate n >= 4 remainder box. -/
def thetaPhiThreeModeTailErrorCoefficient
    (k : Fin 7) : ℝ :=
  4 * 4 ^ k.val * 4 ^ (2 * k.val + 4)

private theorem thetaPhiThreeModeRemainderTerm7_norm_le
    (k : Fin 7) {A : ℝ}
    (hA : 3 ≤ A) (m : ℕ) :
    ‖thetaPhiThreeModeRemainderTerm7 k A m‖ ≤
      (2 * 4 ^ k.val *
        A ^ (k.val + 1)) *
      (((m : ℝ) + 4) ^ (2 * k.val + 4) *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn :
      1 ≤ ((m : ℝ) + 4) ^ 2 := by
    nlinarith
  have hy :
      3 ≤ A * ((m : ℝ) + 4) ^ 2 := by
    nlinarith [
      mul_nonneg
        (show 0 ≤ A by linarith)
        (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial7_abs_le k hy
  unfold thetaPhiThreeModeRemainderTerm7
  rw [norm_mul, norm_mul,
    Real.norm_of_nonneg (sq_nonneg _),
    Real.norm_eq_abs,
    Real.norm_of_nonneg
      (Real.exp_pos _).le]
  calc
    _ ≤
        ((m : ℝ) + 4) ^ 2 *
          (2 * 4 ^ k.val *
            (A * ((m : ℝ) + 4) ^ 2) ^
              (k.val + 1)) *
          Real.exp
            (-A *
              (((m : ℝ) + 4) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left
          hp (sq_nonneg _))
        (Real.exp_pos _).le
    _ = _ := by
      simp only [mul_pow, pow_add, pow_mul]
      ring

/-- Every literal n >= 4 remainder coordinate is absolutely summable. -/
theorem thetaPhiThreeModeRemainderTerm7_summable
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    Summable
      (thetaPhiThreeModeRemainderTerm7 k A) := by
  exact (((thetaGaussianFromFour_rankFour_summable
    hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val *
        A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _)
        (thetaPhiThreeModeRemainderTerm7_norm_le
          k hA)).of_norm

/-- Absolute n >= 4 remainder bound for every rank-four jet coordinate. -/
theorem thetaPhiThreeModeRemainderTerm7_tsum_abs_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ,
        thetaPhiThreeModeRemainderTerm7 k A m| ≤
      thetaPhiThreeModeTailErrorCoefficient k *
        A ^ (k.val + 1) *
          Real.exp (-15 * A) := by
  have hnorm :
      Summable
        (fun m =>
          ‖thetaPhiThreeModeRemainderTerm7
            k A m‖) :=
    ((thetaGaussianFromFour_rankFour_summable
      hA (2 * k.val + 4)
        (by omega)).mul_left
      (2 * 4 ^ k.val *
        A ^ (k.val + 1))).of_nonneg_of_le
      (fun m => norm_nonneg _)
      (thetaPhiThreeModeRemainderTerm7_norm_le
        k hA)
  have hsum := hnorm.tsum_le_tsum
    (thetaPhiThreeModeRemainderTerm7_norm_le
      k hA)
    ((thetaGaussianFromFour_rankFour_summable
      hA (2 * k.val + 4)
        (by omega)).mul_left
      (2 * 4 ^ k.val *
        A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ =
        ‖∑' m,
          thetaPhiThreeModeRemainderTerm7
            k A m‖ :=
      (Real.norm_eq_abs _).symm
    _ ≤
        ∑' m,
          ‖thetaPhiThreeModeRemainderTerm7
            k A m‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (∑' m : ℕ,
          ((m : ℝ) + 4) ^
              (2 * k.val + 4) *
            Real.exp
              (-A *
                (((m : ℝ) + 4) ^ 2 - 1))) :=
      hsum
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (2 * 4 ^ (2 * k.val + 4) *
          Real.exp (-15 * A)) :=
      mul_le_mul_of_nonneg_left
        (thetaGaussianFromFour_rankFour_tsum_le
          hA (2 * k.val + 4)
            (by omega))
        (by positivity)
    _ = _ := by
      unfold
        thetaPhiThreeModeTailErrorCoefficient
      ring

/-- Source-specialized n >= 4 remainder box. -/
theorem thetaPhiThreeModeRemainderJet7_abs_le
    (k : Fin 7) {t : ℝ} (ht : 0 ≤ t) :
    |thetaPhiThreeModeRemainderJet7 t k| ≤
      thetaPhiThreeModeTailErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) *
          Real.exp (-15 * thetaModeA t) := by
  have he : 1 ≤ Real.exp (4 * t) :=
    Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right
        Real.pi_pos.le he)
  rw [thetaPhiThreeModeRemainderJet7_eq_tsum]
  exact
    thetaPhiThreeModeRemainderTerm7_tsum_abs_le
      k hA

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
