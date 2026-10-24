import SourceNativeMertensTransfer

/-!
# Exact constant-block compensation of the native initial contour

The ordinary complex square has angular mass one by the actual inverse transform
at zero. This cancels a constant multiplier block despite the exponentially growing
weighted L² state norm. No bound on the remaining signed block is asserted.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/

namespace FormalResearch.RiemannHypothesis.SourceNativeConstantCompensation

open MeasureTheory Set
open SourcePairing SourceNativeMellin SourceNativeDirichlet SourceNativeReadout
open SourceNativeAngularTail SourceNativeMertensTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation EstimateMertensResidual

noncomputable section

/-- Full combined constant-block compensation, preserving the actual source transform. -/
def compensatedAngularIntegrand (A t : ℝ) : ℂ :=
  (combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) - (rightLineMajorant 2 : ℂ)) *
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))

/-- The whole signed compensated readout on the original initial c = 2 line. -/
def compensatedAngularContour (A : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * (∫ t : ℝ, compensatedAngularIntegrand A t)

/-- Truncated native transform mass; it is not asserted equal to one at finite height. -/
def nativeHeadMass (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) *
    (∫ t : ℝ in Icc (-T) T, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))

/-- The corresponding complete signed compensated finite head. -/
def compensatedAngularHead (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) *
    (∫ t : ℝ in Icc (-T) T, compensatedAngularIntegrand A t)

/-- The ordinary complex square has exact normalized angular mass one. -/
theorem nativeMellin_angular_mass (A : ℝ) (hA : 1 ≤ A) :
    (1 / (2 * Real.pi) : ℝ) *
      (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) = 1 := by
  have h := weightedCorrelation_eq_native_inverse A hA 0
  simpa only [weightedCorrelation, actual_correlation_at_zero A hA, mul_zero,
    Real.exp_zero, zero_div, mul_one, Complex.ofReal_one, Complex.ofReal_zero, Complex.exp_zero]
    using h.symm

private theorem compensated_integrand_eq (A : ℝ) :
    compensatedAngularIntegrand A = fun t : ℝ ↦ angularIntegrand A t -
      (rightLineMajorant 2 : ℂ) *
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) := by
  funext t
  unfold compensatedAngularIntegrand angularIntegrand
  ring

/-- The exact full compensated source integrand is genuinely integrable. -/
theorem compensatedAngularIntegrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (compensatedAngularIntegrand A) := by
  rw [compensated_integrand_eq]
  exact (angularIntegrand_integrable A hA).sub
    ((nativeMellin_two_integrable A hA).const_mul (rightLineMajorant 2 : ℂ))

/-- Constant compensation has the exact arithmetic return D_2 plus its signed whole line. -/
theorem angularContour_eq_constant_add_compensated (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (rightLineMajorant 2 : ℂ) + compensatedAngularContour A := by
  have hH := nativeMellin_two_integrable A hA
  have hD := angularIntegrand_integrable A hA
  have hI : (∫ t : ℝ, compensatedAngularIntegrand A t) =
      (∫ t : ℝ, angularIntegrand A t) - (rightLineMajorant 2 : ℂ) *
        (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
    rw [compensated_integrand_eq, integral_sub hD (hH.const_mul _), integral_const_mul]
  unfold compensatedAngularContour angularContour
  rw [hI]
  have hm := nativeMellin_angular_mass A hA
  calc
    _ = (rightLineMajorant 2 : ℂ) *
        ((1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ,
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) +
        ((1 / (2 * Real.pi) : ℝ) *
          ((∫ t : ℝ, angularIntegrand A t) - (rightLineMajorant 2 : ℂ) *
            (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))))) := by
      ring
    _ = _ := by rw [hm]; ring

/-- Finite-height compensation retains the exact truncated native mass factor. -/
theorem angularHead_eq_mass_add_compensated (A T : ℝ) (hA : 1 ≤ A) :
    angularHead A T = (rightLineMajorant 2 : ℂ) * nativeHeadMass A T +
      compensatedAngularHead A T := by
  have hH : IntegrableOn
      (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))
      (Icc (-T) T) := (native_two_line_continuous A hA).integrableOn_Icc
  have hD : IntegrableOn (angularIntegrand A) (Icc (-T) T) :=
    (angularIntegrand_continuous A hA).integrableOn_Icc
  have hI : (∫ t : ℝ in Icc (-T) T, compensatedAngularIntegrand A t) =
      (∫ t : ℝ in Icc (-T) T, angularIntegrand A t) - (rightLineMajorant 2 : ℂ) *
        (∫ t : ℝ in Icc (-T) T,
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
    rw [compensated_integrand_eq, integral_sub hD (hH.const_mul _), integral_const_mul]
  unfold angularHead nativeHeadMass compensatedAngularHead
  rw [hI]
  ring

/-- Exact residual source identity for the complete signed compensated readout. -/
theorem mertensResidual_eq_constant_add_compensated (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rightLineMajorant 2 + (compensatedAngularContour A).re := by
  have h := angularContour_eq_constant_add_compensated A hA
  rw [← mertensResidual_eq_angularContour A hA] at h
  exact_mod_cast congr_arg Complex.re h

/-- The only remaining whole-line witness is a common signed upper bound. -/
def CompensatedNativeTailUpperBound : Prop :=
  ∃ K : ℝ, ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K

/-- Compensated control preserves the exact radius and adds only the constant D_2. -/
theorem mertensResidual_upper_of_compensated {K R : ℝ} (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K)
    (A : ℝ) (hA : R ≤ A) : mertensResidual A ≤ rightLineMajorant 2 + K := by
  rw [mertensResidual_eq_constant_add_compensated A (le_trans hR hA)]
  exact add_le_add le_rfl (hcomp A hA)

/-- The source-faithful compensated witness instantiates the maintained residual target. -/
theorem mertens_residual_tail_of_compensated_native (h : CompensatedNativeTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨K, R, hR, hcomp⟩ := h
  refine ⟨max 0 (rightLineMajorant 2 + K), le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact le_trans (mertensResidual_upper_of_compensated hR hcomp A hA) (le_max_right _ _)

/-- The existing all-real estimate consumer accepts the exact signed compensated witness. -/
theorem estimate_of_compensated_native (h : CompensatedNativeTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (mertens_residual_tail_of_compensated_native h)

end
end FormalResearch.RiemannHypothesis.SourceNativeConstantCompensation
