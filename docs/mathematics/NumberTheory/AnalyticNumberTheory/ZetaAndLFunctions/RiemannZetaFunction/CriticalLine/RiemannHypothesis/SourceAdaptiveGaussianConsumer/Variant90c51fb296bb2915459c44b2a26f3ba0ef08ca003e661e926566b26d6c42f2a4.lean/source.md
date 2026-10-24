# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceAdaptiveGaussianConsumer.Variant90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d99a864f5ddd9bdc8e8b392dec2cdc26faaae87` · SHA-256 `90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianBudget

/-!
# Original all-real signed source with its Gaussian approximation price paid

Research direction and high-priority emphasis: grwtsk contributors.
Precise lemma selection and formal construction: OpenAI Codex, 7 October 2026.
The literal original closed cutoff and every Lambda(n)-1 coefficient remain.
The signed arithmetic cap in the last two consumers is explicitly open.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianConsumer

open MeasureTheory ProbabilityTheory SourceKapitzaSquareShell SourceCenteredSmoothing
open SourceAdaptiveGaussianBudget GaussianSourceConsumer SourceKapitzaCompensatedReadout
open SourceKapitzaSignedReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped NNReal ENNReal BigOperators

/-- At each real scale the variance uses exactly the original closed natural cutoff. -/
def sourceVariance (A : ℝ) : ℝ≥0 := cutoffVariance ⌊Real.exp (2 * A)⌋₊

/-- Both unchanged signed tangent channels with the paid positive Gaussian variance. -/
def sourceGaussianTangent (A : ℝ) : ℝ :=
  smoothedTangentReadout (gaussianReal 0 (sourceVariance A)) A ⌊Real.exp (2 * A)⌋₊

/-- All value and slope masses have unconditional suppliers at every finite cutoff. -/
theorem paid_finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
      (tangentErrorConstant + 25 / 2) / A ^ 2 := by
  have hA0 : A ≠ 0 := by linarith
  have h := gaussian_finite_tangent_error hA (cutoffVariance N) N
  change |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
    tangentErrorConstant / A ^ 2 +
      ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
      ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N at h
  calc
    _ ≤ tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
        ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N := h
    _ = tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * ((cutoffVariance N : ℝ) * coefficientMass N) +
        (5 / A ^ 2) * (Real.sqrt (cutoffVariance N : ℝ) * driftMass N) := by ring
    _ ≤ tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * 1 + (5 / A ^ 2) * 2 :=
      add_le_add (add_le_add le_rfl
        (mul_le_mul_of_nonneg_left (variance_coefficientMass_le_one N) (by positivity)))
        (mul_le_mul_of_nonneg_left (sqrt_variance_driftMass_le_two N) (by positivity))
    _ = (tangentErrorConstant + 25 / 2) / A ^ 2 := by field_simp; ring

/-- This is the literal all-real original source; no approximation-price premise remains. -/
theorem paid_original_source_error {A : ℝ} (hA : 200 ≤ A) :
    |compensatedSourceSum A - sourceGaussianTangent A| ≤
      (tangentErrorConstant + 25 / 2) / A ^ 2 := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact paid_finite_tangent_error hA ⌊Real.exp (2 * A)⌋₊

theorem sourceVariance_pos (A : ℝ) : 0 < sourceVariance A :=
  cutoffVariance_pos _

/-- The next principal consumer exposes only its remaining signed tangent cap.
This theorem supplies no witness for that open arithmetic premise. -/
theorem compensated_tail_of_source_gaussian_tangent_cap
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      sourceGaussianTangent A ≤ B) : CompensatedTailUpperBound := by
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B + (tangentErrorConstant + 25 / 2), ?_⟩
  intro A hRA
  have hA : 200 ≤ A := hR.trans hRA
  have he := (abs_le.mp (paid_original_source_error hA)).2
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hC : 0 ≤ tangentErrorConstant + 25 / 2 := by
    unfold tangentErrorConstant SourceKapitzaStorage.quadraticConstant
    positivity
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hp := div_le_self hC hA2
  linarith [hB A hRA]

/-- Original EstimateObligation consumes the paid approximation and the explicit signed cap. -/
theorem estimate_of_source_gaussian_tangent_cap
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      sourceGaussianTangent A ≤ B) : CorrelationAssembly.EstimateObligation :=
  estimate_of_compensated_tail (compensated_tail_of_source_gaussian_tangent_cap hcap)

end FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianConsumer
```
