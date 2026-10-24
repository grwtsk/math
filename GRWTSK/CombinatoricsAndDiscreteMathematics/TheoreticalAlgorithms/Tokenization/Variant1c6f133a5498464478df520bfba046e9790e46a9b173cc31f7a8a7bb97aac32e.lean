-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Tokenization.Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f","mathematical_subject":"Computation.DataStructures","original_sha256":"de6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Tokenization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.SpanFamily

/-!
# Structural tokenizations

Tokenizations certify finite ordering, disjointness, and explicit coverage.
They carry no semantic interpretation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f

namespace Mathematics.SemanticTokenization

structure Tokenization (text : TextCarrier) where
  spans : Array (Span text)
  nonempty : 0 < spans.size
  ordered : OrderedSpans spans
  disjoint : PairwiseDisjoint spans
  ignored : Array (IgnoredRegion text)
  covers : Covers spans ignored

namespace Tokenization

variable {text : TextCarrier}

theorem span_valid
    (tokenization : Tokenization text)
    {span : Span text}
    (member : span ∈ tokenization.spans) :
    span.Valid :=
  span.valid

theorem no_overlap (tokenization : Tokenization text) :
    PairwiseDisjoint tokenization.spans :=
  tokenization.disjoint

theorem coverage_sound (tokenization : Tokenization text) :
    Covers tokenization.spans tokenization.ignored :=
  tokenization.covers

end Tokenization

end Mathematics.SemanticTokenization
