# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceMixedCurvatureGram.Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `920b06c4bc947dbe5ac6ccb55a03169f4628a123` · SHA-256 `071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# The actual stationary mixed-curvature finite Gram identity

Private proof-text preparation only: UNCOMPILED. The curve is the literal
sourceCorrelation explicitSecondDerivative A, and both square profiles use its
actual normalized source. Every translated product is genuinely integrable
before finite integration. No hypothetical source curve or positivity premise
replaces an actual source theorem.

The arguments are stationary differences x_i - x_j with the same coefficients
on both axes. This is not the unequal-weight, sum-argument joint Mangoldt work.
The original centeredDeletedDiagonal and independentMainTerm remain untouched.
No arithmetic tail estimate, full/main/CI acceptance or RH witness is supplied.

AI attribution: OpenAI Codex construction; native35 verification is held.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMixedCurvatureGram

open MeasureTheory
open scoped BigOperators
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

private theorem actual_source_shift_product_integrable {A : ℝ} (hA : 0 < A)
    (u w : ℝ) :
    Integrable (fun v : ℝ => normalizedTest explicitSecondDerivative A (v + u) *
      normalizedTest explicitSecondDerivative A (v + w)) := by
  convert (correlation_product_integrable A (u - w) hA).comp_add_right u using 1
  funext v
  rw [show v + u - (u - w) = v + w by ring]

private theorem actual_deriv_shift_product_integrable {A : ℝ} (hA : 0 < A)
    (u w : ℝ) :
    Integrable (fun v : ℝ => deriv (normalizedTest explicitSecondDerivative A) (v + u) *
      deriv (normalizedTest explicitSecondDerivative A) (v + w)) := by
  convert (sourceCorrelation_second_deriv_integrand_integrable hA (u - w)).comp_add_right u
    using 1
  funext v
  rw [show v + u - (u - w) = v + w by ring]

private theorem actual_correlation_at_difference_eq (A u w : ℝ) :
    sourceCorrelation explicitSecondDerivative A (u - w) =
      ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + w) := by
  unfold sourceCorrelation
  symm
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + u - (u - w)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + u - (u - w) = v + w by ring]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ => normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (u - w))) u

private theorem actual_curvature_at_difference_eq {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (u - w) =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
        deriv (normalizedTest explicitSecondDerivative A) (v + w)) := by
  have ht : (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
      deriv (normalizedTest explicitSecondDerivative A) (v + w)) =
      ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) v *
        deriv (normalizedTest explicitSecondDerivative A) (v - (u - w)) := by
    calc
      _ = ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
          deriv (normalizedTest explicitSecondDerivative A) (v + u - (u - w)) := by
        apply integral_congr_ae
        filter_upwards [] with v
        rw [show v + u - (u - w) = v + w by ring]
      _ = _ := integral_add_right_eq_self
        (fun v : ℝ => deriv (normalizedTest explicitSecondDerivative A) v *
          deriv (normalizedTest explicitSecondDerivative A) (v - (u - w))) u
  rw [sourceCorrelation_second_deriv_eq_integral hA, ← ht]

/-- Pure finite linearity; both uses below discharge every product premise
from the actual source. -/
private theorem integral_finite_square {ι : Type*} (s : Finset ι) (c : ι → ℝ)
    (g : ι → ℝ → ℝ)
    (hprod : ∀ i ∈ s, ∀ j ∈ s, Integrable (fun v : ℝ => g i v * g j v)) :
    (∫ v : ℝ, (∑ i ∈ s, c i * g i v) ^ 2) =
      ∑ i ∈ s, ∑ j ∈ s, c i * c j * (∫ v : ℝ, g i v * g j v) := by
  have hexpand : (fun v : ℝ => (∑ i ∈ s, c i * g i v) ^ 2) =
      (fun v : ℝ => ∑ i ∈ s, ∑ j ∈ s, c i * c j * (g i v * g j v)) := by
    funext v
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [hexpand, integral_finsetSum s]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum s]
    · apply Finset.sum_congr rfl
      intro j hj
      exact integral_const_mul (c i * c j) _
    · intro j hj
      exact (hprod i hi j hj).const_mul (c i * c j)
  · intro i hi
    exact integrable_finsetSum s (fun j hj =>
      (hprod i hi j hj).const_mul (c i * c j))

/-- Exact two-square representation of the actual finite stationary mixed-curvature kernel. -/
theorem actual_mixed_curvature_finite_gram_eq_neg_squares
    {ι : Type*} (s : Finset ι) (c x : ι → ℝ) {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - x j) -
        sourceCorrelation explicitSecondDerivative A (x i - x j) / 4)) =
      -(∫ v : ℝ, (∑ i ∈ s, c i * deriv (normalizedTest explicitSecondDerivative A)
          (v + x i)) ^ 2) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, c i * normalizedTest explicitSecondDerivative A (v + x i)) ^ 2) := by
  have hp := integral_finite_square s c
    (fun i v => normalizedTest explicitSecondDerivative A (v + x i))
    (fun i _ j _ => actual_source_shift_product_integrable hA (x i) (x j))
  have hd := integral_finite_square s c
    (fun i v => deriv (normalizedTest explicitSecondDerivative A) (v + x i))
    (fun i _ j _ => actual_deriv_shift_product_integrable hA (x i) (x j))
  rw [hd, hp]
  simp_rw [actual_curvature_at_difference_eq hA, actual_correlation_at_difference_eq,
    mul_sub, mul_neg, mul_div, Finset.sum_sub_distrib, Finset.sum_neg_distrib,
    Finset.sum_div]
  ring

/-- Nonpositivity applies to the same finite coefficients on both stationary axes. -/
theorem actual_mixed_curvature_finite_gram_nonpos
    {ι : Type*} (s : Finset ι) (c x : ι → ℝ) {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - x j) -
        sourceCorrelation explicitSecondDerivative A (x i - x j) / 4)) ≤ 0 := by
  rw [actual_mixed_curvature_finite_gram_eq_neg_squares s c x hA]
  have hd : 0 ≤ ∫ v : ℝ,
      (∑ i ∈ s, c i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) ^ 2 :=
    integral_nonneg (fun v => sq_nonneg _)
  have hp : 0 ≤ ∫ v : ℝ,
      (∑ i ∈ s, c i * normalizedTest explicitSecondDerivative A (v + x i)) ^ 2 :=
    integral_nonneg (fun v => sq_nonneg _)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureGram
```
