import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative

/-!
# Upper-bound contract for the actual signed source

The factor two belongs to the symmetric operator dilation. These adapters keep
the original signed Mertens pairing and the original source kernel together.
They supply no witness for the upper-bound proposition. In particular a bound
on the derivative energy alone does not discharge the joint arithmetic estimate.

The unmerged Vaughan operator has its own centering and ledger; it must not be
substituted for `sourceOperatorValue` in these statements.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SignedSourceClosure

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MangoldtMobiusJacobi EstimateMertensAbel EstimateMertensResidual
open EstimateSourceMobiusKernel EstimateWeightedMobiusPairing EstimateSourceMobiusDerivative
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- The requested source convention has exactly the residual's constant `D`. -/
theorem source_upper_bound_iff_residual_tail :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → sourceOperatorValue A ≤ 2 * D) ↔
        MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have hb := h A hA
    rw [sourceOperatorValue_eq_twice_residual A (hR.trans hA)] at hb
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    rw [sourceOperatorValue_eq_twice_residual A (hR.trans hA)]
    linarith [h A hA]

/-- The operator value is the full finite signed Abel interaction, including
the unit divisor and the exact source endpoint. -/
theorem sourceOperatorValue_eq_signed_abel (A : ℝ) (hA : 1 ≤ A) :
    sourceOperatorValue A =
      -2 * (∫ x in Ioc 1 (sourceUpper A),
        mertens x * deriv (sourceMobiusKernel A) x) := by
  rw [sourceOperatorValue_eq_twice_residual A hA, mertensResidual_eq_abel A hA]
  ring

/-- Exact derivative formula inside the signed interaction. No absolute value
is applied to either arithmetic component or the correlation derivative. -/
theorem sourceOperatorValue_eq_signed_derivative_rows (A : ℝ) (hA : 1 ≤ A) :
    sourceOperatorValue A =
      -2 * (∫ x in Ioc 1 (sourceUpper A), mertens x *
        (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
          Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
            (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
                (Real.log (x * (k : ℝ))) -
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log (x * (k : ℝ))) / 2))) := by
  rw [sourceOperatorValue_eq_signed_abel A hA]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  dsimp only
  rw [sourceMobiusKernel_deriv A x (by linarith) (by linarith [hx.1])]

/-- The remaining signed analytic estimate is an exact equivalent, with its
inequality direction frozen. -/
theorem source_upper_bound_iff_signed_abel_tail :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → sourceOperatorValue A ≤ 2 * D) ↔
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -(∫ x in Ioc 1 (sourceUpper A),
          mertens x * deriv (sourceMobiusKernel A) x) ≤ D) := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have hb := h A hA
    rw [sourceOperatorValue_eq_signed_abel A (hR.trans hA)] at hb
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    rw [sourceOperatorValue_eq_signed_abel A (hR.trans hA)]
    linarith [h A hA]

/-- Conditional transport reaches the unchanged source-energy estimate target.
The joint upper-bound premise remains visible in the declaration type. -/
theorem estimate_of_source_upper_bound
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → sourceOperatorValue A ≤ 2 * D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (source_upper_bound_iff_residual_tail.mp h)

end
end FormalResearch.RiemannHypothesis.SignedSourceClosure
