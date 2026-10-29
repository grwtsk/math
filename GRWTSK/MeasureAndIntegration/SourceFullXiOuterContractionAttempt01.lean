import SourceOuterPsiFubini
import SourceFullXiCesaroConsumer

/-!
Exact finite-box contraction of the complete actual Xi source, with the original
PLUS pairing sign, prime-two anchor and closed real moving range. All arithmetic
one-sided witnesses remain explicit. Research direction: grwtsk contributors.
Owner Fubini recovery and native application: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceFullXiOuterContraction

open MeasureTheory
open SourceActualPsiInverseSquare SourceRawPsiPrimitiveAdapter
open SourceActualPrimitiveFiniteConsumer SourceFullXiCesaroConsumer SourceOuterPsiFubini
open SourcePositiveSampling RH16ActualPsiNegativeBlock RH16CesaroKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem literal_full_Xi_pairing_eq_contracted (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      shiftedPsiFullPrimitive t * deriv (deriv (cesaroWeight A)) t) =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ = ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (cesaroWeight A)) t := by
      apply intervalIntegral.integral_congr
      intro t ht
      have hlt : Real.log 2 ≤ t := ((Set.uIcc_of_le hL) ▸ ht).1
      rw [shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t hlt]
    _ = _ := actualFiniteSecondReadout_outer_fubini A hA

theorem actual_signed_pairing_eq_contracted (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  rw [signed_pairing_eq_literalXiKernel A hA]
  exact literal_full_Xi_pairing_eq_contracted A hA

theorem remaining_lower_of_contracted_pairing (J A : ℝ) (hA : 91 ≤ A)
    (hpair : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    -J ≤ SourceFirstAtomSignedWork.remainingAtomWork A := by
  apply RH16CesaroSignedPairing.remainingAtomWork_lower_of_signed_pairing J A hA
  rw [actual_signed_pairing_eq_contracted A (by linarith)]
  exact hpair

theorem estimate_of_contracted_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [actual_signed_pairing_eq_contracted A (by linarith)]
  exact hpair A hA

end FormalResearch.RiemannHypothesis.SourceFullXiOuterContraction
