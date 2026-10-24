# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Normalization.Variantf31579d47b2e08ee2e9c2c3bb2603478ddf489a011aa9c9bb9ca3e3dba96afaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e191c12a59fd5892ff0a7a40f2dd9cdc0ebd6d93` · SHA-256 `1e22cf858c2d211ca2871be210db3c918be382c1e88941bdbd962949fae93809`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnicodeNormalization.Varianta7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UnicodeNormalization.Varianta7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470","mathematical_subject":"Computation.DataStructures","original_sha256":"a7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Normalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.TextCarrier

/-!
# Certified normalization and offset transport

Normalization is supplied as data.  Lean checks the exact output and the
finite offset map; it does not implement an unrestricted Unicode normalizer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnicodeNormalization.Varianta7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470

namespace Mathematics.SemanticTokenization

inductive UnicodeNormalization
  | none
  | nfc
  | nfd
  | nfkc
  | nfkd
  deriving DecidableEq, Repr

inductive CasePolicy
  | preserve
  | lower
  | upper
  | caseFold
  deriving DecidableEq, Repr

inductive LineEndingPolicy
  | preserve
  | lf
  | crlf
  deriving DecidableEq, Repr

inductive RetentionPolicy
  | preserve
  | normalize
  | remove
  deriving DecidableEq, Repr

inductive OffsetUnit
  | byte
  | unicodeScalar
  | utf16CodeUnit
  deriving DecidableEq, Repr

structure NormalizationSpec where
  specId : StableId
  unicode : UnicodeNormalization
  casePolicy : CasePolicy
  lineEndings : LineEndingPolicy
  punctuation : RetentionPolicy
  whitespace : RetentionPolicy
  controlCharacters : RetentionPolicy
  normalize : Array Char → Array Char

structure OffsetPair where
  raw : Nat
  normalized : Nat
  deriving DecidableEq, Repr

structure OffsetTransportCertificate
    (raw : RawTextCarrier)
    (normalized : TextCarrier) where
  rawUnit : OffsetUnit
  normalizedUnit : OffsetUnit
  pairs : List OffsetPair
  raw_within :
    ∀ pair ∈ pairs,
      pair.raw ≤ raw.chars.size
  normalized_within :
    ∀ pair ∈ pairs,
      pair.normalized ≤ normalized.chars.size
  monotone :
    pairs.Pairwise
      (fun left right =>
        left.raw ≤ right.raw ∧
          left.normalized ≤ right.normalized)
  coveredRawOffsets : List Nat
  covered :
    ∀ offset ∈ coveredRawOffsets,
      ∃ pair ∈ pairs, pair.raw = offset

structure NormalizationCertificate
    (spec : NormalizationSpec)
    (raw : RawTextCarrier)
    (normalized : TextCarrier) where
  exact_output :
    spec.normalize raw.chars = normalized.chars
  offsetTransport :
    OffsetTransportCertificate raw normalized

theorem NormalizationCertificate.output_exact
    {spec : NormalizationSpec}
    {raw : RawTextCarrier}
    {normalized : TextCarrier}
    (certificate : NormalizationCertificate spec raw normalized) :
    spec.normalize raw.chars = normalized.chars :=
  certificate.exact_output

end Mathematics.SemanticTokenization
```
