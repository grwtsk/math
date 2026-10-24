# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3` · SHA-256 `d6ee871b0fe414b36fab9422a49fc0b20ced1f6fc7147ea055209a31c69612b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ThetaRankFiveGaussianTailTerm.Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ThetaRankFiveGaussianTailTerm.Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds
import FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion

/-!
# Certified Gaussian tails for the rank-five source test

These estimates control every mode starting at five, with polynomial degree
through twenty. They use the existing kernel proof `20 < exp 3`; no numerical
oracle or truncation of the infinite source is used.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ThetaRankFiveGaussianTailTerm.Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The unnormalized Gaussian majorant for modes five and above. -/
def thetaRankFiveGaussianTailTerm (p m : ℕ) : ℝ :=
  ((m : ℝ) + 5) ^ p * Real.exp (-3 * ((m : ℝ) + 5) ^ 2)

/-- A rational exponential bound strong enough for every omitted derivative. -/
theorem thetaRankFive_exp_neg_seventyFive_lt :
    Real.exp (-75 : ℝ) < 3 / 10 ^ 33 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (25 : ℕ) ≠ 0)
  have he : Real.exp (75 : ℝ) = Real.exp 3 ^ 25 := by
    convert! Real.exp_nat_mul (3 : ℝ) 25 using 1
    norm_num
  rw [Real.exp_neg, he]
  rw [← one_div]
  apply (div_lt_iff₀ (by positivity)).mpr
  norm_num at h ⊢
  linarith

private theorem gaussian_ratio_half :
    (2 : ℝ) ^ 20 * Real.exp (-33) ≤ 1 / 2 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (11 : ℕ) ≠ 0)
  have he : Real.exp (33 : ℝ) = Real.exp 3 ^ 11 := by
    convert! Real.exp_nat_mul (3 : ℝ) 11 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem gaussian_succ_le (p : ℕ) (hp : p ≤ 20) (m : ℕ) :
    thetaRankFiveGaussianTailTerm p (m + 1) ≤
      (1 / 2) * thetaRankFiveGaussianTailTerm p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 : ((m : ℝ) + 6) ^ p ≤ (2 * ((m : ℝ) + 5)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 20 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow : ((m : ℝ) + 6) ^ p ≤
      (2 : ℝ) ^ 20 * ((m : ℝ) + 5) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans (mul_le_mul_of_nonneg_right hp1 (by positivity))
  have he : Real.exp (-3 * ((m : ℝ) + 6) ^ 2) ≤
      Real.exp (-3 * ((m : ℝ) + 5) ^ 2 - 33) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  unfold thetaRankFiveGaussianTailTerm
  push_cast
  calc
    _ = ((m : ℝ) + 6) ^ p * Real.exp (-3 * ((m : ℝ) + 6) ^ 2) := by
      ring_nf
    _ ≤ ((2 : ℝ) ^ 20 * ((m : ℝ) + 5) ^ p) *
        Real.exp (-3 * ((m : ℝ) + 5) ^ 2 - 33) :=
      mul_le_mul hpow he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 20 * Real.exp (-33)) *
        thetaRankFiveGaussianTailTerm p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold thetaRankFiveGaussianTailTerm
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right gaussian_ratio_half (by
      unfold thetaRankFiveGaussianTailTerm
      positivity)

private theorem gaussian_geometric (p : ℕ) (hp : p ≤ 20) (m : ℕ) :
    thetaRankFiveGaussianTailTerm p m ≤
      thetaRankFiveGaussianTailTerm p 0 * (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 2) * thetaRankFiveGaussianTailTerm p m := gaussian_succ_le p hp m
        _ ≤ (1 / 2) * (thetaRankFiveGaussianTailTerm p 0 * (1 / 2 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left ih (by norm_num)
        _ = _ := by rw [pow_succ]; ring

/-- The full majorant tail, not a finite numerical sample, is summable. -/
theorem thetaRankFiveGaussianTail_summable (p : ℕ) (hp : p ≤ 20) :
    Summable (thetaRankFiveGaussianTailTerm p) := by
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
      (thetaRankFiveGaussianTailTerm p 0)).of_nonneg_of_le
  · intro m
    unfold thetaRankFiveGaussianTailTerm
    positivity
  · exact gaussian_geometric p hp

/-- Every omitted Gaussian moment is at most twice its first mode. -/
theorem thetaRankFiveGaussianTail_tsum_le (p : ℕ) (hp : p ≤ 20) :
    (∑' m : ℕ, thetaRankFiveGaussianTailTerm p m) ≤
      2 * 5 ^ p * Real.exp (-75) := by
  have h := (thetaRankFiveGaussianTail_summable p hp).tsum_le_tsum
    (gaussian_geometric p hp)
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
      (thetaRankFiveGaussianTailTerm p 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  apply h.trans_eq
  norm_num [thetaRankFiveGaussianTailTerm]
  ring

/-- The rational bound used in the supplied certificate, independently
proved here for the entire infinite majorant. -/
theorem thetaRankFiveGaussianTail_tsum_lt (p : ℕ) (hp : p ≤ 20) :
    (∑' m : ℕ, thetaRankFiveGaussianTailTerm p m) <
      6 * 5 ^ p / 10 ^ 33 := by
  apply (thetaRankFiveGaussianTail_tsum_le p hp).trans_lt
  have h := mul_lt_mul_of_pos_left thetaRankFive_exp_neg_seventyFive_lt
    (by positivity : (0 : ℝ) < 2 * 5 ^ p)
  convert h using 1
  ring

/-- Transfer a coefficient majorant to the literal source modes, with their
actual normalization and mode indices. -/
theorem thetaRankFive_mode_norm_le (n : ℕ) (C : ℝ) (hC : 0 ≤ C)
    (hpoly : ∀ y : ℝ, 1 ≤ y →
      |(thetaPhiDerivativePolynomial n).eval y| ≤ C * y ^ (n + 1))
    (m : ℕ) :
    ‖thetaPhiDerivativeModeValue n (m + 4) 0‖ ≤
      (C * 4 ^ (n + 2)) * thetaRankFiveGaussianTailTerm (2 * (n + 2)) m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hs : (1 : ℝ) ≤ ((m : ℝ) + 5) ^ 2 := by nlinarith
  have hy : 1 ≤ Real.pi * ((m : ℝ) + 5) ^ 2 := by
    nlinarith [Real.pi_gt_three]
  have hpi : Real.pi * ((m : ℝ) + 5) ^ 2 ≤ 4 * ((m : ℝ) + 5) ^ 2 :=
    mul_le_mul_of_nonneg_right Real.pi_lt_four.le (sq_nonneg _)
  have he : Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) ≤
      Real.exp (-3 * ((m : ℝ) + 5) ^ 2) := by
    apply Real.exp_le_exp.mpr
    nlinarith [Real.pi_gt_three]
  have hmode : thetaPhiDerivativeModeValue n (m + 4) 0 =
      (Real.pi * ((m : ℝ) + 5) ^ 2) *
        (thetaPhiDerivativePolynomial n).eval (Real.pi * ((m : ℝ) + 5) ^ 2) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) := by
    unfold thetaPhiDerivativeModeValue thetaPhiDerivativeModeWeight thetaModeY thetaModeA
    simp only [mul_zero, Real.exp_zero, mul_one, Nat.cast_add, Nat.cast_ofNat]
    rw [show (m : ℝ) + 4 + 1 = m + 5 by ring]
    ring
  rw [hmode, norm_mul, norm_mul, Real.norm_of_nonneg (by positivity),
    Real.norm_of_nonneg (Real.exp_pos _).le, Real.norm_eq_abs]
  calc
    _ ≤ (Real.pi * ((m : ℝ) + 5) ^ 2) *
        (C * (Real.pi * ((m : ℝ) + 5) ^ 2) ^ (n + 1)) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (hpoly _ hy) (by positivity)) (by positivity)
    _ = C * (Real.pi * ((m : ℝ) + 5) ^ 2) ^ (n + 2) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) := by rw [pow_succ]; ring
    _ ≤ C * (4 * ((m : ℝ) + 5) ^ 2) ^ (n + 2) *
        Real.exp (-3 * ((m : ℝ) + 5) ^ 2) :=
      mul_le_mul (mul_le_mul_of_nonneg_left
        (pow_le_pow_left₀ (by positivity) hpi _) hC) he (by positivity) (by positivity)
    _ = _ := by
      unfold thetaRankFiveGaussianTailTerm
      rw [mul_pow, ← pow_mul]
      ring

/-- Complete analytic error bound after the first four literal source modes.
The coefficient estimate is separated so it can be computed for all nine
orders by an independent exact polynomial proof. -/
theorem thetaRankFive_source_tail_le (n : ℕ) (hn : n ≤ 8)
    (C : ℝ) (hC : 0 ≤ C)
    (hpoly : ∀ y : ℝ, 1 ≤ y →
      |(thetaPhiDerivativePolynomial n).eval y| ≤ C * y ^ (n + 1)) :
    |thetaPhiDerivativeTapeValue n 0 -
      ∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n m 0| ≤
        6 * C * 100 ^ (n + 2) / 10 ^ 33 := by
  have hmajor := (thetaRankFiveGaussianTail_summable (2 * (n + 2)) (by omega)).mul_left
    (C * 4 ^ (n + 2))
  have hnorm : Summable (fun m : ℕ => ‖thetaPhiDerivativeModeValue n (m + 4) 0‖) :=
    hmajor.of_nonneg_of_le (fun _ => norm_nonneg _) (thetaRankFive_mode_norm_le n C hC hpoly)
  have hsum := hnorm.tsum_le_tsum (thetaRankFive_mode_norm_le n C hC hpoly) hmajor
  rw [tsum_mul_left] at hsum
  have hsplit := (thetaPhiDerivativeModeValue_summable n 0).sum_add_tsum_nat_add 4
  rw [← thetaPhiDerivativeTapeValue_eq_tsum_mode] at hsplit
  have hdiff : thetaPhiDerivativeTapeValue n 0 -
      ∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n m 0 =
      ∑' m : ℕ, thetaPhiDerivativeModeValue n (m + 4) 0 := by linarith
  rw [hdiff, ← Real.norm_eq_abs]
  calc
    _ ≤ ∑' m : ℕ, ‖thetaPhiDerivativeModeValue n (m + 4) 0‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ (C * 4 ^ (n + 2)) * (∑' m : ℕ,
        thetaRankFiveGaussianTailTerm (2 * (n + 2)) m) := hsum
    _ ≤ (C * 4 ^ (n + 2)) * (6 * 5 ^ (2 * (n + 2)) / 10 ^ 33) :=
      mul_le_mul_of_nonneg_left
        (thetaRankFiveGaussianTail_tsum_lt (2 * (n + 2)) (by omega)).le (by positivity)
    _ = _ := by
      rw [pow_mul, show (100 : ℝ) = 4 * 5 ^ 2 by norm_num, mul_pow]
      ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
