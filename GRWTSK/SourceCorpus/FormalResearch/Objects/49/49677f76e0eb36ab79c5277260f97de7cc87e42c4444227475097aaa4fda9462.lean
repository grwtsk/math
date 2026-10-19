module

public import Surface.Refactor.Artifact

/-! # Finite project snapshots -/

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
