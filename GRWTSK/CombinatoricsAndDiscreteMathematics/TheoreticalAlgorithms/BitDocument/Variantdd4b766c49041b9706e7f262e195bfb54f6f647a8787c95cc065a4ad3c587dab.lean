-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Utf8Payload.Variant9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Utf8Payload.Variant9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab","mathematical_subject":"Computation.DataStructures","original_sha256":"9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Codec/BitDocument.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.Source

/-!
# Canonical bit-document semantics

This is the provider-neutral semantic layer shared by runtime correspondence
tests.  It fixes prefix and payload bit order and the single final-LF framing;
resource limits and successful UTF-8 decoding remain explicit witnesses.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Utf8Payload.Variant9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab

namespace BitMatrix.Codec

/-- A byte sequence paired with the exact Lean string whose UTF-8 encoding it is. -/
structure Utf8Payload where
  bytes : Array UInt8
  text : String
  encoding : text.toUTF8.data = bytes

/-- Least-significant-bit-first unsigned length prefix. -/
def lengthPrefixDigits (width length : Nat) : List Bool :=
  (List.range width).map (Nat.testBit length)

/-- Most-significant-bit-first digits of one byte. -/
def byteDigitsMSB (byte : UInt8) : List Bool :=
  (List.range 8).map fun index =>
    Nat.testBit byte.toNat (7 - index)

/-- Most-significant-bit-first payload digits, preserving byte order. -/
def payloadDigitsMSB (payload : Utf8Payload) : List Bool :=
  payload.bytes.toList.flatMap byteDigitsMSB

/-- Digit-level syntax; serialization adds the mandatory final LF byte. -/
structure BitDocument where
  digits : List Bool
  deriving DecidableEq, Repr

/-- Convert one Boolean digit to canonical ASCII. -/
def digitByte : Bool → UInt8
  | false => 48
  | true => 49

/-- Canonical ASCII serialization with exactly one final LF. -/
def BitDocument.serialize (document : BitDocument) : List UInt8 :=
  document.digits.map digitByte ++ [10]

/-- Canonical encoder for a fixed prefix width. -/
def encodeBitDocument (prefixWidth : Nat) (payload : Utf8Payload) : BitDocument :=
  ⟨lengthPrefixDigits prefixWidth payload.bytes.size ++ payloadDigitsMSB payload⟩

/-- Exact declarative encode/decode relation. -/
def EncodeDecodeRelation
    (prefixWidth : Nat)
    (payload : Utf8Payload)
    (document : BitDocument) : Prop :=
  document = encodeBitDocument prefixWidth payload

/--
A successful fail-closed decode witness.  The explicit maximum is part of the
relation; length agreement and UTF-8 validity are supplied by the exact payload
and canonical re-encoding rather than inferred from an example.
-/
structure DecodeWitness
    (prefixWidth explicitMaximum : Nat)
    (document : BitDocument) where
  payload : Utf8Payload
  withinExplicitMaximum : payload.bytes.size ≤ explicitMaximum
  exactEncoding : EncodeDecodeRelation prefixWidth payload document

@[simp]
theorem lengthPrefixDigits_length (width length : Nat) :
    (lengthPrefixDigits width length).length = width := by
  simp [lengthPrefixDigits]

@[simp]
theorem byteDigitsMSB_length (byte : UInt8) :
    (byteDigitsMSB byte).length = 8 := by
  simp [byteDigitsMSB]

@[simp]
theorem serialize_final_lf (document : BitDocument) :
    document.serialize.getLast? = some 10 := by
  simp [BitDocument.serialize]

theorem decodeWitness_declared_length_matches
    {prefixWidth explicitMaximum : Nat}
    {document : BitDocument}
    (witness : DecodeWitness prefixWidth explicitMaximum document) :
    document.digits =
      lengthPrefixDigits prefixWidth witness.payload.bytes.size ++
        payloadDigitsMSB witness.payload := by
  simpa [EncodeDecodeRelation, encodeBitDocument] using
    congrArg BitDocument.digits witness.exactEncoding

end BitMatrix.Codec
