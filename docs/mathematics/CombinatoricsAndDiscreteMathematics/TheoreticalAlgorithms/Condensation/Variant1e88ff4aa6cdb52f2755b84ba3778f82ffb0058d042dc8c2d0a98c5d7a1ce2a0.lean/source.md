# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Condensation.Variant1e88ff4aa6cdb52f2755b84ba3778f82ffb0058d042dc8c2d0a98c5d7a1ce2a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3e23b9bfa6415f17a962d4b1cb832be43cf9697` · SHA-256 `a25e8cbafe907d28d18761123166d5fbe328b636a6cd7ec051d4df08c6c18993`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
