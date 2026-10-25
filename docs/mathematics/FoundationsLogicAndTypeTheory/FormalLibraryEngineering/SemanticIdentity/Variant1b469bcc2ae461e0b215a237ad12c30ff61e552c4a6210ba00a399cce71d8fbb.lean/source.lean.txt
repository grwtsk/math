import Mathematics.Core.Id

/-!
# Semantic identity

The framework distinguishes semantic objects from source elements, compiled
declarations, representations, runtime bindings, and storage locations.
-/

namespace Mathematics

abbrev ElementId := StableId
abbrev SystemId := StableId
abbrev WorkspaceId := StableId
abbrev TenantId := StableId
abbrev TransactionId := StableId
abbrev ProgressionId := StableId
abbrev ProgressionStateId := StableId
abbrev InterpretationProfileId := StableId
abbrev GammaBridgeId := StableId
abbrev TrajectoryId := StableId
abbrev SurgeryRequestId := StableId

/-- Canonical identity input. Presentation and runtime coordinates are absent. -/
structure SemanticIdentityInput where
  kind : String
  canonicalPayloadDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- A semantic reference carries identity only, never an object address. -/
structure ElementRef where
  id : ElementId
  deriving DecidableEq, Repr, Inhabited

/-!
The identities below deliberately have no coercions between them.  A semantic
element, a permanent external route, immutable stored bytes, and an exact
compiler invocation are different objects even when an implementation uses a
256-bit representation for more than one of them.
-/

/-- Permanent externally allocated position.  It is not a content digest. -/
structure RigidKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Address of one immutable canonical object envelope. -/
structure ObjectAddress where
  bits : BitVec 256
  deriving DecidableEq, Repr

/--
Stable identity of one source module. It excludes source bytes and imported
interfaces, so it is distinct from a request to compile that module.
-/
structure ModuleKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Exact key of one compiler request, including all imported interfaces. -/
structure CompileKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Identity of a proposal-only neural observation. -/
structure ActivationKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

end Mathematics
