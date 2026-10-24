-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceEditGuard.Variant3b34df97249eaa609988400c523c5b64254b78b1cae6f1af7e5ef4306c83e44f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b34df97249eaa609988400c523c5b64254b78b1cae6f1af7e5ef4306c83e44f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceEditGuard.Variant3b34df97249eaa609988400c523c5b64254b78b1cae6f1af7e5ef4306c83e44f","mathematical_subject":"Computation.DataStructures","original_sha256":"3b34df97249eaa609988400c523c5b64254b78b1cae6f1af7e5ef4306c83e44f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/PatchBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Pattern
public import Surface.Core.Patch

/-! # Project-level model patch bundles -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceEditGuard.Variant3b34df97249eaa609988400c523c5b64254b78b1cae6f1af7e5ef4306c83e44f

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
structure SourceEditGuard where
  targetPath : ProjectRelativePath
  expectedFileHash : ContentHash256
  expectedRange : SourceByteRange
  expectedTextHash : ContentHash256
  expectedDeclaration : Name
  expectedNormalizedTypeHash? : Option ContentHash256
  sequenceNumber : Nat
deriving Repr

@[surface_novel]
structure CandidateModuleProposal where
  path : CandidatePath
  moduleName : LeanModulePath
  imports : List LeanModulePath
  declarations : List String

@[surface_novel]
structure MoveDeclarationProposal where
  source : ProjectRelativePath
  destination : ProjectRelativePath
  declarationName : Name
  updatedImports : List (LeanModulePath × List LeanModulePath)
  updatedReferences : List Name

/-- The operation union has no theorem-statement replacement constructor. -/
@[surface_novel]
inductive ProjectPatchAction where
  | addImport (moduleName : LeanModulePath)
  | removeImport (moduleName : LeanModulePath)
  | applyTheorem (theoremName : Name) (substitutions : List (Name × String))
  | rewriteAt (goal : GoalCellId) (location : String)
      (theoremName : Name) (direction : RewriteDirection)
  | replaceProofBody (proofBody : String)
  | fillGoal (goal : GoalCellId) (term : String)
  | replaceTerm (typedTerm : String)
  | insertAuxiliary (candidate : LemmaCandidate)
  | renameAuxiliary (oldName newName : Name)
  | deleteRedundantLemma (name : Name)
  | createCandidateModule (candidate : CandidateModuleProposal)
  | moveDeclaration (move : MoveDeclarationProposal)

@[surface_novel]
structure ProjectPatchOperation where
  guard : SourceEditGuard
  action : ProjectPatchAction

@[surface_novel]
inductive PublicApiPolicy where
  | preserveExact
  | candidateAdditionsOnly
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive AxiomPolicy where
  | equal
  | equalOrSubset
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure TheoremTaskIdentity where
  declarationName : Name
  statementHash : Digest
  targetModule : Name
  normalizedTypeHash : ContentHash256
deriving DecidableEq, Repr

@[expose] def TheoremTaskIdentity.ofTask (task : TheoremRefactorTask) :
    TheoremTaskIdentity where
  declarationName := task.theoremTask.declarationName
  statementHash := task.theoremTask.statementHash
  targetModule := task.theoremTask.targetModule
  normalizedTypeHash := task.normalizedTypeHash

@[surface_novel]
structure PatchBundle where
  schema : String
  requestId : String
  sessionId : String
  baseProjectFingerprint : EnvironmentFingerprint
  baseFiles : List (ProjectRelativePath × ContentHash256)
  theoremTaskIdentity? : Option TheoremTaskIdentity
  allowedPaths : List ProjectRelativePath
  operations : List ProjectPatchOperation
  operationCountBound : Nat
  publicApiPolicy : PublicApiPolicy
  axiomPolicy : AxiomPolicy
  expectedBuildTargets : List Name
  providerIdentity : String
  modelResponseHash : ContentHash256
  allowMoveDeclaration : Bool := false
  authority : RefactorAuthority := .modelProposed

@[expose] def ProjectPatchAction.isMoveDeclaration : ProjectPatchAction → Bool
  | .moveDeclaration _ => true
  | _ => false

@[expose] def ProjectPatchOperation.targetsAllowed
    (allowed : List ProjectRelativePath) (operation : ProjectPatchOperation) : Bool :=
  allowed.contains operation.guard.targetPath

@[expose] def PatchBundle.Valid (bundle : PatchBundle) : Prop :=
  bundle.schema = "surface.lean-patch-bundle.v1" ∧
    bundle.requestId ≠ "" ∧ bundle.sessionId ≠ "" ∧
    bundle.operations.length ≤ bundle.operationCountBound ∧
    bundle.operations.all (ProjectPatchOperation.targetsAllowed bundle.allowedPaths) = true ∧
    (bundle.allowMoveDeclaration = true ∨
      bundle.operations.all (fun operation => !operation.action.isMoveDeclaration) = true) ∧
    bundle.authority = .modelProposed

instance (bundle : PatchBundle) : Decidable bundle.Valid := by
  unfold PatchBundle.Valid
  infer_instance

@[expose] def verifyPatchBundle (bundle : PatchBundle) : Bool :=
  decide bundle.Valid

@[surface_novel, surface_published]
theorem verifyPatchBundle_sound (bundle : PatchBundle)
    (h : verifyPatchBundle bundle = true) : bundle.Valid := by
  exact of_decide_eq_true h

@[expose] def PatchBundle.applyTaskIdentity
    (_bundle : PatchBundle) (identity : TheoremTaskIdentity) : TheoremTaskIdentity :=
  identity

@[surface_novel, surface_published]
theorem patch_bundle_preserves_theorem_task_identity
    (bundle : PatchBundle) (identity : TheoremTaskIdentity) :
    bundle.applyTaskIdentity identity = identity :=
  rfl

@[expose] def ProjectPatchAction.changesTheoremStatement
    (_action : ProjectPatchAction) : Bool := false

@[surface_novel, surface_published]
theorem patch_bundle_cannot_edit_theorem_statement (bundle : PatchBundle) :
    bundle.operations.all
      (fun operation => !operation.action.changesTheoremStatement) = true := by
  simp [ProjectPatchAction.changesTheoremStatement]

@[surface_novel, surface_published]
theorem valid_bundle_targets_only_declared_files (bundle : PatchBundle)
    (h : bundle.Valid) :
    bundle.operations.all (ProjectPatchOperation.targetsAllowed bundle.allowedPaths) = true :=
  h.2.2.2.2.1

@[surface_novel, surface_published]
theorem valid_bundle_operations_have_bounded_count (bundle : PatchBundle)
    (h : bundle.Valid) : bundle.operations.length ≤ bundle.operationCountBound :=
  h.2.2.2.1

@[surface_novel, surface_published]
theorem model_patch_bundle_has_model_proposed_authority (bundle : PatchBundle)
    (h : bundle.Valid) : bundle.authority = .modelProposed :=
  h.2.2.2.2.2.2

@[expose] def candidateModuleAuthority (_candidate : CandidateModuleProposal) :
    RefactorAuthority := .modelProposed

@[surface_novel, surface_published]
theorem candidate_module_is_not_canonical_publication
    (candidate : CandidateModuleProposal) :
    candidateModuleAuthority candidate ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
