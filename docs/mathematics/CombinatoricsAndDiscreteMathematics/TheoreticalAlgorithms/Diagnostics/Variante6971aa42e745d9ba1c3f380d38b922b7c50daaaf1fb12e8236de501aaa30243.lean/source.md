# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Diagnostics.Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfca430ce1d3434f5c3678428c9a35b51478ac42` · SHA-256 `c325bccab156fbff5ca0318c2cf59a7fc184b13742552a78d6097cd28c5c815d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiagnosticKind.Variant1799627619997538408a2126988fd1309952374c53f8adeac9d80b5440ee2fa3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1799627619997538408a2126988fd1309952374c53f8adeac9d80b5440ee2fa3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DiagnosticKind.Variant1799627619997538408a2126988fd1309952374c53f8adeac9d80b5440ee2fa3","mathematical_subject":"Computation.DataStructures","original_sha256":"1799627619997538408a2126988fd1309952374c53f8adeac9d80b5440ee2fa3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Diagnostics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.PatchBundle

/-! # Structured Lean and runtime diagnostics -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiagnosticKind.Variant1799627619997538408a2126988fd1309952374c53f8adeac9d80b5440ee2fa3

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

```
