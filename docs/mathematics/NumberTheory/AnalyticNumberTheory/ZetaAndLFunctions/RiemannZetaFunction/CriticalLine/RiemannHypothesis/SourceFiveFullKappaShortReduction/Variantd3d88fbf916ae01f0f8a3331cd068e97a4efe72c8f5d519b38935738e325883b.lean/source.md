# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFiveFullKappaShortReduction.Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51fdf0d9854e2c7b125f986a4e82490246509b6c` · SHA-256 `2fd0cf1368ebe2df4ccaf7a4193a2456053f853a9b3140e5c5fb159cf06b1d79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationFirstAbsLeFive.Variantd65a2953e845e17f3ce594e76ad9dc720e55097286817ca3426cefd9ac697f5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d65a2953e845e17f3ce594e76ad9dc720e55097286817ca3426cefd9ac697f5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCorrelationFirstAbsLeFive.Variantd65a2953e845e17f3ce594e76ad9dc720e55097286817ca3426cefd9ac697f5f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d65a2953e845e17f3ce594e76ad9dc720e55097286817ca3426cefd9ac697f5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T195151Z-1791316311417149000/SourceFiveFullKappaShortReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FiveCesaroKernelBudget
import SourceLeadingTailQuantitative

/-!
Actual curvature five improves the complete literal four-kappa short inventory.
All signed Moebius coefficients, the original real floor and the genuine full
complementary tail remain. The last fourth-jet coefficient stays sixty-seven.
No uniform signed arithmetic witness or zeta derivative is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationFirstAbsLeFive.Variantd65a2953e845e17f3ce594e76ad9dc720e55097286817ca3426cefd9ac697f5f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFiveFullKappaShortReduction
open MeasureTheory Function Set
open scoped BigOperators
open SourcePairing SourceFullPositiveKappa SourceCorrectedOmegaPeanoTaylor
open SourceLeadingFullKappaReduction SourceCorrelationCurvature
open SourceStrictComplementaryLocalization
open SourceSignedSamplingExplicitBudget SourceLeadingTailBudget SourceRenormalizedActualSignedTail
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateMertensAbel
open EstimateMertensResidual
open RH16IndependentChallengeNext
noncomputable section

theorem actualCorrelation_first_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      RH16FiveCesaro.actualCorrelation_second_abs_le_five hA x)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).1, sub_zero] using he

/-- The actual normalized correlation deviates quadratically from its genuine unit value. -/
theorem actualCorrelation_sub_one_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ (5 / 2 : ℝ) / A ^ 2 * t ^ 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    simp [EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) (show (0 : ℝ) ≠ t from Ne.symm ht) hf.contDiffOn
  have hT : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = 1 := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc (show (0 : ℝ) ≠ t from Ne.symm ht)) 0 left_mem_uIcc),
      (actualCorrelation_odd_jets_zero hp).1,
      EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
    simp
  rw [hT] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have hE : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [hE, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (5 / A ^ 2) * t ^ 2 / 2 := by
      gcongr
      exact RH16FiveCesaro.actualCorrelation_second_abs_le_five hA z
    _ = _ := by ring

/-- Every finite constant is a genuine full positive-axis coefficient integral. -/
def fiveKappaJetRowBudget (A T : ℝ) : ℝ :=
  ((5 / 2 : ℝ) * |fullPositiveKappa 1| * T ^ 2 + 5 * |fullPositiveKappa 2| * T +
    (5 / 2 : ℝ) * |fullPositiveKappa 3|) / A ^ 2 +
    (67 / 6 : ℝ) * |fullPositiveKappa 4| * T / A ^ 4

/-- The actual signed four-jet row is controlled relative to its true leading coefficient. -/
theorem fiveKappaJet_sub_leading_abs_le {A t T : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |correctedFourKappaJet A t - fullPositiveKappa 1| ≤ fiveKappaJetRowBudget A T := by
  have hT : 0 ≤ T := ht.trans htT
  have hC := actualCorrelation_sub_one_abs_le_five hA t
  have hD := actualCorrelation_first_abs_le_five hA t
  have hDD := RH16FiveCesaro.actualCorrelation_second_abs_le_five hA t
  have hDDD := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at hD hDDD
  have hE : correctedFourKappaJet A t - fullPositiveKappa 1 =
      fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1) +
      fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
      (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
      (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t := by
    rw [correctedFourKappaJet_eq_full_positive_jet]
    norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
    ring
  rw [hE]
  calc
    _ ≤ |fullPositiveKappa 1| * |sourceCorrelation explicitSecondDerivative A t - 1| +
        |fullPositiveKappa 2| * |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        (|fullPositiveKappa 3| / 2) *
          |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        (|fullPositiveKappa 4| / 6) *
          |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| := by
      let a := fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1)
      let b := fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t
      let c := (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t
      let d := (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t
      have hs : |a + b + c + d| ≤ |a| + |b| + |c| + |d| := by
        linarith only [abs_add_le a b, abs_add_le (a + b) c, abs_add_le (a + b + c) d]
      simpa only [a, b, c, d, abs_mul, abs_div,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 6)] using hs
    _ ≤ |fullPositiveKappa 1| * ((5 / 2 : ℝ) / A ^ 2 * T ^ 2) +
        |fullPositiveKappa 2| * (5 / A ^ 2 * T) +
        (|fullPositiveKappa 3| / 2) * (5 / A ^ 2) +
        (|fullPositiveKappa 4| / 6) * (67 / A ^ 4 * T) := by
      apply add_le_add
      · apply add_le_add
        · apply add_le_add
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hC.trans (by gcongr)
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hD.trans (by gcongr)
        · exact mul_le_mul_of_nonneg_left hDD (by positivity)
      · apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact hDDD.trans (by gcongr)
    _ = _ := by unfold fiveKappaJetRowBudget; ring

/-- The actual row budget sums using the complete 1..U absolute mass, without a signed witness. -/
def fiveKappaShortBudget (A : ℝ) : ℝ :=
  2 * A * fiveKappaJetRowBudget A (Real.log (vaughanCutoff A : ℝ))

/-- All actual short jets equal their leading signed weighted sum up to this explicit error. -/
theorem actualFullKappaShort_sub_leading_abs_le_five {A : ℝ} (hA : 91 ≤ A) :
    |actualFullKappaShortSector A - fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A| ≤
      fiveKappaShortBudget A := by
  have hA1 : 1 ≤ A := by linarith
  let U := vaughanCutoff A
  let T := Real.log (U : ℝ)
  let D := fiveKappaJetRowBudget A T
  have hU : 1 ≤ U := vaughanCutoff_pos A hA1
  have hT : 0 ≤ T := Real.log_nonneg (by exact_mod_cast hU)
  have hD : 0 ≤ D := by unfold D fiveKappaJetRowBudget; positivity
  have hrow (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      |correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1| ≤ D := by
    have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    have hdU : (d : ℝ) ≤ U := by exact_mod_cast (Finset.mem_Icc.mp hd).2
    apply fiveKappaJet_sub_leading_abs_le hA (Real.log_nonneg hd1)
    exact Real.log_le_log (by linarith : (0 : ℝ) < d) hdU
  have hE : actualFullKappaShortSector A -
      fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A =
      ∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ) *
        (correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1) := by
    unfold actualFullKappaShortSector actualWeightedMoebiusHalfSum
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d _
    ring
  rw [hE]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ) * D := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact mul_le_mul_of_nonneg_left (hrow d hd) (by positivity)
    _ = (∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ)) * D :=
      (Finset.sum_mul _ _ _).symm
    _ ≤ 2 * A * D := mul_le_mul_of_nonneg_right (actualMoebiusSqrtMass_le A hA1) hD
    _ = fiveKappaShortBudget A := rfl

/-- The explicit complete error has logarithmic numerator and inverse scale decay. -/
theorem fiveKappaShortBudget_eq {A : ℝ} (hA : 0 < A) :
    fiveKappaShortBudget A =
      (5 * |fullPositiveKappa 1| * (Real.log (vaughanCutoff A : ℝ)) ^ 2 +
        10 * |fullPositiveKappa 2| * Real.log (vaughanCutoff A : ℝ) +
        5 * |fullPositiveKappa 3|) / A +
      (67 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log (vaughanCutoff A : ℝ) / A ^ 3 := by
  unfold fiveKappaShortBudget fiveKappaJetRowBudget
  field_simp
  ring

/-- Actual floor and source jet estimates improve the complete short error to fourteen. -/
theorem fiveKappaShortBudget_le_fourteen {A : ℝ} (hA : 25600 ≤ A) :
    fiveKappaShortBudget A ≤ 14 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let S := Real.sqrt A
  have hs0 : 0 < S := Real.sqrt_pos.2 hp
  have hs160 : 160 ≤ S := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss : S ^ 2 = A := Real.sq_sqrt hp.le
  have ht0 : 0 ≤ T := Real.log_nonneg (actual_cutoff_order A hA1).1
  have ht2 : T ^ 2 ≤ 64 * S :=
    RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have htA : T ^ 2 ≤ A := (actual_cutoff_logs_le_scale hA).1
  have hTS : T ≤ S := by nlinarith
  have hSA : S ≤ A := by nlinarith
  have hK := RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
  have h1 : 2160 / S ≤ (27 / 2 : ℝ) := by
    apply (div_le_iff₀ hs0).2
    linarith
  have h2 : 720 / A ≤ (1 / 8 : ℝ) := by
    apply (div_le_iff₀ hp).2
    linarith
  have h3 : 25728 * S / A ^ 3 ≤ (1 / 8 : ℝ) := by
    have hA2 : (205824 : ℝ) ≤ A ^ 2 := by nlinarith
    have hm : 205824 * S ≤ A ^ 3 := calc
      _ ≤ 205824 * A := mul_le_mul_of_nonneg_left hSA (by norm_num)
      _ ≤ A ^ 2 * A := mul_le_mul_of_nonneg_right hA2 hp.le
      _ = _ := by ring
    apply (div_le_iff₀ (by positivity : 0 < A ^ 3)).2
    linarith
  rw [fiveKappaShortBudget_eq hp]
  calc
    _ ≤ (30 * T ^ 2 + 240 * T + 720) / A + 25728 * T / A ^ 3 := by
      change (5 * |fullPositiveKappa 1| * T ^ 2 + 10 * |fullPositiveKappa 2| * T +
        5 * |fullPositiveKappa 3|) / A + (67 / 3 : ℝ) * |fullPositiveKappa 4| * T / A ^ 3 ≤ _
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_right hK.1 (sq_nonneg T),
          mul_le_mul_of_nonneg_right hK.2.1 ht0]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_right hK.2.2.2 ht0]
    _ ≤ (1920 * S + 240 * S + 720) / A + 25728 * S / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith
      · exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hTS (by norm_num)) (by positivity)
    _ = 2160 / S + 720 / A + 25728 * S / A ^ 3 := by
      have he : 2160 * S / A = 2160 / S := by
        apply (div_eq_div_iff hp.ne' hs0.ne').2
        nlinarith [hss]
      rw [add_div, add_div, ← add_div, show 1920 * S + 240 * S = 2160 * S by ring, he]
    _ ≤ 14 := by linarith


/-- The original complete corrected source keeps its separate genuine head and tail. -/
theorem correctedCompleteOmega_sub_leading_early_abs_le_five {A : ℝ} (hA : 91 ≤ A) :
    |correctedCompleteOmega A -
      (actualLeadingKappaAndTail A + complementaryEarlyBaseline A)| ≤ fiveKappaShortBudget A := by
  rw [correctedCompleteOmega_eq_short_early_tail (by linarith : 1 ≤ A)]
  unfold actualLeadingKappaAndTail
  convert actualFullKappaShort_sub_leading_abs_le_five hA using 1
  congr 1
  ring

/-- The exact actual leading signed sum and full complementary tail retain this smaller error. -/
theorem renormalized_tail_sub_actual_leading_abs_le_five {A : ℝ} (hA : 91 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤
      fiveKappaShortBudget A := by
  unfold renormalizedActualSignedTail actualLeadingRenormalizedTail
  convert actualFullKappaShort_sub_leading_abs_le_five hA using 1
  congr 1
  unfold actualFullKappaShortSector actualWeightedMoebiusHalfSum
  simp_rw [correctedFourKappaJet_eq_full_positive_jet]
  ring

/-- The complete actual leading approximation has error at most fourteen at the same radius. -/
theorem renormalized_tail_sub_actual_leading_abs_le_fourteen {A : ℝ} (hA : 25600 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤ 14 :=
  (renormalized_tail_sub_actual_leading_abs_le_five (by linarith : 91 ≤ A)).trans
    (fiveKappaShortBudget_le_fourteen hA)

/-- Complete-source comparisons preserve all signed arithmetic with smaller analytic costs. -/
theorem actual_leading_complete_pairing_fourteen_comparisons {A : ℝ} (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A - 21 ≤ actualLeadingRenormalizedTail A ∧
      actualLeadingRenormalizedTail A ≤ completeCorrectedAbelPairing A + 18 := by
  have he := abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fourteen hA)
  have hc := renormalized_tail_complete_pairing_comparisons A hA
  constructor <;> linarith [he.1, he.2, hc.1, hc.2]

/-- The original residual retains its exact source and the fourteen analytic error. -/
theorem residual_sub_actual_leading_sub_zeta_abs_lt_fourteen {A : ℝ} (hA : 25600 ≤ A) :
    |mertensResidual A - actualLeadingRenormalizedTail A -
      (riemannZeta (1 / 2)).re| < 1053 / 50 := by
  have hc := residual_sub_renormalized_tail_sub_zeta_abs_lt A hA
  have he := renormalized_tail_sub_actual_leading_abs_le_fourteen hA
  have ht := abs_add_le
    (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hx : mertensResidual A - actualLeadingRenormalizedTail A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re) +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by ring
  rw [← hx] at ht
  linarith

/-- Original all-real Estimate follows only after the actual signed witness is supplied. -/
theorem estimate_of_actual_leading_signed_tail_fourteen {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_renormalized_actual_signed_tail (K := K + 14) hR
  intro A hRA
  have he := (abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fourteen (hR.trans hRA))).2
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceFiveFullKappaShortReduction
```
