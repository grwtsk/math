module

public import Surface.Refactor.PatchBundle

/-! # Structured Lean and runtime diagnostics -/

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive DiagnosticKind where
  | parserError
  | elaborationError
  | unsolvedGoal
  | typeclassSynthesisFailure
  | coercionFailure
  | unknownDeclaration
  | missingImport
  | declarationCollision
  | sourceRangeMismatch
  | stalePatch
  | statementChange
  | axiomGrowth
  | publicApiChange
  | importCycle
  | buildFailure
  | timeout
  | providerUnavailable
  | providerMalformedOutput
  | cancelled
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive DiagnosticSeverity where
  | information
  | warning
  | error
  | fatal
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure LineColumnPosition where
  line : Nat
  column : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure LineColumnRange where
  start : LineColumnPosition
  stop : LineColumnPosition
deriving DecidableEq, Repr

@[surface_novel]
structure StructuredDiagnostic where
  diagnosticId : String
  kind : DiagnosticKind
  severity : DiagnosticSeverity
  messageCode : String
  humanMessage : String
  sourcePath? : Option ProjectRelativePath
  byteRange? : Option SourceByteRange
  lineColumnRange? : Option LineColumnRange
  declarationIdentity? : Option Name
  goalId? : Option GoalCellId
  expectedHash? : Option ContentHash256
  observedHash? : Option ContentHash256
  relatedDiagnosticIds : List String
  authority : RefactorAuthority := .environmentObserved
deriving Repr

@[expose] def DiagnosticKind.toObligationKind : DiagnosticKind → OpenObligationKind
  | .typeclassSynthesisFailure => .typeclass
  | .coercionFailure => .coercion
  | .missingImport => .unresolvedImport
  | .unsolvedGoal => .goal
  | _ => .representationMismatch

@[expose] def DiagnosticSeverity.toGoalStatus : DiagnosticSeverity → GoalCellStatus
  | .information => .open
  | .warning => .blocked
  | .error => .blocked
  | .fatal => .rejected

/-- Deterministic protocol projection; it is not a checked environment. -/
@[expose] def StructuredDiagnostic.toGoalCell
    (diagnostic : StructuredDiagnostic) (fallbackId : GoalCellId) : GoalCell where
  id := diagnostic.goalId?.getD fallbackId
  targetType := diagnostic.messageCode
  localContext := [diagnostic.humanMessage]
  kind := diagnostic.kind.toObligationKind
  status := diagnostic.severity.toGoalStatus
  sourceDeclaration? := diagnostic.declarationIdentity?

@[surface_novel]
structure DiagnosticProjection where
  diagnostics : List StructuredDiagnostic
  cells : List GoalCell
  edges : List GoalEdge
  authority : RefactorAuthority := .deterministic

@[expose] def projectDiagnostics (diagnostics : List StructuredDiagnostic) :
    DiagnosticProjection where
  diagnostics := diagnostics
  cells := diagnostics.zipIdx.map fun pair => pair.1.toGoalCell pair.2
  edges := []

@[surface_novel, surface_published]
theorem diagnostic_projection_is_protocol_data (diagnostics : List StructuredDiagnostic) :
    (projectDiagnostics diagnostics).authority = .deterministic :=
  rfl

end Surface.Refactor

