import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateSourceMobiusKernel EstimateMertensResidual
open EstimateWeightedMobiusPairing EstimateAbsoluteMertensEnvelope

-- This fixture fixes the actual residual, closed-right Mertens convention,
-- full positive Abel window, sign, and real scale quantifier together.
example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ x in Ioc 1 (Real.exp (2 * A)),
        mertens x * deriv (sourceMobiusKernel A) x) :=
  mertensResidual_eq_abel A hA

-- The remaining signed integral hypothesis reaches the existing #16 target
-- through its accepted adapter. No estimate is supplied by this fixture.
example
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -(∫ x in Ioc 1 (sourceUpper A),
          mertens x * deriv (sourceMobiusKernel A) x) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (mertens_residual_tail_of_abel_integral_tail h)

-- The obstruction concerns an absolute envelope, not the signed residual.
example (R : ℝ) (hR : 1 ≤ R) (delta : ℝ → ℝ)
    (hdelta : ∀ x : ℝ, R < x → x ^ (-(1 : ℝ) / 4) ≤ delta x) :
    ¬ IntegrableOn (fun x ↦ delta x / Real.sqrt x) (Ioi R) :=
  not_integrableOn_div_sqrt_of_quarter_power_le R hR delta hdelta

#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_hasDerivAt
#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_deriv
#print axioms EstimateSourceMobiusDerivative.sourceMobiusKernel_deriv
#print axioms EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_deriv_upper_zero
#print axioms EstimateSourceMobiusDerivative.sourceMobiusKernel_deriv_upper_zero
#print axioms integer_antidiagonal_eq_admissible_of_two_le
#print axioms sourceMobiusKernel_integerAgreement_one
#print axioms sourceMobiusKernel_integerAgreement_pos
#print axioms first_factor_mem_full_inventory
#print axioms mertensResidual_eq_full_mobius_sum
#print axioms sourceMobiusKernel_differentiableAt_full
#print axioms sourceMobiusKernel_deriv_integrable_full
#print axioms mertens_mul_deriv_integrable_full
#print axioms mertensResidual_eq_abel
#print axioms mertensResidual_eq_signed_bilinear
#print axioms mertens_residual_tail_of_abel_integral_tail
#print axioms quarter_power_div_sqrt
#print axioms three_quarter_power_integral
#print axioms not_integrableOn_div_sqrt_of_quarter_power_le
