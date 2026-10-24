# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLeadingTailQuantitative.Variantaac31bd98ecca0968dbb5ecca173fd96851b2a04645e8610eb863b409a53ee60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9136d363b417a76c9a4c83f585db06ac524e6f14` · SHA-256 `aac31bd98ecca0968dbb5ecca173fd96851b2a04645e8610eb863b409a53ee60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNumericLeadingTail

/-!
Sharper explicit costs for the unchanged signed leading arithmetic frontier.
The actual logarithmic four-jet budget is at most fifty-five at the genuine
head radius. This quantitative analytic consequence supplies no uniform
upper witness for the joint Moebius sum and complementary signed tail.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLeadingTailQuantitative

open SourceNumericLeadingTail SourceLeadingTailBudget SourceLeadingFullKappaReduction
open SourceRenormalizedActualSignedTail SourceFullPositiveKappa SourcePairing
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual
open EstimateCorrelation

noncomputable section

/-- Actual floor and source jet estimates improve the complete short error to fifty-five. -/
theorem fullKappaShortBudget_le_fifty_five {A : ℝ} (hA : 25600 ≤ A) :
    fullKappaShortBudget A ≤ 55 := by
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
  have h1 : 8640 / S ≤ (54 : ℝ) := by
    apply (div_le_iff₀ hs0).2
    linarith
  have h2 : 2880 / A ≤ (1 / 2 : ℝ) := by
    apply (div_le_iff₀ hp).2
    linarith
  have h3 : 25728 * S / A ^ 3 ≤ (1 / 2 : ℝ) := by
    have hA2 : (51456 : ℝ) ≤ A ^ 2 := by nlinarith
    have hm : 51456 * S ≤ A ^ 3 := calc
      _ ≤ 51456 * A := mul_le_mul_of_nonneg_left hSA (by norm_num)
      _ ≤ A ^ 2 * A := mul_le_mul_of_nonneg_right hA2 hp.le
      _ = _ := by ring
    apply (div_le_iff₀ (by positivity : 0 < A ^ 3)).2
    linarith
  rw [fullKappaShortBudget_eq hp]
  calc
    _ ≤ (120 * T ^ 2 + 960 * T + 2880) / A + 25728 * T / A ^ 3 := by
      change (20 * |fullPositiveKappa 1| * T ^ 2 + 40 * |fullPositiveKappa 2| * T +
        20 * |fullPositiveKappa 3|) / A + (67 / 3 : ℝ) * |fullPositiveKappa 4| * T / A ^ 3 ≤ _
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_right hK.1 (sq_nonneg T),
          mul_le_mul_of_nonneg_right hK.2.1 ht0]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_right hK.2.2.2 ht0]
    _ ≤ (7680 * S + 960 * S + 2880) / A + 25728 * S / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith
      · exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hTS (by norm_num)) (by positivity)
    _ = 8640 / S + 2880 / A + 25728 * S / A ^ 3 := by
      have he : 8640 * S / A = 8640 / S := by
        apply (div_eq_div_iff hp.ne' hs0.ne').2
        nlinarith [hss]
      rw [add_div, add_div, ← add_div, show 7680 * S + 960 * S = 8640 * S by ring, he]
    _ ≤ 55 := by linarith

/-- The actual leading approximation preserves all signed terms with the sharper error. -/
theorem renormalized_tail_sub_actual_leading_abs_le_fifty_five
    {A : ℝ} (hA : 25600 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤ 55 :=
  (renormalized_tail_sub_actual_leading_abs_le (by linarith : 91 ≤ A)).trans
    (fullKappaShortBudget_le_fifty_five hA)

/-- Both complete-source comparisons use only the newly verified analytic costs. -/
theorem actual_leading_complete_pairing_sharp_comparisons {A : ℝ} (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A - 62 ≤ actualLeadingRenormalizedTail A ∧
      actualLeadingRenormalizedTail A ≤ completeCorrectedAbelPairing A + 59 := by
  have he := abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fifty_five hA)
  have hc := renormalized_tail_complete_pairing_comparisons A hA
  constructor <;> linarith [he.1, he.2, hc.1, hc.2]

/-- The original residual has a sharper unconditional calibration to the actual signed source. -/
theorem residual_sub_actual_leading_sub_zeta_abs_lt_sharp
    {A : ℝ} (hA : 25600 ≤ A) :
    |mertensResidual A - actualLeadingRenormalizedTail A -
      (riemannZeta (1 / 2)).re| < 3103 / 50 := by
  have hc := residual_sub_renormalized_tail_sub_zeta_abs_lt A hA
  have he := renormalized_tail_sub_actual_leading_abs_le_fifty_five hA
  have ht := abs_add_le
    (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hx : mertensResidual A - actualLeadingRenormalizedTail A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re) +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by ring
  rw [← hx] at ht
  linarith

/-- Original all-real Estimate from its sole remaining signed witness with sharper costs. -/
theorem estimate_of_actual_leading_signed_tail_sharp {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_renormalized_actual_signed_tail (K := K + 55) hR
  intro A hRA
  have he := (abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fifty_five (hR.trans hRA))).2
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLeadingTailQuantitative
```
