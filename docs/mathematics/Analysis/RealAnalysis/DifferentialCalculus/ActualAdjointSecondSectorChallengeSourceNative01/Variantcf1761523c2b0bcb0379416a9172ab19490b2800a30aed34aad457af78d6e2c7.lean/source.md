# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualAdjointSecondSectorChallengeSourceNative01.Variantcf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02d609400226a201f8ab6c0639170d0643ea61f2` · SHA-256 `cf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualDoubleMixedStrictWindowChallenge
import RootActualCovariantWorkKernel

/-!
The actual first derivative energy has a positive lower coefficient. Its exact
origin curvature and genuine fourth-jet regularity keep the negative second
sector on the strict lower-time first-column rectangle. Applying the covariant
operator to the ORIGINAL mixed work therefore retains an A^-2 contribution.
No arithmetic primitive sign, complete work bound or RH counterexample follows.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceDerivativeEnergy
open SourceDerivativeCoefficientBound SourceLeadingFullKappaReduction
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The genuine actual derivative energy has coefficient at least four at every positive scale. -/
theorem actualDerivativeEnergy_ge_four {A : ℝ} (hA : 0 < A) :
    4 / A ^ 2 ≤ ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hgap : 4 * normPolynomial ((A ^ 2)⁻¹) ≤
      derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold derivativePolynomial normPolynomial
    nlinarith [sq_nonneg ((A ^ 2)⁻¹)]
  have he : 4 ≤ A ^ 2 *
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    rw [actual_derivative_energy_eq hA]
    exact (le_div_iff₀ (normPolynomial_pos _ hr)).mpr hgap
  exact (div_le_iff₀ (by positivity : 0 < A ^ 2)).mpr (by simpa [mul_comm] using he)

/-- The actual second correlation derivative has its exact negative energy trace. -/
theorem actualCorrelation_second_zero_le_neg_four {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 ≤ -4 / A ^ 2 := by
  rw [sourceCorrelation_second_deriv_eq_integral hA]
  simp only [sub_zero, ← pow_two]
  have he := actualDerivativeEnergy_ge_four hA
  linarith

/-- Genuine global C4 and the odd third trace control the increment of actual curvature. -/
theorem actualCorrelation_second_increment_abs {A y : ℝ} (hA : 91 ≤ A) (hy : 0 ≤ y) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) y -
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0| ≤
        67 / A ^ 4 * y ^ 2 := by
  have hd : Differentiable ℝ (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      (actual_correlation_contDiff_four A (by linarith)).differentiable_iteratedDeriv 2
        (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Icc 0 y) (f := deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
    (fun x _ => hd x)
    (fun x hx => by
      have hb := actualCorrelation_third_abs_le hA x
      rw [abs_of_nonneg hx.1] at hb
      exact (by simpa only [Real.norm_eq_abs] using hb).trans
        (mul_le_mul_of_nonneg_left hx.2 (by positivity : 0 ≤ (67 : ℝ) / A ^ 4)))
    (convex_Icc 0 y) ⟨le_rfl, hy⟩ ⟨hy, le_rfl⟩
  simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hy, pow_two, mul_assoc] using he

/-- The complete strict rectangle retains a negative second jet of size at least three. -/
theorem actualMixed_rectangle_second_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) ≤
      -3 / A ^ 2 := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hi := actualCorrelation_second_increment_abs (by linarith : 91 ≤ A) hy.1
  have hz := actualCorrelation_second_zero_le_neg_four (by linarith : 0 < A)
  have he : 67 / A ^ 4 * (t + Real.log u) ^ 2 ≤ (67 / 100 : ℝ) / A ^ 2 := by
    calc
      _ ≤ 67 / A ^ 4 * (A ^ 2 / 100) := by gcongr
      _ = _ := by field_simp; ring
  have hp : 0 ≤ (1 : ℝ) / A ^ 2 := by positivity
  nlinarith [(abs_le.mp hi).2]

/-- The actual post-adjoint ORIGINAL work kernel retains the second-order sector. -/
theorem actualAdjoint_original_rectangle_kernel_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    1 / (2 * A ^ 2) ≤
      iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) -
        iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) / 4 := by
  have h2 : iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) ≤
      -3 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualMixed_rectangle_second_upper hA ht ht1 hu hu2
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven
    A (t + Real.log u) (by linarith : 91 ≤ A)
  have hsmall : (67 : ℝ) / A ^ 4 ≤ 1 / (4 * A ^ 2) := by
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 4)
      (by positivity : 0 < 4 * A ^ 2)).mpr
    nlinarith [mul_nonneg (by nlinarith : 0 ≤ A ^ 2 - 268) (sq_nonneg A)]
  have hl4 := (abs_le.mp (h4.trans hsmall)).1
  have hl2 : 3 / (4 * A ^ 2) ≤
      -iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) / 4 := by
    convert div_le_div_of_nonneg_right (neg_le_neg h2) (by norm_num : (0 : ℝ) ≤ 4)
      using 1 <;> ring
  calc
    (1 : ℝ) / (2 * A ^ 2) = 3 / (4 * A ^ 2) + -(1 / (4 * A ^ 2)) := by ring
    _ ≤ _ := add_le_add hl2 hl4
    _ = _ := by ring

/-- Its genuine weighted covariant derivative has an A^-2 lower bound in strict support. -/
theorem actualAdjoint_original_rectangle_density_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < (sourceKernelCutoff A : ℝ) ∧
      1 / (4 * A ^ 2) ≤
        covariantMixedDerivative (actualLogMixedDensity A) t (Real.log u) := by
  refine ⟨(actualDoubleMixed_rectangle_strict_support hA ht ht1 hu hu2).1, ?_⟩
  rw [actual_covariant_ordinary_work_kernel A (by linarith : 0 < A)]
  have h := mul_le_mul (actualMixed_rectangle_exp_prefactor_lower hA ht hu hu2)
    (actualAdjoint_original_rectangle_kernel_lower hA ht ht1 hu hu2)
    (by positivity : (0 : ℝ) ≤ 1 / (2 * A ^ 2))
    (by positivity : 0 ≤ Real.exp (t / 2) * Real.exp (-Real.log u / 2))
  convert h using 1 <;> ring

end
end RH16IndependentChallengeNext
```
