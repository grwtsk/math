import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicConvergence
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroFormContinuity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroFormSupport

/-!
# Common-support convergence of the exact source arithmetic form

The logarithmic error estimate controls the complete implemented arithmetic
form: its archimedean integral, both pole moments, and the signed strict-cutoff
prime-power sum. The limit is the unchanged form of the unnormalized source
test at radius `A`. No smooth explicit formula or zero-side descent is used.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroFormConvergence

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative ZeroSmoothingL2
open ZeroLogarithmicCore ZeroLogarithmicConvergence ZeroFormContinuity BridgeAdmissibility

noncomputable section

/-- On the common compact support, the full form error is bounded by a vanishing polynomial
in the exact logarithmic error norm. -/
theorem smoothedTest_form_error_le (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (hε1 : ε ≤ 1) :
    |realArithmeticForm (A + 1) (smoothedTest A ε hε) -
      realArithmeticForm (A + 1) (actualTest A)| ≤
      formCoefficient (A + 1) *
        logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) *
        (logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) +
          2 * logarithmicNorm (actualTest A)) := by
  apply (realArithmeticForm_sub_abs_le
    (smoothedTest_integrable A ε hA hε) (actualTest_integrable A hA)
    (smoothedTest_memLp_two A ε hA hε) (actualTest_memLp_two A hA)
    (smoothedTest_support_common A ε hA hε hε1) (actualTest_support_common A hA)
    (smoothedTest_logarithmic_integrable A ε hA hε)
    (actualTest_logarithmic_integrable A hA)
    (testError_logarithmic_integrable A ε hA hε)).trans
  apply mul_le_mul_of_nonneg_left _
    (mul_nonneg (formCoefficient_nonneg _) (logarithmicNorm_nonneg _))
  linarith [smoothedTest_logarithmicNorm_le A ε hA hε]

/-- Logarithmic convergence on the proved common support yields convergence of the entire
source arithmetic form for every positive scale family tending to zero. -/
theorem smoothedTest_form_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)))
      l (𝓝 (realArithmeticForm A (actualTest A))) := by
  have he := testError_logarithmicNorm_tendsto_zero A hA ε hε hlim
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hpoly : Tendsto (fun i ↦ formCoefficient (A + 1) *
      logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) *
      (logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) +
        2 * logarithmicNorm (actualTest A))) l (𝓝 0) := by
    simpa using (he.const_mul (formCoefficient (A + 1))).mul
      (he.add_const (2 * logarithmicNorm (actualTest A)))
  have hnorm : Tendsto (fun i ↦
      |realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)) -
        realArithmeticForm (A + 1) (actualTest A)|) l (𝓝 0) := by
    apply squeeze_zero' (Eventually.of_forall fun _ ↦ abs_nonneg _) _ hpoly
    filter_upwards [hsmall] with i hi
    exact smoothedTest_form_error_le A (ε i) hA (hε i) hi
  rw [ZeroFormSupport.actual_form_support_consistent A (A + 1) hA (by linarith)] at hnorm
  exact tendsto_iff_dist_tendsto_zero.2 (by simpa only [Real.dist_eq] using hnorm)

/-- The actual source form converges as the strictly positive smoothing scale approaches zero. -/
theorem source_form_tendsto (A : ℝ) (hA : 1 ≤ A) :
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      realArithmeticForm (A + 1) (smoothedTest A ε ε.property))
      positiveScaleAtZero (𝓝 (realArithmeticForm A (actualTest A))) :=
  smoothedTest_form_tendsto A hA Subtype.val Subtype.property positiveScale_tendsto_zero

/-- Source logarithmic and full arithmetic-form convergence, with genuine membership,
strictly positive scales, and an explicit common support for scales at most one. -/
theorem source_logarithmic_form_convergence (A : ℝ) (hA : 1 ≤ A) :
    positiveScaleAtZero.NeBot ∧
    MemLp (actualTest A) 2 volume ∧
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)) ∧
    (∀ (ε : ℝ) (hε : 0 < ε),
      MemLp (smoothedTest A ε hε) 2 volume ∧
      Integrable (fun ξ ↦ logarithmicWeight ξ *
        Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) ∧
      Integrable (fun ξ ↦ logarithmicWeight ξ *
        Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ)) ∧
      (ε ≤ 1 → Function.support (smoothedTest A ε hε) ⊆ Icc (-(A + 1)) (A + 1))) ∧
    Function.support (actualTest A) ⊆ Icc (-(A + 1)) (A + 1) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ logarithmicEnergy
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x)) positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ logarithmicNorm
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x)) positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      realArithmeticForm (A + 1) (smoothedTest A ε ε.property))
      positiveScaleAtZero (𝓝 (realArithmeticForm A (actualTest A))) := by
  refine ⟨positiveScaleAtZero_neBot, actualTest_memLp_two A hA,
    actualTest_logarithmic_integrable A hA, ?_, actualTest_support_common A hA,
    testError_logarithmicEnergy_tendsto_zero A hA Subtype.val Subtype.property
      positiveScale_tendsto_zero,
    testError_logarithmicNorm_tendsto_zero A hA Subtype.val Subtype.property
      positiveScale_tendsto_zero, source_form_tendsto A hA⟩
  intro ε hε
  exact ⟨smoothedTest_memLp_two A ε hA hε, smoothedTest_logarithmic_integrable A ε hA hε,
    testError_logarithmic_integrable A ε hA hε, smoothedTest_support_common A ε hA hε⟩

end

end ZeroFormConvergence
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
