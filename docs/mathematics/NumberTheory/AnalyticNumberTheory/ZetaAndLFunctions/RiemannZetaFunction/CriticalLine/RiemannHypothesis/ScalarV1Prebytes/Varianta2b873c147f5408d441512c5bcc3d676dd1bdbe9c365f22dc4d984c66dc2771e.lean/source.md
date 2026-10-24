# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarV1Prebytes.Varianta2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be980458cbe47b1c50b8e150f28bb51ce27901e7` · SHA-256 `a2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# The literal source's scalar Green pairing

The independently defined continuous full-line Green kernel and convolution
retain the original normalized, zero-extended source. These scalar identities
do not construct a resolvent operator, identify a Jacobi or theta object,
or bound the signed arithmetic work.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

namespace FormalResearch.RiemannHypothesis.SourceGreenKernel

open MeasureTheory Set Function
open SourcePairing SourceCausalEnergy SourceContinuousHalfEnergy SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- The coefficient-one massive Green kernel on the continuous full line. -/
def greenKernel (t : ℝ) : ℝ := Real.exp (-|t| / 2)

/-- An independent whole-line pairing with the unchanged source correlation. -/
def sourceGreenPairing (A : ℝ) : ℝ :=
  ∫ t : ℝ, greenKernel t * sourceCorrelation explicitSecondDerivative A t

/-- The literal integral convolution, before its special source cancellation. -/
def sourceGreenConvolution (A x : ℝ) : ℝ :=
  ∫ y : ℝ, greenKernel (x - y) * normalizedTest explicitSecondDerivative A y

/-- Continuity includes the kernel's absolute-value seam. -/
theorem greenKernel_continuous : Continuous greenKernel :=
  Real.continuous_exp.comp (continuous_abs.neg.div_const 2)

/-- The continuous full-line kernel is even. -/
theorem greenKernel_even (t : ℝ) : greenKernel (-t) = greenKernel t := by
  simp [greenKernel]

/-- The independently defined pairing integrand is genuinely integrable. -/
theorem sourceGreenPairing_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t) :=
  (greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous)
    .integrable_of_hasCompactSupport ((sourceCorrelation_hasCompactSupport A hA).mul_left)

/-- Each actual-source convolution section is genuinely integrable. -/
theorem sourceGreenConvolution_integrable {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Integrable (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) :=
  ((greenKernel_continuous.comp (continuous_const.sub continuous_id)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      ((normalizedTest_hasCompactSupport A hA).mul_left)

/-- Correlation support and evenness retain both halves and the zero seam. -/
theorem sourceGreenPairing_eq_twice_negativeSmoothMoment {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = 2 * negativeSmoothMoment A := by
  let F := fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous F :=
    greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous
  have hs : Function.support F ⊆ Ioc (-(2*A)) (2*A) := by
    intro t ht
    have hn : |t| < 2*A := by
      by_contra hn
      apply ht
      dsimp only [F]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (le_of_not_gt hn), mul_zero]
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have he : (fun t : ℝ ↦ F (-t)) = F := by
    funext t
    dsimp only [F]
    rw [greenKernel_even, sourceCorrelation_even]
  have heven : (∫ t in -(2*A)..0, F t) = ∫ t in 0..2*A, F t := by
    have hn := intervalIntegral.integral_comp_neg F (a := -(2*A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hc.intervalIntegrable (μ := volume) 0 (2*A))
  have hpos : (∫ t in 0..2*A, F t) = negativeSmoothMoment A := by
    unfold negativeSmoothMoment
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2*A)] at ht
    dsimp only [F, greenKernel]
    rw [abs_of_nonneg ht.1]
  rw [heven, hfull] at hadd
  change (∫ t : ℝ, F t) = _
  rw [← hpos]
  linarith

/-- The full Green pairing is the positive causal energy of the literal source. -/
theorem sourceGreenPairing_eq_causal_energy {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA,
    negativeSmoothMoment_eq_half_causal_energy hA]
  ring

/-- The original critical half uses only its recorded radius domain. -/
theorem criticalContinuousMoment_eq_neg_half_green {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -(1/2) * sourceGreenPairing A := by
  rw [sourceGreenPairing_eq_causal_energy (by linarith : 0 < A)]
  exact criticalContinuousMoment_eq_neg_half_causal_energy hA

end

end FormalResearch.RiemannHypothesis.SourceGreenKernel
```
