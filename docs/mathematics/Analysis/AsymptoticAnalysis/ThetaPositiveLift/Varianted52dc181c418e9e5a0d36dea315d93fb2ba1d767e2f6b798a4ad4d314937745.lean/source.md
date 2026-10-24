# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a751d462342e92a910edc8636fcd48f69f93bbd` · SHA-256 `aa83eaf3b03df9510dbf09921372a6508e511faaad72936da9f3f84656a6c8e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ThetaModeWeight.Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ThetaModeWeight.Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound
import Mathlib.Analysis.Calculus.Deriv.MeanValue

/-!
# Strict log-concavity of the literal theta source

The source is a positive sum of its fixed modes. Its logarithmic curvature is
exactly the weighted mean of the individual mode curvatures plus the score
variance. Individual curvature is at most `-16*A`, whereas comparison with the
first mode and an explicit summable Gaussian estimate give variance `< 10*A`.
Both source derivatives, all summability interchanges, and the mode-weight
normalization are proved, so no curvature or positivity premise is added.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ThetaModeWeight.Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set
noncomputable section

/-- Normalized weight of an actual positive theta mode. -/
def thetaModeWeight (m : ℕ) (t : ℝ) : ℝ := thetaPhiTerm m t / thetaPhi t

/-- Every actual source-mode weight is strictly positive on the half-line. -/
theorem thetaModeWeight_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaModeWeight m t :=
  div_pos (thetaPhiTerm_positive m ht) (thetaPhi_positive t ht)

/-- The normalized literal mode sequence is summable. -/
theorem thetaModeWeight_summable (t : ℝ) : Summable (fun m => thetaModeWeight m t) :=
  (thetaPhi_summable t).div_const _

/-- The actual normalized mode weights have total mass one. -/
theorem thetaModeWeight_sum_one {t : ℝ} (ht : 0 ≤ t) :
    ∑' m, thetaModeWeight m t = 1 := by
  simp only [thetaModeWeight, tsum_div_const]
  change thetaPhi t / thetaPhi t = 1
  exact div_self (thetaPhi_positive t ht).ne'

/-- The first positive mode is bounded by the full source. -/
theorem thetaPhiTerm_zero_le {t : ℝ} (ht : 0 ≤ t) : thetaPhiTerm 0 t ≤ thetaPhi t :=
  (thetaPhi_summable t).le_tsum 0 (fun m _ => (thetaPhiTerm_positive m ht).le)

/-- Comparison of a normalized weight with its ratio to the first mode. -/
theorem thetaModeWeight_le_modeRatio (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeWeight m t ≤ thetaPhiTerm m t / thetaPhiTerm 0 t := by
  unfold thetaModeWeight
  exact div_le_div_of_nonneg_left (thetaPhiTerm_positive m ht).le
    (thetaPhiTerm_positive 0 ht) (thetaPhiTerm_zero_le ht)

private lemma weighted_sub_sq_summable {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n) ^ 2)) (c : ℝ) :
    Summable (fun n => p n * (g n - c) ^ 2) := by
  apply ((hg2.sub (hg.mul_left (2 * c))).add (hp.mul_left (c ^ 2))).congr
  intro n
  ring

private lemma tsum_weighted_sub_sq {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n) ^ 2)) (c : ℝ) :
    (∑' n, p n * (g n - c) ^ 2) =
      (∑' n, p n * (g n) ^ 2) - 2 * c * (∑' n, p n * g n) + c ^ 2 * (∑' n, p n) := by
  calc
    _ = ∑' n, ((p n * (g n) ^ 2 - (2 * c) * (p n * g n)) + c ^ 2 * p n) := by
      apply tsum_congr
      intro n
      ring
    _ = _ := by
      rw [(hg2.sub (hg.mul_left (2 * c))).tsum_add (hp.mul_left (c ^ 2)),
        hg2.tsum_sub (hg.mul_left (2 * c)), tsum_mul_left, tsum_mul_left]

private lemma weighted_variance_le_center {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n) ^ 2))
    (hp1 : ∑' n, p n = 1) (c : ℝ) :
    (∑' n, p n * (g n - (∑' i, p i * g i)) ^ 2) ≤ ∑' n, p n * (g n - c) ^ 2 := by
  rw [tsum_weighted_sub_sq hp hg hg2, tsum_weighted_sub_sq hp hg hg2, hp1]
  nlinarith [sq_nonneg (c-∑' i, p i * g i)]

private lemma weighted_variance_le_tail_bound {p g b : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n) ^ 2))
    (hp1 : ∑' n, p n = 1) (hb : Summable b) (K : ℝ)
    (hbound : ∀ n, p (n + 1) * (g (n + 1) - g 0) ^ 2 ≤ K * b n) :
    (∑' n, p n * (g n - (∑' i, p i * g i)) ^ 2) ≤ K * (∑' n, b n) := by
  have hs := weighted_sub_sq_summable hp hg hg2 (g 0)
  have hshift : Summable (fun n => p (n + 1) * (g (n + 1) - g 0) ^ 2) :=
    (summable_nat_add_iff 1).mpr hs
  calc
    _ ≤ ∑' n, p n * (g n - g 0) ^ 2 := weighted_variance_le_center hp hg hg2 hp1 _
    _ = ∑' n, p (n + 1) * (g (n + 1) - g 0) ^ 2 := by
      rw [hs.tsum_eq_zero_add]
      simp
    _ ≤ ∑' n, K * b n := hshift.tsum_le_tsum hbound (hb.mul_left K)
    _ = _ := tsum_mul_left

private lemma weighted_curvature_variance_identity {p g h : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n) ^ 2))
    (hh : Summable (fun n => p n * h n)) (hp1 : ∑' n, p n = 1) :
    (∑' n, p n * ((g n) ^ 2 + h n)) - (∑' n, p n * g n) ^ 2 =
      (∑' n, p n * h n) + ∑' n, p n * (g n - (∑' i, p i * g i)) ^ 2 := by
  have he : (∑' n, p n * ((g n) ^ 2 + h n)) =
      (∑' n, p n * (g n) ^ 2) + (∑' n, p n * h n) := by
    simp_rw [mul_add]
    exact hg2.tsum_add hh
  rw [he, tsum_weighted_sub_sq hp hg hg2, hp1]
  ring

/-- The mean score of the actual normalized source modes. -/
def thetaModeMean (t : ℝ) : ℝ :=
  ∑' m, thetaModeWeight m t * thetaModeScore m t

/-- The centered score variance of the actual normalized source modes. -/
def thetaModeVariance (t : ℝ) : ℝ :=
  ∑' m, thetaModeWeight m t * (thetaModeScore m t - thetaModeMean t) ^ 2

/-- The actual score variance is nonnegative. -/
theorem thetaModeVariance_nonnegative {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaModeVariance t := by
  exact tsum_nonneg fun m => mul_nonneg (thetaModeWeight_positive m ht).le (sq_nonneg _)

/-- An explicit Gaussian bound on deviations from the first mode score. -/
theorem thetaModeWeight_center_sq_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeWeight m t * (thetaModeScore m t - thetaModeScore 0 t) ^ 2 ≤
      50 * (thetaModeA t) ^ 2 *
        ((((m + 1: ℕ): ℝ) ^ 8) * Real.exp (-thetaModeA t * (((m + 1: ℕ): ℝ) ^ 2 - 1))) := by
  let n : ℝ := ((m + 1: ℕ): ℝ)
  let A : ℝ := thetaModeA t
  have hn : 1 ≤ n := by dsimp [n]; exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have hA : 0 < A := lt_trans (by norm_num) (thetaModeA_gt_three ht)
  have hw := (thetaModeWeight_le_modeRatio m ht).trans (thetaPhiTerm_div_zero_le m ht)
  have hg0 := thetaModeScore_sub_nonnegative m ht
  have hg := thetaModeScore_sub_le m ht
  have hgsq : (thetaModeScore m t - thetaModeScore 0 t) ^ 2 ≤ (5 * A * (n ^ 2 - 1)) ^ 2 := by
    have hh := pow_le_pow_left₀ hg0 hg 2
    dsimp [A, n]
    nlinarith only [hh]
  have hn2 : 1 ≤ n ^ 2 := one_le_pow₀ hn
  have hd : (n ^ 2 - 1) ^ 2 ≤ n ^ 4 := by
    have hh := pow_le_pow_left₀ (by linarith : 0 ≤ n ^ 2 - 1) (by linarith : n ^ 2 - 1 ≤ n ^ 2) 2
    simpa [← pow_mul] using hh
  change thetaModeWeight m t * (thetaModeScore m t - thetaModeScore 0 t) ^ 2 ≤
    50 * A ^ 2 * (n ^ 8 * Real.exp (-A * (n ^ 2 - 1)))
  calc
    _ ≤ (2 * n ^ 4 * Real.exp (-A * (n ^ 2 - 1))) * (5 * A * (n ^ 2 - 1)) ^ 2 :=
      mul_le_mul hw hgsq (sq_nonneg _) (by positivity)
    _ = (50 * A ^ 2 * Real.exp (-A * (n ^ 2 - 1)) * n ^ 4) * (n ^ 2 - 1) ^ 2 := by ring
    _ ≤ (50 * A ^ 2 * Real.exp (-A * (n ^ 2 - 1)) * n ^ 4) * n ^ 4 :=
      mul_le_mul_of_nonneg_left hd (by positivity)
    _ = _ := by ring

/-- The source-weighted score second moments are summable. -/
theorem thetaPhi_mul_score_sq_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t * (thetaModeScore m t) ^ 2) := by
  apply ((thetaPhi_mul_y_pow_summable 2 ht).mul_left 81).of_nonneg_of_le
  · intro m
    exact mul_nonneg (thetaPhiTerm_positive m ht).le (sq_nonneg _)
  · intro m
    have hg := pow_le_pow_left₀ (abs_nonneg (thetaModeScore m t))
      (abs_thetaModeScore_le m ht) 2
    have hg' : (thetaModeScore m t) ^ 2 ≤ 81 * (thetaModeY m t) ^ 2 := by
      norm_num [sq_abs, mul_pow] at hg ⊢
      exact hg
    nlinarith [mul_le_mul_of_nonneg_left hg' (thetaPhiTerm_positive m ht).le]

/-- The source-weighted mode curvatures are summable. -/
theorem thetaPhi_mul_curvature_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t * thetaModeCurvature m t) := by
  apply ((thetaPhi_mul_score_sq_add_curvature_summable ht).sub
    (thetaPhi_mul_score_sq_summable ht)).congr
  intro m
  ring

/-- The normalized weighted scores are summable. -/
theorem thetaModeWeight_score_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaModeWeight m t * thetaModeScore m t) := by
  apply ((thetaPhi_mul_score_summable ht).div_const (thetaPhi t)).congr
  intro m
  unfold thetaModeWeight
  ring

/-- The normalized weighted squared scores are summable. -/
theorem thetaModeWeight_score_sq_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaModeWeight m t * (thetaModeScore m t) ^ 2) := by
  apply ((thetaPhi_mul_score_sq_summable ht).div_const (thetaPhi t)).congr
  intro m
  unfold thetaModeWeight
  ring

/-- The normalized weighted curvatures are summable. -/
theorem thetaModeWeight_curvature_summable {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaModeWeight m t * thetaModeCurvature m t) := by
  apply ((thetaPhi_mul_curvature_summable ht).div_const (thetaPhi t)).congr
  intro m
  unfold thetaModeWeight
  ring

/-- The mean score equals the differentiated source sum divided by the source. -/
theorem thetaModeMean_eq_div_D1 (t : ℝ) :
    thetaModeMean t = thetaPhiD1 t / thetaPhi t := by
  unfold thetaModeMean thetaPhiD1
  rw [← tsum_div_const]
  apply tsum_congr
  intro m
  unfold thetaModeWeight
  ring

/-- The actual mean score is the logarithmic slope of the source. -/
theorem thetaModeMean_eq_logSlope {t : ℝ} (ht : 0 ≤ t) :
    thetaModeMean t = deriv thetaPhi t / thetaPhi t := by
  rw [deriv_thetaPhi_eq_D1 ht]
  exact thetaModeMean_eq_div_D1 t

/-- Exact curvature decomposition into mode curvature and score variance. -/
theorem thetaPhi_logCurvature_identity {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * thetaPhiD2 t - (thetaPhiD1 t) ^ 2 =
      (thetaPhi t) ^ 2 * ((∑' m, thetaModeWeight m t * thetaModeCurvature m t) +
        thetaModeVariance t) := by
  have h := weighted_curvature_variance_identity (thetaModeWeight_summable t)
    (thetaModeWeight_score_summable ht) (thetaModeWeight_score_sq_summable ht)
    (thetaModeWeight_curvature_summable ht) (thetaModeWeight_sum_one ht)
  have hsum : (∑' m, thetaModeWeight m t * ((thetaModeScore m t) ^ 2 + thetaModeCurvature m t)) =
      thetaPhiD2 t / thetaPhi t := by
    unfold thetaPhiD2
    rw [← tsum_div_const]
    apply tsum_congr
    intro m
    unfold thetaModeWeight
    ring
  change _ - (thetaModeMean t) ^ 2 = _ + thetaModeVariance t at h
  rw [hsum, thetaModeMean_eq_div_D1] at h
  calc
    _ = (thetaPhi t) ^ 2 * (thetaPhiD2 t / thetaPhi t - (thetaPhiD1 t / thetaPhi t) ^ 2) := by
      field_simp [(thetaPhi_positive t ht).ne']
    _ = _ := by rw [h]

/-- The mean mode curvature is bounded above by `-16*A`. -/
theorem thetaModeCurvature_expectation_le {t : ℝ} (ht : 0 ≤ t) :
    (∑' m, thetaModeWeight m t * thetaModeCurvature m t) ≤ -16 * thetaModeA t := by
  have h := (thetaModeWeight_curvature_summable ht).tsum_le_tsum
    (fun m => mul_le_mul_of_nonneg_left (thetaModeCurvature_le m ht)
      (thetaModeWeight_positive m ht).le)
    ((thetaModeWeight_summable t).mul_right (-16 * thetaModeA t))
  simpa only [tsum_mul_right, thetaModeWeight_sum_one ht, one_mul] using h


/-- The actual score variance is strictly less than `10*A`. -/
theorem thetaModeVariance_lt_ten_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaModeVariance t < 10 * thetaModeA t := by
  let A := thetaModeA t
  let b : ℕ → ℝ := fun m => ((m: ℝ) + 2) ^ 8 * Real.exp (-A * (((m: ℝ) + 2) ^ 2 - 1))
  have hA : 3 ≤ A := (thetaModeA_gt_three ht).le
  have hb : Summable b := thetaGaussianTail_summable hA
  have hbound : ∀ m, thetaModeWeight (m + 1) t *
      (thetaModeScore (m + 1) t - thetaModeScore 0 t) ^ 2 ≤ (50 * A ^ 2) * b m := by
    intro m
    simpa [b, A, Nat.cast_add, Nat.cast_one, add_assoc] using
      thetaModeWeight_center_sq_le (m + 1) ht
  have hv := weighted_variance_le_tail_bound (thetaModeWeight_summable t)
    (thetaModeWeight_score_summable ht) (thetaModeWeight_score_sq_summable ht)
    (thetaModeWeight_sum_one ht) hb (50 * A ^ 2) hbound
  have hgauss : A * (∑' m, b m) < 1 / 5 := thetaGaussianTail_mul_lt_one_fifth hA
  have hpos : 0 < 50 * A := by dsimp [A]; linarith [thetaModeA_gt_three ht]
  have hh := mul_lt_mul_of_pos_left hgauss hpos
  change thetaModeVariance t ≤ 50 * A ^ 2 * (∑' m, b m) at hv
  change thetaModeVariance t < 10 * A
  nlinarith

/-- Strict negative curvature using the named, proved source derivatives. -/
theorem thetaPhi_strict_logConcavity_raw {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * thetaPhiD2 t - (thetaPhiD1 t) ^ 2 < 0 := by
  rw [thetaPhi_logCurvature_identity ht]
  have h : (∑' m, thetaModeWeight m t * thetaModeCurvature m t) +
      thetaModeVariance t < 0 := by
    linarith [thetaModeCurvature_expectation_le ht, thetaModeVariance_lt_ten_mul ht,
      thetaModeA_gt_three ht]
  exact mul_neg_of_pos_of_neg (sq_pos_of_pos (thetaPhi_positive t ht)) h

/-- Strict negative logarithmic curvature of the literal theta source. -/
theorem thetaPhi_strict_logConcavity_curvature {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * deriv (deriv thetaPhi) t - (deriv thetaPhi t) ^ 2 < 0 := by
  rw [deriv_thetaPhi_eq_D1 ht, deriv_deriv_thetaPhi_eq_D2 ht]
  exact thetaPhi_strict_logConcavity_raw ht

/-- The actual quotient derivative of the logarithmic slope. -/
theorem hasDerivAt_thetaPhi_logSlope {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u : ℝ => deriv thetaPhi u / thetaPhi u)
      ((thetaPhiD2 t * thetaPhi t - thetaPhiD1 t * thetaPhiD1 t) / (thetaPhi t) ^ 2) t := by
  convert! (hasDerivAt_deriv_thetaPhi ht).div (hasDerivAt_thetaPhi ht)
    (thetaPhi_positive t ht).ne' using 1
  simp only [deriv_thetaPhi_eq_D1 ht]

/-- The logarithmic slope has strictly negative derivative on the half-line. -/
theorem thetaPhi_logSlope_deriv_neg {t : ℝ} (ht : 0 ≤ t) :
    deriv (fun u : ℝ => deriv thetaPhi u / thetaPhi u) t < 0 := by
  rw [(hasDerivAt_thetaPhi_logSlope ht).deriv]
  apply div_neg_of_neg_of_pos _ (sq_pos_of_pos (thetaPhi_positive t ht))
  nlinarith [thetaPhi_strict_logConcavity_raw ht]

/-- The logarithmic slope of the literal source is antitone on the half-line. -/
theorem thetaPhi_logSlope_antitone :
    AntitoneOn (fun t : ℝ => deriv thetaPhi t / thetaPhi t) (Ici 0) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · intro t ht
    exact (hasDerivAt_thetaPhi_logSlope ht).continuousAt.continuousWithinAt
  · intro t ht
    exact (hasDerivAt_thetaPhi_logSlope (interior_subset ht)).differentiableAt
      |>.differentiableWithinAt
  · intro t ht
    exact (thetaPhi_logSlope_deriv_neg (interior_subset ht)).le

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
