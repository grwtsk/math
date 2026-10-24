# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `def562fcf5f9372243578b58fa8fd5701b0f85bc` · SHA-256 `6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiRankFiveFiniteBounds
import FormalResearch.RiemannHypothesis.ThetaPhiRankFiveExpBounds
import FormalResearch.RiemannHypothesis.ThetaPhiRankFiveTailBounds
import FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion

/-!
# A negative rank-five determinant for the unchanged full theta source

The proof combines exact source polynomial identities, kernel-proved pi and
exponential bounds, rational interval evaluation of the first four modes, and
an analytic bound for every remaining mode. It concerns ordinary derivatives
of the literal source. It refutes the all-rank signed derivative-jet criterion,
not RH, xi PF-infinity, or the distinct repeated-tail sign criterion.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open RankFiveRationalInterval
noncomputable section

theorem thetaRankFive_piBox_contains : Contains piBox Real.pi := by
  norm_num [Contains, piBox]
  exact abs_le.mpr ⟨by linarith [Real.pi_gt_d20], by linarith [Real.pi_lt_d20]⟩

theorem thetaRankFive_expBox_contains : Contains expBox (Real.exp (-Real.pi)) := by
  have h := FormalResearch.RiemannHypothesis.ThetaPhiRankFive.exp_neg_pi_bounds
  norm_num [Contains, expBox]
  exact abs_le.mpr ⟨by linarith [h.1], by linarith [h.2]⟩

/-- All four finite modes are enclosed using the actual pi and exponential. -/
theorem thetaRankFive_finite_source_contains (n : Fin 9) :
    Contains (finiteBox n.val)
      (∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n.val m 0) := by
  have h := finiteBox_sound n thetaRankFive_piBox_contains thetaRankFive_expBox_contains
  simp_rw [← FormalResearch.RiemannHypothesis.ThetaPhiRankFive.thetaPhiDerivativeModeValue_zero]
    at h
  rw [Fin.sum_univ_eq_sum_range
    (fun m : ℕ => thetaPhiDerivativeModeValue n.val m 0)] at h
  exact h

/-- The infinite complement of those four modes is bounded for each order. -/
theorem thetaRankFive_full_source_tail (n : Fin 9) :
    |thetaPhiDerivativeTapeValue n.val 0 -
      ∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n.val m 0| ≤
        (tailRadius n.val : ℝ) := by
  rw [tailRadius_cast]
  exact thetaRankFive_source_tail_le n.val (by omega)
    (thetaRankFiveCoefficientNorm n.val) (thetaRankFiveCoefficientNorm_nonneg n.val)
    (fun _ hy => thetaRankFivePolynomial_abs_le n hy)

/-- The previously explicit analytic obligation is discharged for all nine
ordinary derivatives of the full source, including its infinite tail. -/
theorem thetaPhiRankFiveJetEnclosure_holds : ThetaPhiRankFiveJetEnclosure := by
  intro n
  exact jetBox_of_finite_and_tail n _ _
    (thetaRankFive_finite_source_contains n) (thetaRankFive_full_source_tail n)

/-- Rank five has positive orientation and its literal source determinant is
strictly negative at zero. There are no mathematical premises. -/
theorem thetaPhi_signedJetDet_five_zero_neg :
    signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) < 0 :=
  RankFiveInterval.signedJetDet_five_negative_of_boxes _ thetaPhiRankFiveJetEnclosure_holds

/-- A strict numerical enclosure for the determinant of the full source. -/
theorem thetaPhi_signedJetDet_five_zero_bounds :
    (-4000000000000000000 : ℝ) <
        signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) ∧
      signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) <
        -3000000000000000000 :=
  RankFiveInterval.signedJetDet_five_coarse_of_boxes _ thetaPhiRankFiveJetEnclosure_holds

/-- Every finite determinant of the ordinary source derivatives is continuous,
independently of its sign. -/
theorem continuous_thetaPhi_signedJetDet (k : ℕ) :
    Continuous (fun t : ℝ => signedJetDet k (fun n => thetaPhiDerivativeTapeValue n t)) := by
  unfold signedJetDet
  refine continuous_const.mul (Continuous.matrix_det ?_)
  apply continuous_matrix
  intro i j
  exact continuous_iff_continuousAt.mpr fun t =>
    (hasDerivAt_thetaPhiDerivativeTapeValue (i.val + j.val) t).continuousAt

/-- The obstruction persists on a real neighborhood, including positive
parameters. Removing the endpoint zero cannot repair this criterion. -/
theorem thetaPhi_signedJetDet_five_negative_near_zero :
    ∃ ε : ℝ, 0 < ε ∧ ∀ t : ℝ, |t| < ε →
      signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n t) < 0 := by
  have hnhds := (continuous_thetaPhi_signedJetDet 5).continuousAt.eventually_lt
    continuousAt_const thetaPhi_signedJetDet_five_zero_neg
  obtain ⟨ε, hε, he⟩ := Metric.eventually_nhds_iff.mp hnhds
  refine ⟨ε, hε, fun t ht => he ?_⟩
  simpa [Real.dist_eq] using ht

/-- The existential choice of derivative tape cannot evade the obstruction:
the defining derivative equations uniquely identify the canonical tape. -/
theorem not_thetaPhiAllRankSignedJetCriterion : ¬ ThetaPhiAllRankSignedJetCriterion :=
  not_thetaPhiAllRankSignedJetCriterion_of_rankFiveEnclosure thetaPhiRankFiveJetEnclosure_holds

/-- The stronger parity premise is false because it implies the refuted
ordinary derivative-jet criterion. -/
theorem not_thetaPhiSignedMomentParityCriterion : ¬ ThetaPhiSignedMomentParityCriterion := by
  intro h
  exact not_thetaPhiAllRankSignedJetCriterion
    (thetaPhiAllRankSignedJetCriterion_of_signedMomentParity h)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
