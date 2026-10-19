import SourceActualClosedXiSqrtConsumers
import SourceLaterRadiusPropagation

/-!
The principal one-sided finite-arithmetic signed moment, with the complete
closed square-root readout. Its upper J witness remains explicit and signed.
The actual integration-by-parts identity introduces no additional budget.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualClosedXiSignedMoment
open MeasureTheory SourceActualClosedXiSqrtConsumers SourceActualXiPrimitiveTransport
open SourceFullXiCellBudgetObstruction SourceLaterRadiusPropagation SourcePositiveSampling
open RH16ActualPsiNegativeBlock RH16ResumeBudget SourcePairing SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- The literal full closed-readout moment against the actual signed derivative kernel. -/
def actualClosedXiSignedMoment (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A,
    actualClosedXiSqrtReadout (Real.exp t) * deriv (fullXiLogWeight A) t

theorem actual_contracted_pairing_eq_neg_closed_moment (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
        -actualClosedXiSignedMoment A := by
  rw [actual_contracted_pairing_eq_primitive_IBP A hA]
  unfold actualClosedXiSignedMoment
  congr 1
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [Set.uIcc_of_le hL] at ht
  have hY : (2 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht.1
  rw [actualClosedXiSqrtReadout_eq_primitive (Real.exp t) hY, Real.log_exp]

theorem contracted_lower_of_closed_moment (J A : ℝ) (hA : 1 ≤ A)
    (hmoment : actualClosedXiSignedMoment A ≤ J) :
    -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  rw [actual_contracted_pairing_eq_neg_closed_moment A hA]
  linarith only [hmoment]

theorem residual_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R) (hA : R ≤ A)
    (hmoment : actualClosedXiSignedMoment A ≤ J) :
    mertensResidual A ≤ J - 3 / 8 + criticalBaselineCorrection R :=
  residual_upper_of_contracted_Xi_at_radius J R A hR hA
    (contracted_lower_of_closed_moment J A (by linarith) hmoment)

theorem all_real_lower_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi_at_radius J R hR
  intro A hA
  exact contracted_lower_of_closed_moment J A (by linarith) (hmoment A hA)

theorem estimate_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_contracted_Xi_at_radius J R hR
  intro A hA
  exact contracted_lower_of_closed_moment J A (by linarith) (hmoment A hA)

theorem leading_tail_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply leading_tail_of_contracted_Xi_at_radius J R hR
  intro A hA
  exact contracted_lower_of_closed_moment J A (by linarith) (hmoment A hA)

end FormalResearch.RiemannHypothesis.SourceActualClosedXiSignedMoment
