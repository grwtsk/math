# Complete source: GRWTSK.Analysis.TraceFormula.Variante67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dd4bbf0c511ed77b5da7fbcf40f6d0976a6b20f` · SHA-256 `e67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.TraceFormula
import AnalyticNumber.Certificate
import Authority.BoundaryCalculus

/-!
# Analytic trace formula authority

This file provides the certificate-gated global trace-formula layer above
`Number.TraceFormula`.

Finite orbital-integral tables, finite spectral test functions, local place
data, and truncated trace tables live in `Number`. The global claims — test
function class admissibility, trace-formula convergence, spectral-side
interpretation, geometric-side interpretation, spectral/geometric equality,
and any positivity or zero-location consequence — are usable only through
explicit authority records, and each authority record converts into a generic
`AnalyticCertificate` routed by `Authority.BoundaryKind`.

The equality authority deliberately bundles its test-function, convergence,
spectral-side, and geometric-side authorities: a global trace formula is not
asserted from a bare symbol, and its consequences are separate authorities
again.

No trace formula, positivity theorem, or zero-location theorem is proved
here.
-/

namespace AnalyticNumber
namespace TraceFormula

/-- Formal test-function class symbol. -/
structure TestFunctionClassSymbol where
  label : String
  classHash : Nat
  admissibilityLabel : String

/-- Formal spectral-side symbol. -/
structure SpectralSideSymbol where
  label : String
  representationClassHash : Nat
  spectralMeasureHash : Nat

/-- Formal geometric-side symbol. -/
structure GeometricSideSymbol where
  label : String
  orbitalClassHash : Nat
  measureNormalizationHash : Nat

/-- Formal trace-formula symbol. -/
structure TraceFormulaSymbol where
  label : String
  testFunctionClass : TestFunctionClassSymbol
  spectralSide : SpectralSideSymbol
  geometricSide : GeometricSideSymbol
  formulaHash : Nat

/-- Formal positivity-consequence symbol. -/
structure PositivityConsequenceSymbol where
  traceFormula : TraceFormulaSymbol
  positivityLabel : String
  positivityStatement : Prop

/-- Formal zero-location-consequence symbol. -/
structure ZeroLocationConsequenceSymbol where
  traceFormula : TraceFormulaSymbol
  zeroLocationLabel : String
  zeroLocationStatement : Prop

/-- Authority for a test-function class. -/
structure TestFunctionClassAuthority where
  testFunctionClass : TestFunctionClassSymbol
  admissibilitySound : Prop
  admissibilityProof : admissibilitySound
  closurePropertiesSound : Prop
  closurePropertiesProof : closurePropertiesSound

/-- Authority for trace-formula convergence. -/
structure TraceFormulaConvergenceAuthority where
  formula : TraceFormulaSymbol
  payload : _root_.Number.TraceFormula.FiniteTraceFormulaPayload
  spectralConvergenceSound : Prop
  spectralConvergenceProof : spectralConvergenceSound
  geometricConvergenceSound : Prop
  geometricConvergenceProof : geometricConvergenceSound
  interchangeOfLimitsSound : Prop
  interchangeOfLimitsProof : interchangeOfLimitsSound

/-- Authority for the spectral-side interpretation. -/
structure SpectralSideInterpretationAuthority where
  formula : TraceFormulaSymbol
  spectralSide : SpectralSideSymbol
  spectralExpansionSound : Prop
  spectralExpansionProof : spectralExpansionSound
  multiplicityFormulaSound : Prop
  multiplicityFormulaProof : multiplicityFormulaSound
  spectralMeasureSound : Prop
  spectralMeasureProof : spectralMeasureSound

/-- Authority for the geometric-side interpretation. -/
structure GeometricSideInterpretationAuthority where
  formula : TraceFormulaSymbol
  geometricSide : GeometricSideSymbol
  orbitalIntegralExpansionSound : Prop
  orbitalIntegralExpansionProof : orbitalIntegralExpansionSound
  volumeFactorSound : Prop
  volumeFactorProof : volumeFactorSound
  localGlobalCompatibilitySound : Prop
  localGlobalCompatibilityProof : localGlobalCompatibilitySound

/--
Authority for the global spectral/geometric equality.

The equality authority carries its supporting test-function, convergence,
spectral-side, and geometric-side authorities as explicit fields.
-/
structure TraceFormulaEqualityAuthority where
  formula : TraceFormulaSymbol
  testFunctionAuthority : TestFunctionClassAuthority
  convergenceAuthority : TraceFormulaConvergenceAuthority
  spectralAuthority : SpectralSideInterpretationAuthority
  geometricAuthority : GeometricSideInterpretationAuthority
  equalitySound : Prop
  equalityProof : equalitySound

/-- Authority for a positivity consequence of a trace formula. -/
structure PositivityConsequenceAuthority where
  consequence : PositivityConsequenceSymbol
  traceFormulaEqualitySound : Prop
  traceFormulaEqualityProof : traceFormulaEqualitySound
  positivitySound : consequence.positivityStatement

/-- Authority for a zero-location consequence of a trace formula. -/
structure ZeroLocationConsequenceAuthority where
  consequence : ZeroLocationConsequenceSymbol
  traceFormulaEqualitySound : Prop
  traceFormulaEqualityProof : traceFormulaEqualitySound
  zeroLocationSound : consequence.zeroLocationStatement

theorem test_function_class_authorized
    (A : TestFunctionClassAuthority) :
    A.admissibilitySound ∧ A.closurePropertiesSound :=
  ⟨A.admissibilityProof, A.closurePropertiesProof⟩

theorem trace_formula_convergence_authorized
    (A : TraceFormulaConvergenceAuthority) :
    A.spectralConvergenceSound ∧
      A.geometricConvergenceSound ∧
      A.interchangeOfLimitsSound :=
  ⟨A.spectralConvergenceProof,
    A.geometricConvergenceProof,
    A.interchangeOfLimitsProof⟩

theorem spectral_side_interpretation_authorized
    (A : SpectralSideInterpretationAuthority) :
    A.spectralExpansionSound ∧
      A.multiplicityFormulaSound ∧
      A.spectralMeasureSound :=
  ⟨A.spectralExpansionProof,
    A.multiplicityFormulaProof,
    A.spectralMeasureProof⟩

theorem geometric_side_interpretation_authorized
    (A : GeometricSideInterpretationAuthority) :
    A.orbitalIntegralExpansionSound ∧
      A.volumeFactorSound ∧
      A.localGlobalCompatibilitySound :=
  ⟨A.orbitalIntegralExpansionProof,
    A.volumeFactorProof,
    A.localGlobalCompatibilityProof⟩

theorem trace_formula_equality_authorized
    (A : TraceFormulaEqualityAuthority) :
    A.equalitySound :=
  A.equalityProof

theorem positivity_consequence_authorized
    (A : PositivityConsequenceAuthority) :
    A.consequence.positivityStatement :=
  A.positivitySound

theorem zero_location_consequence_authorized
    (A : ZeroLocationConsequenceAuthority) :
    A.consequence.zeroLocationStatement :=
  A.zeroLocationSound

/-- A trace-formula symbol alone does not own convergence. -/
def TraceFormulaSymbolOwnsConvergence
    (_F : TraceFormulaSymbol) : Prop :=
  False

/-- A trace-formula symbol alone does not own spectral-side interpretation. -/
def TraceFormulaSymbolOwnsSpectralSideInterpretation
    (_F : TraceFormulaSymbol) : Prop :=
  False

/-- A trace-formula symbol alone does not own geometric-side interpretation. -/
def TraceFormulaSymbolOwnsGeometricSideInterpretation
    (_F : TraceFormulaSymbol) : Prop :=
  False

/-- A trace-formula symbol alone does not own spectral/geometric equality. -/
def TraceFormulaSymbolOwnsEquality
    (_F : TraceFormulaSymbol) : Prop :=
  False

/-- A trace-formula symbol alone does not own positivity consequences. -/
def TraceFormulaSymbolOwnsPositivityConsequence
    (_F : TraceFormulaSymbol) : Prop :=
  False

/-- A trace-formula symbol alone does not own zero-location consequences. -/
def TraceFormulaSymbolOwnsZeroLocationConsequence
    (_F : TraceFormulaSymbol) : Prop :=
  False

theorem trace_formula_symbol_not_convergence_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsConvergence F := by
  intro h
  exact h

theorem trace_formula_symbol_not_spectral_side_interpretation_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsSpectralSideInterpretation F := by
  intro h
  exact h

theorem trace_formula_symbol_not_geometric_side_interpretation_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsGeometricSideInterpretation F := by
  intro h
  exact h

theorem trace_formula_symbol_not_equality_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsEquality F := by
  intro h
  exact h

theorem trace_formula_symbol_not_positivity_consequence_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsPositivityConsequence F := by
  intro h
  exact h

theorem trace_formula_symbol_not_zero_location_consequence_authority
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsZeroLocationConsequence F := by
  intro h
  exact h

/--
Boundary summary for the formal trace-formula symbol layer.

A formal trace-formula symbol owns none of the global trace-formula boundary
claims.
-/
theorem trace_formula_symbol_boundary_summary
    (F : TraceFormulaSymbol) :
    ¬ TraceFormulaSymbolOwnsConvergence F ∧
      ¬ TraceFormulaSymbolOwnsSpectralSideInterpretation F ∧
      ¬ TraceFormulaSymbolOwnsGeometricSideInterpretation F ∧
      ¬ TraceFormulaSymbolOwnsEquality F ∧
      ¬ TraceFormulaSymbolOwnsPositivityConsequence F ∧
      ¬ TraceFormulaSymbolOwnsZeroLocationConsequence F :=
  ⟨trace_formula_symbol_not_convergence_authority F,
    trace_formula_symbol_not_spectral_side_interpretation_authority F,
    trace_formula_symbol_not_geometric_side_interpretation_authority F,
    trace_formula_symbol_not_equality_authority F,
    trace_formula_symbol_not_positivity_consequence_authority F,
    trace_formula_symbol_not_zero_location_consequence_authority F⟩

/-- Convert a test-function class authority into an analytic certificate. -/
def testFunctionClassCertificate
    (A : TestFunctionClassAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.finiteArithmetic
  label := "test-function class certificate"
  publicHash := 0
  sound := A.admissibilitySound ∧ A.closurePropertiesSound
  soundProof := test_function_class_authorized A

/-- Convert a trace-formula convergence authority into an analytic certificate. -/
def traceFormulaConvergenceCertificate
    (A : TraceFormulaConvergenceAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.traceFormulaConvergence
  label := "trace-formula convergence certificate"
  publicHash := 0
  sound :=
    A.spectralConvergenceSound ∧
      A.geometricConvergenceSound ∧
      A.interchangeOfLimitsSound
  soundProof := trace_formula_convergence_authorized A

/-- Convert a spectral-side interpretation authority into an analytic certificate. -/
def spectralSideInterpretationCertificate
    (A : SpectralSideInterpretationAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.spectralSideInterpretation
  label := "spectral-side interpretation certificate"
  publicHash := 0
  sound :=
    A.spectralExpansionSound ∧
      A.multiplicityFormulaSound ∧
      A.spectralMeasureSound
  soundProof := spectral_side_interpretation_authorized A

/-- Convert a geometric-side interpretation authority into an analytic certificate. -/
def geometricSideInterpretationCertificate
    (A : GeometricSideInterpretationAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.geometricSideInterpretation
  label := "geometric-side interpretation certificate"
  publicHash := 0
  sound :=
    A.orbitalIntegralExpansionSound ∧
      A.volumeFactorSound ∧
      A.localGlobalCompatibilitySound
  soundProof := geometric_side_interpretation_authorized A

/-- Convert a trace-formula equality authority into an analytic certificate. -/
def traceFormulaEqualityCertificate
    (A : TraceFormulaEqualityAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.traceFormula
  label := "trace-formula equality certificate"
  publicHash := 0
  sound := A.equalitySound
  soundProof := trace_formula_equality_authorized A

/-- Convert a positivity consequence authority into an analytic certificate. -/
def positivityConsequenceCertificate
    (A : PositivityConsequenceAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.positivityConsequence
  label := "trace-formula positivity consequence certificate"
  publicHash := 0
  sound := A.consequence.positivityStatement
  soundProof := positivity_consequence_authorized A

/-- Convert a zero-location consequence authority into an analytic certificate. -/
def zeroLocationConsequenceCertificate
    (A : ZeroLocationConsequenceAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.zeroLocationConsequence
  label := "trace-formula zero-location consequence certificate"
  publicHash := 0
  sound := A.consequence.zeroLocationStatement
  soundProof := zero_location_consequence_authorized A

end TraceFormula
end AnalyticNumber
```
