# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Task.Variantd1e215e99938005b01604d99945db4edd9ec1a385cd95e96bdc17c13ede06d63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f910eb9f371f36c4167cf52dfbe49626adc3ee` · SHA-256 `af4cff6073f409f13ea6aa6dbe15ddc62a772f12c96d74567f2a499a690763de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefactorIntent.Variant99f78b8d65030a15f5d669facf74ba3c0b03fb984b4fdac2a87e8da0931304b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99f78b8d65030a15f5d669facf74ba3c0b03fb984b4fdac2a87e8da0931304b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RefactorIntent.Variant99f78b8d65030a15f5d669facf74ba3c0b03fb984b4fdac2a87e8da0931304b8","mathematical_subject":"Computation.DataStructures","original_sha256":"99f78b8d65030a15f5d669facf74ba3c0b03fb984b4fdac2a87e8da0931304b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Project

/-! # Immutable refactor tasks -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefactorIntent.Variant99f78b8d65030a15f5d669facf74ba3c0b03fb984b4fdac2a87e8da0931304b8

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive RefactorIntent where
  | prove
  | repair
  | refactor
  | deduplicate
  | modernize
  | moveDeclaration
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RefactorBudget where
  maxModelCalls : Nat
  maxRepairRounds : Nat
  maxPatchOperations : Nat
  maxInputTokens : Nat
  maxOutputTokens : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure RefactorInvariantPolicy where
  preserveDeclarationName : Bool := true
  preserveNormalizedType : Bool := true
  preserveSourceModule : Bool := true
  preservePublicApi : Bool := true
  axiomClosureEqualOrSubset : Bool := true
  forbidCandidateDependencies : Bool := true
  forbidLegacyDependencies : Bool := true
deriving DecidableEq, Repr

/-- Wraps the existing proposition-owning task.  There is no replacement
statement field. -/
@[surface_novel]
structure TheoremRefactorTask where
  schema : String
  requestId : String
  baseProjectFingerprint : EnvironmentFingerprint
  theoremTask : TheoremTask
  sourcePath : ProjectRelativePath
  sourceHash : ContentHash256
  normalizedTypeHash : ContentHash256
  allowedPaths : List ProjectRelativePath
  intent : RefactorIntent
  invariantPolicy : RefactorInvariantPolicy
  budget : RefactorBudget
  provenance : Provenance
  authorityCeiling : RefactorAuthority

/-- Non-theorem declarations have a separate task and no fabricated `Prop`. -/
@[surface_novel]
structure DeclarationRefactorTask where
  schema : String
  requestId : String
  baseProjectFingerprint : EnvironmentFingerprint
  declarationName : Name
  targetModule : LeanModulePath
  declarationKind : DeclarationKind
  sourcePath : ProjectRelativePath
  sourceHash : ContentHash256
  normalizedTypeHash : ContentHash256
  allowedPaths : List ProjectRelativePath
  intent : RefactorIntent
  invariantPolicy : RefactorInvariantPolicy
  budget : RefactorBudget
  provenance : Provenance
  authorityCeiling : RefactorAuthority
deriving Repr

@[surface_novel]
inductive RefactorTask where
  | theoremTask (task : TheoremRefactorTask)
  | declarationTask (task : DeclarationRefactorTask)

@[expose] def TheoremRefactorTask.statementIdentity
    (task : TheoremRefactorTask) : Digest :=
  task.theoremTask.statementHash

@[expose] def TheoremRefactorTask.targetModule
    (task : TheoremRefactorTask) : Name :=
  task.theoremTask.targetModule

@[surface_novel, surface_published]
theorem theorem_refactor_task_statement_identity_fixed
    (task : TheoremRefactorTask) :
    task.statementIdentity = task.theoremTask.statementHash :=
  rfl

@[surface_novel, surface_published]
theorem theorem_refactor_task_target_module_fixed
    (task : TheoremRefactorTask) :
    task.targetModule = task.theoremTask.targetModule :=
  rfl

@[surface_novel, surface_published]
theorem declaration_task_is_not_theorem_task
    (declaration : DeclarationRefactorTask) (theoremTask : TheoremRefactorTask) :
    RefactorTask.declarationTask declaration ≠ .theoremTask theoremTask := by
  intro h
  cases h

@[expose] def RefactorBudget.Allows
    (budget : RefactorBudget) (modelCalls repairRounds operations : Nat) : Prop :=
  modelCalls ≤ budget.maxModelCalls ∧
    repairRounds ≤ budget.maxRepairRounds ∧
    operations ≤ budget.maxPatchOperations

@[surface_novel, surface_published]
theorem budget_bounds_model_operations (budget : RefactorBudget)
    (modelCalls repairRounds operations : Nat)
    (h : budget.Allows modelCalls repairRounds operations) :
    modelCalls ≤ budget.maxModelCalls ∧
      repairRounds ≤ budget.maxRepairRounds ∧
      operations ≤ budget.maxPatchOperations :=
  h

end Surface.Refactor

```
