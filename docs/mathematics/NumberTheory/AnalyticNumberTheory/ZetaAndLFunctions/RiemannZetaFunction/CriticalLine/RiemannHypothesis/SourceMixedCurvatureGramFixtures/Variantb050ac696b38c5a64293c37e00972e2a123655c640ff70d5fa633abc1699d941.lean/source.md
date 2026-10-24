# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMixedCurvatureGramFixtures.Variantb050ac696b38c5a64293c37e00972e2a123655c640ff70d5fa633abc1699d941

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c273e53ea5f84314b53905efe0b629ac9f0719df` · SHA-256 `b050ac696b38c5a64293c37e00972e2a123655c640ff70d5fa633abc1699d941`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceMixedCurvatureGram
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Private35 hostile and scope fixture proof text only: UNCOMPILED.
No fixture supplies a sign for the actual joint arithmetic work.
The strict reflected-support fixture uses r>A. No derivative endpoint zero is
inferred from C(2A)=0 alone. Products and the complete square identity retain
the actual normalized source and its derivative.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMixedCurvatureGramFixtures

open MeasureTheory Filter
open scoped BigOperators Topology
open SourcePairing SourceCorrelationCurvature SourceCorrelationCurvatureSign
open SourceMixedCurvatureGram
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

noncomputable section

private def mixedBracket (A s : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s -
    sourceCorrelation explicitSecondDerivative A s / 4

private theorem mixedBracket_center_neg {A : ℝ} (hA : 1 ≤ A) : mixedBracket A 0 < 0 := by
  have hp : 0 < A := by linarith
  have hd := sourceCorrelation_curvature_at_zero_neg hp
  have hc := actual_correlation_at_zero A hA
  unfold mixedBracket
  rw [hc]
  linarith

private theorem mixedBracket_strict_upper_zero {A : ℝ} (hA : 0 < A)
    {t : ℝ} (ht : 2 * A < t) : mixedBracket A t = 0 := by
  have he : sourceCorrelation explicitSecondDerivative A =ᶠ[𝓝 t] (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds ht] with y hy
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A y hA
      ((le_of_lt hy).trans (le_abs_self y))
  have hd : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t = 0 := by
    simpa using he.deriv.deriv_eq
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA
    ((le_of_lt ht).trans (le_abs_self t))
  simp only [mixedBracket, hd, hc, zero_div, sub_zero]

theorem empty_stationary_readout (A : ℝ) (c x : ℕ → ℝ) :
    (∑ i ∈ (∅ : Finset ℕ), ∑ j ∈ (∅ : Finset ℕ), c i * c j *
      mixedBracket A (x i - x j)) = 0 := by simp

theorem zero_weights_stationary_readout (A : ℝ) (s : Finset ℕ) (x : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ s, (0 : ℝ) * 0 * mixedBracket A (x i - x j)) = 0 := by simp

theorem singleton_actual_two_square_identity {A : ℝ} (hA : 0 < A) (r : ℝ) :
    mixedBracket A 0 =
      -(∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) (v + r)) ^ 2) -
      (1 / 4 : ℝ) * (∫ v : ℝ, (normalizedTest explicitSecondDerivative A (v + r)) ^ 2) := by
  simpa [mixedBracket] using actual_mixed_curvature_finite_gram_eq_neg_squares
    ({0} : Finset ℕ) (fun _ => (1 : ℝ)) (fun _ => r) hA

theorem two_point_stationary_nonpos {A : ℝ} (hA : 0 < A) (c x : ℕ → ℝ) :
    (∑ i ∈ ({0, 1} : Finset ℕ), ∑ j ∈ ({0, 1} : Finset ℕ),
      c i * c j * mixedBracket A (x i - x j)) ≤ 0 := by
  exact actual_mixed_curvature_finite_gram_nonpos ({0, 1} : Finset ℕ) c x hA

theorem arbitrary_signed_coefficients_nonpos {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c x : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j * mixedBracket A (x i - x j)) ≤ 0 := by
  exact actual_mixed_curvature_finite_gram_nonpos s c x hA

theorem common_translation_preserves_stationary_readout (A h : ℝ)
    (s : Finset ℕ) (c x : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j * mixedBracket A ((x i + h) - (x j + h))) =
      ∑ i ∈ s, ∑ j ∈ s, c i * c j * mixedBracket A (x i - x j) := by
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [show (x i + h) - (x j + h) = x i - x j by ring]

theorem actual_center_mixed_bracket_negative {A : ℝ} (hA : 1 ≤ A) :
    mixedBracket A 0 < 0 := mixedBracket_center_neg hA

theorem actual_opposite_cross_weight_positive {A : ℝ} (hA : 1 ≤ A) :
    (1 : ℝ) * (-1) * mixedBracket A 0 > 0 := by
  have hn := mixedBracket_center_neg hA
  nlinarith

theorem actual_cross_readouts_have_both_signs {A : ℝ} (hA : 1 ≤ A) :
    (1 : ℝ) * 1 * mixedBracket A 0 < 0 ∧
      (1 : ℝ) * (-1) * mixedBracket A 0 > 0 := by
  have hn := mixedBracket_center_neg hA
  constructor <;> nlinarith

theorem actual_reflected_curvature_sign_guard {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 ≠
      ∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2 :=
  positive_autocorrelation_formula_false hA

theorem strict_upper_support_mixed_bracket_zero {A : ℝ} (hA : 0 < A)
    {t : ℝ} (ht : 2 * A < t) : mixedBracket A t = 0 :=
  mixedBracket_strict_upper_zero hA ht

theorem reflected_difference_is_not_sum {A : ℝ} (hA : 1 ≤ A)
    {r : ℝ} (hr : A < r) :
    mixedBracket A (r - (-r)) ≠ mixedBracket A (r + (-r)) := by
  have hz := mixedBracket_strict_upper_zero (show 0 < A by linarith)
    (show 2 * A < 2 * r by linarith)
  have hn := mixedBracket_center_neg hA
  rw [show r - (-r) = 2 * r by ring, show r + (-r) = 0 by ring, hz]
  exact ne_of_gt hn

theorem reflected_sum_center_negative {A : ℝ} (hA : 1 ≤ A) (r : ℝ) :
    mixedBracket A (r + (-r)) < 0 := by
  simpa only [add_neg_cancel] using mixedBracket_center_neg hA

theorem same_negative_coefficient_still_stationary_nonpos {A : ℝ} (hA : 1 ≤ A) :
    (-1 : ℝ) * (-1) * mixedBracket A 0 ≤ 0 := by
  have hn := mixedBracket_center_neg hA
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureGramFixtures
```
