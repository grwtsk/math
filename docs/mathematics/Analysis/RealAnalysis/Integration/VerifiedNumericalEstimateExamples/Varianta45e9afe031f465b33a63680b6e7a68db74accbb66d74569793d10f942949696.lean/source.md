# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.VerifiedNumericalEstimateExamples.Varianta45e9afe031f465b33a63680b6e7a68db74accbb66d74569793d10f942949696

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d0674ef52b1848fcf3fe8186df43fe26d3469ce` · SHA-256 `7dfc58c19b6a4df6dba09eec1b36a420ccf74931e25aeccc127b89104d74606d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ExampleEndpointZero.Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ExampleEndpointZero.Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882","mathematical_subject":"Analysis.Integration","original_sha256":"299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/VerifiedNumericalEstimateExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.VerifiedNumericalEstimate

/-!
# Verified numerical estimate examples

Certificate-only example of the finite-to-analytic verified numerical
estimate path:

  finite numerical payload
      → formal estimate symbol and schema
      → explicit analytic authority records
      → analytic certificates

The examples are architectural smoke tests. They contain no numerical
analysis proofs.
This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ExampleEndpointZero.Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882

namespace AnalyticNumber
namespace VerifiedNumericalEstimateExamples

def exampleEndpointZero :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 0
  denominator := 1
  denominatorPositive := by decide

def exampleEndpointOne :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 1
  denominator := 1
  denominatorPositive := by decide

def exampleInterval :
    _root_.Number.NumericalEstimate.RationalInterval where
  lower := exampleEndpointZero
  upper := exampleEndpointOne
  enclosureHash := 10
  finiteSound := True
  finiteSoundProof := trivial

def exampleDomain :
    _root_.Number.NumericalEstimate.FiniteDomain where
  label := "unit interval"
  domainHash := 11
  dimension := 1
  finiteSound := True
  finiteSoundProof := trivial

def examplePrecision :
    _root_.Number.NumericalEstimate.PrecisionSpec where
  workingPrecision := 64
  outputPrecision := 32
  positiveWorkingPrecision := by decide
  positiveOutputPrecision := by decide
  roundingModeHash := 12
  finiteSound := True
  finiteSoundProof := trivial

def exampleAlgorithm :
    _root_.Number.NumericalEstimate.AlgorithmSpec where
  algorithmLabel := "interval Newton"
  algorithmVersionHash := 13
  implementationHash := 14
  deterministic := true
  finiteSound := True
  finiteSoundProof := trivial

def exampleErrorModel :
    _root_.Number.NumericalEstimate.ErrorModel where
  modelLabel := "absolute and relative error"
  absoluteErrorNumerator := 1
  absoluteErrorExponent := 30
  relativeErrorNumerator := 1
  relativeErrorExponent := 30
  roundingErrorHash := 15
  truncationErrorHash := 16
  finiteSound := True
  finiteSoundProof := trivial

def exampleIntervalArithmeticPayload :
    _root_.Number.NumericalEstimate.IntervalArithmeticPayload where
  expressionHash := 20
  inputIntervals := [exampleInterval]
  outputInterval := exampleInterval
  operationTraceHash := 21
  finiteSound := True
  finiteSoundProof := trivial

def exampleTailBoundPayload :
    _root_.Number.NumericalEstimate.TailBoundPayload where
  seriesOrIntegralLabel := "series tail"
  cutoff := 100
  tailBound := exampleInterval
  majorantHash := 22
  monotonicityCheckHash := 23
  finiteSound := True
  finiteSoundProof := trivial

def exampleContourIntegralPayload :
    _root_.Number.NumericalEstimate.ContourIntegralPayload where
  contourLabel := "rectangle contour"
  contourHash := 24
  integrandHash := 25
  discretizationNodes := 128
  integralEnclosure := exampleInterval
  residueDataHash := 26
  finiteSound := True
  finiteSoundProof := trivial

def exampleArgumentPrinciplePayload :
    _root_.Number.NumericalEstimate.ArgumentPrincipleCountPayload where
  contourLabel := "rectangle contour"
  contourHash := 24
  meromorphicFunctionHash := 27
  zeroCount := 3
  poleCount := 0
  windingNumberHash := 28
  contourAvoidsZerosAndPoles := True
  contourAvoidsZerosAndPolesProof := trivial
  finiteSound := True
  finiteSoundProof := trivial

def exampleValidatedIntegrationPayload :
    _root_.Number.NumericalEstimate.ValidatedIntegrationPayload where
  problemKind := _root_.Number.NumericalEstimate.DifferentialProblemKind.ode
  equationHash := 29
  initialDataHash := 30
  boundaryDataHash := 31
  timeDomainHash := 32
  spatialDomainHash := 33
  stepCount := 1000
  solutionTubeHash := 34
  residualBound := exampleInterval
  finiteSound := True
  finiteSoundProof := trivial

def exampleSpectralEnclosurePayload :
    _root_.Number.NumericalEstimate.SpectralEnclosurePayload where
  operatorHash := 35
  discretizationHash := 36
  eigenvalueIndex := 1
  eigenvalueEnclosure := exampleInterval
  residualNormBound := exampleInterval
  separationBound := exampleInterval
  finiteSound := True
  finiteSoundProof := trivial

def exampleOperatorNormPayload :
    _root_.Number.NumericalEstimate.OperatorNormBoundPayload where
  operatorHash := 35
  domainSpaceHash := 37
  codomainSpaceHash := 38
  normBound := exampleInterval
  finiteApproximationHash := 39
  tailBoundHash := 40
  finiteSound := True
  finiteSoundProof := trivial

def exampleRigorousQuadraturePayload :
    _root_.Number.NumericalEstimate.RigorousQuadraturePayload where
  integrandHash := 41
  integrationDomainHash := 42
  quadratureRuleLabel := "Gauss–Legendre"
  quadratureRuleHash := 43
  nodeCount := 64
  integralEnclosure := exampleInterval
  remainderBoundHash := 44
  finiteSound := True
  finiteSoundProof := trivial

def exampleFinitePayload :
    _root_.Number.NumericalEstimate.FiniteNumericalEstimatePayload where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.intervalArithmetic
  domain := exampleDomain
  precision := examplePrecision
  algorithm := exampleAlgorithm
  errorModel := exampleErrorModel
  intervalArithmetic := some exampleIntervalArithmeticPayload
  tailBound := none
  contourIntegral := none
  argumentPrincipleCount := none
  validatedIntegration := none
  spectralEnclosure := none
  operatorNormBound := none
  rigorousQuadrature := none
  payloadHash := 45
  finiteSound := True
  finiteSoundProof := trivial

def exampleAnalyticDomain :
    VerifiedNumericalEstimate.AnalyticDomainSymbol where
  label := "unit interval"
  domainHash := 50

def examplePrecisionSymbol :
    VerifiedNumericalEstimate.PrecisionSymbol where
  label := "64-bit working precision"
  precisionHash := 51

def exampleAlgorithmSymbol :
    VerifiedNumericalEstimate.AlgorithmSymbol where
  label := "interval Newton"
  algorithmHash := 52

def exampleErrorModelSymbol :
    VerifiedNumericalEstimate.ErrorModelSymbol where
  label := "absolute and relative error"
  errorModelHash := 53

def exampleEstimateSymbol :
    VerifiedNumericalEstimate.NumericalEstimateSymbol where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.intervalArithmetic
  label := "verified interval evaluation"
  estimateHash := 54

def exampleSchema :
    VerifiedNumericalEstimate.NumericalAnalyticCertificateSchema where
  estimate := exampleEstimateSymbol
  payload := exampleFinitePayload
  domain := exampleAnalyticDomain
  precision := examplePrecisionSymbol
  algorithm := exampleAlgorithmSymbol
  errorModel := exampleErrorModelSymbol
  enclosureSound := True
  enclosureProof := trivial
  theoremInterpretation := True
  theoremInterpretationProof := trivial

def exampleIntervalArithmeticAuthority :
    VerifiedNumericalEstimate.IntervalArithmeticAuthority where
  schema := exampleSchema
  intervalArithmeticSound := True
  intervalArithmeticProof := trivial

def exampleTailBoundAuthority :
    VerifiedNumericalEstimate.TailBoundAuthority where
  schema := exampleSchema
  tailBoundSound := True
  tailBoundProof := trivial

def exampleContourIntegralAuthority :
    VerifiedNumericalEstimate.ContourIntegralAuthority where
  schema := exampleSchema
  contourIntegralSound := True
  contourIntegralProof := trivial

def exampleArgumentPrincipleAuthority :
    VerifiedNumericalEstimate.ArgumentPrincipleCountAuthority where
  schema := exampleSchema
  argumentPrincipleCountSound := True
  argumentPrincipleCountProof := trivial

def exampleValidatedIntegrationAuthority :
    VerifiedNumericalEstimate.ValidatedIntegrationAuthority where
  schema := exampleSchema
  integrationKind := _root_.Number.NumericalEstimate.DifferentialProblemKind.ode
  validatedIntegrationSound := True
  validatedIntegrationProof := trivial

def exampleSpectralEnclosureAuthority :
    VerifiedNumericalEstimate.SpectralEnclosureAuthority where
  schema := exampleSchema
  spectralEnclosureSound := True
  spectralEnclosureProof := trivial

def exampleOperatorNormAuthority :
    VerifiedNumericalEstimate.OperatorNormBoundAuthority where
  schema := exampleSchema
  operatorNormBoundSound := True
  operatorNormBoundProof := trivial

def exampleRigorousQuadratureAuthority :
    VerifiedNumericalEstimate.RigorousQuadratureAuthority where
  schema := exampleSchema
  rigorousQuadratureSound := True
  rigorousQuadratureProof := trivial

theorem example_finite_numerical_payload_boundary_summary :
    exampleFinitePayload.finiteSound ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsIntervalArithmeticTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsTailBoundTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsContourIntegralTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsArgumentPrincipleCountTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsValidatedIntegrationTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsSpectralEnclosureTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsOperatorNormBoundTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsRigorousQuadratureTheorem
          exampleFinitePayload ∧
      ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsTheoremLevelInterpretation
          exampleFinitePayload :=
  _root_.Number.NumericalEstimate.finite_numerical_estimate_payload_boundary_summary
    exampleFinitePayload

theorem example_numerical_estimate_symbol_boundary_summary :
    ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsEnclosure
        exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsTheoremInterpretation
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsIntervalArithmetic
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsTailBound
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsContourIntegral
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsArgumentPrincipleCount
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsValidatedIntegration
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsSpectralEnclosure
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsOperatorNormBound
          exampleEstimateSymbol ∧
      ¬ VerifiedNumericalEstimate.NumericalEstimateSymbolOwnsRigorousQuadrature
          exampleEstimateSymbol :=
  VerifiedNumericalEstimate.numerical_estimate_symbol_boundary_summary
    exampleEstimateSymbol

theorem example_interval_arithmetic_authorized :
    exampleIntervalArithmeticAuthority.schema.enclosureSound ∧
      exampleIntervalArithmeticAuthority.schema.theoremInterpretation ∧
      exampleIntervalArithmeticAuthority.intervalArithmeticSound :=
  VerifiedNumericalEstimate.interval_arithmetic_authorized
    exampleIntervalArithmeticAuthority

theorem example_tail_bound_authorized :
    exampleTailBoundAuthority.schema.enclosureSound ∧
      exampleTailBoundAuthority.schema.theoremInterpretation ∧
      exampleTailBoundAuthority.tailBoundSound :=
  VerifiedNumericalEstimate.tail_bound_authorized exampleTailBoundAuthority

theorem example_contour_integral_authorized :
    exampleContourIntegralAuthority.schema.enclosureSound ∧
      exampleContourIntegralAuthority.schema.theoremInterpretation ∧
      exampleContourIntegralAuthority.contourIntegralSound :=
  VerifiedNumericalEstimate.contour_integral_authorized
    exampleContourIntegralAuthority

theorem example_argument_principle_count_authorized :
    exampleArgumentPrincipleAuthority.schema.enclosureSound ∧
      exampleArgumentPrincipleAuthority.schema.theoremInterpretation ∧
      exampleArgumentPrincipleAuthority.argumentPrincipleCountSound :=
  VerifiedNumericalEstimate.argument_principle_count_authorized
    exampleArgumentPrincipleAuthority

theorem example_validated_integration_authorized :
    exampleValidatedIntegrationAuthority.schema.enclosureSound ∧
      exampleValidatedIntegrationAuthority.schema.theoremInterpretation ∧
      exampleValidatedIntegrationAuthority.validatedIntegrationSound :=
  VerifiedNumericalEstimate.validated_integration_authorized
    exampleValidatedIntegrationAuthority

theorem example_spectral_enclosure_authorized :
    exampleSpectralEnclosureAuthority.schema.enclosureSound ∧
      exampleSpectralEnclosureAuthority.schema.theoremInterpretation ∧
      exampleSpectralEnclosureAuthority.spectralEnclosureSound :=
  VerifiedNumericalEstimate.spectral_enclosure_authorized
    exampleSpectralEnclosureAuthority

theorem example_operator_norm_bound_authorized :
    exampleOperatorNormAuthority.schema.enclosureSound ∧
      exampleOperatorNormAuthority.schema.theoremInterpretation ∧
      exampleOperatorNormAuthority.operatorNormBoundSound :=
  VerifiedNumericalEstimate.operator_norm_bound_authorized
    exampleOperatorNormAuthority

theorem example_rigorous_quadrature_authorized :
    exampleRigorousQuadratureAuthority.schema.enclosureSound ∧
      exampleRigorousQuadratureAuthority.schema.theoremInterpretation ∧
      exampleRigorousQuadratureAuthority.rigorousQuadratureSound :=
  VerifiedNumericalEstimate.rigorous_quadrature_authorized
    exampleRigorousQuadratureAuthority

def exampleIntervalArithmeticCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.intervalArithmeticCertificate
    exampleIntervalArithmeticAuthority

def exampleTailBoundCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.tailBoundCertificate
    exampleTailBoundAuthority

def exampleContourIntegralCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.contourIntegralCertificate
    exampleContourIntegralAuthority

def exampleArgumentPrincipleCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.argumentPrincipleCountCertificate
    exampleArgumentPrincipleAuthority

def exampleValidatedIntegrationCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.validatedIntegrationCertificate
    exampleValidatedIntegrationAuthority

def exampleSpectralEnclosureCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.spectralEnclosureCertificate
    exampleSpectralEnclosureAuthority

def exampleOperatorNormBoundCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.operatorNormBoundCertificate
    exampleOperatorNormAuthority

def exampleRigorousQuadratureCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.rigorousQuadratureCertificate
    exampleRigorousQuadratureAuthority

def exampleTheoremLevelInterpretationCertificate : AnalyticCertificate :=
  VerifiedNumericalEstimate.theoremLevelInterpretationCertificate
    exampleSchema

end VerifiedNumericalEstimateExamples
end AnalyticNumber
```
