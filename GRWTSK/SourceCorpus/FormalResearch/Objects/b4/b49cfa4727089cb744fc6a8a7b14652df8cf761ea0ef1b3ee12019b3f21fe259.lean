import Mathematics.Resolution.Cut
import Mathematics.Resolution.Identity
import Mathlib.Data.Fintype.Basic

/-!
# Context-bound committed cuts

Evidence, authority, scheduling, and view context are distinct coordinates.
Only a new immutable cut may change one of them.
-/

namespace Mathematics.Resolution

universe u v w

inductive ProtectedDistinction
  | permanentIdentityOrigin
  | theoremRuntimeAuthority
  | acceptedProofExecution
  | unknownFalse
  | rejectedProofRefutation
  | exactApproximate
  | activeCandidateSnapshot
  | capabilityPermission
  | presentationImportance
  | adviceCertificate
  | projectionSource
  | continuationResolution
  deriving DecidableEq, Repr

def requiredProtectedDistinctions :
    Finset ProtectedDistinction :=
  [
    .permanentIdentityOrigin,
    .theoremRuntimeAuthority,
    .acceptedProofExecution,
    .unknownFalse,
    .rejectedProofRefutation,
    .exactApproximate,
    .activeCandidateSnapshot,
    .capabilityPermission,
    .presentationImportance,
    .adviceCertificate,
    .projectionSource,
    .continuationResolution
  ].toFinset

structure ContextEnvelope where
  evidenceDigest : String
  authorityDigest : String
  scheduleDigest : String
  viewDigest : String
  capabilityDigest : String
  permissionDigest : String
  privacyDigest : String
  redactionDigest : String
  historyRevision : Nat
  exposeSourceReferences : Bool
  protectedDistinctions : Finset ProtectedDistinction
  deriving DecidableEq

def ContextEnvelope.preservesRequired
    (context : ContextEnvelope) : Prop :=
  requiredProtectedDistinctions ⊆
    context.protectedDistinctions

structure ContextBoundCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  core : InvocationCut Obligation Proof Event
  context : ContextEnvelope
  contextDigest : String
  identities : IdentitySystem Obligation

end Mathematics.Resolution
