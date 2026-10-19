import NumberBridge
import AnalyticNumber.Bridge.Number

/-!
# End-to-end examples

These examples demonstrate the intended factorization:

  Boolean shadow
      → Number arithmetic payload
      → AnalyticNumber shadow

The examples are certificate-only smoke tests. They show the architecture and
the firewall statements, not analytic number-theory proofs.
-/

namespace AnalyticNumber
namespace Examples

def exampleHalfPlane : HalfPlane where
  label := "Re(s) > 1"
  condition := True

def exampleZeta : ZetaSymbol where
  label := "ζ"

def exampleArithmeticFunction : _root_.Number.ArithmeticFunction where
  value := fun n => if n = 0 then 0 else 1
  ignoresZero := by simp

def exampleMobiusSeries : DirichletSeries where
  coeff := exampleArithmeticFunction
  variableLabel := "s"

def examplePrimeWindow : _root_.Number.PrimeWindow where
  primes := [2, 3, 5]
  primeSound := True
  primeSoundProof := trivial

def exampleFiniteMobiusWindow : _root_.Number.FiniteMobiusWindow where
  primeWindow := examplePrimeWindow
  squareFreeWeight := -1
  valuationSupport := [0, 1, 2]
  hasPrimePowerDependence := false
  finiteReductionSound := True
  finiteReductionProof := trivial

def exampleAbsoluteConvergence :
    AbsoluteConvergenceCertificate exampleMobiusSeries exampleHalfPlane where
  absolutelyConvergent := True
  absolutelyConvergentProof := trivial
  locallyUniform := True
  locallyUniformProof := trivial

def exampleZetaMobiusAuthority : ZetaMobiusIdentityAuthority where
  domain := exampleHalfPlane
  zeta := exampleZeta
  mobiusSeries := exampleMobiusSeries
  reGreaterThanOne := True
  reGreaterThanOneProof := trivial
  absoluteConvergence := True
  absoluteConvergenceProof := trivial
  cauchyProductSound := True
  cauchyProductProof := trivial
  zetaMobiusIdentitySound := True
  zetaMobiusIdentityProof := trivial

def exampleBooleanShadow :
    _root_.Number.Bridge.Boolean.BooleanShadowPayload where
  mobiusWeight := exampleFiniteMobiusWindow.squareFreeWeight
  valuationSupport := exampleFiniteMobiusWindow.valuationSupport
  hasPrimePowerDependence := exampleFiniteMobiusWindow.hasPrimePowerDependence
  determinantCoeffs := [1, -1]
  traceData := [0, 1]
  finiteSound := True
  finiteSoundProof := trivial

def exampleBooleanToNumber :
    _root_.Number.Bridge.Boolean.BooleanToNumberBridge :=
  _root_.Number.Bridge.Boolean.BooleanToNumberBridge.canonical
    exampleBooleanShadow

def exampleArithmeticPayload : _root_.Number.ArithmeticPayload :=
  exampleBooleanToNumber.numberPayload

def exampleAnalyticCertificate : AnalyticCertificate where
  kind := Authority.BoundaryKind.absoluteConvergence
  label := "example absolute convergence"
  publicHash := 100
  sound := True
  soundProof := trivial

def examplePrecision : _root_.Bridge.Precision where
  level := 4
  errorNumerator := 1
  errorExponent := 8
  positiveLevel := by decide

def exampleNumberToAnalyticError : _root_.Bridge.ErrorBound where
  numerator := 1
  exponent := 8
  sound := True
  soundProof := trivial

def exampleAnalyticToNumberError : _root_.Bridge.ErrorBound where
  numerator := 1
  exponent := 8
  sound := True
  soundProof := trivial

def exampleAnalyticShadow :
    AnalyticNumber.Bridge.Number.AnalyticNumberShadowPayload where
  analyticSourceHash := 200
  projectedPayload := exampleArithmeticPayload
  authority := exampleAnalyticCertificate
  projectionSound := True
  projectionSoundProof := trivial

def exampleNumberToAnalyticBridge :
    AnalyticNumber.Bridge.Number.NumberToAnalyticBridge where
  numberPayload := exampleArithmeticPayload
  analyticShadow := exampleAnalyticShadow
  precision := examplePrecision
  numberToAnalyticError := exampleNumberToAnalyticError
  analyticToNumberError := exampleAnalyticToNumberError
  numberToAnalyticSound := True
  numberToAnalyticProof := trivial
  analyticToNumberSound := True
  analyticToNumberProof := trivial
  numberRoundTripSound := True
  numberRoundTripProof := trivial
  analyticRoundTripSound := True
  analyticRoundTripProof := trivial
  bridgeSound := True
  bridgeSoundProof := trivial

theorem example_boolean_to_number_boundary :
    exampleBooleanToNumber.interpretationSound ∧
      exampleBooleanToNumber.finiteDataPreserved ∧
      exampleBooleanToNumber.numberPayload.finiteSound ∧
      ¬ _root_.Number.Bridge.Boolean.BooleanShadowOwnsAnalyticNumberAuthority
          exampleBooleanToNumber.finiteShadow ∧
      ¬ _root_.Number.ArithmeticPayloadOwnsAnalyticAuthority
          exampleBooleanToNumber.numberPayload :=
  _root_.Number.Bridge.Boolean.boolean_to_number_boundary_summary
    exampleBooleanToNumber

theorem example_number_to_analytic_boundary :
    exampleNumberToAnalyticBridge.numberPayload.finiteSound ∧
      exampleNumberToAnalyticBridge.analyticShadow.authority.sound ∧
      exampleNumberToAnalyticBridge.numberToAnalyticSound ∧
      exampleNumberToAnalyticBridge.analyticToNumberSound ∧
      exampleNumberToAnalyticBridge.numberRoundTripSound ∧
      exampleNumberToAnalyticBridge.analyticRoundTripSound ∧
      ¬ AnalyticNumber.Bridge.Number.ArithmeticPayloadOwnsFullAnalyticNumberObject
          exampleNumberToAnalyticBridge.numberPayload ∧
      ¬ AnalyticNumber.Bridge.Number.AnalyticNumberShadowIsFullAnalyticNumberObject
          exampleNumberToAnalyticBridge.analyticShadow :=
  AnalyticNumber.Bridge.Number.number_analytic_bridge_boundary_summary
    exampleNumberToAnalyticBridge

theorem example_zeta_mobius_identity :
    exampleZetaMobiusAuthority.zetaMobiusIdentitySound :=
  zeta_mobius_identity_authorized exampleZetaMobiusAuthority

theorem example_finite_mobius_not_analytic_identity :
    ¬ _root_.Number.FiniteMobiusWindowProvesAnalyticIdentity
        exampleFiniteMobiusWindow :=
  _root_.Number.finite_mobius_window_not_analytic_identity
    exampleFiniteMobiusWindow

theorem example_arithmetic_payload_not_infinite_product :
    ¬ _root_.Number.ArithmeticPayloadOwnsInfiniteEulerProduct
        exampleArithmeticPayload :=
  _root_.Number.arithmetic_payload_not_infinite_euler_product
    exampleArithmeticPayload

end Examples
end AnalyticNumber
