# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Examples.Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d2013317ce2251b6279d29fdf574de188279169` · SHA-256 `896634a976ec081571b75bae661652423bffd2b3ecded8d2c4cd8e6d6c1ab9eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ExampleHalfPlane.Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ExampleHalfPlane.Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/Examples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ExampleHalfPlane.Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c

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
```
