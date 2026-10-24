# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Context.Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `601f4f17b0b0ad688a8b87b448b89cfad65808b9` · SHA-256 `b49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
