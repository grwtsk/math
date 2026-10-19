import Mathematics.Ingestion.Receipt
import Mathematics.Reflection.UpstreamBundle

/-! # Accepted-upstream re-ingestion -/

namespace Mathematics.Reflection

/--
An accepted upstream revision is re-ingested as a new immutable snapshot.  It
does not rewrite the source snapshot used to produce the patch.
-/
structure Reingestion where
  bundle : UpstreamBundle
  upstream_accepted : bundle.maintainerStatus = .accepted
  acceptedSnapshot : Ecosystem.ProjectSnapshot
  receipt : Ingestion.IngestionReceipt
  sameProject :
    acceptedSnapshot.identity.projectId =
      bundle.patch.candidate.targetSnapshot.identity.projectId
  newRevision :
    acceptedSnapshot.revision.revisionId ≠
      bundle.patch.baseSnapshot.revision.revisionId
  receipt_snapshot_exact :
    receipt.raw.snapshot = acceptedSnapshot
  reflectedObjectsRecovered :
    ∀ element ∈ bundle.patch.elements,
      ∀ outputDigest,
        element.outputDigest = some outputDigest →
          ∃ artifact ∈ acceptedSnapshot.manifest.artifacts,
            artifact.address.contentDigest = outputDigest
  upstreamAcceptanceDigest : Digest
  reingestionDigest : Digest

theorem Reingestion.source_snapshot_not_rewritten
    (reingestion : Reingestion) :
    reingestion.acceptedSnapshot.revision.revisionId ≠
      reingestion.bundle.patch.baseSnapshot.revision.revisionId :=
  reingestion.newRevision

/-- Every patch output is recovered under the accepted upstream snapshot. -/
theorem Reingestion.reflected_object_recovered
    (reingestion : Reingestion)
    {element : PatchElement}
    (member : element ∈ reingestion.bundle.patch.elements)
    {outputDigest : Digest}
    (hasOutput : element.outputDigest = some outputDigest) :
    ∃ artifact ∈ reingestion.acceptedSnapshot.manifest.artifacts,
      artifact.address.contentDigest = outputDigest :=
  reingestion.reflectedObjectsRecovered element member outputDigest hasOutput

inductive ReflectionLifecycle
  | candidate (value : Candidate)
  | upstreamAccepted (value : Reingestion)

theorem ReflectionLifecycle.candidate_not_accepted
    (candidate : Candidate)
    (accepted : Reingestion) :
    ReflectionLifecycle.candidate candidate ≠
      ReflectionLifecycle.upstreamAccepted accepted := by
  intro equality
  cases equality

end Mathematics.Reflection
