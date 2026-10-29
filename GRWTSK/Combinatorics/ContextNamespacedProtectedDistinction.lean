-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedDistinction.Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProtectedDistinction.Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Context.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Cut
import Mathematics.Resolution.Identity
import Mathlib.Data.Fintype.Basic

/-!
# Context-bound committed cuts

Evidence, authority, scheduling, and view context are distinct coordinates.
Only a new immutable cut may change one of them.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedDistinction.Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259

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
