-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizationCommunicationKind.Variantb43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.QuantizationCommunicationKind.Variantb43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32","mathematical_subject":"Computation.DataStructures","original_sha256":"b43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/QuantizationCommunication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.QuantizedEvidence

/-!
# Quantization communication records

These records render selections, transitions, losses, and obligations for
review.  They are theorem-free communication data: a report digest is not a
semantic equivalence, a proof, a review, an authorization, or an accepted
source change.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizationCommunicationKind.Variantb43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32

namespace Surface.ContinuousAssurance

/-- Which part of a quantization process a communication record describes. -/
inductive QuantizationCommunicationKind
  | request
  | selection
  | transition
  | decomposition
  | emittedObservation
  | obstruction
  | summary
  deriving DecidableEq, Repr

/-- Stable, source-linked communication about one quantization event. -/
structure QuantizationCommunicationRecord where
  identity : ArtifactIdentity
  subject : ArtifactIdentity
  kind : QuantizationCommunicationKind
  sourceEvidence : ProgressiveEvidence
  inputArtifacts : List ArtifactIdentity
  outputArtifacts : List ArtifactIdentity
  requestedBits : Option Nat
  selectedBits : Option Nat
  compilerBound : Option Nat
  decomposition : Option ArtifactIdentity
  cubicalDegree : Option Nat
  cubicalCell : Option ArtifactIdentity
  knownLosses : List String
  openObligations : List ArtifactIdentity
  affectedClaims : List ArtifactIdentity
  correctiveAction : String
  deriving Repr

namespace QuantizationCommunicationRecord

def authority
    (record : QuantizationCommunicationRecord) : AuthorityClass :=
  record.sourceEvidence.authority

def evidenceClass
    (record : QuantizationCommunicationRecord) : EvidenceClass :=
  record.sourceEvidence.evidenceClass

def assurance
    (record : QuantizationCommunicationRecord) : AssuranceLevel :=
  record.sourceEvidence.level

@[simp]
theorem authority_eq_source
    (record : QuantizationCommunicationRecord) :
    record.authority = record.sourceEvidence.authority :=
  rfl

@[simp]
theorem evidenceClass_eq_source
    (record : QuantizationCommunicationRecord) :
    record.evidenceClass = record.sourceEvidence.evidenceClass :=
  rfl

@[simp]
theorem assurance_eq_source
    (record : QuantizationCommunicationRecord) :
    record.assurance = record.sourceEvidence.level :=
  rfl

end QuantizationCommunicationRecord

/-- A report groups observations, transitions, and communication records. -/
structure QuantizationReport where
  identity : ArtifactIdentity
  sourceEvidence : ProgressiveEvidence
  observations : List QuantizedObservation
  transitions : List QuantizationTransitionContract
  records : List QuantizationCommunicationRecord
  knownLosses : List String
  openObligations : List ArtifactIdentity

/-- Reports observe, but never reclassify, an existing claim status. -/
def QuantizationReport.observedClaimStatus
    (_report : QuantizationReport)
    (status : ClaimStatus) : ClaimStatus :=
  status

/-- Rendering a report leaves any supplied claim classification unchanged. -/
@[simp]
theorem QuantizationReport.communicates_claim_status
    (report : QuantizationReport)
    (status : ClaimStatus) :
    report.observedClaimStatus status = status :=
  rfl

end Surface.ContinuousAssurance
