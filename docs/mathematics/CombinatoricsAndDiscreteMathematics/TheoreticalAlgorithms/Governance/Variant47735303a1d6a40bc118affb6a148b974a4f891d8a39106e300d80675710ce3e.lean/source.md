# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Governance.Variant47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4d36dd07fe459611d50bc42d1db3a1d93bbe75a` · SHA-256 `47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Authorization
import Surface.ContinuousAssurance.Reflexive
import Surface.ContinuousAssurance.WorldModel.Coverage

/-!
# Governance for the finite world-model ecosystem

These immutable records extend the existing human review and authorization
substrate.  They cover model, translation, dataset, training, neural,
coupling, coverage, surgery, rollback, incident, and revocation artifacts.
Review and authorization remain governance evidence, never theorem authority.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Common exact release identity and source pin. -/
structure GovernedRelease where
  identity : ArtifactIdentity
  artifact : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  proposer : HumanIdentity
  reviewer : HumanIdentity
  authorizer : HumanIdentity
  proposerReviewerSeparated : proposer ≠ reviewer
  proposerAuthorizerSeparated : proposer ≠ authorizer
  reviewEvidence : ArtifactIdentity
  authorizationEvidence : ArtifactIdentity

structure WorldModelReleaseRecord where
  release : GovernedRelease
  modelVersion : ArtifactIdentity
  registryRoot : ArtifactIdentity

structure TranslationReleaseRecord where
  release : GovernedRelease
  sourceVersion : ArtifactIdentity
  targetVersion : ArtifactIdentity
  checkerRoute : ArtifactIdentity

structure DatasetReleaseRecord where
  release : GovernedRelease
  datasetVersion : ArtifactIdentity
  generator : HumanIdentity
  licenseReview : ArtifactIdentity
  generatorNotSoleApprover : generator ≠ release.authorizer

structure TrainingRunRecord where
  identity : ArtifactIdentity
  datasetRelease : ArtifactIdentity
  codeVersion : ArtifactIdentity
  checkerVersions : List ArtifactIdentity
  outputCheckpoint : ArtifactIdentity
  executionAuthority : AuthorityClass
  externalExecution : executionAuthority = .externalCapability

structure NeuralCheckpointRelease where
  release : GovernedRelease
  trainingRun : ArtifactIdentity
  evaluationReport : ArtifactIdentity
  calibrationReport : ArtifactIdentity

structure CouplingPolicyRelease where
  release : GovernedRelease
  policy : ArtifactIdentity
  activeRegion : ArtifactIdentity
  proposerNotSoleAuthorizer : release.proposer ≠ release.authorizer

structure CoverageReviewRecord where
  identity : ArtifactIdentity
  coverageVersion : ArtifactIdentity
  metricVersion : ArtifactIdentity
  author : HumanIdentity
  reviewer : HumanIdentity
  authorReviewerSeparated : author ≠ reviewer
  evidence : ArtifactIdentity

/-- Independent review of one exact proposed surgery. -/
structure SurgeryReviewRecord where
  identity : ArtifactIdentity
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegion : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  proposer : HumanIdentity
  reviewer : HumanIdentity
  decision : ReviewDecision
  independent : proposer ≠ reviewer

/-- Human authorization binds all four exact surgery pins. -/
structure SurgeryAuthorizationRecord where
  identity : ArtifactIdentity
  review : SurgeryReviewRecord
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegion : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  authorizer : HumanIdentity
  reviewApproved : review.decision = .approve
  proposalMatches : review.proposal = proposal
  patchMatches : review.patch = patch
  sourceMatches : review.sourceDigest = sourceDigest
  regionMatches : review.activeRegion = activeRegion
  traceMatches : review.reductionTrace = reductionTrace
  proposerAuthorizerSeparated : review.proposer ≠ authorizer

namespace SurgeryAuthorizationRecord

def Authorizes
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity) : Prop :=
  authorization.proposal = proposal ∧
  authorization.patch = patch ∧
  authorization.sourceDigest = source ∧
  authorization.activeRegion = region ∧
  authorization.reductionTrace = trace

theorem binds_exact_patch
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.patch = authorization.patch :=
  authorization.patchMatches

theorem binds_exact_source
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.sourceDigest = authorization.sourceDigest :=
  authorization.sourceMatches

theorem binds_exact_region
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.activeRegion = authorization.activeRegion :=
  authorization.regionMatches

theorem binds_exact_trace
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.reductionTrace = authorization.reductionTrace :=
  authorization.traceMatches

theorem stale_patch_rejected
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity)
    (stale : authorization.patch ≠ patch) :
    ¬ authorization.Authorizes proposal patch source region trace := by
  intro authorizes
  exact stale authorizes.2.1

theorem stale_region_rejected
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity)
    (stale : authorization.activeRegion ≠ region) :
    ¬ authorization.Authorizes proposal patch source region trace := by
  intro authorizes
  exact stale authorizes.2.2.2.1

end SurgeryAuthorizationRecord

/-- Full rollback state, including proof and checker effects. -/
structure RollbackRecord where
  identity : ArtifactIdentity
  preChangeRegistryRoot : ArtifactIdentity
  postChangeRegistryRoot : ArtifactIdentity
  affectedModels : List ArtifactIdentity
  affectedTranslations : List ArtifactIdentity
  couplingStateBefore : ArtifactIdentity
  couplingStateAfter : ArtifactIdentity
  checkerVersions : List ArtifactIdentity
  proofsInvalidated : List ArtifactIdentity
  proofsRestored : List ArtifactIdentity
  datasetVersions : List ArtifactIdentity
  neuralVersions : List ArtifactIdentity
  reason : String
  review : SurgeryReviewRecord
  authorization : SurgeryAuthorizationRecord
  postRollbackVerification : ArtifactIdentity

/-- Enumerated incident classes; the record itself is immutable data. -/
inductive IncidentKind
  | unsoundProofPromotion
  | authorityLeakage
  | datasetLicenseBreach
  | staleChecker
  | assumptionLoss
  | neuralMiscalibration
  | surgeryComplementMutation
  | coverageOverclaim
  | provenanceCorruption
  deriving DecidableEq, Repr

structure IncidentRecord where
  identity : ArtifactIdentity
  kind : IncidentKind
  detectedAgainst : ArtifactIdentity
  evidence : List ArtifactIdentity
  affectedCertificates : List ArtifactIdentity
  response : String
  owner : Project

structure CertificateRevocationRecord where
  identity : ArtifactIdentity
  incident : ArtifactIdentity
  revokedCertificate : ArtifactIdentity
  dependencyClosure : List ArtifactIdentity
  effectiveRegistryRoot : ArtifactIdentity
  reviewer : HumanIdentity
  authorizer : HumanIdentity
  reviewerAuthorizerSeparated : reviewer ≠ authorizer

/-- Existing version separation rules also govern ecosystem controllers. -/
theorem ecosystem_controller_cannot_self_authorize
    (run : AssuranceRun) :
    run.controllerVersion ≠ run.subjectVersion :=
  run.cannot_authorize_controller_version

end Surface.ContinuousAssurance.WorldModel
```
