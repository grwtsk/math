# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Variant62eb1ea41f7176e4d7e13945f79ee728947a8e899ae3da7a1e27d877a018b7c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29c581d84d29f4baf47ce39d5801f1662aa39e7c` · SHA-256 `d36ea4f6a300f2dde4a9c46d3ccc7a0f694083774d69a5bfa53e56c452c7129e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ValidationRule.Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ValidationRule.Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406","mathematical_subject":"Computation.DataStructures","original_sha256":"7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Diagnostics

/-! # Executable finite patch validation -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ValidationRule.Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
inductive ValidationRule where
  | schemaVersion
  | protocolVersion
  | requestIdentity
  | sessionIdentity
  | baseProjectFingerprint
  | baseFileHashFreshness
  | allowedPathMembership
  | sourceRangeOrdering
  | utf8BoundaryReceiptPresence
  | expectedTextHash
  | expectedTypeHash
  | operationCount
  | operationOrdering
  | operationNonOverlap
  | absenceOfStatementOperations
  | candidatePathQuarantine
  | forbiddenSourceTokens
  | allowedImportPolicy
  | publicDeclarationPreservation
  | classificationTagPreservation
  | axiomGrowthPolicy
  | canonicalImportQuarantine
  | modelAuthorityCeiling
  | reviewDigest
deriving DecidableEq, Repr, BEq

@[expose] def allValidationRules : List ValidationRule :=
  [.schemaVersion, .protocolVersion, .requestIdentity, .sessionIdentity,
    .baseProjectFingerprint, .baseFileHashFreshness, .allowedPathMembership,
    .sourceRangeOrdering, .utf8BoundaryReceiptPresence, .expectedTextHash,
    .expectedTypeHash, .operationCount, .operationOrdering,
    .operationNonOverlap, .absenceOfStatementOperations,
    .candidatePathQuarantine, .forbiddenSourceTokens, .allowedImportPolicy,
    .publicDeclarationPreservation, .classificationTagPreservation,
    .axiomGrowthPolicy, .canonicalImportQuarantine, .modelAuthorityCeiling,
    .reviewDigest]

@[surface_novel]
structure ValidationContext where
  protocolVersion : Nat
  bundle : PatchBundle
  expectedRequestId : String
  expectedSessionId : String
  expectedProjectFingerprint : EnvironmentFingerprint
  baseFilesFresh : Bool
  utf8BoundariesObserved : Bool
  expectedTextHashesMatch : Bool
  expectedTypeHashesMatch : Bool
  candidateQuarantineObserved : Bool
  forbiddenTokensAbsent : Bool
  importsAllowed : Bool
  publicDeclarationsPreserved : Bool
  classificationTagsPreserved : Bool
  axiomPolicySatisfied : Bool
  canonicalImportsQuarantined : Bool
  expectedReviewDigest : ContentHash256
  observedReviewDigest : ContentHash256

@[expose] def rangesDisjoint (left right : SourceEditGuard) : Bool :=
  left.targetPath != right.targetPath ||
    left.expectedRange.endByte.value ≤ right.expectedRange.startByte.value ||
    right.expectedRange.endByte.value ≤ left.expectedRange.startByte.value

@[expose] def operationsNonoverlap : List ProjectPatchOperation → Bool
  | [] => true
  | operation :: rest =>
      rest.all (fun other => rangesDisjoint operation.guard other.guard) &&
        operationsNonoverlap rest

@[expose] def operationSequenceValid (operations : List ProjectPatchOperation) : Bool :=
  operations.map (fun operation => operation.guard.sequenceNumber) ==
    List.range operations.length

@[expose] def sourceRangesOrdered (operations : List ProjectPatchOperation) : Bool :=
  operations.all fun operation => verifySourceByteRange operation.guard.expectedRange

@[expose] def evaluateValidationRule
    (context : ValidationContext) : ValidationRule → Bool
  | .schemaVersion => context.bundle.schema == "surface.lean-patch-bundle.v1"
  | .protocolVersion => context.protocolVersion == 1
  | .requestIdentity => context.bundle.requestId == context.expectedRequestId
  | .sessionIdentity => context.bundle.sessionId == context.expectedSessionId
  | .baseProjectFingerprint =>
      context.bundle.baseProjectFingerprint == context.expectedProjectFingerprint
  | .baseFileHashFreshness => context.baseFilesFresh
  | .allowedPathMembership =>
      context.bundle.operations.all
        (ProjectPatchOperation.targetsAllowed context.bundle.allowedPaths)
  | .sourceRangeOrdering => sourceRangesOrdered context.bundle.operations
  | .utf8BoundaryReceiptPresence => context.utf8BoundariesObserved
  | .expectedTextHash => context.expectedTextHashesMatch
  | .expectedTypeHash => context.expectedTypeHashesMatch
  | .operationCount =>
      context.bundle.operations.length ≤ context.bundle.operationCountBound
  | .operationOrdering => operationSequenceValid context.bundle.operations
  | .operationNonOverlap => operationsNonoverlap context.bundle.operations
  | .absenceOfStatementOperations =>
      context.bundle.operations.all fun operation =>
        !operation.action.changesTheoremStatement
  | .candidatePathQuarantine => context.candidateQuarantineObserved
  | .forbiddenSourceTokens => context.forbiddenTokensAbsent
  | .allowedImportPolicy => context.importsAllowed
  | .publicDeclarationPreservation => context.publicDeclarationsPreserved
  | .classificationTagPreservation => context.classificationTagsPreserved
  | .axiomGrowthPolicy => context.axiomPolicySatisfied
  | .canonicalImportQuarantine => context.canonicalImportsQuarantined
  | .modelAuthorityCeiling => decide (context.bundle.authority = .modelProposed)
  | .reviewDigest => context.expectedReviewDigest == context.observedReviewDigest

/-- The Prop specification for every finite rule. -/
@[expose] def ValidationRule.Holds
    (rule : ValidationRule) (context : ValidationContext) : Prop :=
  evaluateValidationRule context rule = true

@[expose] def verifyValidationRule
    (rule : ValidationRule) (context : ValidationContext) : Bool :=
  evaluateValidationRule context rule

@[surface_novel, surface_published]
theorem verifyValidationRule_sound (rule : ValidationRule)
    (context : ValidationContext)
    (h : verifyValidationRule rule context = true) : rule.Holds context :=
  h

@[expose] def ValidationContext.Valid (context : ValidationContext) : Prop :=
  allValidationRules.all (fun rule => verifyValidationRule rule context) = true

@[expose] def verifyValidationContext (context : ValidationContext) : Bool :=
  allValidationRules.all fun rule => verifyValidationRule rule context

@[surface_novel, surface_published]
theorem verifyValidationContext_sound (context : ValidationContext)
    (h : verifyValidationContext context = true) : context.Valid :=
  h

@[surface_novel, surface_published]
theorem model_authority_validation_does_not_promote (context : ValidationContext)
    (h : (.modelAuthorityCeiling : ValidationRule).Holds context) :
    context.bundle.authority = .modelProposed := by
  change decide (context.bundle.authority = .modelProposed) = true at h
  exact of_decide_eq_true h

end Surface.Refactor
```
