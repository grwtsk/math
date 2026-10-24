# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Normalization.Varianta7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ead344f86c26e2023dce7d4390f318a080dd8171` · SHA-256 `a7ef7efe6380e426778dcf59d7c61f31aa3f5cbb5146d67bd99e4bb409673470`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.TextCarrier

/-!
# Certified normalization and offset transport

Normalization is supplied as data.  Lean checks the exact output and the
finite offset map; it does not implement an unrestricted Unicode normalizer.
-/

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
