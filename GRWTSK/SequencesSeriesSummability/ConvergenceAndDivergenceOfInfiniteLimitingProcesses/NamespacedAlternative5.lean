-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ThetaPhiTwoModeRemainderJet7.Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ThetaPhiTwoModeRemainderJet7.Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourCompactTwoMode
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourRemainderBounds

/-!
# Compact rank-four tail after the first two modes

The compact rank-four certificate keeps the first two normalized theta modes
exactly.  This module identifies the remaining source term with the literal
theta modes n >= 3 and extends the verified Gaussian majorant through jet order
six.

The determinant comparison against the positive two-mode margin is deliberately
left to the next finite-algebra tranche.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ThetaPhiTwoModeRemainderJet7.Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section
open scoped BigOperators

/-- Exact normalized source remainder after the first two theta modes. -/
def thetaPhiTwoModeRemainderJet7 (t : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiNormalizedJet7 t k -
    thetaPhiTwoModeJet7 (thetaModeA t)
      (Real.exp (-3 * thetaModeA t)) k

/-- Literal n >= 3 normalized theta mode, indexed from m = 0. -/
def thetaPhiTwoModeRemainderTerm7
    (k : Fin 7) (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 3) ^ 2 *
    thetaPhiJetPolynomial7 k (A * ((m : ℝ) + 3) ^ 2) *
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))

private theorem thetaPhiNormalizedModeTerm7_shift_two
    (k : Fin 7) (A : ℝ) (m : ℕ) :
    thetaPhiNormalizedModeTerm7 k A (m + 2) =
      thetaPhiTwoModeRemainderTerm7 k A m := by
  unfold thetaPhiNormalizedModeTerm7 thetaPhiTwoModeRemainderTerm7
  push_cast
  ring_nf

/-- The normalized source is exactly its first two modes plus the n >= 3
remainder. -/
theorem thetaPhiTwoModeRemainderJet7_eq_tsum
    (k : Fin 7) (t : ℝ) :
    thetaPhiTwoModeRemainderJet7 t k =
      ∑' m : ℕ,
        thetaPhiTwoModeRemainderTerm7 k (thetaModeA t) m := by
  let f : ℕ → ℝ :=
    thetaPhiNormalizedModeTerm7 k (thetaModeA t)
  have hs : Summable f := by
    change Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial7 k
        (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
      Real.exp
        (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)))
    exact thetaPhiJet7_polynomial_summable k t
  have hsplit := hs.sum_add_tsum_nat_add 2
  have h0 :
      f 0 = thetaPhiJetPolynomial7 k (thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
  have h1 :
      f 1 =
        4 * Real.exp (-3 * thetaModeA t) *
          thetaPhiJetPolynomial7 k (4 * thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
    ring
  have hhead :
      (∑ i ∈ Finset.range 2, f i) =
        thetaPhiTwoModeJet7 (thetaModeA t)
          (Real.exp (-3 * thetaModeA t)) k := by
    have hrange :
        (∑ i ∈ Finset.range 2, f i) = f 0 + f 1 := by
      norm_num [Finset.sum_range_succ]
    rw [hrange, h0, h1]
    unfold thetaPhiTwoModeJet7
    ring
  have hfull :
      thetaPhiNormalizedJet7 t k = ∑' m : ℕ, f m := by
    rfl
  have htail :
      (∑' m : ℕ, f (m + 2)) =
        ∑' m : ℕ,
          thetaPhiTwoModeRemainderTerm7 k (thetaModeA t) m := by
    apply tsum_congr
    intro m
    exact thetaPhiNormalizedModeTerm7_shift_two
      k (thetaModeA t) m
  unfold thetaPhiTwoModeRemainderJet7
  rw [hfull, ← htail, ← hhead]
  linarith

/-- Coordinatewise exact decomposition of the normalized source around the
first two modes. -/
theorem thetaPhiNormalizedJet7_eq_two_mode_add_remainder
    (t : ℝ) (k : Fin 7) :
    thetaPhiNormalizedJet7 t k =
      thetaPhiTwoModeJet7 (thetaModeA t)
          (Real.exp (-3 * thetaModeA t)) k +
        thetaPhiTwoModeRemainderJet7 t k := by
  unfold thetaPhiTwoModeRemainderJet7
  ring

private def rankFourGaussianFromThree
    (A : ℝ) (p m : ℕ) : ℝ :=
  ((m : ℝ) + 3) ^ p *
    Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))

private theorem rankFourGaussianFromThree_ratio_half :
    (2 : ℝ) ^ 16 * Real.exp (-21) ≤ 1 / 2 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20)
    (by decide : (7 : ℕ) ≠ 0)
  have he : Real.exp (21 : ℝ) = Real.exp 3 ^ 7 := by
    convert! Real.exp_nat_mul (3 : ℝ) 7 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem rankFourGaussianFromThree_succ_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromThree A p (m + 1) ≤
      (1 / 2) * rankFourGaussianFromThree A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 :
      ((m : ℝ) + 4) ^ p ≤
        (2 * ((m : ℝ) + 3)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 16 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow :
      ((m : ℝ) + 4) ^ p ≤
        (2 : ℝ) ^ 16 * ((m : ℝ) + 3) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans
      (mul_le_mul_of_nonneg_right hp1 (by positivity))
  have hgap : 21 ≤ A * (2 * (m : ℝ) + 7) := by
    nlinarith [
      mul_nonneg (show 0 ≤ A - 3 by linarith) hm]
  have he :
      Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) ≤
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold rankFourGaussianFromThree
  push_cast
  calc
    _ = ((m : ℝ) + 4) ^ p *
        Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) := by
      ring_nf
    _ ≤ ((2 : ℝ) ^ 16 * ((m : ℝ) + 3) ^ p) *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) :=
      mul_le_mul hpow he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 16 * Real.exp (-21)) *
        rankFourGaussianFromThree A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold rankFourGaussianFromThree
      ring
    _ ≤ _ :=
      mul_le_mul_of_nonneg_right
        rankFourGaussianFromThree_ratio_half
        (by
          unfold rankFourGaussianFromThree
          positivity)

private theorem rankFourGaussianFromThree_geometric
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromThree A p m ≤
      rankFourGaussianFromThree A p 0 *
        (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 2) *
            rankFourGaussianFromThree A p m :=
          rankFourGaussianFromThree_succ_le
            hA p hp m
        _ ≤ (1 / 2) *
            (rankFourGaussianFromThree A p 0 *
              (1 / 2 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left ih (by norm_num)
        _ = _ := by
          rw [pow_succ]
          ring

/-- Every shifted n >= 3 Gaussian moment required by the seven rank-four jet
coordinates is summable. -/
theorem thetaGaussianFromThree_rankFour_summable
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) :
    Summable (fun m : ℕ =>
      ((m : ℝ) + 3) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  change Summable (rankFourGaussianFromThree A p)
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
      (rankFourGaussianFromThree A p 0)).of_nonneg_of_le
  · intro m
    unfold rankFourGaussianFromThree
    positivity
  · exact rankFourGaussianFromThree_geometric
      hA p hp

/-- The complete n >= 3 Gaussian moment tail is at most twice its first
term, uniformly through moment degree sixteen. -/
theorem thetaGaussianFromThree_rankFour_tsum_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) :
    (∑' m : ℕ,
      ((m : ℝ) + 3) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1))) ≤
      2 * 3 ^ p * Real.exp (-8 * A) := by
  have h :=
    (thetaGaussianFromThree_rankFour_summable
      hA p hp).tsum_le_tsum
        (rankFourGaussianFromThree_geometric hA p hp)
        ((summable_geometric_of_norm_lt_one
          (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
          (rankFourGaussianFromThree A p 0))
  rw [tsum_mul_left,
    tsum_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  change
    (∑' m, rankFourGaussianFromThree A p m) ≤ _
  apply h.trans_eq
  simp only [rankFourGaussianFromThree,
    Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- Exact coefficient in the seven-coordinate n >= 3 compact remainder box. -/
def thetaPhiTwoModeTailErrorCoefficient
    (k : Fin 7) : ℝ :=
  4 * 4 ^ k.val * 3 ^ (2 * k.val + 4)

private theorem thetaPhiTwoModeRemainderTerm7_norm_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    ‖thetaPhiTwoModeRemainderTerm7 k A m‖ ≤
      (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (((m : ℝ) + 3) ^ (2 * k.val + 4) *
          Real.exp
            (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn : 1 ≤ ((m : ℝ) + 3) ^ 2 := by
    nlinarith
  have hy :
      3 ≤ A * ((m : ℝ) + 3) ^ 2 := by
    nlinarith [
      mul_nonneg (show 0 ≤ A by linarith)
        (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial7_abs_le k hy
  unfold thetaPhiTwoModeRemainderTerm7
  rw [norm_mul, norm_mul,
    Real.norm_of_nonneg (sq_nonneg _),
    Real.norm_eq_abs,
    Real.norm_of_nonneg (Real.exp_pos _).le]
  calc
    _ ≤ ((m : ℝ) + 3) ^ 2 *
        (2 * 4 ^ k.val *
          (A * ((m : ℝ) + 3) ^ 2) ^
            (k.val + 1)) *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hp
          (sq_nonneg _))
        (Real.exp_pos _).le
    _ = _ := by
      simp only [mul_pow, pow_add, pow_mul]
      ring

/-- Every literal n >= 3 compact remainder coordinate is absolutely
summable. -/
theorem thetaPhiTwoModeRemainderTerm7_summable
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    Summable (thetaPhiTwoModeRemainderTerm7 k A) := by
  exact (((thetaGaussianFromThree_rankFour_summable
    hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _)
        (thetaPhiTwoModeRemainderTerm7_norm_le
          k hA)).of_norm

/-- Absolute n >= 3 remainder bound for every rank-four jet coordinate. -/
theorem thetaPhiTwoModeRemainderTerm7_tsum_abs_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ,
        thetaPhiTwoModeRemainderTerm7 k A m| ≤
      thetaPhiTwoModeTailErrorCoefficient k *
        A ^ (k.val + 1) * Real.exp (-8 * A) := by
  have hnorm :
      Summable
        (fun m =>
          ‖thetaPhiTwoModeRemainderTerm7 k A m‖) :=
    ((thetaGaussianFromThree_rankFour_summable
      hA (2 * k.val + 4) (by omega)).mul_left
        (2 * 4 ^ k.val *
          A ^ (k.val + 1))).of_nonneg_of_le
      (fun m => norm_nonneg _)
      (thetaPhiTwoModeRemainderTerm7_norm_le k hA)
  have hsum := hnorm.tsum_le_tsum
    (thetaPhiTwoModeRemainderTerm7_norm_le k hA)
    ((thetaGaussianFromThree_rankFour_summable
      hA (2 * k.val + 4) (by omega)).mul_left
        (2 * 4 ^ k.val * A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ =
        ‖∑' m,
          thetaPhiTwoModeRemainderTerm7 k A m‖ :=
      (Real.norm_eq_abs _).symm
    _ ≤ ∑' m,
        ‖thetaPhiTwoModeRemainderTerm7 k A m‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (∑' m : ℕ,
          ((m : ℝ) + 3) ^
              (2 * k.val + 4) *
            Real.exp
              (-A * (((m : ℝ) + 3) ^ 2 - 1))) :=
      hsum
    _ ≤
        (2 * 4 ^ k.val *
          A ^ (k.val + 1)) *
        (2 * 3 ^ (2 * k.val + 4) *
          Real.exp (-8 * A)) :=
      mul_le_mul_of_nonneg_left
        (thetaGaussianFromThree_rankFour_tsum_le
          hA (2 * k.val + 4) (by omega))
        (by positivity)
    _ = _ := by
      unfold thetaPhiTwoModeTailErrorCoefficient
      ring

/-- Source-specialized n >= 3 compact remainder box. -/
theorem thetaPhiTwoModeRemainderJet7_abs_le
    (k : Fin 7) {t : ℝ} (ht : 0 ≤ t) :
    |thetaPhiTwoModeRemainderJet7 t k| ≤
      thetaPhiTwoModeTailErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) *
          Real.exp (-8 * thetaModeA t) := by
  have he : 1 ≤ Real.exp (4 * t) :=
    Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  rw [thetaPhiTwoModeRemainderJet7_eq_tsum]
  exact thetaPhiTwoModeRemainderTerm7_tsum_abs_le
    k hA

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
