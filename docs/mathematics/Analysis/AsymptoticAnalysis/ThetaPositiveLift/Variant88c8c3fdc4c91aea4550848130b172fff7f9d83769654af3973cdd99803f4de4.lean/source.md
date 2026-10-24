# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `884a168a6dd29126c746c49cc10c28c0f6ea80e0` · SHA-256 `88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourPerturbation
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds

/-!
# Rank-four Gaussian remainder bounds

This module makes the seven-coordinate rank-four remainder literal: after the
first normalized theta mode is removed, every coordinate is the sum of modes
n >= 2.  It extends the lower-rank Gaussian majorant from polynomial degree
twelve to degree sixteen and obtains one explicit absolute remainder bound for
each of the seven jet coordinates.

No determinant perturbation estimate is closed here.  These coordinate bounds
are the input to that next finite polynomial step.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section
open scoped BigOperators

/-- The order-six extension of the source-mode polynomial bound. -/
theorem thetaPhiJetPolynomial7_abs_le (k : Fin 7) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial7 k y| ≤
      2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by
    dsimp [x]
    ring
  rw [he]
  have hplus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  have hminus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- One normalized source mode, indexed so m = 0 is the first theta mode. -/
def thetaPhiNormalizedModeTerm7 (k : Fin 7) (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 1) ^ 2 *
    thetaPhiJetPolynomial7 k (A * ((m : ℝ) + 1) ^ 2) *
      Real.exp (-A * (((m : ℝ) + 1) ^ 2 - 1))

/-- The literal remainder modes, indexed so m = 0 corresponds to theta mode
n = 2. -/
def thetaPhiRemainderModeTerm7 (k : Fin 7) (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 2) ^ 2 *
    thetaPhiJetPolynomial7 k (A * ((m : ℝ) + 2) ^ 2) *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))

private theorem thetaPhiNormalizedModeTerm7_shift
    (k : Fin 7) (A : ℝ) (m : ℕ) :
    thetaPhiNormalizedModeTerm7 k A (m + 1) =
      thetaPhiRemainderModeTerm7 k A m := by
  unfold thetaPhiNormalizedModeTerm7 thetaPhiRemainderModeTerm7
  push_cast
  ring_nf

private theorem thetaPhiNormalizedModeTerm7_summable
    (k : Fin 7) (t : ℝ) :
    Summable (thetaPhiNormalizedModeTerm7 k (thetaModeA t)) := by
  change Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
    thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
      Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)))
  exact thetaPhiJet7_polynomial_summable k t

/-- The exact normalized rank-four remainder is the literal source sum over
theta modes n >= 2. -/
theorem thetaPhiRemainderJet7_eq_tsum (k : Fin 7) (t : ℝ) :
    thetaPhiRemainderJet7 t k =
      ∑' m : ℕ, thetaPhiRemainderModeTerm7 k (thetaModeA t) m := by
  let f : ℕ → ℝ := thetaPhiNormalizedModeTerm7 k (thetaModeA t)
  have hs : Summable f := thetaPhiNormalizedModeTerm7_summable k t
  have hsplit := hs.sum_add_tsum_nat_add 1
  have hhead :
      (∑ i ∈ Finset.range 1, f i) = thetaPhiDominantJet7 t k := by
    simp [f, thetaPhiNormalizedModeTerm7, thetaPhiDominantJet7]
  have hfull :
      thetaPhiNormalizedJet7 t k = ∑' m : ℕ, f m := by
    rfl
  have htail :
      (∑' m : ℕ, f (m + 1)) =
        ∑' m : ℕ, thetaPhiRemainderModeTerm7 k (thetaModeA t) m := by
    apply tsum_congr
    intro m
    exact thetaPhiNormalizedModeTerm7_shift k (thetaModeA t) m
  unfold thetaPhiRemainderJet7
  rw [hfull, ← htail]
  linarith

private def rankFourGaussianFromTwo (A : ℝ) (p m : ℕ) : ℝ :=
  ((m : ℝ) + 2) ^ p *
    Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))

private theorem rankFourGaussian_ratio_half :
    (2 : ℝ) ^ 16 * Real.exp (-15) ≤ 1 / 2 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (5 : ℕ) ≠ 0)
  have he : Real.exp (15 : ℝ) = Real.exp 3 ^ 5 := by
    convert! Real.exp_nat_mul (3 : ℝ) 5 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem rankFourGaussianFromTwo_succ_le
    {A : ℝ} (hA : 3 ≤ A) (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromTwo A p (m + 1) ≤
      (1 / 2) * rankFourGaussianFromTwo A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 :
      ((m : ℝ) + 3) ^ p ≤
        (2 * ((m : ℝ) + 2)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by nlinarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 16 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow :
      ((m : ℝ) + 3) ^ p ≤
        (2 : ℝ) ^ 16 * ((m : ℝ) + 2) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans (mul_le_mul_of_nonneg_right hp1 (by positivity))
  have hgap : 15 ≤ A * (2 * (m : ℝ) + 5) := by
    nlinarith [mul_nonneg (show 0 ≤ A - 3 by linarith) hm]
  have he :
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1)) ≤
        Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1) - 15) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold rankFourGaussianFromTwo
  push_cast
  calc
    _ = ((m : ℝ) + 3) ^ p *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1)) := by ring_nf
    _ ≤ ((2 : ℝ) ^ 16 * ((m : ℝ) + 2) ^ p) *
        Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1) - 15) :=
      mul_le_mul hpow he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 16 * Real.exp (-15)) *
        rankFourGaussianFromTwo A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold rankFourGaussianFromTwo
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right rankFourGaussian_ratio_half
      (by unfold rankFourGaussianFromTwo; positivity)

private theorem rankFourGaussianFromTwo_geometric
    {A : ℝ} (hA : 3 ≤ A) (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromTwo A p m ≤
      rankFourGaussianFromTwo A p 0 * (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 2) * rankFourGaussianFromTwo A p m :=
          rankFourGaussianFromTwo_succ_le hA p hp m
        _ ≤ (1 / 2) *
            (rankFourGaussianFromTwo A p 0 * (1 / 2 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left ih (by norm_num)
        _ = _ := by rw [pow_succ]; ring

/-- Every rank-four shifted Gaussian moment through degree sixteen converges. -/
theorem thetaGaussianFromTwo_rankFour_summable
    {A : ℝ} (hA : 3 ≤ A) (p : ℕ) (hp : p ≤ 16) :
    Summable (fun m : ℕ => ((m : ℝ) + 2) ^ p *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) := by
  change Summable (rankFourGaussianFromTwo A p)
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
      (rankFourGaussianFromTwo A p 0)).of_nonneg_of_le
  · intro m
    unfold rankFourGaussianFromTwo
    positivity
  · exact rankFourGaussianFromTwo_geometric hA p hp

/-- The complete n >= 2 Gaussian moment tail is at most twice its first term. -/
theorem thetaGaussianFromTwo_rankFour_tsum_le
    {A : ℝ} (hA : 3 ≤ A) (p : ℕ) (hp : p ≤ 16) :
    (∑' m : ℕ, ((m : ℝ) + 2) ^ p *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) ≤
        2 * 2 ^ p * Real.exp (-3 * A) := by
  have h := (thetaGaussianFromTwo_rankFour_summable hA p hp).tsum_le_tsum
    (rankFourGaussianFromTwo_geometric hA p hp)
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
        (rankFourGaussianFromTwo A p 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  change (∑' m, rankFourGaussianFromTwo A p m) ≤ _
  apply h.trans_eq
  simp only [rankFourGaussianFromTwo, Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- Exact coefficient in the seven-coordinate n >= 2 remainder box. -/
def thetaPhiJet7RemainderErrorCoefficient (k : Fin 7) : ℝ :=
  4 * 4 ^ k.val * 2 ^ (2 * k.val + 4)

private theorem thetaPhiRemainderModeTerm7_norm_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    ‖thetaPhiRemainderModeTerm7 k A m‖ ≤
      (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (((m : ℝ) + 2) ^ (2 * k.val + 4) *
          Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn : 1 ≤ ((m : ℝ) + 2) ^ 2 := by
    nlinarith
  have hy : 3 ≤ A * ((m : ℝ) + 2) ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ A by linarith) (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial7_abs_le k hy
  unfold thetaPhiRemainderModeTerm7
  rw [norm_mul, norm_mul, Real.norm_of_nonneg (sq_nonneg _),
    Real.norm_eq_abs, Real.norm_of_nonneg (Real.exp_pos _).le]
  calc
    _ ≤ ((m : ℝ) + 2) ^ 2 *
        (2 * 4 ^ k.val * (A * ((m : ℝ) + 2) ^ 2) ^ (k.val + 1)) *
          Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hp (sq_nonneg _))
        (Real.exp_pos _).le
    _ = _ := by
      simp only [mul_pow, pow_add, pow_mul]
      ring

/-- Every one of the seven literal n >= 2 remainder coordinates is absolutely
summable. -/
theorem thetaPhiRemainderModeTerm7_summable
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    Summable (thetaPhiRemainderModeTerm7 k A) := by
  exact (((thetaGaussianFromTwo_rankFour_summable hA
    (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _)
        (thetaPhiRemainderModeTerm7_norm_le k hA)).of_norm

/-- Complete absolute bound for a rank-four normalized source-jet coordinate
after the first mode has been removed. -/
theorem thetaPhiRemainderModeTerm7_tsum_abs_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ, thetaPhiRemainderModeTerm7 k A m| ≤
      thetaPhiJet7RemainderErrorCoefficient k *
        A ^ (k.val + 1) * Real.exp (-3 * A) := by
  have hnorm : Summable (fun m => ‖thetaPhiRemainderModeTerm7 k A m‖) :=
    ((thetaGaussianFromTwo_rankFour_summable hA
      (2 * k.val + 4) (by omega)).mul_left
        (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
          (fun m => norm_nonneg _)
          (thetaPhiRemainderModeTerm7_norm_le k hA)
  have hsum := hnorm.tsum_le_tsum
    (thetaPhiRemainderModeTerm7_norm_le k hA)
    ((thetaGaussianFromTwo_rankFour_summable hA
      (2 * k.val + 4) (by omega)).mul_left
        (2 * 4 ^ k.val * A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ = ‖∑' m, thetaPhiRemainderModeTerm7 k A m‖ :=
      (Real.norm_eq_abs _).symm
    _ ≤ ∑' m, ‖thetaPhiRemainderModeTerm7 k A m‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (∑' m : ℕ, ((m : ℝ) + 2) ^ (2 * k.val + 4) *
          Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) := hsum
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (2 * 2 ^ (2 * k.val + 4) * Real.exp (-3 * A)) :=
      mul_le_mul_of_nonneg_left
        (thetaGaussianFromTwo_rankFour_tsum_le hA
          (2 * k.val + 4) (by omega)) (by positivity)
    _ = _ := by
      unfold thetaPhiJet7RemainderErrorCoefficient
      ring

/-- Source-specialized seven-coordinate remainder box on the full nonnegative
half-line. -/
theorem thetaPhiRemainderJet7_abs_le
    (k : Fin 7) {t : ℝ} (ht : 0 ≤ t) :
    |thetaPhiRemainderJet7 t k| ≤
      thetaPhiJet7RemainderErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) *
          Real.exp (-3 * thetaModeA t) := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  rw [thetaPhiRemainderJet7_eq_tsum]
  exact thetaPhiRemainderModeTerm7_tsum_abs_le k hA

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
