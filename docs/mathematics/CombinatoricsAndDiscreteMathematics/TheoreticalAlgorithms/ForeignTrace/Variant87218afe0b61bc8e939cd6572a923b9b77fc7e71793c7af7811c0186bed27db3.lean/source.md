# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForeignTrace.Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9635aa1c233b67ae1ddd4bef5436ed0cb444b100` · SHA-256 `85834092f4f5ee4f2264abd655cf81e1d8697ed0f6595ffa4b1856e8d10d9cd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Producer.Variantdd00ecf5d86f5597e3b633c5765c4ce5071f50db9a32a1a33f9e1dc578cc4bcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd00ecf5d86f5597e3b633c5765c4ce5071f50db9a32a1a33f9e1dc578cc4bcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Producer.Variantdd00ecf5d86f5597e3b633c5765c4ce5071f50db9a32a1a33f9e1dc578cc4bcc","mathematical_subject":"Computation.DataStructures","original_sha256":"dd00ecf5d86f5597e3b633c5765c4ce5071f50db9a32a1a33f9e1dc578cc4bcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/ForeignTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.Profiles

/-!
# Checked foreign-runtime traces

This module defines a deliberately small binary trace boundary for the two
foreign Bit-document encoders.  A trace contains the producer profile, the
original ASCII source bytes, and the bytes actually emitted by that producer.
Lean decodes the wire bytes and accepts the trace only by recomputing the
formal profile encoder.  Consequently, changing a fixture to carry incorrect
observed bytes for the traced input and profile does not make that trace
acceptable.

The wire format is closed and versioned:

* four magic bytes `BTR1`;
* one producer byte (`0` for JavaScript and `1` for Rust);
* one unsigned source-length byte;
* exactly that many seven-bit ASCII source bytes;
* all remaining bytes are the observed framed Bit document.

The one-byte source length is a trace-envelope limit, not a codec limit.  It
keeps the receiving decoder total and compact; the codec's independent length
and resource limits remain unchanged.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Producer.Variantdd00ecf5d86f5597e3b633c5765c4ce5071f50db9a32a1a33f9e1dc578cc4bcc

namespace BitMatrix.Runtime.ForeignTrace

open BitMatrix.Codec
open BitMatrix.Codec.Profiles

/-- The independently built runtime that emitted a trace. -/
inductive Producer where
  | javascript
  | rust
  deriving DecidableEq, Repr

/-- Map a foreign producer to the exact source-preparation profile it claims. -/
def Producer.profile : Producer → RuntimeCodecProfile
  | .javascript => .javascriptLineNormalizing
  | .rust => .rustBytePreserving

/-- A successfully decoded foreign observation. -/
structure CodecTrace where
  producer : Producer
  source : List Char
  observed : List UInt8
  deriving DecidableEq, Repr

/-- Version-one trace magic (`BTR1`). -/
def magic : List UInt8 := [66, 84, 82, 49]

/-- Producer tag used by the closed wire format. -/
def Producer.tag : Producer → UInt8
  | .javascript => 0
  | .rust => 1

/-- Decode the two legal producer tags and reject every extension. -/
def decodeProducer : UInt8 → Option Producer
  | 0 => some .javascript
  | 1 => some .rust
  | _ => none

/-- Convert one accepted ASCII byte to the corresponding Unicode scalar. -/
def asciiChar (byte : UInt8) : Char :=
  Char.ofNat byte.toNat

/-- Decode a complete version-one trace.  Unknown tags, truncated sources,
non-ASCII source bytes, and alternate magic are rejected. -/
def decode (wire : List UInt8) : Option CodecTrace :=
  if wire.take magic.length != magic then
    none
  else
    match wire.drop magic.length with
    | producerTag :: sourceLength :: remainder =>
        match decodeProducer producerTag with
        | none => none
        | some producer =>
            let count := sourceLength.toNat
            if count > remainder.length then
              none
            else
              let sourceBytes := remainder.take count
              if sourceBytes.all fun byte => byte.toNat < 128 then
                some {
                  producer
                  source := sourceBytes.map asciiChar
                  observed := remainder.drop count
                }
              else
                none
    | _ => none

/-- Formal framed bytes required for a decoded trace. -/
def expected (trace : CodecTrace) : List UInt8 :=
  (encodeWithProfile trace.producer.profile 64 trace.source).serialize

/-- The codec length obligation retained by trace acceptance. -/
def lengthRepresentable (trace : CodecTrace) : Prop :=
  RepresentableLength 64
    (profilePayload trace.producer.profile trace.source).bytes.size

/-- The semantic representation relation at the foreign trace boundary. -/
def Represents (trace : CodecTrace) : Prop :=
  trace.observed = expected trace

instance lengthRepresentableDecidable (trace : CodecTrace) :
    Decidable (lengthRepresentable trace) := by
  unfold lengthRepresentable
  infer_instance

instance representsDecidable (trace : CodecTrace) :
    Decidable (Represents trace) := by
  unfold Represents
  infer_instance

/-- A decoded trace is accepted only when both the formal length obligation
and the complete observed-byte equation are decidably true. -/
def verify (trace : CodecTrace) : Bool :=
  decide (lengthRepresentable trace ∧ Represents trace)

/-- A serialized foreign trace is accepted only after the checked decoder and
the formal recomputation both succeed. -/
def AcceptedTrace (wire : List UInt8) : Prop :=
  match decode wire with
  | some trace => verify trace = true
  | none => False

instance acceptedTraceDecidable (wire : List UInt8) :
    Decidable (AcceptedTrace wire) := by
  unfold AcceptedTrace
  split <;> infer_instance

/-- Kernel-checked soundness of the foreign trace boundary. -/
theorem acceptedTrace_sound {wire : List UInt8}
    (accepted : AcceptedTrace wire) :
    ∃ trace,
      decode wire = some trace ∧
      lengthRepresentable trace ∧
      Represents trace := by
  unfold AcceptedTrace at accepted
  cases decoded : decode wire with
  | none => simp [decoded] at accepted
  | some trace =>
      refine ⟨trace, rfl, ?_⟩
      simp only [decoded] at accepted
      change decide (lengthRepresentable trace ∧ Represents trace) = true at accepted
      exact of_decide_eq_true accepted

/-- Acceptance proves the requested runtime/formal representation equation. -/
theorem acceptedTrace_represents {wire : List UInt8}
    (accepted : AcceptedTrace wire) :
    ∃ trace, decode wire = some trace ∧ Represents trace := by
  obtain ⟨trace, decoded, _, represents⟩ := acceptedTrace_sound accepted
  exact ⟨trace, decoded, represents⟩

/-- Operation preservation: every accepted observation is the serialization
of the formal profile encoder, not merely a payload that happens to parse. -/
theorem acceptedTrace_operation_preserved {wire : List UInt8}
    (accepted : AcceptedTrace wire) :
    ∃ trace,
      decode wire = some trace ∧
      trace.observed =
        (encodeWithProfile trace.producer.profile 64 trace.source).serialize := by
  simpa [Represents, expected] using acceptedTrace_represents accepted

/-- Framing preservation follows from formal recomputation for every accepted
foreign trace. -/
theorem acceptedTrace_final_lf {wire : List UInt8}
    (accepted : AcceptedTrace wire) :
    ∃ trace,
      decode wire = some trace ∧ trace.observed.getLast? = some 10 := by
  obtain ⟨trace, decoded, equality⟩ :=
    acceptedTrace_operation_preserved accepted
  refine ⟨trace, decoded, ?_⟩
  rw [equality]
  exact serialize_final_lf _

/-- An accepted observation also satisfies the complete declarative codec
relation for its producer profile. -/
theorem acceptedTrace_encodeDecodeRelation {wire : List UInt8}
    (accepted : AcceptedTrace wire) :
    ∃ trace,
      decode wire = some trace ∧
      EncodeDecodeRelation 64
        (profilePayload trace.producer.profile trace.source)
        (encodeWithProfile trace.producer.profile 64 trace.source) := by
  obtain ⟨trace, decoded, representable, _⟩ := acceptedTrace_sound accepted
  exact ⟨trace, decoded,
    encodeWithProfile_relation trace.producer.profile 64 trace.source
      representable⟩

end BitMatrix.Runtime.ForeignTrace
```
