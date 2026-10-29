-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataComparison.Variantdfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MetadataComparison.Variantdfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d","mathematical_subject":"Computation.DataStructures","original_sha256":"dfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Overlap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Context

/-! # Type-indexed metadata comparisons -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataComparison.Variantdfc3b5427486e745c5a30a149910fe2dfd8fe8991eac44d603e5e2d79670668d

namespace Mathematics.SemanticTokenization

structure MetadataComparison
    (text : TextCarrier)
    (kind : MetadataType) where
  left : MetadataAssertion text kind
  right : MetadataAssertion text kind
  score : Int

structure SomeMetadataComparison (text : TextCarrier) where
  kind : MetadataType
  comparison : MetadataComparison text kind

structure OverlapAggregationRule where
  ruleId : StableId
  aggregate : List Int → Int

structure TypedOverlap (text : TextCarrier) where
  context : Context
  fields : List (SomeMetadataComparison text)
  aggregation : OverlapAggregationRule
  aggregateScore : Int
  aggregate_exact :
    aggregateScore =
      aggregation.aggregate
        (fields.map
          (fun field => field.comparison.score))

def TypedOverlap.impliesSemanticIdentity
    {text : TextCarrier}
    (_ : TypedOverlap text) : Bool :=
  false

@[simp] theorem overlap_does_not_imply_semantic_identity
    {text : TextCarrier}
    (overlap : TypedOverlap text) :
    overlap.impliesSemanticIdentity = false :=
  rfl

end Mathematics.SemanticTokenization
