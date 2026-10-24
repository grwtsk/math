-- Planning draft for the post-naming checkpoint; not imported or executed.
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# Exact zero-side target declarations

These propositions are targets, not axioms or proofs. They transcribe RH-0010
(13), (15), (16), preserving all zero occurrences and ordinary complex squares.
The full smoothing and smooth explicit-formula interfaces remain separately
listed source obligations until their analytic domains are formally admitted.
-/
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSideTargets

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroObject
noncomputable section

/-- The actual unnormalized, zero-extended source polynomial test. -/
def actualTest (A : ℝ) : ℝ → ℝ := dilationTest Realization.explicitSecondDerivative A

/-- The source bilateral transform. Integral identities require genuine integrability below. -/
def bilateralTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))

/-- RH-0010's degree-four polynomial, with every coefficient and sign retained. -/
def transformPolynomial (t : ℂ) : ℂ := t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t + 105

/-- The exact real scale power, not an integer division in an exponent. -/
def dividedTransform (A : ℝ) (z : ℂ) : ℂ :=
  384 * (z ^ 2 - 1 / 4) / ((A ^ (17 / 2 : ℝ) : ℝ) * z ^ 9) *
    (Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z) -
      Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z))

/-- Equation (15) has a nonzero argument guard; it cannot assert a false totalized value at zero. -/
def BilateralTransformObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ z : ℂ,
    Integrable (fun x : ℝ ↦ (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) ∧
    (z ≠ 0 → bilateralTransform A z = dividedTransform A z)

/-- Equation (13) sums over occurrence slots, retaining every analytic multiplicity. -/
def ZeroSummabilityObligation : Prop :=
  Summable (fun o : ZeroOccurrence ↦ (1 + ‖shiftedValue o‖) ^ (-6 : ℝ))

/-- Genuine domain for the unnormalized arithmetic form. These are obligations,
not conclusions inferred from totalized integral values. -/
def ActualFormAdmission (A : ℝ) : Prop :=
  BridgeAdmissibility.LogarithmicDomain A (actualTest A) ∧
  Integrable (fun ξ ↦ archimedeanMultiplier ξ *
    Complex.normSq (sourceFourier (actualTest A) ξ)) ∧
  Integrable (fun x ↦ Real.exp (x / 2) * actualTest A x) ∧
  Integrable (fun x ↦ Real.exp (-x / 2) * actualTest A x) ∧
  (∀ t : ℝ, Integrable (fun x ↦ actualTest A x * actualTest A (x - t)))

/-- Complete equation (16), with genuine transform integrals and a summable
complex-square family before either totalized integral or tsum is used. -/
def ZeroSideIdentityObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A → ActualFormAdmission A ∧
    (∀ o : ZeroOccurrence,
      Integrable (fun x : ℝ ↦ (actualTest A x : ℂ) *
        Complex.exp (shiftedValue o * (x : ℂ)))) ∧
    Summable (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2) ∧
    ((sourceNormalization A * sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) =
      (BridgeAdmissibility.realArithmeticForm A (actualTest A) : ℂ) ∧
    (BridgeAdmissibility.realArithmeticForm A (actualTest A) : ℂ) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2

end
end ZeroSideTargets
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
