# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.TraceFormula.Variant96c2033e82e0fb4902c5d4279af2109ae6237712253f076b9fae8a375bb2557e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7dca2310cdf6a89842873967b75428c143e9303` · SHA-256 `96c2033e82e0fb4902c5d4279af2109ae6237712253f076b9fae8a375bb2557e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload

/-!
# Finite trace formula data

Finite trace-formula data belongs to `Number`.

This file contains only finite shells: local place data, finite spectral test
functions, finite orbital-integral rows and tables, finite spectral trace
rows, and truncated trace tables.

Carrying such finite data — including a truncated table in which spectral and
geometric numerators happen to agree — is not a global trace formula. It does
not assert trace-formula convergence, spectral-side or geometric-side
interpretation, spectral/geometric equality, positivity consequences, or
zero-location consequences. Those claims belong to
`AnalyticNumber.TraceFormula` and are available only through explicit
authority records.
-/

namespace Number
namespace TraceFormula

/-- Kind of a place. -/
inductive PlaceKind where
  | finite
  | archimedean
  | custom : String → PlaceKind
deriving Repr, DecidableEq

/-- Finite local place data. -/
structure LocalPlaceData where
  placeLabel : String
  kind : PlaceKind
  norm : Nat
  normPositive : norm > 0
  residueCharacteristic : Nat
  ramificationHash : Nat
  localMeasureHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite spectral test-function metadata. -/
structure FiniteSpectralTestFunction where
  testFunctionHash : Nat
  supportHash : Nat
  coefficientEncodingHash : Nat
  truncationLevel : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- One finite orbital-integral row. -/
structure OrbitalIntegralRow where
  placeLabel : String
  orbitLabel : String
  representativeHash : Nat
  stabilizerHash : Nat
  orbitalIntegralNumerator : Int
  orbitalIntegralDenominator : Nat
  denominatorPositive : orbitalIntegralDenominator > 0
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite orbital-integral table. -/
structure FiniteOrbitalIntegralTable where
  rows : List OrbitalIntegralRow
  tableHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- One finite spectral trace row. -/
structure SpectralTraceRow where
  spectralLabel : String
  representationHash : Nat
  multiplicity : Nat
  eigenvalueNumerator : Int
  eigenvalueDenominator : Nat
  denominatorPositive : eigenvalueDenominator > 0
  contributionNumerator : Int
  contributionDenominator : Nat
  contributionDenominatorPositive : contributionDenominator > 0
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Truncated trace table with finite spectral and geometric sides. -/
structure TruncatedTraceTable where
  truncationLevel : Nat
  spectralRows : List SpectralTraceRow
  geometricRows : List OrbitalIntegralRow
  spectralTraceNumerator : Int
  geometricTraceNumerator : Int
  commonDenominator : Nat
  commonDenominatorPositive : commonDenominator > 0
  truncationSound : Prop
  truncationSoundProof : truncationSound

/-- Complete finite trace-formula payload. -/
structure FiniteTraceFormulaPayload where
  localPlaces : List LocalPlaceData
  testFunction : FiniteSpectralTestFunction
  orbitalIntegralTable : FiniteOrbitalIntegralTable
  truncatedTraceTable : TruncatedTraceTable
  payloadHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

theorem local_place_data_sound
    (D : LocalPlaceData) :
    D.finiteSound :=
  D.finiteSoundProof

theorem finite_spectral_test_function_sound
    (F : FiniteSpectralTestFunction) :
    F.finiteSound :=
  F.finiteSoundProof

theorem orbital_integral_row_sound
    (R : OrbitalIntegralRow) :
    R.finiteSound :=
  R.finiteSoundProof

theorem finite_orbital_integral_table_sound
    (T : FiniteOrbitalIntegralTable) :
    T.finiteSound :=
  T.finiteSoundProof

theorem spectral_trace_row_sound
    (R : SpectralTraceRow) :
    R.finiteSound :=
  R.finiteSoundProof

theorem truncated_trace_table_sound
    (T : TruncatedTraceTable) :
    T.truncationSound :=
  T.truncationSoundProof

theorem finite_trace_formula_payload_sound
    (P : FiniteTraceFormulaPayload) :
    P.finiteSound :=
  P.finiteSoundProof

/-- A finite trace-formula payload does not own the global trace formula. -/
def FinitePayloadOwnsGlobalTraceFormula
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own trace-formula convergence. -/
def FinitePayloadOwnsTraceFormulaConvergence
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own spectral-side interpretation. -/
def FinitePayloadOwnsSpectralSideInterpretation
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own geometric-side interpretation. -/
def FinitePayloadOwnsGeometricSideInterpretation
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own spectral/geometric equality. -/
def FinitePayloadOwnsSpectralGeometricEquality
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own positivity consequences. -/
def FinitePayloadOwnsPositivityConsequence
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

/-- A finite trace-formula payload does not own zero-location consequences. -/
def FinitePayloadOwnsZeroLocationConsequence
    (_P : FiniteTraceFormulaPayload) : Prop :=
  False

theorem finite_payload_not_global_trace_formula
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsGlobalTraceFormula P := by
  intro h
  exact h

theorem finite_payload_not_trace_formula_convergence
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsTraceFormulaConvergence P := by
  intro h
  exact h

theorem finite_payload_not_spectral_side_interpretation
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsSpectralSideInterpretation P := by
  intro h
  exact h

theorem finite_payload_not_geometric_side_interpretation
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsGeometricSideInterpretation P := by
  intro h
  exact h

theorem finite_payload_not_spectral_geometric_equality
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsSpectralGeometricEquality P := by
  intro h
  exact h

theorem finite_payload_not_positivity_consequence
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsPositivityConsequence P := by
  intro h
  exact h

theorem finite_payload_not_zero_location_consequence
    (P : FiniteTraceFormulaPayload) :
    ¬ FinitePayloadOwnsZeroLocationConsequence P := by
  intro h
  exact h

/--
Boundary summary for the finite trace-formula layer.

A finite trace-formula payload is finitely sound, and it owns none of the
global trace-formula boundary claims.
-/
theorem finite_trace_formula_payload_boundary_summary
    (P : FiniteTraceFormulaPayload) :
    P.finiteSound ∧
      ¬ FinitePayloadOwnsGlobalTraceFormula P ∧
      ¬ FinitePayloadOwnsTraceFormulaConvergence P ∧
      ¬ FinitePayloadOwnsSpectralSideInterpretation P ∧
      ¬ FinitePayloadOwnsGeometricSideInterpretation P ∧
      ¬ FinitePayloadOwnsSpectralGeometricEquality P ∧
      ¬ FinitePayloadOwnsPositivityConsequence P ∧
      ¬ FinitePayloadOwnsZeroLocationConsequence P :=
  ⟨P.finiteSoundProof,
    finite_payload_not_global_trace_formula P,
    finite_payload_not_trace_formula_convergence P,
    finite_payload_not_spectral_side_interpretation P,
    finite_payload_not_geometric_side_interpretation P,
    finite_payload_not_spectral_geometric_equality P,
    finite_payload_not_positivity_consequence P,
    finite_payload_not_zero_location_consequence P⟩

end TraceFormula
end Number
```
