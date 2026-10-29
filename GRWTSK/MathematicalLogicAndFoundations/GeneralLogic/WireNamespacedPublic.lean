-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RefactorBridgeOperation.Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RefactorBridgeOperation.Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c","mathematical_subject":"Logic.Foundations","original_sha256":"586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Wire.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Pipeline

/-! # Data-only JSON/NDJSON protocol mirrors -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RefactorBridgeOperation.Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c

public section

namespace Surface.Refactor

@[expose] def refactorBridgeRequestSchema : String :=
  "surface.refactor.bridge.request.v1"

@[expose] def refactorBridgeResponseSchema : String :=
  "surface.refactor.bridge.response.v1"

@[expose] def reasoningAstSchema : String := "surface.reasoning-ast.v1"
@[expose] def patchBundleSchema : String := "surface.lean-patch-bundle.v1"

@[surface_novel]
inductive RefactorBridgeOperation where
  | surfaceHello
  | projectDescribe
  | projectIndex
  | projectPublicApiSnapshot
  | projectAxiomSnapshot
  | projectDependencyClosure
  | declarationDescribe
  | declarationPatterns
  | taskCreate
  | requestRender
  | patchValidate
  | overlayElaborate
  | diagnosticsProjectGoalGraph
  | receiptEmit
  | sessionInspect
  | sessionCancel
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive RefactorErrorCode where
  | invalidSchema
  | unsupportedProtocolVersion
  | invalidRequest
  | unknownOperation
  | declarationNotFound
  | moduleNotFound
  | staleProject
  | staleFile
  | pathOutsideRoot
  | pathSymlinkEscape
  | sourceRangeMismatch
  | sourceTextHashMismatch
  | typeHashMismatch
  | overlappingEdits
  | statementChange
  | publicApiChange
  | axiomGrowth
  | importCycle
  | candidateQuarantineViolation
  | leanParseError
  | leanElaborationError
  | leanBuildError
  | leanTimeout
  | providerUnavailable
  | providerTimeout
  | providerOutputTooLarge
  | modelSchemaError
  | modelAuthorityError
  | repairBudgetExhausted
  | sessionStateError
  | reviewDigestMismatch
  | applyBaseChanged
  | applyRollback
  | cancelled
  | internalError
deriving DecidableEq, Repr, BEq

@[expose] def RefactorErrorCode.spelling : RefactorErrorCode → String
  | .invalidSchema => "INVALID_SCHEMA"
  | .unsupportedProtocolVersion => "UNSUPPORTED_PROTOCOL_VERSION"
  | .invalidRequest => "INVALID_REQUEST"
  | .unknownOperation => "UNKNOWN_OPERATION"
  | .declarationNotFound => "DECLARATION_NOT_FOUND"
  | .moduleNotFound => "MODULE_NOT_FOUND"
  | .staleProject => "STALE_PROJECT"
  | .staleFile => "STALE_FILE"
  | .pathOutsideRoot => "PATH_OUTSIDE_ROOT"
  | .pathSymlinkEscape => "PATH_SYMLINK_ESCAPE"
  | .sourceRangeMismatch => "SOURCE_RANGE_MISMATCH"
  | .sourceTextHashMismatch => "SOURCE_TEXT_HASH_MISMATCH"
  | .typeHashMismatch => "TYPE_HASH_MISMATCH"
  | .overlappingEdits => "OVERLAPPING_EDITS"
  | .statementChange => "STATEMENT_CHANGE"
  | .publicApiChange => "PUBLIC_API_CHANGE"
  | .axiomGrowth => "AXIOM_GROWTH"
  | .importCycle => "IMPORT_CYCLE"
  | .candidateQuarantineViolation => "CANDIDATE_QUARANTINE_VIOLATION"
  | .leanParseError => "LEAN_PARSE_ERROR"
  | .leanElaborationError => "LEAN_ELABORATION_ERROR"
  | .leanBuildError => "LEAN_BUILD_ERROR"
  | .leanTimeout => "LEAN_TIMEOUT"
  | .providerUnavailable => "PROVIDER_UNAVAILABLE"
  | .providerTimeout => "PROVIDER_TIMEOUT"
  | .providerOutputTooLarge => "PROVIDER_OUTPUT_TOO_LARGE"
  | .modelSchemaError => "MODEL_SCHEMA_ERROR"
  | .modelAuthorityError => "MODEL_AUTHORITY_ERROR"
  | .repairBudgetExhausted => "REPAIR_BUDGET_EXHAUSTED"
  | .sessionStateError => "SESSION_STATE_ERROR"
  | .reviewDigestMismatch => "REVIEW_DIGEST_MISMATCH"
  | .applyBaseChanged => "APPLY_BASE_CHANGED"
  | .applyRollback => "APPLY_ROLLBACK"
  | .cancelled => "CANCELLED"
  | .internalError => "INTERNAL_ERROR"

@[surface_novel]
structure RefactorBridgeRequestV1 where
  schema : String
  protocolVersion : Nat
  requestId : String
  sessionId? : Option String
  operation : RefactorBridgeOperation
  payloadJson : String
deriving DecidableEq, Repr

@[expose] def RefactorBridgeRequestV1.Valid
    (request : RefactorBridgeRequestV1) : Prop :=
  request.schema = refactorBridgeRequestSchema ∧
    request.protocolVersion = 1 ∧
    request.requestId ≠ "" ∧
    request.payloadJson ≠ ""

instance (request : RefactorBridgeRequestV1) : Decidable request.Valid := by
  unfold RefactorBridgeRequestV1.Valid
  infer_instance

@[expose] def verifyRefactorBridgeRequest (request : RefactorBridgeRequestV1) : Bool :=
  decide request.Valid

@[surface_novel, surface_published]
theorem verifyRefactorBridgeRequest_sound (request : RefactorBridgeRequestV1)
    (h : verifyRefactorBridgeRequest request = true) : request.Valid := by
  exact of_decide_eq_true h

@[surface_novel]
structure RefactorBridgeErrorV1 where
  code : RefactorErrorCode
  message : String
  dataJson : String
deriving DecidableEq, Repr

@[surface_novel]
structure RefactorBridgeResponseV1 where
  schema : String
  protocolVersion : Nat
  requestId : String
  sessionId? : Option String
  operation : RefactorBridgeOperation
  ok : Bool
  elapsedMicros : Nat
  authority : RefactorAuthority
  resultJson? : Option String
  error? : Option RefactorBridgeErrorV1
deriving DecidableEq, Repr

@[expose] def RefactorBridgeResponseV1.Valid
    (response : RefactorBridgeResponseV1) : Prop :=
  response.schema = refactorBridgeResponseSchema ∧
    response.protocolVersion = 1 ∧
    response.requestId ≠ "" ∧
    ((response.ok = true ∧ response.resultJson?.isSome = true ∧
        response.error? = none) ∨
      (response.ok = false ∧ response.resultJson? = none ∧
        response.error?.isSome = true))

instance (response : RefactorBridgeResponseV1) : Decidable response.Valid := by
  unfold RefactorBridgeResponseV1.Valid
  infer_instance

@[expose] def verifyRefactorBridgeResponse
    (response : RefactorBridgeResponseV1) : Bool :=
  decide response.Valid

@[surface_novel, surface_published]
theorem verifyRefactorBridgeResponse_sound (response : RefactorBridgeResponseV1)
    (h : verifyRefactorBridgeResponse response = true) : response.Valid := by
  exact of_decide_eq_true h

@[surface_novel]
structure CanonicalJsonRules where
  utf8 : Bool := true
  lfLineEndings : Bool := true
  oneNdjsonObjectPerLine : Bool := true
  lexicographicObjectKeys : Bool := true
  preserveDeclaredListOrder : Bool := true
  sortSetLikeArrays : Bool := true
  timestampsExcludedFromCanonicalBodies : Bool := true
  finiteNumbersOnly : Bool := true
  integerDurationsMicros : Bool := true
deriving DecidableEq, Repr

@[expose] def canonicalJsonRules : CanonicalJsonRules := {}

@[surface_novel, surface_published]
theorem canonical_wire_has_no_timestamp_field :
    canonicalJsonRules.timestampsExcludedFromCanonicalBodies = true :=
  rfl

end Surface.Refactor
