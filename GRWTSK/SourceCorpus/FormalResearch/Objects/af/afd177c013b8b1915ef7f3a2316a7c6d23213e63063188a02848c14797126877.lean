import FormalResearch.RiemannHypothesis.SourceSignedHeat
import FormalResearch.RiemannHypothesis.SourceSignedPortControls

/-!
# Exact finite heat remainder and its absolute-mass boundary

Research direction: grwtsk contributors. Specific formal transport and boundary
calculation: OpenAI Codex, 7 October 2026. The coefficient-variation lower bound
is reused from the existing signed-port source, with its exact source decoder.
These bounds do not supply a uniform signed arithmetic witness.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHeatBoundaries

open MeasureTheory
open SourceSignedHeat SourceCompensatedFourier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent Realization

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsProbabilityMeasure μ]
    {k : α → ℝ} {M : ℝ}

/-- Time integration is exactly a bounded signed filter, with the whole source retained. -/
theorem signedHeatRemainder_eq_filtered_integral (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    signedHeatRemainder μ k τ =
      ∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ := by
  have hi : Integrable k μ := by
    simpa using signedHeat_integrable (μ := μ) hk hM hb 0
  have ht := signedHeat_integrable (μ := μ) hk hM hb τ
  have he := signedHeat_decomposition (μ := μ) hk hM hb hτ
  have hf : (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) =
      fun x => k x - k x * Real.exp (-τ * k x ^ 2) := by
    funext x
    ring
  rw [hf, integral_sub hi ht]
  unfold signedHeat at he
  linarith

/-- This absolute envelope is finite at each scale; its coefficient mass is not unit mass. -/
theorem signedHeatRemainder_abs_le (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    |signedHeatRemainder μ k τ| ≤ M := by
  rw [signedHeatRemainder_eq_filtered_integral hk hM hb hτ]
  have h := norm_integral_le_of_norm_le_const (μ := μ) (C := M)
    (f := fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) (ae_of_all _ (fun x => by
    have he : Real.exp (-τ * k x ^ 2) ≤ 1 := Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hτ) (sq_nonneg _))
    have hz : 0 ≤ 1 - Real.exp (-τ * k x ^ 2) := by linarith
    have ho : 1 - Real.exp (-τ * k x ^ 2) ≤ 1 := by linarith [Real.exp_pos (-τ * k x ^ 2)]
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hz]
    exact (mul_le_mul_of_nonneg_left ho (abs_nonneg (k x))).trans (by simpa using hb x)))
  simpa only [Real.norm_eq_abs, probReal_univ, mul_one] using h

theorem sourceHeatRemainder_abs_le (A : ℝ) (hA : 1 ≤ A) {τ : ℝ} (hτ : 0 ≤ τ) :
    |sourceHeatRemainder A τ| ≤ sourceSymbolBound A := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  exact signedHeatRemainder_abs_le (compensatedFourierSymbol_measurable A)
    (sourceSymbolBound_nonneg A) (compensatedFourierSymbol_abs_le A) hτ

/-- The exponential and square-root coefficient conventions give the same literal mass. -/
theorem sourceSymbolBound_eq_coefficientVariation (A : ℝ) :
    sourceSymbolBound A =
      SourceSignedPortControls.coefficientVariation ⌊Real.exp (2 * A)⌋₊ := by
  unfold sourceSymbolBound SourceSignedPortControls.coefficientVariation primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have he := exponentialTest_log (fun _ : ℝ => 1) n
    (by have := (Finset.mem_Icc.mp hn).1; omega)
  simp only [exponentialTest, mul_one, one_div] at he
  unfold SourceCompensatedFourier.compensatedCoefficient
    SourceSignedPortControls.compensatedCoefficient
  rw [he, div_eq_mul_inv]

/-- The complete signed source already contains this growing absolute-mass lower bound.
It is a boundary for the unsigned method, not a lower bound on the signed heat remainder. -/
theorem sourceSymbolBound_lower (A : ℝ) (K : ℕ) (hK : 1 ≤ K)
    (hcutoff : 6 * K ≤ ⌊Real.exp (2 * A)⌋₊) :
    (K : ℝ) / Real.sqrt (6 * K) ≤ sourceSymbolBound A := by
  rw [sourceSymbolBound_eq_coefficientVariation]
  exact SourceSignedPortControls.coefficientVariation_lower K _ hK hcutoff

end FormalResearch.RiemannHypothesis.SourceHeatBoundaries
