-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomialSumEqTwoModes.Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiJetPolynomialSumEqTwoModes.Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds
import FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation


/-!
# The strict third Wronskian sign of the actual theta source

The absolutely convergent five-entry source jet is split into its first two
modes and the entire remaining series. The first two modes have a uniform
negative determinant, and the proved Gaussian remainder has a smaller absolute
determinant perturbation. The common source factor is strictly positive, so its
cube preserves the sign of the exact source Wronskian.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomialSumEqTwoModes.Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

/-- The absolutely convergent normalized jet separates exactly into two modes and its remainder. -/
theorem thetaPhiJet_polynomial_sum_eq_two_modes (k : Fin 5) (t : ℝ) :
    (∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) =
      thetaPhiJetPolynomial k (thetaModeA t) +
        4 * Real.exp (-3 * thetaModeA t) * thetaPhiJetPolynomial k (4 * thetaModeA t) +
          ∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
            thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 3) ^ 2) *
              Real.exp (-thetaModeA t * (((m : ℝ) + 3) ^ 2 - 1)) := by
  let F : ℕ → ℝ := fun m => ((m : ℝ) + 1) ^ 2 *
    thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
      Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))
  have hs : Summable F := thetaPhiJet_polynomial_summable k t
  have hs1 : Summable (fun m => F (m + 1)) := (summable_nat_add_iff 1).mpr hs
  have hzero : F 0 = thetaPhiJetPolynomial k (thetaModeA t) := by simp [F]
  have hone : F 1 = 4 * Real.exp (-3 * thetaModeA t) *
      thetaPhiJetPolynomial k (4 * thetaModeA t) := by
    dsimp [F]
    norm_num
    ring_nf
  have hshift : (fun m => F (m + 1 + 1)) = fun m : ℕ => ((m : ℝ) + 3) ^ 2 *
      thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 3) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 3) ^ 2 - 1)) := by
    funext m
    dsimp [F]
    push_cast
    ring_nf
  change (∑' m, F m) = _
  rw [hs.tsum_eq_zero_add, hs1.tsum_eq_zero_add, hzero]
  change _ + (F 1 + ∑' m, F (m + 1 + 1)) = _
  rw [hone, hshift]
  ring

/-- The first two modes and complete remainder retain the actual positive source factor. -/
theorem thetaPhiJet_eq_two_modes_add_remainder (k : Fin 5) (t : ℝ) :
    thetaPhiJet t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      (thetaPhiJetPolynomial k (thetaModeA t) +
        4 * Real.exp (-3 * thetaModeA t) * thetaPhiJetPolynomial k (4 * thetaModeA t) +
          ∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
            thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 3) ^ 2) *
              Real.exp (-thetaModeA t * (((m : ℝ) + 3) ^ 2 - 1))) := by
  rw [thetaPhiJet_eq_polynomial_sum, thetaPhiJet_polynomial_sum_eq_two_modes]


/-- The actual source jet has a strictly negative third Hankel determinant. -/
theorem thetaPhiJetDet_negative {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiJetDet (thetaPhiJet t) < 0 := by
  let A := thetaModeA t
  let a : Fin 5 → ℝ := fun k => thetaPhiJetPolynomial k A +
    4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)
  let e : Fin 5 → ℝ := fun k => ∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
    thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))
  let c := Real.pi * Real.exp (5 * t - A)
  have hA : 3 ≤ A := (thetaModeA_gt_three ht).le
  have ha (k : Fin 5) : |a k| ≤ 4 * 4 ^ k.val * A ^ (k.val + 1) :=
    thetaPhiJet_two_modes_abs_le k hA
  have he (k : Fin 5) : |e k| ≤
      4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) * A ^ (k.val + 1) * Real.exp (-8 * A) := by
    simpa only [e, thetaPhiJetErrorCoefficient] using thetaPhiJet_remainder_abs_le k hA
  have herror := thetaPhiJetDet_gaussian_error_bound a e A (Real.exp (-8 * A)) ha he
  have hsmall := thetaPhiJet_gaussian_error_lt hA
  have hmain : thetaPhiJetDet a ≤ -12607488 :=
    thetaPhiJetDet_two_modes_le hA (Real.exp_pos _).le
  have hnegative : thetaPhiJetDet (fun k => a k + e k) < 0 := by
    have habs := le_abs_self (thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a)
    linarith
  have hsplit : thetaPhiJet t = fun k => c * (a k + e k) := by
    funext k
    exact thetaPhiJet_eq_two_modes_add_remainder k t
  have hscale : thetaPhiJetDet (thetaPhiJet t) =
      c ^ 3 * thetaPhiJetDet (fun k => a k + e k) := by
    rw [hsplit]
    dsimp [thetaPhiJetDet]
    ring
  have hc : 0 < c := mul_pos Real.pi_pos (Real.exp_pos _)
  rw [hscale]
  exact mul_neg_of_pos_of_neg (pow_pos hc 3) hnegative

/-- The source, its genuine first two derivatives, and its genuine third/fourth
raw derivatives have the strict Wronskian sign needed for the first rank-three tails. -/
theorem thetaPhi_wronskian_three_neg {t : ℝ} (ht : 0 ≤ t) :
    Matrix.det !![
      thetaPhi t, deriv thetaPhi t, deriv (deriv thetaPhi) t;
      deriv thetaPhi t, deriv (deriv thetaPhi) t, thetaPhiRawD3 t;
      deriv (deriv thetaPhi) t, thetaPhiRawD3 t, thetaPhiRawD4 t] < 0 := by
  have h := thetaPhiJetDet_negative ht
  rw [thetaPhiJetDet_eq_matrix] at h
  simpa [thetaPhiJet] using h

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
