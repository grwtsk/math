# Complete source: GRWTSK.Algebra.LinearAlgebra.DeterminantExamples.Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `376daf3d9e361aaf3ea1132b8e0a7d4306fc8110` · SHA-256 `da92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.Determinant

/-!
# Determinant examples

Certificate-only example of the finite-to-analytic determinant path:

  finite determinant payload
      → formal determinant symbols
      → explicit analytic authority records
      → analytic certificates

The examples are architectural smoke tests. They contain no analytic
determinant proofs.
This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.
-/

namespace AnalyticNumber
namespace DeterminantExamples

def exampleSquareMatrix : _root_.Number.Determinant.SquareFiniteMatrix where
  size := 2
  entries := fun i j =>
    match i.val, j.val with
    | 0, 0 => 1
    | 0, 1 => 2
    | 1, 0 => 3
    | _, _ => 4

def exampleFiniteDeterminantMatrix :
    _root_.Number.Determinant.FiniteDeterminantMatrix where
  matrix := exampleSquareMatrix
  determinantValue := -2
  determinantSound := True
  determinantSoundProof := trivial

def exampleFiniteDeterminantCoefficients :
    _root_.Number.Determinant.FiniteDeterminantCoefficients where
  coeffs := [1, -5, -2]
  coefficientHash := 100
  finiteSound := True
  finiteSoundProof := trivial

def exampleFiniteTracePowerSums :
    _root_.Number.Determinant.FiniteTracePowerSums where
  tracePowerSums := [5, 29]
  traceDepth := 2
  finiteSound := True
  finiteSoundProof := trivial

def exampleFinitePayload :
    _root_.Number.Determinant.FiniteDeterminantPayload where
  matrixData := [exampleFiniteDeterminantMatrix]
  determinantCoefficients := exampleFiniteDeterminantCoefficients
  tracePowerSums := exampleFiniteTracePowerSums
  payloadHash := 101
  finiteSound := True
  finiteSoundProof := trivial

def exampleDeterminantLine :
    Determinant.DeterminantLineSymbol where
  label := "det L"
  objectHash := 110
  baseCategoryLabel := "perfect complexes"

def exampleTargetDeterminantLine :
    Determinant.DeterminantLineSymbol where
  label := "det L'"
  objectHash := 111
  baseCategoryLabel := "perfect complexes"

def exampleLineMorphism :
    Determinant.DeterminantLineMorphismSymbol where
  source := exampleDeterminantLine
  target := exampleTargetDeterminantLine
  morphismHash := 112
  label := "comparison morphism"

def exampleZetaRegularizedSymbol :
    Determinant.ZetaRegularizedDeterminantSymbol where
  operatorLabel := "Δ"
  operatorHash := 120
  spectralCutLabel := "principal spectral cut"
  determinantLabel := "det_ζ(Δ)"

def exampleFredholmSymbol :
    Determinant.FredholmDeterminantSymbol where
  operatorLabel := "K"
  identityPlusTraceClassLabel := "I + K"
  perturbationHash := 130
  determinantLabel := "det(I + K)"

def exampleTraceLogSymbol :
    Determinant.TraceLogExpansionSymbol where
  fredholm := exampleFredholmSymbol
  tracePowerSumsHash := 131
  expansionLabel := "trace-log expansion of det(I + K)"

def exampleAnomalySymbol :
    Determinant.AnomalyFormulaSymbol where
  leftDeterminantLabel := "det_ζ(Δ)"
  rightDeterminantLabel := "det(I + K)"
  comparisonHash := 140
  anomalyLabel := "anomaly term"

def exampleDeterminantLineAuthority :
    Determinant.DeterminantLineAuthority where
  line := exampleDeterminantLine
  determinantLineConstructed := True
  determinantLineProof := trivial

def exampleDeterminantLineFunctorialityAuthority :
    Determinant.DeterminantLineFunctorialityAuthority where
  sourceLine := exampleDeterminantLine
  targetLine := exampleTargetDeterminantLine
  morphism := exampleLineMorphism
  functorialitySound := True
  functorialityProof := trivial
  compositionCompatible := True
  compositionCompatibleProof := trivial
  identityCompatible := True
  identityCompatibleProof := trivial

def exampleZetaRegularizedAuthority :
    Determinant.ZetaRegularizedDeterminantAuthority where
  determinant := exampleZetaRegularizedSymbol
  regularizationDefined := True
  regularizationDefinedProof := trivial
  spectralZetaContinuationSound := True
  spectralZetaContinuationProof := trivial
  determinantValueSound := True
  determinantValueProof := trivial

def exampleFredholmConvergenceAuthority :
    Determinant.FredholmDeterminantConvergenceAuthority where
  determinant := exampleFredholmSymbol
  traceClassPerturbationSound := True
  traceClassPerturbationProof := trivial
  determinantConvergesSound := True
  determinantConvergesProof := trivial
  finiteApproximationSound := True
  finiteApproximationProof := trivial

def exampleTraceLogExpansionAuthority :
    Determinant.TraceLogExpansionAuthority where
  expansion := exampleTraceLogSymbol
  tracePowersDefined := True
  tracePowersDefinedProof := trivial
  expansionConvergesSound := True
  expansionConvergesProof := trivial
  traceLogIdentitySound := True
  traceLogIdentityProof := trivial

def exampleAnomalyFormulaAuthority :
    Determinant.AnomalyFormulaAuthority where
  anomaly := exampleAnomalySymbol
  determinantComparisonSound := True
  determinantComparisonProof := trivial
  anomalyTermSound := True
  anomalyTermProof := trivial
  anomalyFormulaSound := True
  anomalyFormulaProof := trivial

theorem example_finite_payload_boundary_summary :
    exampleFinitePayload.finiteSound ∧
      ¬ _root_.Number.Determinant.FinitePayloadConstructsDeterminantLine
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsDeterminantLineFunctoriality
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsZetaRegularizedDeterminant
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsFredholmDeterminantConvergence
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsTraceLogExpansion
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsAnomalyFormula
          exampleFinitePayload :=
  _root_.Number.Determinant.finite_determinant_payload_boundary_summary
    exampleFinitePayload

theorem example_determinant_symbol_boundary_summary :
    ¬ Determinant.DeterminantLineSymbolOwnsFunctoriality
        exampleDeterminantLine ∧
      ¬ Determinant.DeterminantLineSymbolOwnsAnalyticComparison
          exampleDeterminantLine ∧
      ¬ Determinant.ZetaRegularizedDeterminantSymbolOwnsRegularization
          exampleZetaRegularizedSymbol ∧
      ¬ Determinant.FredholmDeterminantSymbolOwnsConvergence
          exampleFredholmSymbol ∧
      ¬ Determinant.TraceLogExpansionSymbolOwnsExpansion
          exampleTraceLogSymbol ∧
      ¬ Determinant.AnomalyFormulaSymbolOwnsFormula
          exampleAnomalySymbol :=
  Determinant.determinant_symbol_boundary_summary
    exampleDeterminantLine
    exampleZetaRegularizedSymbol
    exampleFredholmSymbol
    exampleTraceLogSymbol
    exampleAnomalySymbol

theorem example_determinant_line_authorized :
    exampleDeterminantLineAuthority.determinantLineConstructed :=
  Determinant.determinant_line_authorized exampleDeterminantLineAuthority

theorem example_determinant_line_functoriality_authorized :
    exampleDeterminantLineFunctorialityAuthority.functorialitySound ∧
      exampleDeterminantLineFunctorialityAuthority.compositionCompatible ∧
      exampleDeterminantLineFunctorialityAuthority.identityCompatible :=
  Determinant.determinant_line_functoriality_authorized
    exampleDeterminantLineFunctorialityAuthority

theorem example_zeta_regularized_determinant_authorized :
    exampleZetaRegularizedAuthority.regularizationDefined ∧
      exampleZetaRegularizedAuthority.spectralZetaContinuationSound ∧
      exampleZetaRegularizedAuthority.determinantValueSound :=
  Determinant.zeta_regularized_determinant_authorized
    exampleZetaRegularizedAuthority

theorem example_fredholm_determinant_convergence_authorized :
    exampleFredholmConvergenceAuthority.traceClassPerturbationSound ∧
      exampleFredholmConvergenceAuthority.determinantConvergesSound ∧
      exampleFredholmConvergenceAuthority.finiteApproximationSound :=
  Determinant.fredholm_determinant_convergence_authorized
    exampleFredholmConvergenceAuthority

theorem example_trace_log_expansion_authorized :
    exampleTraceLogExpansionAuthority.tracePowersDefined ∧
      exampleTraceLogExpansionAuthority.expansionConvergesSound ∧
      exampleTraceLogExpansionAuthority.traceLogIdentitySound :=
  Determinant.trace_log_expansion_authorized
    exampleTraceLogExpansionAuthority

theorem example_anomaly_formula_authorized :
    exampleAnomalyFormulaAuthority.determinantComparisonSound ∧
      exampleAnomalyFormulaAuthority.anomalyTermSound ∧
      exampleAnomalyFormulaAuthority.anomalyFormulaSound :=
  Determinant.anomaly_formula_authorized
    exampleAnomalyFormulaAuthority

def exampleDeterminantLineCertificate : AnalyticCertificate :=
  Determinant.determinantLineCertificate exampleDeterminantLineAuthority

def exampleDeterminantLineFunctorialityCertificate : AnalyticCertificate :=
  Determinant.determinantLineFunctorialityCertificate
    exampleDeterminantLineFunctorialityAuthority

def exampleZetaRegularizedDeterminantCertificate : AnalyticCertificate :=
  Determinant.zetaRegularizedDeterminantCertificate
    exampleZetaRegularizedAuthority

def exampleFredholmConvergenceCertificate : AnalyticCertificate :=
  Determinant.fredholmDeterminantConvergenceCertificate
    exampleFredholmConvergenceAuthority

def exampleTraceLogExpansionCertificate : AnalyticCertificate :=
  Determinant.traceLogExpansionCertificate
    exampleTraceLogExpansionAuthority

def exampleAnomalyFormulaCertificate : AnalyticCertificate :=
  Determinant.anomalyFormulaCertificate
    exampleAnomalyFormulaAuthority

end DeterminantExamples
end AnalyticNumber
```
