# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variantb22d0f995d5c829159257c0887a671802fd9f60709117635ed79cab2dd9c5627

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aafb33211f85b446ceb73d249d585ac93bd05fee` · SHA-256 `0a22b8901bc6be262a3dea1f5b0f7fe866f2d4595cdf6e6d687cb4332ed7bfcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationKind.Variant49677f76e0eb36ab79c5277260f97de7cc87e42c4444227475097aaa4fda9462","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49677f76e0eb36ab79c5277260f97de7cc87e42c4444227475097aaa4fda9462","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationKind.Variant49677f76e0eb36ab79c5277260f97de7cc87e42c4444227475097aaa4fda9462","mathematical_subject":"Computation.DataStructures","original_sha256":"49677f76e0eb36ab79c5277260f97de7cc87e42c4444227475097aaa4fda9462","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Project.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Artifact

/-! # Finite project snapshots -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationKind.Variant49677f76e0eb36ab79c5277260f97de7cc87e42c4444227475097aaa4fda9462

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive DeclarationKind where
  | theorem
  | definition
  | opaqueDeclaration
  | inductiveType
  | structureType
  | instance
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive ProofObservation where
  | checked
  | declarationOnly
  | unavailable
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure EnvironmentFingerprint where
  project : ContentHash256
  imports : ContentHash256
  toolchain : ToolchainFingerprint
deriving DecidableEq, Repr

@[surface_novel]
structure FileSnapshot where
  path : ProjectRelativePath
  root : AllowedRoot
  contentHash : ContentHash256
  byteLength : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ModuleSnapshot where
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  imports : List LeanModulePath
  sourceHash : ContentHash256
  moduleFingerprint : ContentHash256
  canonical : Bool
  generated : Bool
  legacy : Bool
deriving DecidableEq, Repr

@[surface_novel]
structure ImportEdge where
  importer : LeanModulePath
  imported : LeanModulePath
deriving DecidableEq, Repr

@[surface_novel]
structure DeclarationSnapshot where
  declarationName : Name
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  declarationRange : SourceByteRange
  selectionRange : SourceByteRange
  kind : DeclarationKind
  normalizedType : String
  structuralExpressionHash : ContentHash256
  typeHash : ContentHash256
  sourceHash : ContentHash256
  proofStatus : ProofObservation
  classificationTags : List Name
  directDependencies : List Name
  projectDependencies : List Name
  importedDependencies : List Name
  axiomClosure : List Name
  docstring? : Option String
  publiclyVisible : Bool
deriving DecidableEq, Repr

@[surface_novel]
structure ProjectPolicy where
  allowedRoots : List AllowedRoot
  canonicalRoot : AllowedRoot
  generatedRoot : AllowedRoot
  legacyRoot : AllowedRoot
  allowMoveDeclaration : Bool := false
deriving DecidableEq, Repr

@[surface_novel]
structure ProjectSnapshot where
  schema : String
  fingerprint : EnvironmentFingerprint
  policy : ProjectPolicy
  files : List FileSnapshot
  modules : List ModuleSnapshot
  importEdges : List ImportEdge
  declarations : List DeclarationSnapshot
deriving Repr

@[expose] def verifyFileSnapshotInPolicy
    (policy : ProjectPolicy) (file : FileSnapshot) : Bool :=
  verifyProjectRelativePath file.path &&
    (file.path.raw == file.root.path.raw ||
      file.path.raw.startsWith (file.root.path.raw ++ "/")) &&
    policy.allowedRoots.contains file.root

@[expose] def verifyDeclarationSnapshotInFiles
    (files : List FileSnapshot) (decl : DeclarationSnapshot) : Bool :=
  verifySourceByteRange decl.declarationRange &&
    verifySourceByteRange decl.selectionRange &&
    (files.map (fun file => file.path)).contains decl.sourcePath

@[expose] def ProjectSnapshot.Valid (snapshot : ProjectSnapshot) : Prop :=
  snapshot.schema = "surface.project-snapshot.v1" ∧
    (snapshot.files.map (fun file => file.path)).Nodup ∧
    (snapshot.modules.map (fun module => module.moduleName)).Nodup ∧
    (snapshot.declarations.map (fun decl => decl.declarationName)).Nodup ∧
    snapshot.files.all (verifyFileSnapshotInPolicy snapshot.policy) = true ∧
    snapshot.declarations.all
      (verifyDeclarationSnapshotInFiles snapshot.files) = true

instance (snapshot : ProjectSnapshot) : Decidable snapshot.Valid := by
  unfold ProjectSnapshot.Valid
  infer_instance

@[expose] def verifyProjectSnapshot (snapshot : ProjectSnapshot) : Bool :=
  decide snapshot.Valid

@[surface_novel, surface_published]
theorem verifyProjectSnapshot_sound (snapshot : ProjectSnapshot)
    (h : verifyProjectSnapshot snapshot = true) : snapshot.Valid := by
  exact of_decide_eq_true h

@[expose] def projectSnapshotAuthority (_snapshot : ProjectSnapshot) :
    RefactorAuthority := .environmentObserved

@[surface_novel, surface_published]
theorem project_snapshot_is_environment_observation (snapshot : ProjectSnapshot) :
    projectSnapshotAuthority snapshot = .environmentObserved :=
  rfl

end Surface.Refactor
```
