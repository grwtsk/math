import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Direct growth route for actual archimedean admission

A genuinely proved eventual logarithmic majorant would suffice for B3.1.
Continuity of the actual digamma multiplier supplies the compact part. No
meromorphicity-to-growth inference is made, and no growth bound is asserted.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

noncomputable section

/-- The actual multiplier is continuous because the Gamma logarithmic derivative
is analytic away from its poles; the vertical line has positive real part. -/
theorem actual_multiplier_continuous : Continuous archimedeanMultiplier := by
  have ho : IsOpen {z : ℂ | 0 < z.re} :=
    Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have hn (z : ℂ) (hz : 0 < z.re) : ∀ m : ℕ, z ≠ -m := by
    intro m hm
    have he := congrArg Complex.re hm
    simp only [Complex.neg_re, Complex.natCast_re] at he
    have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hg : AnalyticOnNhd ℂ Complex.Gamma {z : ℂ | 0 < z.re} := by
    apply DifferentiableOn.analyticOnNhd _ ho
    intro z hz
    exact (Complex.differentiableAt_Gamma z (hn z hz)).differentiableWithinAt
  apply continuous_iff_continuousAt.mpr
  intro ξ
  have hz : 0 < ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2).re := by simp
  have hc := ((hg _ hz).deriv.div (hg _ hz) (Complex.Gamma_ne_zero (hn _ hz))).continuousAt
  have hp : Continuous (fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := by fun_prop
  have hd : ContinuousAt Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := hc
  change ContinuousAt (fun ξ : ℝ ↦
    (Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)).re - Real.log Real.pi) ξ
  have hdcomp : ContinuousAt
      (fun ξ : ℝ ↦ Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)) ξ :=
    hd.comp (f := fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) hp.continuousAt
  exact (Complex.continuous_re.continuousAt.comp hdcomp).sub continuousAt_const


/-- A weaker global majorant target than the source's exact constant-four estimate.
This is an open proposition, not an admitted theorem or replacement multiplier. -/
def LogarithmicMajorantObligation : Prop :=
  ∃ C₀ C₁ : ℝ, 0 ≤ C₀ ∧ 0 ≤ C₁ ∧
    ∀ ξ : ℝ, |archimedeanMultiplier ξ| ≤ C₀ + C₁ * Real.log (1 + 4 * ξ ^ 2)

/-- The direct route can instead prove a two-sided-tail bound at a finite radius.
This does not assert the source's sharp global equation (10). -/
def EventualMajorantObligation : Prop :=
  ∃ R C₀ C₁ : ℝ, 0 ≤ R ∧ 0 ≤ C₀ ∧ 0 ≤ C₁ ∧
    ∀ ξ : ℝ, R ≤ |ξ| →
      |archimedeanMultiplier ξ| ≤ C₀ + C₁ * Real.log (1 + 4 * ξ ^ 2)

/-- Continuity supplies the compact region omitted by an eventual growth theorem.
The resulting constants need not equal the manuscript's constants. -/
theorem global_majorant_of_eventual (h : EventualMajorantObligation) :
    LogarithmicMajorantObligation := by
  obtain ⟨R, C₀, C₁, _, hC₀, hC₁, htail⟩ := h
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (s := Icc (-R) R) actual_multiplier_continuous.continuousOn
  refine ⟨|M| + C₀, C₁, by positivity, hC₁, ?_⟩
  intro ξ
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  by_cases hx : |ξ| ≤ R
  · have hb := hM ξ (abs_le.mp hx)
    rw [Real.norm_eq_abs] at hb
    have := le_abs_self M
    nlinarith [mul_nonneg hC₁ hlog]
  · have ht := htail ξ (le_of_lt (lt_of_not_ge hx))
    linarith [abs_nonneg M]

/-- Any proved global logarithmic bound controls the exact normalized Fourier
integrand by the already proved integrable energies, not by an integral value. -/
theorem archimedean_integrability_of_majorant (h : LogarithmicMajorantObligation) :
    ArchimedeanIntegrabilityObligation := by
  obtain ⟨C₀, C₁, _, _, hbound⟩ := h
  intro A hA
  have hc := BridgeFourier.sourceFourier_continuous
    (normalizedTest_integrable A (by linarith))
  have hm : AEStronglyMeasurable (archimedeanIntegrand explicitSecondDerivative A) volume :=
    (actual_multiplier_continuous.mul (Complex.continuous_normSq.comp hc)).aestronglyMeasurable
  have hmajor := ((BridgeFourier.actual_fourier_square_integrable A hA).const_mul C₀).add
    ((BridgeFourier.actual_logarithmic_fourier_integrable A hA).const_mul C₁)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  dsimp only [archimedeanIntegrand]
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) ≤
      (C₀ + C₁ * Real.log (1 + 4 * ξ ^ 2)) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) :=
      mul_le_mul_of_nonneg_right (hbound ξ) (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

/-- A proved eventual majorant would close B3.1 after checked compact control.
The analytic premise remains explicit; this theorem alone does not close it. -/
theorem admission_of_eventual_majorant (h : EventualMajorantObligation) :
    NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr
    (archimedean_integrability_of_majorant (global_majorant_of_eventual h))

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect
