# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualGammaFourierKernel.Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af6c907be808297db83f52175fb075814fed38ce` · SHA-256 `5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CenteredDigammaKernel
import FormalResearch.RiemannHypothesis.SourceHankelFourier
import Mathlib.MeasureTheory.Integral.Prod

/-! Scratch #146: unchanged Fourier-defined G_A to its correlation kernel.
All integrability premises are proved for the actual normalized source.
The actual quarter endpoint is retained; its numerical/closed form is separate.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualGammaFourierKernel
open MeasureTheory Set
open FormalResearch.RiemannHypothesis SourcePairing SourceHankelFourier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeFourier BridgeAdmissibility
open CenteredDigammaKernel

def jointIntegrand (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  sourceFourierSquare A p.1 * compensatedKernel p.1 p.2

theorem sourceSquare_measurable {A : ℝ} (hA : 1 ≤ A) :
    Measurable (sourceFourierSquare A) := by
  exact (Complex.continuous_normSq.comp
    (sourceFourier_continuous (normalizedTest_integrable A (by linarith)))).measurable

theorem joint_measurable {A : ℝ} (hA : 1 ≤ A) : Measurable (jointIntegrand A) := by
  have hs : Measurable (fun p : ℝ × ℝ => sourceFourierSquare A p.1) :=
    (sourceSquare_measurable hA).comp measurable_fst
  unfold jointIntegrand compensatedKernel ArchimedeanKernel.kernel
  fun_prop

theorem joint_nonneg (A ξ : ℝ) {t : ℝ} (ht : 0 < t) :
    0 ≤ jointIntegrand A (ξ,t) := by
  unfold jointIntegrand compensatedKernel
  exact mul_nonneg (sourceFourierSquare_nonneg A ξ)
    (mul_nonneg (mul_nonneg (by norm_num) (ArchimedeanKernel.kernel_nonneg ht))
      (cosine_deficit ξ t).1)

theorem centered_frequency_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ => sourceFourierSquare A ξ *
      (archimedeanMultiplier ξ + archimedeanConstant)) := by
  have h := (AdmissionSource.archimedean_integrability A hA).add
    ((sourceFourierSquare_integrable hA).const_mul archimedeanConstant)
  have he : (fun ξ => sourceFourierSquare A ξ *
      (archimedeanMultiplier ξ + archimedeanConstant)) =
      fun ξ => archimedeanIntegrand explicitSecondDerivative A ξ +
        archimedeanConstant*sourceFourierSquare A ξ := by
    funext ξ
    unfold archimedeanIntegrand sourceFourierSquare
    ring
  rw [he]
  exact h

theorem inner_norm_integral (A ξ : ℝ) :
    (∫ t : ℝ in Ioi 0, ‖jointIntegrand A (ξ,t)‖) =
      sourceFourierSquare A ξ * (archimedeanMultiplier ξ + archimedeanConstant) := by
  calc
    _ = ∫ t : ℝ in Ioi 0, jointIntegrand A (ξ,t) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact Real.norm_of_nonneg (joint_nonneg A ξ ht)
    _ = _ := by
      dsimp only [jointIntegrand]
      rw [integral_const_mul, ← actual_multiplier_integral]

/-- Genuine product integrability follows from actual logarithmic Fourier admission. -/
theorem joint_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (jointIntegrand A) (volume.prod (volume.restrict (Ioi 0))) := by
  apply (integrable_prod_iff (joint_measurable hA).aestronglyMeasurable).2
  constructor
  · exact Filter.Eventually.of_forall (fun ξ =>
      (compensatedKernel_integrable ξ).const_mul (sourceFourierSquare A ξ))
  · simpa only [inner_norm_integral] using centered_frequency_integrable hA

theorem inner_frequency_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ ξ : ℝ, jointIntegrand A (ξ,t)) =
      (2*Real.pi) * (2*ArchimedeanKernel.kernel t *
        (1-sourceCorrelation explicitSecondDerivative A t)) := by
  have he : (fun ξ => jointIntegrand A (ξ,t)) = fun ξ =>
      (2*ArchimedeanKernel.kernel t)*
        (sourceFourierSquare A ξ - Real.cos (ξ*t)*sourceFourierSquare A ξ) := by
    funext ξ
    unfold jointIntegrand compensatedKernel
    ring
  have hc : (∫ ξ : ℝ, Real.cos (ξ*t)*sourceFourierSquare A ξ) =
      (2*Real.pi)*sourceCorrelation explicitSecondDerivative A t := by
    rw [source_correlation_fourier hA]
    field_simp
    simp only [mul_comm]
  rw [he, integral_const_mul, integral_sub (sourceFourierSquare_integrable hA)
    (source_cosine_product_integrable hA t), sourceFourierSquare_integral hA, hc]
  ring

theorem centered_source_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, sourceFourierSquare A ξ *
      (archimedeanMultiplier ξ + archimedeanConstant)) =
      (2*Real.pi) * (2*(∫ t : ℝ in Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t)) := by
  have hj (ξ : ℝ) : (∫ t : ℝ in Ioi 0, jointIntegrand A (ξ,t)) =
      sourceFourierSquare A ξ * (archimedeanMultiplier ξ + archimedeanConstant) := by
    dsimp only [jointIntegrand]
    rw [integral_const_mul, ← actual_multiplier_integral]
  calc
    _ = ∫ ξ : ℝ, ∫ t : ℝ in Ioi 0, jointIntegrand A (ξ,t) := by simp_rw [hj]
    _ = ∫ t : ℝ in Ioi 0, ∫ ξ : ℝ, jointIntegrand A (ξ,t) :=
      integral_integral_swap (joint_integrable hA)
    _ = _ := by
      simp_rw [inner_frequency_integral hA]
      rw [integral_const_mul]
      congr 1
      rw [← integral_const_mul]
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        unfold ArchimedeanKernel.weightedDeficit
        ring)

/-- The Fourier-defined actual G_A, with no representation premise. -/
theorem actual_sourceGamma_identity {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A =
      -archimedeanConstant + 2*(∫ t : ℝ in Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) := by
  have hc := centered_source_integral hA
  have he : (fun ξ => sourceFourierSquare A ξ *
      (archimedeanMultiplier ξ + archimedeanConstant)) = fun ξ =>
      archimedeanIntegrand explicitSecondDerivative A ξ +
        archimedeanConstant*sourceFourierSquare A ξ := by
    funext ξ
    unfold sourceFourierSquare archimedeanIntegrand
    ring
  rw [he, integral_add (AdmissionSource.archimedean_integrability A hA)
    ((sourceFourierSquare_integrable hA).const_mul archimedeanConstant),
    integral_const_mul, sourceFourierSquare_integral hA] at hc
  unfold archimedeanValue
  apply (div_eq_iff (by positivity : 2*Real.pi ≠ 0)).2
  linarith

#print axioms jointIntegrand
#print axioms sourceSquare_measurable
#print axioms joint_measurable
#print axioms joint_nonneg
#print axioms centered_frequency_integrable
#print axioms inner_norm_integral
#print axioms joint_integrable
#print axioms inner_frequency_integral
#print axioms centered_source_integral
#print axioms actual_sourceGamma_identity
end ContinuousResearch.ActualGammaFourierKernel
```
