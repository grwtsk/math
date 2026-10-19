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
