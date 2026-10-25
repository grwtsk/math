# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NetworkSurgeryFixture.Variant99a3b62af3b2a73fd0b106ab8bef0e6f8df5fd706d4754fdec214e7854f07e77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65de9bca006a8d2de779f6f671d609dfb17ac7fc` · SHA-256 `bdcbbb4a826b3673e1b61be33f6e500ab344bd9c624c62ffd6852620d1f376ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Code.Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Code.Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b","mathematical_subject":"Logic.Foundations","original_sha256":"806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/Generated/NetworkSurgeryFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.NetworkSurgery

/-!
# Quarantined finite repository-surgery fixture

This module is finite regression evidence.  Its parser/build observations are
fixture data, not unrestricted source validity or theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Code.Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b

namespace Generated.NetworkSurgeryFixture

open Surface.Core.Transport Surface.Core.NetworkSurgery

private def code (value : Nat) : StableCode :=
  ⟨value % revisionModulus, Nat.mod_lt _ (by simp [revisionModulus])⟩

def zeroHash : Hash256 :=
  ⟨"sha256", "0000000000000000000000000000000000000000000000000000000000000000"⟩

def oneHash : Hash256 :=
  ⟨"sha256", "1111111111111111111111111111111111111111111111111111111111111111"⟩

def fileA : SourceFileId := code 1
def fileB : SourceFileId := code 2
def generatedFile : SourceFileId := code 3
def declarationA : DeclarationId := code 10
def declarationB : DeclarationId := code 11
def declarationC : DeclarationId := code 12
def importA : ImportId := code 20
def importB : ImportId := code 21
def referenceA : ReferenceId := code 30
def referenceB : ReferenceId := code 31
def referenceC : ReferenceId := code 32
def referenceD : ReferenceId := code 33
def session : SessionId := code 40
def proposal : ProposalId := code 41
def operation : OperationId := code 42
def rewriteOperation : OperationId := code 43

def board : RepositoryBoard where
  snapshotHash := zeroHash
  hosts := [
    ⟨fileA, .sourceFile, .canonicalSource⟩,
    ⟨fileB, .sourceFile, .canonicalSource⟩,
    ⟨generatedFile, .sourceFile, .generatedQuarantine⟩,
    ⟨declarationA, .declarationOrItem, .canonicalSource⟩,
    ⟨declarationB, .declarationOrItem, .canonicalSource⟩,
    ⟨declarationC, .declarationOrItem, .generatedQuarantine⟩]
  edges := [
    ⟨code 50, fileA, declarationA, .owns⟩,
    ⟨code 51, fileB, declarationB, .owns⟩,
    ⟨code 52, generatedFile, declarationC, .owns⟩]
  allowedFiles := [fileA, fileB, generatedFile]
  declarations := [declarationA, declarationB, declarationC]
  imports := [importA, importB]
  references := [referenceA, referenceB, referenceC, referenceD]
  buildTargets := [code 60]

def baseRevision : Revision := code 1
def proposalRevision : Revision := code 2

def context : NetworkSurgeryAdmissionContext where
  contractHash := zeroHash
  sourceSnapshotHash := zeroHash
  sessionId := session
  revision := baseRevision
  board := board
  currentProposal? := none

/-!
The fixture move relocates `declarationA` from `fileA` to `fileB`.  The two
trees have the same finite node population but different ownership topology.
Their Dyck projections are both balanced; neither projection retains the node
identities needed to authorize the move.
-/

def beforeTree : FiniteTree := .node (code 70) [
  .node fileA [.node declarationA []],
  .node fileB [.node declarationB []]]

def afterTree : FiniteTree := .node (code 70) [
  .node fileA [],
  .node fileB [.node declarationB [], .node declarationA []]]

def oldOwnershipAtom : InterfaceAtom :=
  ⟨.ownership, fileA, declarationA, code 80⟩

def newOwnershipAtom : InterfaceAtom :=
  ⟨.ownership, fileB, declarationA, code 81⟩

def sourceFrontierAtom : InterfaceAtom :=
  ⟨.delimiter, fileA, declarationA, code 82⟩

def destinationFrontierAtom : InterfaceAtom :=
  ⟨.delimiter, fileB, declarationA, code 83⟩

def referenceRewriteAtom : InterfaceAtom :=
  ⟨.symbolReference, declarationA, referenceA, code 84⟩

/-!
Every term below has an operational label.  Excision and graft emit ownership,
frontier, and reference obligations; the rewrite ledger explicitly discharges
the matching atoms.  Balance is coefficientwise rather than an empty-ledger
shortcut.
-/
def declarationMoveBoundary : PreparedBoundaryLedger where
  excision := [
    ⟨oldOwnershipAtom, -1⟩,
    ⟨sourceFrontierAtom, 1⟩,
    ⟨referenceRewriteAtom, 1⟩]
  graft := [
    ⟨newOwnershipAtom, 1⟩,
    ⟨destinationFrontierAtom, -1⟩]
  rewrite := [
    ⟨oldOwnershipAtom, 1⟩,
    ⟨newOwnershipAtom, -1⟩,
    ⟨sourceFrontierAtom, -1⟩,
    ⟨destinationFrontierAtom, 1⟩,
    ⟨referenceRewriteAtom, -1⟩]

@[surface_candidate]
theorem declarationMoveBoundary_is_nonempty :
    declarationMoveBoundary.totalBoundary ≠ [] := by
  simp [PreparedBoundaryLedger.totalBoundary, BoundaryLedger.add,
    declarationMoveBoundary]

@[surface_candidate]
theorem declarationMoveBoundary_balanced :
    BoundaryBalanced declarationMoveBoundary := by
  simp [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.coefficient, BoundaryLedger.add,
    declarationMoveBoundary, oldOwnershipAtom, newOwnershipAtom,
    sourceFrontierAtom, destinationFrontierAtom, referenceRewriteAtom,
    fileA, fileB, declarationA, referenceA, code]

@[surface_candidate]
theorem declarationMove_changes_finite_tree : beforeTree ≠ afterTree := by
  simp [beforeTree, afterTree]

def legalDeclarationMove : PreparedNetworkSurgeryProposal where
  internalContractValid := true
  contractHash := zeroHash
  sourceSnapshotHash := zeroHash
  sessionId := session
  baseRevision := baseRevision
  proposalRevision := proposalRevision
  proposalId := proposal
  proposalHash := oneHash
  moveKind := .moveDeclaration
  selectedPieces := [
    .file fileA, .file fileB, .declaration declarationA, .reference referenceA]
  operationIds := [operation, rewriteOperation]
  declaredEdgeIds := [code 50, code 51]
  boundary := declarationMoveBoundary
  beforeProjection := projectTree beforeTree
  afterProjection := projectTree afterTree
  beforeDeclaration? := some declarationA
  afterDeclaration? := some declarationA
  beforeStatementHash? := some zeroHash
  afterStatementHash? := some zeroHash
  sourceRangesMatch := true
  operationsOrderedAndNonoverlapping := true
  capacityWithinLimits := true
  publicApiPreserved := true
  classificationsPreserved := true
  axiomPolicyPreserved := true
  languageValidationObserved := true
  expectedDeterministicResult := true

theorem legalDeclarationMove_valid : legalDeclarationMove.Valid context := by
  constructor
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · decide
  · simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  · simp [PreparedNetworkSurgeryProposal.IsReplay, context]
  · simp [PreparedNetworkSurgeryProposal.PiecesDeclared,
      RepositoryBoard.containsPiece, legalDeclarationMove, context, board,
      fileA, fileB, declarationA, referenceA]
  · simp [PreparedNetworkSurgeryProposal.EdgesDeclared, legalDeclarationMove,
      context, board]
  · norm_num [legalDeclarationMove, operation, rewriteOperation, code,
      revisionModulus]
  · rfl
  · rfl
  · rfl
  · exact declarationMoveBoundary_balanced
  · exact projectTree_balanced afterTree
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

def admittedLegalMove : AdmittedMove context :=
  ⟨legalDeclarationMove, legalDeclarationMove_valid⟩

@[surface_candidate]
theorem legalDeclarationMove_is_admitted :
    verifyNetworkSurgeryProposal context legalDeclarationMove =
      .admitted admittedLegalMove := by
  classical
  simp [verifyNetworkSurgeryProposal, legalDeclarationMove_valid,
    admittedLegalMove]

def staleMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with baseRevision := code 0 }

def staleSnapshotMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with sourceSnapshotHash := oneHash }

def internalContractViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with internalContractValid := false }

def invalidContractMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with contractHash := oneHash }

def invalidSessionMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with sessionId := code 99 }

def conflictContext : NetworkSurgeryAdmissionContext :=
  { context with currentProposal? := some ⟨proposalRevision, zeroHash⟩ }

def sameRevisionConflict : PreparedNetworkSurgeryProposal := legalDeclarationMove

def unbalancedPreview : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with afterProjection := [.close] }

def repairedCandidate : PreparedNetworkSurgeryProposal := legalDeclarationMove

def publicApiViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with publicApiPreserved := false }

def statementIdentityViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with afterStatementHash? := some oneHash }

def axiomGrowthViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with axiomPolicyPreserved := false }

def unknownPieceMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with selectedPieces := [.file (code 99)] }

def unknownEdgeMove : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with declaredEdgeIds := [code 99] }

def sourceRangeViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with sourceRangesMatch := false }

def overlappingEditsViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with operationsOrderedAndNonoverlapping := false }

def capacityViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with capacityWithinLimits := false }

def residualBoundary : PreparedBoundaryLedger :=
  { declarationMoveBoundary with
    rewrite := ⟨oldOwnershipAtom, 1⟩ :: declarationMoveBoundary.rewrite }

def boundaryViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with boundary := residualBoundary }

def declarationIdentityViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with afterDeclaration? := some declarationB }

def classificationViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with classificationsPreserved := false }

def languageValidationViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with languageValidationObserved := false }

def deterministicResultViolation : PreparedNetworkSurgeryProposal :=
  { legalDeclarationMove with expectedDeterministicResult := false }

private theorem rejectInBaseContext
    (candidate : PreparedNetworkSurgeryProposal)
    (code : NetworkSurgeryRejectionCode)
    (invalid : ¬ candidate.Valid context)
    (classified : firstProposalFailure context candidate = code) :
    verifyNetworkSurgeryProposal context candidate = .rejected code := by
  exact verifyNetworkSurgeryProposal_rejected_of_invalid
    context candidate code invalid
      (by simp [PreparedNetworkSurgeryProposal.IsReplay, context]) classified

private theorem baseContext_has_no_equalRevisionConflict
    (candidate : PreparedNetworkSurgeryProposal) :
    ¬ candidate.HasEqualRevisionConflict context := by
  simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]

private theorem piecesDeclared_of_sameSelection
    (candidate : PreparedNetworkSurgeryProposal)
    (same : candidate.selectedPieces = legalDeclarationMove.selectedPieces) :
    candidate.PiecesDeclared context := by
  intro piece member
  apply legalDeclarationMove_valid.piecesDeclared piece
  rwa [same] at member

private theorem edgesDeclared_of_sameEdges
    (candidate : PreparedNetworkSurgeryProposal)
    (same : candidate.declaredEdgeIds = legalDeclarationMove.declaredEdgeIds) :
    candidate.EdgesDeclared context := by
  intro edgeId member
  apply legalDeclarationMove_valid.edgesDeclared edgeId
  rwa [same] at member

private theorem boundaryBalanced_of_sameBoundary
    (candidate : PreparedNetworkSurgeryProposal)
    (same : candidate.boundary = legalDeclarationMove.boundary) :
    BoundaryBalanced candidate.boundary := by
  rw [same]
  exact legalDeclarationMove_valid.boundaryBalanced

private theorem projectionBalanced_of_sameProjection
    (candidate : PreparedNetworkSurgeryProposal)
    (same : candidate.afterProjection = legalDeclarationMove.afterProjection) :
    balanced candidate.afterProjection := by
  rw [same]
  exact legalDeclarationMove_valid.bracketProjectionValid

private theorem proposalRevisionFresh_of_sameRevision
    (candidate : PreparedNetworkSurgeryProposal)
    (same : candidate.proposalRevision = legalDeclarationMove.proposalRevision) :
    context.revision < candidate.proposalRevision := by
  rw [same]
  exact legalDeclarationMove_valid.proposalRevisionFresh

private theorem zeroHash_ne_oneHash : zeroHash ≠ oneHash := by
  intro equality
  have hexEquality := congrArg Hash256.hex equality
  simp [zeroHash, oneHash] at hexEquality

private theorem oneHash_ne_zeroHash : oneHash ≠ zeroHash :=
  Ne.symm zeroHash_ne_oneHash

@[surface_candidate]
theorem residualBoundary_is_unbalanced : ¬ BoundaryBalanced residualBoundary := by
  intro balancedBoundary
  have oldOwnershipCoefficient := balancedBoundary
    ⟨oldOwnershipAtom, 1⟩
    (by simp [residualBoundary, declarationMoveBoundary,
      PreparedBoundaryLedger.totalBoundary, BoundaryLedger.add])
  norm_num [residualBoundary, BoundaryBalanced,
    PreparedBoundaryLedger.totalBoundary, BoundaryLedger.IsZero,
    BoundaryLedger.coefficient, BoundaryLedger.add, declarationMoveBoundary,
    oldOwnershipAtom, newOwnershipAtom, sourceFrontierAtom,
    destinationFrontierAtom, referenceRewriteAtom, fileA, fileB, declarationA,
    referenceA, code] at oldOwnershipCoefficient

def zeroEnergy : RepairEnergy where
  hardPolicy := []
  structural := []
  language := []
  changeCost := []
  tieBreak := 0

def ambiguousRepairCandidate : BoundedRepairCandidate where
  candidate := ⟨code 90, zeroEnergy⟩
  hardPolicySafe := false
  sourceRecoveryUnambiguous := false

def hardPolicyUnsafeCandidate : BoundedRepairCandidate where
  candidate := ⟨code 91, zeroEnergy⟩
  hardPolicySafe := false
  sourceRecoveryUnambiguous := true

@[surface_candidate]
theorem staleMove_rejects :
    verifyNetworkSurgeryProposal context staleMove = .rejected .staleRevision := by
  classical
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    have fresh := valid.baseRevisionFresh
    norm_num [staleMove, legalDeclarationMove, context, baseRevision, code,
      revisionModulus] at fresh
  · simp [PreparedNetworkSurgeryProposal.IsReplay, staleMove, context]
  · norm_num [firstProposalFailure, staleMove, legalDeclarationMove, context,
      baseRevision, proposalRevision, code, revisionModulus]

@[surface_candidate]
theorem staleSnapshotMove_rejects :
    verifyNetworkSurgeryProposal context staleSnapshotMove =
      .rejected .invalidSourceSnapshotHash := by
  classical
  have stale : staleSnapshotMove.sourceSnapshotHash ≠ context.sourceSnapshotHash := by
    intro equality
    have hexEquality := congrArg Hash256.hex equality
    simp [staleSnapshotMove, legalDeclarationMove, context, zeroHash, oneHash]
      at hexEquality
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact stale valid.sourceIdentity
  · simp [PreparedNetworkSurgeryProposal.IsReplay, staleSnapshotMove, context]
  · exact firstProposalFailure_of_invalidSourceSnapshotHash
      context staleSnapshotMove rfl rfl stale

@[surface_candidate]
theorem sameRevisionConflict_rejects :
    verifyNetworkSurgeryProposal conflictContext sameRevisionConflict =
      .rejected .equalRevisionConflict := by
  classical
  have hashNeq : zeroHash ≠ oneHash := by
    intro equality
    have hexEquality := congrArg Hash256.hex equality
    simp [zeroHash, oneHash] at hexEquality
  have conflict : sameRevisionConflict.HasEqualRevisionConflict conflictContext :=
    ⟨zeroHash, rfl, hashNeq⟩
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact valid.notEqualRevisionConflict conflict
  · simp [PreparedNetworkSurgeryProposal.IsReplay, conflictContext,
      sameRevisionConflict, legalDeclarationMove, context, hashNeq]
  · exact firstProposalFailure_of_equalRevisionConflict
      conflictContext sameRevisionConflict rfl rfl rfl rfl rfl
      (by norm_num [conflictContext, sameRevisionConflict, legalDeclarationMove,
        context, baseRevision, proposalRevision, code, revisionModulus]) conflict

@[surface_candidate]
theorem unbalancedPreview_rejects :
    verifyNetworkSurgeryProposal context unbalancedPreview =
      .rejected .bracketProjectionInvalid := by
  classical
  have notBalanced : ¬ balanced unbalancedPreview.afterProjection := by
    intro projection
    have final := projection.2
    norm_num [unbalancedPreview, finalDepth, prefixDepth, BracketBit.toDyck] at final
  have noConflict :
      ¬ unbalancedPreview.HasEqualRevisionConflict context := by
    simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  have pieces : unbalancedPreview.PiecesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.PiecesDeclared, unbalancedPreview,
      legalDeclarationMove, context, board, RepositoryBoard.containsPiece,
      declarationA]
  have edges : unbalancedPreview.EdgesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.EdgesDeclared, unbalancedPreview,
      legalDeclarationMove, context, board]
  have boundary : BoundaryBalanced unbalancedPreview.boundary := by
    simpa [unbalancedPreview] using legalDeclarationMove_valid.boundaryBalanced
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact notBalanced valid.bracketProjectionValid
  · simp [PreparedNetworkSurgeryProposal.IsReplay, unbalancedPreview, context]
  · exact firstProposalFailure_of_bracketProjectionInvalid
      context unbalancedPreview rfl rfl rfl rfl rfl
      (by norm_num [unbalancedPreview, legalDeclarationMove, context,
        baseRevision, proposalRevision, code, revisionModulus])
      noConflict pieces edges rfl rfl rfl boundary notBalanced

@[surface_candidate]
theorem repairedCandidate_is_admitted :
    verifyNetworkSurgeryProposal context repairedCandidate =
      .admitted admittedLegalMove := by
  simpa [repairedCandidate] using legalDeclarationMove_is_admitted

@[surface_candidate]
theorem publicApiViolation_rejects :
    verifyNetworkSurgeryProposal context publicApiViolation =
      .rejected .publicApiChange := by
  classical
  have noConflict :
      ¬ publicApiViolation.HasEqualRevisionConflict context := by
    simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  have pieces : publicApiViolation.PiecesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.PiecesDeclared, publicApiViolation,
      legalDeclarationMove, context, board, RepositoryBoard.containsPiece,
      declarationA]
  have edges : publicApiViolation.EdgesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.EdgesDeclared, publicApiViolation,
      legalDeclarationMove, context, board]
  have boundary : BoundaryBalanced publicApiViolation.boundary := by
    simpa [publicApiViolation] using legalDeclarationMove_valid.boundaryBalanced
  have projectionValid : balanced publicApiViolation.afterProjection := by
    simpa [publicApiViolation] using legalDeclarationMove_valid.bracketProjectionValid
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    have preserved := valid.publicApiPreserved
    simp [publicApiViolation] at preserved
  · simp [PreparedNetworkSurgeryProposal.IsReplay, publicApiViolation, context]
  · exact firstProposalFailure_of_publicApiChange
      context publicApiViolation rfl rfl rfl rfl rfl
      (by norm_num [publicApiViolation, legalDeclarationMove, context,
        baseRevision, proposalRevision, code, revisionModulus])
      noConflict pieces edges rfl rfl rfl boundary projectionValid rfl rfl rfl

@[surface_candidate]
theorem statementIdentityViolation_rejects :
    verifyNetworkSurgeryProposal context statementIdentityViolation =
      .rejected .statementChange := by
  classical
  have changed :
      statementIdentityViolation.beforeStatementHash? ≠
        statementIdentityViolation.afterStatementHash? := by
    intro equality
    have optionEquality : some zeroHash = some oneHash := by
      simpa [statementIdentityViolation, legalDeclarationMove] using equality
    have hashEquality : zeroHash = oneHash := Option.some.inj optionEquality
    have hexEquality := congrArg Hash256.hex hashEquality
    simp [zeroHash, oneHash] at hexEquality
  have noConflict :
      ¬ statementIdentityViolation.HasEqualRevisionConflict context := by
    simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  have pieces : statementIdentityViolation.PiecesDeclared context := by
    change legalDeclarationMove.PiecesDeclared context
    exact legalDeclarationMove_valid.piecesDeclared
  have edges : statementIdentityViolation.EdgesDeclared context := by
    change legalDeclarationMove.EdgesDeclared context
    exact legalDeclarationMove_valid.edgesDeclared
  have boundary : BoundaryBalanced statementIdentityViolation.boundary := by
    simpa [statementIdentityViolation] using legalDeclarationMove_valid.boundaryBalanced
  have projection : balanced statementIdentityViolation.afterProjection := by
    simpa [statementIdentityViolation] using
      legalDeclarationMove_valid.bracketProjectionValid
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact changed valid.theoremStatementIdentity
  · simp [PreparedNetworkSurgeryProposal.IsReplay, statementIdentityViolation,
      context]
  · exact firstProposalFailure_of_statementChange
      context statementIdentityViolation rfl rfl rfl rfl rfl
      (by norm_num [statementIdentityViolation, legalDeclarationMove, context,
        baseRevision, proposalRevision, code, revisionModulus])
      noConflict pieces edges rfl rfl rfl boundary projection rfl changed

@[surface_candidate]
theorem axiomGrowthViolation_rejects :
    verifyNetworkSurgeryProposal context axiomGrowthViolation =
      .rejected .axiomGrowth := by
  classical
  have noConflict :
      ¬ axiomGrowthViolation.HasEqualRevisionConflict context := by
    simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  have pieces : axiomGrowthViolation.PiecesDeclared context := by
    change legalDeclarationMove.PiecesDeclared context
    exact legalDeclarationMove_valid.piecesDeclared
  have edges : axiomGrowthViolation.EdgesDeclared context := by
    change legalDeclarationMove.EdgesDeclared context
    exact legalDeclarationMove_valid.edgesDeclared
  have boundary : BoundaryBalanced axiomGrowthViolation.boundary := by
    simpa [axiomGrowthViolation] using legalDeclarationMove_valid.boundaryBalanced
  have projection : balanced axiomGrowthViolation.afterProjection := by
    simpa [axiomGrowthViolation] using legalDeclarationMove_valid.bracketProjectionValid
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    have preserved := valid.axiomPolicyPreserved
    simp [axiomGrowthViolation] at preserved
  · simp [PreparedNetworkSurgeryProposal.IsReplay, axiomGrowthViolation, context]
  · exact firstProposalFailure_of_axiomGrowth
      context axiomGrowthViolation rfl rfl rfl rfl rfl
      (by norm_num [axiomGrowthViolation, legalDeclarationMove, context,
        baseRevision, proposalRevision, code, revisionModulus])
      noConflict pieces edges rfl rfl rfl boundary projection rfl rfl rfl rfl rfl

@[surface_candidate]
theorem ambiguousRepairCandidate_rejects_before_selection :
    selectRepairCandidate [ambiguousRepairCandidate] =
      .rejected .ambiguousSourceRecovery := by
  rfl

@[surface_candidate]
theorem noSafeRepairCandidate_rejects :
    selectRepairCandidate [hardPolicyUnsafeCandidate] =
      .rejected .noSafeCandidate := by
  rfl

/-! ## Exhaustive finite rejection-precedence examples -/

@[surface_candidate]
theorem internalContractViolation_rejects :
    verifyNetworkSurgeryProposal context internalContractViolation =
      .rejected .internalContractInvalid := by
  classical
  apply rejectInBaseContext
  · intro valid
    have contractValid := valid.internalContractValid
    simp [internalContractViolation] at contractValid
  · simp [firstProposalFailure, internalContractViolation]

@[surface_candidate]
theorem invalidContractMove_rejects :
    verifyNetworkSurgeryProposal context invalidContractMove =
      .rejected .invalidContractHash := by
  classical
  apply rejectInBaseContext
  · intro valid
    exact oneHash_ne_zeroHash valid.contractIdentity
  · simp [firstProposalFailure, invalidContractMove, legalDeclarationMove,
      context, oneHash_ne_zeroHash]

@[surface_candidate]
theorem invalidSessionMove_rejects :
    verifyNetworkSurgeryProposal context invalidSessionMove =
      .rejected .invalidSession := by
  classical
  apply rejectInBaseContext
  · intro valid
    have sessionIdentity := valid.sessionIdentity
    norm_num [invalidSessionMove, legalDeclarationMove, context, session, code,
      revisionModulus] at sessionIdentity
  · norm_num [firstProposalFailure, invalidSessionMove, legalDeclarationMove,
      context, session, code, revisionModulus]

@[surface_candidate]
theorem unknownPieceMove_rejects :
    verifyNetworkSurgeryProposal context unknownPieceMove =
      .rejected .unknownPiece := by
  classical
  have unknown : ¬ unknownPieceMove.PiecesDeclared context := by
    norm_num [PreparedNetworkSurgeryProposal.PiecesDeclared,
      RepositoryBoard.containsPiece, unknownPieceMove, legalDeclarationMove,
      context, board, fileA, fileB, generatedFile, code, revisionModulus]
  apply rejectInBaseContext
  · intro valid
    exact unknown valid.piecesDeclared
  · exact firstProposalFailure_of_unknownPiece
      context unknownPieceMove rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision unknownPieceMove rfl)
      (baseContext_has_no_equalRevisionConflict unknownPieceMove) unknown

@[surface_candidate]
theorem unknownEdgeMove_rejects :
    verifyNetworkSurgeryProposal context unknownEdgeMove =
      .rejected .unknownEdge := by
  classical
  have unknown : ¬ unknownEdgeMove.EdgesDeclared context := by
    norm_num [PreparedNetworkSurgeryProposal.EdgesDeclared, unknownEdgeMove,
      legalDeclarationMove, context, board, code, revisionModulus]
  have pieces := piecesDeclared_of_sameSelection unknownEdgeMove rfl
  apply rejectInBaseContext
  · intro valid
    exact unknown valid.edgesDeclared
  · exact firstProposalFailure_of_unknownEdge
      context unknownEdgeMove rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision unknownEdgeMove rfl)
      (baseContext_has_no_equalRevisionConflict unknownEdgeMove) pieces unknown

@[surface_candidate]
theorem sourceRangeViolation_rejects :
    verifyNetworkSurgeryProposal context sourceRangeViolation =
      .rejected .sourceRangeMismatch := by
  classical
  have pieces := piecesDeclared_of_sameSelection sourceRangeViolation rfl
  have edges := edgesDeclared_of_sameEdges sourceRangeViolation rfl
  apply rejectInBaseContext
  · intro valid
    have rangesSafe := valid.sourceRangesMatch
    simp [sourceRangeViolation] at rangesSafe
  · exact firstProposalFailure_of_sourceRangeMismatch
      context sourceRangeViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision sourceRangeViolation rfl)
      (baseContext_has_no_equalRevisionConflict sourceRangeViolation)
      pieces edges rfl

@[surface_candidate]
theorem overlappingEditsViolation_rejects :
    verifyNetworkSurgeryProposal context overlappingEditsViolation =
      .rejected .overlappingEdits := by
  classical
  have pieces := piecesDeclared_of_sameSelection overlappingEditsViolation rfl
  have edges := edgesDeclared_of_sameEdges overlappingEditsViolation rfl
  apply rejectInBaseContext
  · intro valid
    have ordered := valid.operationsOrderedAndNonoverlapping
    simp [overlappingEditsViolation] at ordered
  · exact firstProposalFailure_of_overlappingEdits
      context overlappingEditsViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision overlappingEditsViolation rfl)
      (baseContext_has_no_equalRevisionConflict overlappingEditsViolation)
      pieces edges rfl rfl

@[surface_candidate]
theorem capacityViolation_rejects :
    verifyNetworkSurgeryProposal context capacityViolation =
      .rejected .capacityExceeded := by
  classical
  have pieces := piecesDeclared_of_sameSelection capacityViolation rfl
  have edges := edgesDeclared_of_sameEdges capacityViolation rfl
  apply rejectInBaseContext
  · intro valid
    have withinLimits := valid.capacityWithinLimits
    simp [capacityViolation] at withinLimits
  · exact firstProposalFailure_of_capacityExceeded
      context capacityViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision capacityViolation rfl)
      (baseContext_has_no_equalRevisionConflict capacityViolation)
      pieces edges rfl rfl rfl

@[surface_candidate]
theorem boundaryViolation_rejects :
    verifyNetworkSurgeryProposal context boundaryViolation =
      .rejected .boundaryLedgerUnbalanced := by
  classical
  have pieces := piecesDeclared_of_sameSelection boundaryViolation rfl
  have edges := edgesDeclared_of_sameEdges boundaryViolation rfl
  apply rejectInBaseContext
  · intro valid
    exact residualBoundary_is_unbalanced valid.boundaryBalanced
  · exact firstProposalFailure_of_boundaryLedgerUnbalanced
      context boundaryViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision boundaryViolation rfl)
      (baseContext_has_no_equalRevisionConflict boundaryViolation)
      pieces edges rfl rfl rfl residualBoundary_is_unbalanced

@[surface_candidate]
theorem declarationIdentityViolation_rejects :
    verifyNetworkSurgeryProposal context declarationIdentityViolation =
      .rejected .identityChange := by
  classical
  have pieces := piecesDeclared_of_sameSelection declarationIdentityViolation rfl
  have edges := edgesDeclared_of_sameEdges declarationIdentityViolation rfl
  have boundary := boundaryBalanced_of_sameBoundary declarationIdentityViolation rfl
  have projection :=
    projectionBalanced_of_sameProjection declarationIdentityViolation rfl
  have changed :
      declarationIdentityViolation.beforeDeclaration? ≠
        declarationIdentityViolation.afterDeclaration? := by
    norm_num [declarationIdentityViolation, legalDeclarationMove, declarationA,
      declarationB, code, revisionModulus]
  apply rejectInBaseContext
  · intro valid
    exact changed valid.declarationIdentity
  · exact firstProposalFailure_of_identityChange
      context declarationIdentityViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision declarationIdentityViolation rfl)
      (baseContext_has_no_equalRevisionConflict declarationIdentityViolation)
      pieces edges rfl rfl rfl boundary projection changed

@[surface_candidate]
theorem classificationViolation_rejects :
    verifyNetworkSurgeryProposal context classificationViolation =
      .rejected .classificationChange := by
  classical
  have pieces := piecesDeclared_of_sameSelection classificationViolation rfl
  have edges := edgesDeclared_of_sameEdges classificationViolation rfl
  have boundary := boundaryBalanced_of_sameBoundary classificationViolation rfl
  have projection := projectionBalanced_of_sameProjection classificationViolation rfl
  apply rejectInBaseContext
  · intro valid
    have classifications := valid.classificationsPreserved
    simp [classificationViolation] at classifications
  · exact firstProposalFailure_of_classificationChange
      context classificationViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision classificationViolation rfl)
      (baseContext_has_no_equalRevisionConflict classificationViolation)
      pieces edges rfl rfl rfl boundary projection rfl rfl rfl rfl

@[surface_candidate]
theorem languageValidationViolation_rejects :
    verifyNetworkSurgeryProposal context languageValidationViolation =
      .rejected .languageValidationError := by
  classical
  have pieces := piecesDeclared_of_sameSelection languageValidationViolation rfl
  have edges := edgesDeclared_of_sameEdges languageValidationViolation rfl
  have boundary := boundaryBalanced_of_sameBoundary languageValidationViolation rfl
  have projection :=
    projectionBalanced_of_sameProjection languageValidationViolation rfl
  apply rejectInBaseContext
  · intro valid
    have validation := valid.languageValidationObserved
    simp [languageValidationViolation] at validation
  · exact firstProposalFailure_of_languageValidationError
      context languageValidationViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision languageValidationViolation rfl)
      (baseContext_has_no_equalRevisionConflict languageValidationViolation)
      pieces edges rfl rfl rfl boundary projection rfl rfl rfl rfl rfl rfl

@[surface_candidate]
theorem deterministicResultViolation_rejects :
    verifyNetworkSurgeryProposal context deterministicResultViolation =
      .rejected .deterministicResultMismatch := by
  classical
  have pieces := piecesDeclared_of_sameSelection deterministicResultViolation rfl
  have edges := edgesDeclared_of_sameEdges deterministicResultViolation rfl
  have boundary := boundaryBalanced_of_sameBoundary deterministicResultViolation rfl
  have projection :=
    projectionBalanced_of_sameProjection deterministicResultViolation rfl
  apply rejectInBaseContext
  · intro valid
    have deterministic := valid.expectedDeterministicResult
    simp [deterministicResultViolation] at deterministic
  · exact firstProposalFailure_of_deterministicResultMismatch
      context deterministicResultViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision deterministicResultViolation rfl)
      (baseContext_has_no_equalRevisionConflict deterministicResultViolation)
      pieces edges rfl rfl rfl boundary projection rfl rfl rfl rfl rfl rfl

def fixtureRejectionCase : NetworkSurgeryRejectionCode →
    NetworkSurgeryAdmissionContext × PreparedNetworkSurgeryProposal
  | .internalContractInvalid => (context, internalContractViolation)
  | .invalidContractHash => (context, invalidContractMove)
  | .invalidSourceSnapshotHash => (context, staleSnapshotMove)
  | .invalidSession => (context, invalidSessionMove)
  | .staleRevision => (context, staleMove)
  | .equalRevisionConflict => (conflictContext, sameRevisionConflict)
  | .unknownPiece => (context, unknownPieceMove)
  | .unknownEdge => (context, unknownEdgeMove)
  | .sourceRangeMismatch => (context, sourceRangeViolation)
  | .overlappingEdits => (context, overlappingEditsViolation)
  | .capacityExceeded => (context, capacityViolation)
  | .bracketProjectionInvalid => (context, unbalancedPreview)
  | .boundaryLedgerUnbalanced => (context, boundaryViolation)
  | .identityChange => (context, declarationIdentityViolation)
  | .statementChange => (context, statementIdentityViolation)
  | .publicApiChange => (context, publicApiViolation)
  | .classificationChange => (context, classificationViolation)
  | .axiomGrowth => (context, axiomGrowthViolation)
  | .languageValidationError => (context, languageValidationViolation)
  | .deterministicResultMismatch => (context, deterministicResultViolation)

@[surface_candidate]
theorem everyLeanRejectionCode_has_exact_finite_fixture
    (code : NetworkSurgeryRejectionCode) :
    verifyNetworkSurgeryProposal (fixtureRejectionCase code).1
        (fixtureRejectionCase code).2 = .rejected code := by
  cases code with
  | internalContractInvalid =>
      exact internalContractViolation_rejects
  | invalidContractHash =>
      exact invalidContractMove_rejects
  | invalidSourceSnapshotHash =>
      exact staleSnapshotMove_rejects
  | invalidSession =>
      exact invalidSessionMove_rejects
  | staleRevision =>
      exact staleMove_rejects
  | equalRevisionConflict =>
      exact sameRevisionConflict_rejects
  | unknownPiece =>
      exact unknownPieceMove_rejects
  | unknownEdge =>
      exact unknownEdgeMove_rejects
  | sourceRangeMismatch =>
      exact sourceRangeViolation_rejects
  | overlappingEdits =>
      exact overlappingEditsViolation_rejects
  | capacityExceeded =>
      exact capacityViolation_rejects
  | bracketProjectionInvalid =>
      exact unbalancedPreview_rejects
  | boundaryLedgerUnbalanced =>
      exact boundaryViolation_rejects
  | identityChange =>
      exact declarationIdentityViolation_rejects
  | statementChange =>
      exact statementIdentityViolation_rejects
  | publicApiChange =>
      exact publicApiViolation_rejects
  | classificationChange =>
      exact classificationViolation_rejects
  | axiomGrowth =>
      exact axiomGrowthViolation_rejects
  | languageValidationError =>
      exact languageValidationViolation_rejects
  | deterministicResultMismatch =>
      exact deterministicResultViolation_rejects

end Generated.NetworkSurgeryFixture
```
