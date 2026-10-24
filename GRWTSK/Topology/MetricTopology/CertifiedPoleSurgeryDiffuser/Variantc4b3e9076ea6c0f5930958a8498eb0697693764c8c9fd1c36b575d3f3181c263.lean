-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.CertifiedPoleAnchorSystem.Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.CertifiedPoleAnchorSystem.Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b","mathematical_subject":"Topology.MetricSpaces","original_sha256":"fa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/System/CertifiedPoleSurgeryDiffuser.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.CertifiedLayer
import Mathematics.NeuralDiffusion.SpectralOrbit
import Mathematics.Terrain.PointedMetricReconstruction

/-!
# Certified pole-surgery diffuser

This module assembles the seven authoritative parts of the pole-surgery
architecture without identifying any two of them:

* the accepted shell carrier;
* the finite certified pole system;
* the stable boundary-anchor system;
* proposal-only heat;
* the immutable obligation graph;
* the surgery certificate authority;
* the probe-rigid completion representation.

Local evaluation ends at an immutable surgery-authority submission.  A new
accepted state can only be loaded after the external authority has replayed
that submission and atomically published it.  The named primorial separator
remains an independent open theorem obligation.
-/


namespace GRWTSK.Topology.MetricTopology.CertifiedPoleAnchorSystem.Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b

namespace Mathematics.System

open Mathematics.NeuralDiffusion
open Mathematics.Projection
open Mathematics.Terrain.PointedMetricReconstruction

universe u v w x y z

/-- Finite certified anchor nets for every declared pole boundary. -/
structure CertifiedPoleAnchorSystem
    (PoleIndex : Type u) [Fintype PoleIndex]
    (Stable : Type v) [DecidableEq Stable]
    (Carrier : Type w) [MetricSpace Carrier]
    (poles : FinitePoleSystem PoleIndex Carrier) where
  anchors :
    ∀ index,
      CertifiedFiniteAnchorNet
        (Anchor := Stable)
        (poles.boundary index)
  anchorSystemCertificate : ObjectAddress

/--
An opaque reference to one versioned obligation-state object.  This topology
module does not inspect or reconstruct the authority subsystem's status-
indexed state.
-/
structure VersionedObligationReference where
  obligationId : String
  statementDigest : Digest
  versionDigest : Digest
  stateObject : ObjectAddress
  predecessor : Option ObjectAddress

/--
Opaque reference to a terminal revoked-snapshot state issued by the snapshot
authority subsystem.  Its internal status-indexed representation is not
duplicated here.
-/
structure RevokedSnapshotReference where
  snapshotId : ObjectAddress
  snapshotDigest : Digest
  revokedStateObject : ObjectAddress
  strongerArchitectureDigest : Digest

/--
The obligation graph retains only immutable references.  In particular, it
has no mutable `.status` field for diffusion or surgery code to inspect.
-/
structure ImmutableObligationGraph where
  primeSeparator : VersionedObligationReference
  obligationGraphDigest : Digest

/--
Opaque address of the external surgery authority.

There is intentionally no Lean callback `Candidate → Accepted`: an arbitrary
caller could implement such a callback by selecting its own predicate.  The
authority service replays the fixed pole/gluing certificate and atomically
publishes a new accepted-state object outside this proposal module.
-/
structure SurgeryCertificateAuthorityReference where
  authorityObject : ObjectAddress
  verifierDigest : Digest
  certificateSchemaDigest : Digest
  acceptedStateStore : ObjectAddress

/--
An exact metric profile and its completion extension.  The embedded metric
is fixed by a proof, not inferred from finite similarity.
-/
structure ProbeRigidCompletion
    (Carrier : Type u) [MetricSpace Carrier]
    (Profile : Type v) [MetricSpace Profile] [CompleteSpace Profile] where
  recovery :
    ProbeProfileCompletionRecovery
      (X := Carrier)
      Profile
  profileCertificate : ObjectAddress

namespace ProbeRigidCompletion

variable
    {Carrier : Type u} [MetricSpace Carrier]
    {Profile : Type v} [MetricSpace Profile] [CompleteSpace Profile]

/-- The exact profile is an isometric representation of the carrier. -/
theorem isometry
    (completion : ProbeRigidCompletion Carrier Profile) :
    Isometry completion.recovery.embedding.profile :=
  completion.recovery.embedding.isometry

/-- The completed profile is genuinely recovered, not merely embedded. -/
noncomputable def completionEquivalence
    (completion : ProbeRigidCompletion Carrier Profile) :
    UniformSpace.Completion Carrier ≃ᵢ Profile :=
  completion.recovery.isometryEquiv

end ProbeRigidCompletion

/-- The two fail-closed local rejection boundaries of the proposal pipeline. -/
inductive ProposalRejectionStage
  | probeValidation
  | invariantValidation
  deriving DecidableEq, Repr

/--
Immutable request submitted to the external authority.  Submission is not
acceptance and contains no constructor for a target state.
-/
structure SurgeryAuthoritySubmission
    (Accepted : Type u)
    (SurgeryCandidate : Type v) where
  source : Accepted
  candidate : SurgeryCandidate
  sourceStateObject : ObjectAddress
  candidateObject : ObjectAddress
  authority : SurgeryCertificateAuthorityReference
  submissionObject : ObjectAddress

/-- A proposal is rejected locally or submitted without status promotion. -/
inductive ProposalEvaluation
    (Accepted : Type u)
    (SurgeryCandidate : Type v)
  | submitted
      (request :
        SurgeryAuthoritySubmission Accepted SurgeryCandidate)
  | rejected (stage : ProposalRejectionStage)

/--
The complete governing object.  The component types remain independent so a
model proposal cannot be confused with a metric candidate, a surgery
candidate, or an accepted state.
-/
structure CertifiedPoleSurgeryDiffuser
    (Carrier : Type u) [MetricSpace Carrier]
    (PoleIndex : Type v) [Fintype PoleIndex]
    (Stable : Type w) [DecidableEq Stable]
    (Accepted : Type x)
    (Proposal : Type y)
    (MetricCandidate : Type z)
    (SurgeryCandidate : Type z)
    (Profile : Type z) [MetricSpace Profile] [CompleteSpace Profile] where
  shellCarrier : Accepted → Carrier
  acceptedStateAddress : Accepted → ObjectAddress
  poles : FinitePoleSystem PoleIndex Carrier
  anchors :
    CertifiedPoleAnchorSystem PoleIndex Stable Carrier poles
  surgeryBoundary :
    Accepted → HeatSurgeryBoundary Accepted Proposal
  surgeryBoundary_starts_at_state :
    ∀ state, (surgeryBoundary state).initial = state
  probeValidate :
    Proposal →
      CertificationResult MetricCandidate
  invariantValidate :
    MetricCandidate →
      CertificationResult SurgeryCandidate
  surgeryCandidateAddress :
    SurgeryCandidate → ObjectAddress
  certificateAuthority :
    SurgeryCertificateAuthorityReference
  submissionAddress :
    Accepted → SurgeryCandidate → ObjectAddress
  obligations : ImmutableObligationGraph
  completion : ProbeRigidCompletion Carrier Profile
  revokedProjection : RevokedSnapshotReference
  architectureDigest : Digest

namespace CertifiedPoleSurgeryDiffuser

variable
    {Carrier : Type u} [MetricSpace Carrier]
    {PoleIndex : Type v} [Fintype PoleIndex]
    {Stable : Type w} [DecidableEq Stable]
    {Accepted : Type x}
    {Proposal : Type y}
    {MetricCandidate : Type z}
    {SurgeryCandidate : Type z}
    {Profile : Type z} [MetricSpace Profile] [CompleteSpace Profile]

/-- Accepted state enters heat only as a proposal-producing computation. -/
def propose
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile)
    (state : Accepted)
    (time :
      (system.surgeryBoundary state).AdmissibleTime) :
    Proposal :=
  (system.surgeryBoundary state).proposeBefore time

/--
The fail-closed path from proposal to accepted state.  Rejection at any stage
terminates evaluation; no clipping, repair, or implicit promotion occurs.
-/
def evaluate
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile)
    (source : Accepted)
    (proposal : Proposal) :
    ProposalEvaluation Accepted SurgeryCandidate :=
  match system.probeValidate proposal with
  | .reject =>
      .rejected .probeValidation
  | .accepted metricCandidate =>
      match system.invariantValidate metricCandidate with
      | .reject =>
          .rejected .invariantValidation
      | .accepted surgeryCandidate =>
          .submitted {
            source := source
            candidate := surgeryCandidate
            sourceStateObject := system.acceptedStateAddress source
            candidateObject :=
              system.surgeryCandidateAddress surgeryCandidate
            authority := system.certificateAuthority
            submissionObject :=
              system.submissionAddress source surgeryCandidate
          }

/-- No governing-system heat time can be both admitted and at/after the pole. -/
theorem heat_stops_at_surgery_boundary
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile)
    (state : Accepted)
    (time : (system.surgeryBoundary state).AdmissibleTime)
    (atOrAfter :
      (system.surgeryBoundary state).stopTime ≤ time.1) :
    False :=
  (system.surgeryBoundary state).not_admissible_at_or_after
    time atOrAfter

/-- The boundary used for a state is anchored at exactly that source state. -/
theorem heat_boundary_starts_at_source
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile)
    (state : Accepted) :
    (system.surgeryBoundary state).initial = state :=
  system.surgeryBoundary_starts_at_state state

/-- Completion rigidity is inherited by the assembled governing object. -/
theorem completion_isometry
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile) :
    Isometry system.completion.recovery.embedding.profile :=
  system.completion.isometry

/-- The exact profile carrier is isometric to the completed shell carrier. -/
noncomputable def completion_equivalence
    (system :
      CertifiedPoleSurgeryDiffuser
        Carrier PoleIndex Stable Accepted Proposal
        MetricCandidate SurgeryCandidate Profile) :
    UniformSpace.Completion Carrier ≃ᵢ Profile :=
  system.completion.completionEquivalence

end CertifiedPoleSurgeryDiffuser

end Mathematics.System
