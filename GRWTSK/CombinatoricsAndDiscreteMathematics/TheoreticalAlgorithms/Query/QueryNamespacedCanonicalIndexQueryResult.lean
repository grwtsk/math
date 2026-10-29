-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalIndexQueryResult.Variant8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalIndexQueryResult.Variant8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8","mathematical_subject":"Computation.DataStructures","original_sha256":"8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Query.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Index.Validation

/-!
# Authority-preserving index queries

Query results retain whether the payload is a formal fact, external
observation, review, authorization, or unresolved obligation.  These
constructors are intentionally not interchangeable.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalIndexQueryResult.Variant8a5f7226ba4d333faf42ca4a330bccc2d83b1aea7ef8d7228589175f19a9ffa8

namespace Surface.ContinuousAssurance

inductive CanonicalIndexQueryResult
  | fact (record : FormalDeclarationRecord) (claim : IndexedClaim)
  | observation (record : EvidenceEventRecord) (evidence : EvidenceItem)
  | review (record : ReviewBindingRecord) (review : ReviewRecord)
  | authorization (record : AuthorizationBindingRecord)
      (authorization : AuthorizationRecord)
  | obligation (record : ObligationRecord) (obligation : ObligationId)

/-- A finite query over exact object identity. -/
def CanonicalIndex.queryObject
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId) : List AnyIndexRecord :=
  index.records.filter fun record => record.objectId == objectId

theorem CanonicalIndex.mem_queryObject_iff
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId)
    (record : AnyIndexRecord) :
    record ∈ index.queryObject objectId ↔
      record ∈ index.records ∧ record.objectId = objectId := by
  simp [CanonicalIndex.queryObject]

end Surface.ContinuousAssurance
