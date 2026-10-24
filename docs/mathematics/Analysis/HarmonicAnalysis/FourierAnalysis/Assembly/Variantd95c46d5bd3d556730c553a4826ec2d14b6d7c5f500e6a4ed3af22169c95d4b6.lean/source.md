# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Assembly.Variantd95c46d5bd3d556730c553a4826ec2d14b6d7c5f500e6a4ed3af22169c95d4b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb1ce1eaede663d56390af3be0aa7daff1487754` · SHA-256 `d95c46d5bd3d556730c553a4826ec2d14b6d7c5f500e6a4ed3af22169c95d4b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# Final B3.2 zero-side assembly

Z2.4--Z2.7 have supplied the prescribed smoothing family, logarithmic
convergence, the smooth explicit formula, and dominated descent to the original
arithmetic--zero equality.  This module packages those results with the
remaining analytic admission, transform-integrability, summability, and exact
normalization components of the unchanged
`ZeroSideTargets.ZeroSideIdentityObligation`.

No new arithmetic or zero-location premise is introduced here.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.Assembly

open MeasureTheory Set Filter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject ZeroTestRegularity ZeroSmoothingDerivative
  ZeroSmoothingL2 BridgeAdmissibility
open DominatedDescent

noncomputable section

private theorem source_fourier_const_mul
    (c : ℝ) (f : ℝ → ℝ) (ξ : ℝ) :
    sourceFourier (fun x ↦ c * f x) ξ =
      (c : ℂ) * sourceFourier f ξ := by
  unfold sourceFourier
  simp only [Complex.ofReal_mul, mul_assoc, integral_const_mul]

private theorem source_fourier_normSq_const_mul
    (c : ℝ) (f : ℝ → ℝ) (ξ : ℝ) :
    Complex.normSq (sourceFourier (fun x ↦ c * f x) ξ) =
      c ^ 2 * Complex.normSq (sourceFourier f ξ) := by
  rw [source_fourier_const_mul]
  simp only [Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  ring

private theorem weighted_fourier_integrand_const_mul
    (c : ℝ) (w f : ℝ → ℝ) :
    (fun ξ ↦ w ξ *
      Complex.normSq (sourceFourier (fun x ↦ c * f x) ξ)) =
      (fun ξ ↦ c ^ 2 *
        (w ξ * Complex.normSq (sourceFourier f ξ))) := by
  funext ξ
  rw [source_fourier_normSq_const_mul]
  ring

private theorem weighted_integral_const_mul
    (c : ℝ) (w f : ℝ → ℝ) :
    (∫ x, w x * (c * f x)) =
      c * ∫ x, w x * f x := by
  calc
    _ = ∫ x, c * (w x * f x) := by
      apply integral_congr_ae
      exact Eventually.of_forall fun x ↦ by ring
    _ = _ := integral_const_mul _ _

private theorem real_pole_contribution_const_mul
    (c : ℝ) (f : ℝ → ℝ) :
    realPoleContribution (fun x ↦ c * f x) =
      c ^ 2 * realPoleContribution f := by
  unfold realPoleContribution
  rw [weighted_integral_const_mul, weighted_integral_const_mul]
  ring

private theorem correlation_integrand_const_mul
    (c : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    (fun x ↦ (c * f x) * (c * f (x - t))) =
      (fun x ↦ c ^ 2 * (f x * f (x - t))) := by
  funext x
  ring

private theorem correlation_integral_const_mul
    (c : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    (∫ x, (c * f x) * (c * f (x - t))) =
      c ^ 2 * ∫ x, f x * f (x - t) := by
  rw [correlation_integrand_const_mul, integral_const_mul]

private theorem real_arithmetic_form_const_mul
    (A c : ℝ) (f : ℝ → ℝ) :
    realArithmeticForm A (fun x ↦ c * f x) =
      c ^ 2 * realArithmeticForm A f := by
  have harch :
      (∫ ξ, archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (fun x ↦ c * f x) ξ)) =
      c ^ 2 * ∫ ξ,
        archimedeanMultiplier ξ *
          Complex.normSq (sourceFourier f ξ) := by
    rw [weighted_fourier_integrand_const_mul, integral_const_mul]
  let S : Finset ℕ :=
    (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))
  have hprime :
      (∑ n ∈ S,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, (c * f x) * (c * f (x - Real.log n)))) =
      c ^ 2 * ∑ n ∈ S,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, f x * f (x - Real.log n)) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    rw [correlation_integral_const_mul]
    ring
  unfold realArithmeticForm
  rw [harch, real_pole_contribution_const_mul, hprime]
  ring

private theorem actual_eq_sqrt_mul_normalized
    (A : ℝ) (hA : 1 ≤ A) :
    actualTest A =
      fun x ↦ Real.sqrt (sourceNormalization A) *
        normalizedTest Realization.explicitSecondDerivative A x := by
  have hs : Real.sqrt (sourceNormalization A) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.mpr (source_normalization_pos A hA))
  funext x
  change dilationTest Realization.explicitSecondDerivative A x =
    Real.sqrt (sourceNormalization A) *
      (dilationTest Realization.explicitSecondDerivative A x /
        Real.sqrt (sourceNormalization A))
  field_simp [hs]

private theorem actual_logarithmic_domain
    (A : ℝ) (hA : 1 ≤ A) :
    LogarithmicDomain A (actualTest A) := by
  have hd : Differentiable ℝ (actualTest A) :=
    (actualTest_contDiff A hA).differentiable (by norm_num)
  refine ⟨actualTest_memLp_two A hA, ?_, ?_⟩
  · exact Eventually.of_forall fun x hx ↦
      actualTest_zero_of_notMem A hA x hx
  · exact BridgeFourier.logarithmic_fourier_integrable
      (actualTest A) (actualTest_integrable A hA) hd
      (actualTest_deriv_integrable A hA)

private theorem actual_archimedean_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)) volume := by
  let f := actualTest A
  have hfint : Integrable f volume := actualTest_integrable A hA
  have hfdiff : Differentiable ℝ f :=
    (actualTest_contDiff A hA).differentiable (by norm_num)
  have hfderiv : Integrable (deriv f) volume :=
    actualTest_deriv_integrable A hA
  have hzero :=
    BridgeFourier.fourier_normSq_integrable f hfint hfdiff hfderiv
  have hlog :=
    BridgeFourier.logarithmic_fourier_integrable f hfint hfdiff hfderiv
  have hc := BridgeFourier.sourceFourier_continuous hfint
  have hm : AEStronglyMeasurable (fun ξ ↦
      archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor :=
    (hzero.const_mul (|archimedeanConstant| + 4)).add
      (hlog.div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  have hb := BridgeMultiplier.multiplier_abs_le_of_estimate
    AdmissionSource.multiplier_estimate ξ
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier f ξ) ≤
      (|archimedeanConstant| + 4 +
        Real.log (1 + 4 * ξ ^ 2) / 2) *
        Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right hb (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

private theorem actual_positive_pole_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (x / 2) * actualTest A x) volume := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (x / 2)) := by fun_prop
  exact (he.mul (actualTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_left

private theorem actual_negative_pole_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (-x / 2) * actualTest A x) volume := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (-x / 2)) := by fun_prop
  exact (he.mul (actualTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_left

private theorem actual_correlation_integrable
    (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ actualTest A x * actualTest A (x - t)) volume := by
  have hc := (actualTest_contDiff A hA).continuous
  have ht : Continuous (fun x : ℝ ↦ x - t) :=
    continuous_id.sub continuous_const
  exact (hc.mul (hc.comp ht)).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_right

private theorem actual_form_admission
    (A : ℝ) (hA : 1 ≤ A) :
    ActualFormAdmission A :=
  ⟨actual_logarithmic_domain A hA,
    actual_archimedean_integrable A hA,
    actual_positive_pole_integrable A hA,
    actual_negative_pole_integrable A hA,
    fun t ↦ actual_correlation_integrable A t hA⟩

private theorem normalization_scaling_comparison
    (A : ℝ) (hA : 1 ≤ A) :
    ((sourceNormalization A *
      sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) =
      (realArithmeticForm A (actualTest A) : ℂ) := by
  have hreal :
      realArithmeticForm A (actualTest A) =
        sourceNormalization A *
          sourceQuadraticValue Realization.explicitSecondDerivative A := by
    rw [actual_eq_sqrt_mul_normalized A hA,
      real_arithmetic_form_const_mul,
      Real.sq_sqrt (source_normalization_pos A hA).le,
      BridgeAdmissibility.actual_form_eq_source_scalar A hA]
  exact congrArg (fun x : ℝ ↦ (x : ℂ)) hreal.symm

/-- Final B3.2 assembly: the complete unchanged zero-side identity, with every
analytic-multiplicity occurrence and ordinary complex square retained. -/
theorem zero_side_identity : ZeroSideIdentityObligation := by
  intro A hA
  refine ⟨actual_form_admission A hA, ?_,
    source_transform_squares_summable A hA,
    normalization_scaling_comparison A hA, ?_⟩
  · intro o
    exact ZeroTransform.actual_integrable A (by linarith) (shiftedValue o)
  · exact arithmetic_zero_equality A hA

end
end FormalResearch.RiemannHypothesis.ZeroSide.Assembly
```
