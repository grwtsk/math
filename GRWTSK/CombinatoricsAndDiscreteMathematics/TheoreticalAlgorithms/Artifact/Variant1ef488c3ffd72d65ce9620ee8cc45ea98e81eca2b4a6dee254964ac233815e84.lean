module

public import Surface.Refactor.Path

/-! # Content-addressed operational artifacts -/

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
structure ToolchainFingerprint where
  leanVersion : String
  mathlibFingerprint : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure CompilerOptionsFingerprint where
  digest : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure ImportClosureFingerprint where
  orderedArtifactHashes : List ContentHash256
  digest : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure ArtifactKey where
  sourceContentHash : ContentHash256
  moduleIdentity : LeanModulePath
  imports : ImportClosureFingerprint
  toolchain : ToolchainFingerprint
  compilerOptions : CompilerOptionsFingerprint
  schemaVersion : String
  generatorVersion : String
deriving DecidableEq, Repr

@[surface_certificate]
structure ArtifactObservation where
  key : ArtifactKey
  artifactHash : ContentHash256
  observedPath : String
  authority : RefactorAuthority := .environmentObserved
deriving DecidableEq, Repr

@[surface_certificate]
structure ArtifactReuseEvidence where
  expectedKey : ArtifactKey
  observed : ArtifactObservation
  expectedArtifactHash : ContentHash256
deriving DecidableEq, Repr

@[expose] def ArtifactReuseEvidence.Valid (evidence : ArtifactReuseEvidence) : Prop :=
  evidence.observed.key = evidence.expectedKey ∧
    evidence.observed.artifactHash = evidence.expectedArtifactHash

instance (evidence : ArtifactReuseEvidence) : Decidable evidence.Valid := by
  unfold ArtifactReuseEvidence.Valid
  infer_instance

@[expose] def verifyArtifactReuse (evidence : ArtifactReuseEvidence) : Bool :=
  decide evidence.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyArtifactReuse_sound (evidence : ArtifactReuseEvidence)
    (h : verifyArtifactReuse evidence = true) : evidence.Valid := by
  exact of_decide_eq_true h

@[expose] def artifactReuseAuthority (_evidence : ArtifactReuseEvidence) :
    RefactorAuthority := .environmentObserved

@[surface_novel, surface_published]
theorem reuse_receipt_is_not_proof (evidence : ArtifactReuseEvidence) :
    artifactReuseAuthority evidence ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
