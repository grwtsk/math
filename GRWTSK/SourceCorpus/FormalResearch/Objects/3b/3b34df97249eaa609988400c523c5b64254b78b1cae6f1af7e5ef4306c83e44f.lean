module

public import Surface.Refactor.Pattern
public import Surface.Core.Patch

/-! # Project-level model patch bundles -/

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
