-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Tokenization.Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5","mathematical_subject":"Computation.DataStructures","original_sha256":"1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Tokenization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.SpanFamily

/-! # Ordered, disjoint, region-covering structural tokenizations -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5

namespace Mathematics.SemanticTokenization

def Span.ContainsPosition
    {text : TextCarrier}
    (span : Span text)
    (position : Nat) : Prop :=
  span.start ≤ position ∧ position < span.stop

def Covers
    {text : TextCarrier}
    (tokens ignored : List (Span text))
    (region : Span text) : Prop :=
  ∀ position,
    region.ContainsPosition position →
      ∃! span : Span text,
        span ∈ tokens ++ ignored ∧
          span.ContainsPosition position

structure Tokenization (text : TextCarrier) where
  region : Span text
  spans : List (Span text)
  ignored : List (Span text)
  spans_nonempty : spans ≠ []
  ordered :
    spans.Pairwise
      (fun left right => left.stop ≤ right.start)
  disjoint :
    spans.Pairwise
      (fun left right =>
        left.stop ≤ right.start ∨
          right.stop ≤ left.start)
  within_region :
    ∀ span ∈ spans ++ ignored,
      region.start ≤ span.start ∧
        span.stop ≤ region.stop
  covers : Covers spans ignored region

theorem Tokenization.has_token
    {text : TextCarrier}
    (tokenization : Tokenization text) :
    ∃ span, span ∈ tokenization.spans := by
  cases spansEquation : tokenization.spans with
  | nil =>
      exact False.elim
        (tokenization.spans_nonempty spansEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.SemanticTokenization
