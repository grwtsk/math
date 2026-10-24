import Number.Payload

/-!
# Finite determinant data

Finite determinant data belongs to `Number`.

This file contains only finite shells: finite matrices, finite determinant
values, finite determinant coefficient lists, finite trace power sums, and
finite map/complex metadata.

Carrying such finite data is not a construction of a determinant line, and it
does not assert determinant-line functoriality, zeta-regularized determinant
existence, Fredholm determinant convergence, trace-log expansion soundness, or
an anomaly formula. Those claims belong to `AnalyticNumber.Determinant` and
are available only through explicit authority records.

This module is deliberately independent of the Boolean/Cube Fredholm authority
surface: it is the canonical determinant interface for the
`Number → AnalyticNumber` layers and imports no Boolean module.
-/

namespace Number
namespace Determinant

/-- Finite rectangular integer matrix. -/
structure FiniteMatrix where
  rows : Nat
  cols : Nat
  entries : Fin rows → Fin cols → Int

/-- Finite square integer matrix. -/
structure SquareFiniteMatrix where
  size : Nat
  entries : Fin size → Fin size → Int

/-- Finite square matrix together with a certificate-gated determinant value. -/
structure FiniteDeterminantMatrix where
  matrix : SquareFiniteMatrix
  determinantValue : Int
  determinantSound : Prop
  determinantSoundProof : determinantSound

/-- Finite determinant coefficient list. -/
structure FiniteDeterminantCoefficients where
  coeffs : List Int
  coefficientHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite trace power sums up to a finite depth. -/
structure FiniteTracePowerSums where
  tracePowerSums : List Int
  traceDepth : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Complete finite determinant payload. -/
structure FiniteDeterminantPayload where
  matrixData : List FiniteDeterminantMatrix
  determinantCoefficients : FiniteDeterminantCoefficients
  tracePowerSums : FiniteTracePowerSums
  payloadHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

theorem finite_determinant_matrix_sound
    (M : FiniteDeterminantMatrix) :
    M.determinantSound :=
  M.determinantSoundProof

theorem finite_determinant_coefficients_sound
    (C : FiniteDeterminantCoefficients) :
    C.finiteSound :=
  C.finiteSoundProof

theorem finite_trace_power_sums_sound
    (T : FiniteTracePowerSums) :
    T.finiteSound :=
  T.finiteSoundProof

theorem finite_determinant_payload_sound
    (P : FiniteDeterminantPayload) :
    P.finiteSound :=
  P.finiteSoundProof

/--
Finite matrix map metadata.

This is finite data only. It does not assert determinant-line functoriality.
-/
structure FiniteMatrixMap where
  sourceHash : Nat
  targetHash : Nat
  mapHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/--
Finite complex metadata.

This is finite data only. It does not assert determinant-line functoriality.
-/
structure FiniteComplex where
  objectHashes : List Nat
  differentialHashes : List Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- A finite determinant payload is not a construction of a determinant line. -/
def FinitePayloadConstructsDeterminantLine
    (_P : FiniteDeterminantPayload) : Prop :=
  False

/-- A finite determinant payload does not own determinant-line functoriality. -/
def FinitePayloadOwnsDeterminantLineFunctoriality
    (_P : FiniteDeterminantPayload) : Prop :=
  False

/-- A finite determinant payload does not own a zeta-regularized determinant. -/
def FinitePayloadOwnsZetaRegularizedDeterminant
    (_P : FiniteDeterminantPayload) : Prop :=
  False

/-- A finite determinant payload does not own Fredholm determinant convergence. -/
def FinitePayloadOwnsFredholmDeterminantConvergence
    (_P : FiniteDeterminantPayload) : Prop :=
  False

/-- A finite determinant payload does not own a trace-log expansion. -/
def FinitePayloadOwnsTraceLogExpansion
    (_P : FiniteDeterminantPayload) : Prop :=
  False

/-- A finite determinant payload does not own an anomaly formula. -/
def FinitePayloadOwnsAnomalyFormula
    (_P : FiniteDeterminantPayload) : Prop :=
  False

theorem finite_payload_not_determinant_line
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadConstructsDeterminantLine P := by
  intro h
  exact h

theorem finite_payload_not_determinant_line_functoriality
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadOwnsDeterminantLineFunctoriality P := by
  intro h
  exact h

theorem finite_payload_not_zeta_regularized_determinant
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadOwnsZetaRegularizedDeterminant P := by
  intro h
  exact h

theorem finite_payload_not_fredholm_determinant_convergence
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadOwnsFredholmDeterminantConvergence P := by
  intro h
  exact h

theorem finite_payload_not_trace_log_expansion
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadOwnsTraceLogExpansion P := by
  intro h
  exact h

theorem finite_payload_not_anomaly_formula
    (P : FiniteDeterminantPayload) :
    ¬ FinitePayloadOwnsAnomalyFormula P := by
  intro h
  exact h

/--
Boundary summary for the finite determinant layer.

A finite determinant payload is finitely sound, it does not construct a
determinant line, and it owns none of the analytic determinant boundary
claims.
-/
theorem finite_determinant_payload_boundary_summary
    (P : FiniteDeterminantPayload) :
    P.finiteSound ∧
      ¬ FinitePayloadConstructsDeterminantLine P ∧
      ¬ FinitePayloadOwnsDeterminantLineFunctoriality P ∧
      ¬ FinitePayloadOwnsZetaRegularizedDeterminant P ∧
      ¬ FinitePayloadOwnsFredholmDeterminantConvergence P ∧
      ¬ FinitePayloadOwnsTraceLogExpansion P ∧
      ¬ FinitePayloadOwnsAnomalyFormula P :=
  ⟨P.finiteSoundProof,
    finite_payload_not_determinant_line P,
    finite_payload_not_determinant_line_functoriality P,
    finite_payload_not_zeta_regularized_determinant P,
    finite_payload_not_fredholm_determinant_convergence P,
    finite_payload_not_trace_log_expansion P,
    finite_payload_not_anomaly_formula P⟩

end Determinant
end Number
