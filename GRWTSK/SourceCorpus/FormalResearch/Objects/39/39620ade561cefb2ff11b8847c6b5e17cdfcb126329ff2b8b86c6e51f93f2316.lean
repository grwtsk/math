import FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation
import FormalResearch.RiemannHypothesis.PhaseKernelBoundary
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate

/-!
# Exact arithmetic discrepancy and the pole operator

The linear functionals retain the actual strict prime-and-square inventory.
The operator identity is an equivalent representation of its value, not an
arithmetic bound. The independently defined Green potential below is not
identified with a positive pairing against the base correlation.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PoleArithmeticFunctional

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimeSquareEstimate Realization PrimePowerPhaseDefect
open PoleDifferentialCorrelation PhaseKernelBoundary

noncomputable section

/-- The exact finite strict prime-and-square evaluation on continuous test functions. -/
def lowerPowerFunctional (A : ℝ) : C(ℝ, ℝ) →ₗ[ℝ] ℝ where
  toFun f := ∑ n ∈ lowerPowerInventory A, primeWeight n * f (Real.log n)
  map_add' f g := by simp [mul_add, Finset.sum_add_distrib]
  map_smul' c f := by simp [Finset.mul_sum, mul_left_comm]

/-- The exact positive-half-line continuous exponential reference. -/
def continuousReference (A : ℝ) : C(ℝ, ℝ) →ₗ[ℝ] ℝ where
  toFun f := ∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) * f t
  map_add' f g := by
    simp only [ContinuousMap.add_apply, mul_add]
    exact intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (t / 2) * f t)).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (t / 2) * g t)).intervalIntegrable _ _)
  map_smul' c f := by
    simp only [ContinuousMap.smul_apply, smul_eq_mul, RingHom.id_apply]
    simp_rw [mul_left_comm (Real.exp (_ / 2)) c]
    exact intervalIntegral.integral_const_mul _ _

/-- The actual finite arithmetic functional minus its continuous reference. -/
def lowerPowerDiscrepancy (A : ℝ) : C(ℝ, ℝ) →ₗ[ℝ] ℝ :=
  lowerPowerFunctional A - continuousReference A

/-- The existing normalized source correlation bundled as a continuous test. -/
def sourceCorrelationMap (A : ℝ) (hA : 1 ≤ A) : C(ℝ, ℝ) :=
  ⟨sourceCorrelation explicitSecondDerivative A,
    CorrelationRegularity.sourceCorrelation_contDiff A (by linarith) |>.continuous⟩

/-- The actual pole operator on the base correlation, with continuity proved from the source. -/
def sourcePoleOperatorMap (A : ℝ) (hA : 1 ≤ A) : C(ℝ, ℝ) :=
  sourceNormalization A • sourceCorrelationMap A hA

/-- The bundled operator is the exact fourth-order differential expression. -/
theorem source_pole_operator_map_apply (A : ℝ) (hA : 1 ≤ A) (t : ℝ) :
    sourcePoleOperatorMap A hA t =
      poleSquaredDifferentialOperator (baseCorrelation A) t := by
  change sourceNormalization A * sourceCorrelation explicitSecondDerivative A t = _
  rw [source_correlation_eq_pole_operator_sq A t hA]
  field_simp [ne_of_gt (source_normalization_pos A hA)]

/-- The finite functional evaluates the unchanged strict source sum. -/
theorem lower_power_functional_source (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerFunctional A (sourceCorrelationMap A hA) = lowerPowerContribution A := rfl

/-- Discrete-minus-continuum is exactly the evaluation of the linear discrepancy. -/
theorem lower_power_discrepancy_source (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerDiscrepancy A (sourceCorrelationMap A hA) =
      lowerPowerContribution A -
        ∫ t in (0 : ℝ)..2 * A,
          Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t := rfl

/-- Inserting the proved differential identity preserves the exact normalization. -/
theorem lower_power_discrepancy_operator_identity (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerDiscrepancy A (sourceCorrelationMap A hA) =
      lowerPowerDiscrepancy A (sourcePoleOperatorMap A hA) / sourceNormalization A := by
  rw [sourcePoleOperatorMap, map_smul, smul_eq_mul]
  field_simp [ne_of_gt (source_normalization_pos A hA)]

/-- The operator discrepancy tail is an equivalent reformulation of prime-square compensation. -/
theorem operator_discrepancy_tail_iff_prime_square_compensation :
    (∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, ∃ hR : 1 ≤ R,
      ∀ A : ℝ, ∀ hRA : R ≤ A,
        lowerPowerDiscrepancy A (sourcePoleOperatorMap A (hR.trans hRA)) /
          sourceNormalization A ≤ B) ↔ PrimeSquareCompensationTail := by
  constructor
  · rintro ⟨B, hB, R, hR, htail⟩
    refine ⟨2 * (B + 2), by positivity, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hd := htail A hRA
    rw [← lower_power_discrepancy_operator_identity A hA,
      lower_power_discrepancy_source A hA] at hd
    have hc := (abs_le.mp (source_continuum_abs_le_two A hA)).2
    rw [lowerPowerContribution_eq_weight_sub_half_phaseMass A hA] at hd
    linarith
  · rintro ⟨B, hB, R, hR, htail⟩
    refine ⟨B / 2 + 2, by positivity, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    rw [← lower_power_discrepancy_operator_identity A hA,
      lower_power_discrepancy_source A hA,
      lowerPowerContribution_eq_weight_sub_half_phaseMass A hA]
    have hc := (abs_le.mp (source_continuum_abs_le_two A hA)).1
    have hl := htail A hRA
    linarith

/-- The decaying fundamental-kernel candidate for `D² - 1/4`. -/
def poleGreenKernel (t : ℝ) : ℝ := -Real.exp (-|t| / 2)

/-- The decaying fundamental-kernel candidate for `(D² - 1/4)²`. -/
def poleSquaredGreenKernel (t : ℝ) : ℝ := (|t| + 2) * Real.exp (-|t| / 2)

/-- The squared Green kernel is strictly positive; this does not sign a signed source. -/
theorem pole_squared_green_kernel_pos (t : ℝ) : 0 < poleSquaredGreenKernel t := by
  unfold poleSquaredGreenKernel
  positivity

/-- An independently defined convolution potential of the exact prime-and-square discrepancy. -/
def primeSquareGreenResidual (A t : ℝ) : ℝ :=
  (∑ n ∈ lowerPowerInventory A,
    primeWeight n * poleSquaredGreenKernel (t - Real.log n)) -
  ∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)

/-- A negative atomic source has a negative Green potential despite positivity of the kernel. -/
theorem negative_atomic_green_potential (t : ℝ) : -poleSquaredGreenKernel t < 0 :=
  neg_neg_of_pos (pole_squared_green_kernel_pos t)

end
end FormalResearch.RiemannHypothesis.PoleArithmeticFunctional
