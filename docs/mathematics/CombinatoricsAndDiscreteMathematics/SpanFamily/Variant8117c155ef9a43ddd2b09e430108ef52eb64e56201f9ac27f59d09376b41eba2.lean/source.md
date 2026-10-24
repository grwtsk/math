# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpanFamily.Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5590def77feab82ee368cb29a84962c1d1a2a937` · SHA-256 `1e78af61850b41894515bd22024c9953ce1674778ee7e719aa52bc0f0d28c28c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CandidateSpanSource.Variant7423a2c61251236164e5bbed7d0062a1eacb9bc6273fc1536e1847a6c8f45480","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7423a2c61251236164e5bbed7d0062a1eacb9bc6273fc1536e1847a6c8f45480","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CandidateSpanSource.Variant7423a2c61251236164e5bbed7d0062a1eacb9bc6273fc1536e1847a6c8f45480","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7423a2c61251236164e5bbed7d0062a1eacb9bc6273fc1536e1847a6c8f45480","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/SpanFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Span

/-!
# Finite candidate-span and coverage families
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CandidateSpanSource.Variant7423a2c61251236164e5bbed7d0062a1eacb9bc6273fc1536e1847a6c8f45480

namespace Mathematics.SemanticTokenization

inductive CandidateSpanSource
  | baseTokenizer
  | orthographicWord
  | punctuationUnit
  | lexicon
  | dictionaryExpression
  | parser
  | parserConstituent
  | externalAssertion
  | humanAnnotation
  | manualRegistration
  | boundedWindow
  | boundedGenerator
deriving DecidableEq, Repr

structure CandidateSpanConfiguration where
  enabledSources : Finset CandidateSpanSource
  maxPhraseLength : Nat
  maxPhraseLength_pos : 0 < maxPhraseLength
  digest : Digest
deriving Repr

structure CandidateSpanFamily (text : TextCarrier) where
  spans : Finset (Span text)
  configuration : CandidateSpanConfiguration
  generatedByFiniteRule : Prop

def OrderedSpans {text : TextCarrier}
    (spans : Array (Span text)) : Prop :=
  spans.toList.Pairwise (fun left right => left.Before right)

def PairwiseDisjoint {text : TextCarrier}
    (spans : Array (Span text)) : Prop :=
  spans.toList.Pairwise (fun left right => ¬ left.Overlaps right)

structure TextRegion (text : TextCarrier) where
  span : Span text

structure IgnoredRegion (text : TextCarrier) where
  span : Span text
  reason : String

def Covers {text : TextCarrier}
    (spans : Array (Span text))
    (ignored : Array (IgnoredRegion text)) : Prop :=
  ∀ index : Fin text.chars.size,
    (∃ span ∈ spans, span.CoversIndex index) ∨
    (∃ region ∈ ignored, region.span.CoversIndex index)

structure EvidenceRequiredSpans (text : TextCarrier) where
  spans : Finset (Span text)
  assertionIds : Finset AssertionId

structure CandidateCoverageCertificate
    {text : TextCarrier}
    (candidates : CandidateSpanFamily text)
    (required : EvidenceRequiredSpans text) : Prop where
  covered :
    ∀ span ∈ required.spans,
      span ∈ candidates.spans

theorem candidateCoverage_contains
    {text : TextCarrier}
    {candidates : CandidateSpanFamily text}
    {required : EvidenceRequiredSpans text}
    (certificate : CandidateCoverageCertificate candidates required)
    {span : Span text}
    (member : span ∈ required.spans) :
    span ∈ candidates.spans :=
  certificate.covered span member

end Mathematics.SemanticTokenization
```
