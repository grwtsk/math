# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMixedCurvatureCrossFixtures.Variantd71ba8586f0bb9042e72c35859a7f76450e872fade2cb9399956f19f0ec4dcdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b803a5d05b29acaebabcbce8b5ebd6c866bef05` · SHA-256 `b086d70089c12ea520202e7402816a7774057dd13919ccdeca75ffa6f857f7f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MixedBracket.Variantaabadb469894d61c87dedf83319c1039947795e5903d5348cf69b414558f38fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aabadb469894d61c87dedf83319c1039947795e5903d5348cf69b414558f38fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.MixedBracket.Variantaabadb469894d61c87dedf83319c1039947795e5903d5348cf69b414558f38fe","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aabadb469894d61c87dedf83319c1039947795e5903d5348cf69b414558f38fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-source-mixed-curvature-cross-v1/SourceMixedCurvatureCrossFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMixedCurvatureCross
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Fourteen PRIVATE cross-identity fixture proof texts: UNCOMPILED.
Opposite coefficient choices are synthetic controls using the actual kernel;
they do not evaluate the actual arithmetic Möbius/Mangoldt work.
Strict exterior support uses r>A, not a derivative-at-endpoint inference.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MixedBracket.Variantaabadb469894d61c87dedf83319c1039947795e5903d5348cf69b414558f38fe

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMixedCurvatureCrossFixtures

open MeasureTheory Filter
open scoped BigOperators Topology
open SourcePairing SourceCorrelationCurvature SourceCorrelationCurvatureSign
open SourceMixedCurvatureCross
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

noncomputable section

private def mixedBracket (A r : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) r -
    sourceCorrelation explicitSecondDerivative A r / 4

private theorem center_neg {A : ℝ} (hA : 1 ≤ A) : mixedBracket A 0 < 0 := by
  have hd := sourceCorrelation_curvature_at_zero_neg (show 0 < A by linarith)
  have hc := actual_correlation_at_zero A hA
  unfold mixedBracket
  rw [hc]
  linarith

private theorem strict_upper_zero {A : ℝ} (hA : 0 < A) {r : ℝ}
    (hr : 2 * A < r) : mixedBracket A r = 0 := by
  have he : sourceCorrelation explicitSecondDerivative A =ᶠ[𝓝 r] (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds hr] with z hz
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z hA
      ((le_of_lt hz).trans (le_abs_self z))
  have hd : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) r = 0 := by
    simpa using he.deriv.deriv_eq
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A r hA
    ((le_of_lt hr).trans (le_abs_self r))
  simp only [mixedBracket, hd, hc, zero_div, sub_zero]

theorem empty_left_cross (A : ℝ) (t : Finset ℕ) (a x b y : ℕ → ℝ) :
    (∑ i ∈ (∅ : Finset ℕ), ∑ j ∈ t, a i * b j * mixedBracket A (x i - y j)) = 0 := by
  simp

theorem empty_right_cross (A : ℝ) (s : Finset ℕ) (a x b y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ (∅ : Finset ℕ), a i * b j * mixedBracket A (x i - y j)) = 0 := by
  simp

theorem zero_left_coefficients (A : ℝ) (s t : Finset ℕ) (x b y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, (0 : ℝ) * b j * mixedBracket A (x i - y j)) = 0 := by
  simp

theorem zero_right_coefficients (A : ℝ) (s t : Finset ℕ) (a x y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, a i * (0 : ℝ) * mixedBracket A (x i - y j)) = 0 := by
  simp

theorem singleton_two_shift_identity {A : ℝ} (hA : 0 < A) (a b x y : ℝ) :
    a * b * mixedBracket A (x - y) =
      -(∫ v : ℝ, (a * deriv (normalizedTest explicitSecondDerivative A) (v + x)) *
        (b * deriv (normalizedTest explicitSecondDerivative A) (v + y))) -
      (1 / 4 : ℝ) * (∫ v : ℝ, (a * normalizedTest explicitSecondDerivative A (v + x)) *
        (b * normalizedTest explicitSecondDerivative A (v + y))) := by
  simpa [mixedBracket] using actual_mixed_curvature_finite_cross_eq_neg_products
    ({0} : Finset ℕ) ({0} : Finset ℕ) (fun _ => a) (fun _ => x)
      (fun _ => b) (fun _ => y) hA

theorem same_rows_recover_two_squares {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (a x : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ s, a i * a j * mixedBracket A (x i - x j)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) ^ 2) -
      (1 / 4 : ℝ) * (∫ v : ℝ,
        (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) ^ 2) := by
  simpa only [mixedBracket, pow_two] using
    actual_mixed_curvature_finite_cross_eq_neg_products s s a x a x hA

theorem negate_right_flips_cross (A : ℝ) (s t : Finset ℕ) (a x b y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, a i * (-b j) * mixedBracket A (x i - y j)) =
      -(∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A (x i - y j)) := by
  simp only [mul_neg, neg_mul, Finset.sum_neg_distrib]

theorem negate_both_preserves_cross (A : ℝ) (s t : Finset ℕ) (a x b y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, (-a i) * (-b j) * mixedBracket A (x i - y j)) =
      ∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A (x i - y j) := by
  simp

theorem common_translation_preserves_cross (A h : ℝ)
    (s t : Finset ℕ) (a x b y : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A ((x i + h) - (y j + h))) =
      ∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A (x i - y j) := by
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [show (x i + h) - (y j + h) = x i - y j by ring]

theorem actual_center_mixed_bracket_negative {A : ℝ} (hA : 1 ≤ A) :
    mixedBracket A 0 < 0 := center_neg hA

theorem actual_opposite_singleton_cross_positive {A : ℝ} (hA : 1 ≤ A) :
    (1 : ℝ) * (-1) * mixedBracket A 0 > 0 := by
  have hn := center_neg hA
  nlinarith

theorem reflected_real_shift_sum_identity {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (a x b z : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A (x i + z j)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
        (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v - z j))) -
      (1 / 4 : ℝ) * (∫ v : ℝ,
        (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
        (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v - z j))) := by
  simpa only [mixedBracket, sub_neg_eq_add, ← sub_eq_add_neg] using
    actual_mixed_curvature_finite_cross_eq_neg_products s t a x b (fun j => -z j) hA

theorem reflected_positive_natural_log_product {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (a b : ℕ → ℝ)
    (hs : ∀ m ∈ s, 0 < m) (ht : ∀ n ∈ t, 0 < n) :
    (∑ m ∈ s, ∑ n ∈ t, a m * b n * mixedBracket A (Real.log ((m * n : ℕ) : ℝ))) =
      -(∫ v : ℝ,
        (∑ m ∈ s, a m * deriv (normalizedTest explicitSecondDerivative A)
          (v + Real.log (m : ℝ))) *
        (∑ n ∈ t, b n * deriv (normalizedTest explicitSecondDerivative A)
          (v - Real.log (n : ℝ)))) -
      (1 / 4 : ℝ) * (∫ v : ℝ,
        (∑ m ∈ s, a m * normalizedTest explicitSecondDerivative A (v + Real.log (m : ℝ))) *
        (∑ n ∈ t, b n * normalizedTest explicitSecondDerivative A (v - Real.log (n : ℝ)))) := by
  have he : (∑ m ∈ s, ∑ n ∈ t,
      a m * b n * mixedBracket A (Real.log ((m * n : ℕ) : ℝ))) =
      ∑ m ∈ s, ∑ n ∈ t,
        a m * b n * mixedBracket A (Real.log (m : ℝ) + Real.log (n : ℝ)) := by
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    have hm0 : (m : ℝ) ≠ 0 := ne_of_gt (by exact_mod_cast hs m hm)
    have hn0 : (n : ℝ) ≠ 0 := ne_of_gt (by exact_mod_cast ht n hn)
    rw [Nat.cast_mul, Real.log_mul hm0 hn0]
  rw [he]
  exact reflected_real_shift_sum_identity hA s t a (fun m => Real.log (m : ℝ))
    b (fun n => Real.log (n : ℝ))

theorem wrong_difference_is_not_reflected_sum {A : ℝ} (hA : 1 ≤ A)
    {r : ℝ} (hr : A < r) :
    mixedBracket A (r - (-r)) ≠ mixedBracket A (r + (-r)) := by
  have hz := strict_upper_zero (show 0 < A by linarith)
    (show 2 * A < 2 * r by linarith)
  have hn := center_neg hA
  rw [show r - (-r) = 2 * r by ring, show r + (-r) = 0 by ring, hz]
  exact ne_of_gt hn

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureCrossFixtures
```
