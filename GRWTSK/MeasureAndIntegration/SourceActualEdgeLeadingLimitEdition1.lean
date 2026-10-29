import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
The true fixed-distance endpoint asymptotic follows from the literal source
polynomial and exact closed-support correlation overlap. Every radius remains
real. A fixed-distance limit supplies neither a uniform late arithmetic rate
nor an unnormalized signed bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEdgeLeadingLimit

open Set Filter MeasureTheory SourcePairing
open scoped Interval Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation

noncomputable section

/-- The signed fixed-distance limit of the literal endpoint numerator. -/
def actualLeadingEndpointPolynomial (u : ℝ) : ℝ := 192 * u ^ 2 - 4 * u ^ 4

/-- Actual endpoint numerators converge at each fixed real distance. -/
theorem endpointPolynomial_tendsto_leading (u : ℝ) :
    Tendsto (fun A : ℝ => endpointPolynomial A u) atTop
      (𝓝 (actualLeadingEndpointPolynomial u)) := by
  have hd : Tendsto (fun A : ℝ => u / A) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_id
  have hc : Continuous (fun v : ℝ => u ^ 2 * (2 - v) ^ 2 *
      (8 * (7 * (1 - v) ^ 2 - 1) - u ^ 2 * (2 - v) ^ 2 / 4)) := by fun_prop
  have hh := hc.continuousAt.tendsto.comp hd
  have hv : u ^ 2 * (2 - (0 : ℝ)) ^ 2 *
      (8 * (7 * (1 - (0 : ℝ)) ^ 2 - 1) - u ^ 2 * (2 - (0 : ℝ)) ^ 2 / 4) =
      actualLeadingEndpointPolynomial u := by
    unfold actualLeadingEndpointPolynomial
    ring
  rw [hv] at hh
  exact hh

/-- The original normalized test retains all three literal normalizing factors. -/
theorem actual_normalizedTest_scaled_edge_tendsto {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ =>
      (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        normalizedTest explicitSecondDerivative A (A - u)) atTop
      (𝓝 (actualLeadingEndpointPolynomial u)) := by
  have he : (fun A : ℝ =>
      (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        normalizedTest explicitSecondDerivative A (A - u)) =ᶠ[atTop]
      fun A : ℝ => endpointPolynomial A u := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    rw [normalizedTest_endpoint A u h1 hu huA]
    have hn : A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) ≠ 0 := by
      have hZ := source_normalization_pos A h1
      have hp : 0 < A := by linarith
      positivity
    field_simp [Real.sqrt_ne_zero'.mpr (source_normalization_pos A h1)]
  exact (endpointPolynomial_tendsto_leading u).congr' he.symm

/-- The genuine finite leading overlap, retaining its signed product. -/
def actualLeadingEdgeConvolution (u : ℝ) : ℝ :=
  ∫ r in 0..u, actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r)

/-- The complete fixed overlap is genuinely integrable before a limiting integral is used. -/
theorem actualLeadingEdgeProduct_intervalIntegrable (u : ℝ) :
    IntervalIntegrable (fun r : ℝ =>
      actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r)) volume 0 u := by
  exact (by unfold actualLeadingEndpointPolynomial; fun_prop : Continuous _).intervalIntegrable _ _

/-- The actual endpoint-product integrals converge on every fixed closed overlap. -/
theorem endpointProduct_integral_tendsto_leading {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ => ∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r))
      atTop (𝓝 (actualLeadingEdgeConvolution u)) := by
  let M : ℝ := 192 * u ^ 2 + 4 * u ^ 4
  have hmeas : ∀ᶠ A : ℝ in atTop, AEStronglyMeasurable
      (fun r : ℝ => endpointPolynomial A r * endpointPolynomial A (u - r))
      (volume.restrict (Ioc 0 u)) := by
    exact Eventually.of_forall (fun A =>
      ((endpointProduct_intervalIntegrable A u).1).aestronglyMeasurable)
  have hbound : ∀ᶠ A : ℝ in atTop, ∀ᵐ r ∂volume.restrict (Ioc 0 u),
      ‖endpointPolynomial A r * endpointPolynomial A (u - r)‖ ≤ M ^ 2 := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hb (v : ℝ) (hv : 0 ≤ v) (hvu : v ≤ u) : |endpointPolynomial A v| ≤ M := by
      refine (endpointPolynomial_abs_le A v h1 hv (hvu.trans huA)).trans ?_
      have h2 : v ^ 2 ≤ u ^ 2 := (sq_le_sq₀ hv hu).2 hvu
      have h4 : v ^ 4 ≤ u ^ 4 := by nlinarith [sq_nonneg (u ^ 2 - v ^ 2)]
      dsimp [M]
      nlinarith
    rw [Real.norm_eq_abs, abs_mul, pow_two]
    exact mul_le_mul (hb r hr.1.le hr.2)
      (hb (u - r) (by linarith [hr.2]) (by linarith [hr.1]))
      (abs_nonneg _) (by dsimp [M]; positivity)
  have hi : Integrable (fun _ : ℝ => M ^ 2) (volume.restrict (Ioc 0 u)) := by
    exact (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => M ^ 2) volume 0 u).1
  have hlim : ∀ᵐ r ∂volume.restrict (Ioc 0 u),
      Tendsto (fun A : ℝ => endpointPolynomial A r * endpointPolynomial A (u - r))
      atTop (𝓝 (actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r))) := by
    exact Eventually.of_forall (fun r =>
      (endpointPolynomial_tendsto_leading r).mul (endpointPolynomial_tendsto_leading (u - r)))
  have hh := tendsto_integral_filter_of_dominated_convergence
    (fun _ : ℝ => M ^ 2) hmeas hbound hi hlim
  simpa only [actualLeadingEdgeConvolution, intervalIntegral.integral_of_le hu] using hh

/-- The actual source correlation, with its exact ninth-power scale, has this fixed-edge limit. -/
theorem actual_correlation_scaled_edge_tendsto {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A *
      sourceCorrelation explicitSecondDerivative A (2 * A - u)) atTop
      (𝓝 (actualLeadingEdgeConvolution u)) := by
  have he : (fun A : ℝ => A ^ 9 * sourceNormalization A *
      sourceCorrelation explicitSecondDerivative A (2 * A - u)) =ᶠ[atTop]
      fun A : ℝ => ∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r) := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    rw [sourceCorrelation_upper_edge A u h1 hu huA]
    have hn : A ^ 9 * sourceNormalization A ≠ 0 := by
      have hZ := source_normalization_pos A h1
      have hp : 0 < A := by linarith
      positivity
    field_simp [(source_normalization_pos A h1).ne']
  exact (endpointProduct_integral_tendsto_leading hu).congr' he.symm

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeLeadingLimit
