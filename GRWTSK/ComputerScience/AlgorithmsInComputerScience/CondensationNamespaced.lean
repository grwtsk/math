-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservationPreservationMode.Variantbf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ObservationPreservationMode.Variantbf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643","mathematical_subject":"Computation.DataStructures","original_sha256":"bf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Condensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.Depth

/-!
# Observation-certified block condensation

A block sum is only a candidate aggregation until every protected downstream
observation has an exact or bounded factorization witness.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservationPreservationMode.Variantbf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643

namespace Mathematics.Attention

inductive ObservationPreservationMode
  | exact
  | bounded
  deriving DecidableEq, Repr

structure ProtectedBlockObservation where
  observationId : String
  sourceObservationDigest : String
  aggregateObservationDigest : String
  errorBound : ℝ
  errorNonnegative : 0 ≤ errorBound
  mode : ObservationPreservationMode
  exactModeLaw :
    mode = .exact →
      errorBound = 0 ∧
      aggregateObservationDigest = sourceObservationDigest

def ProtectedBlockObservation.Certified
    (observation : ProtectedBlockObservation) : Prop :=
  observation.observationId ≠ "" ∧
  observation.sourceObservationDigest ≠ "" ∧
  observation.aggregateObservationDigest ≠ "" ∧
  0 ≤ observation.errorBound ∧
  (observation.mode = .exact →
    observation.errorBound = 0 ∧
    observation.aggregateObservationDigest =
      observation.sourceObservationDigest)

theorem ProtectedBlockObservation.certified
    (observation : ProtectedBlockObservation)
    (idPresent : observation.observationId ≠ "")
    (sourcePresent : observation.sourceObservationDigest ≠ "")
    (aggregatePresent : observation.aggregateObservationDigest ≠ "") :
    observation.Certified :=
  ⟨idPresent, sourcePresent, aggregatePresent,
    observation.errorNonnegative, observation.exactModeLaw⟩

structure BlockAttentionCondensationCertificate where
  blockId : String
  aggregationDigest : String
  protectedObservations : List ProtectedBlockObservation
  completeObservationSet : Prop
  completeObservationSetCertified : completeObservationSet
  allCertified :
    ∀ observation ∈ protectedObservations,
      observation.Certified

def BlockAttentionCondensationCertificate.Certified
    (certificate : BlockAttentionCondensationCertificate) : Prop :=
  certificate.blockId ≠ "" ∧
  certificate.aggregationDigest ≠ "" ∧
  certificate.protectedObservations ≠ [] ∧
  certificate.completeObservationSet ∧
  ∀ observation ∈ certificate.protectedObservations,
    observation.Certified

end Mathematics.Attention
