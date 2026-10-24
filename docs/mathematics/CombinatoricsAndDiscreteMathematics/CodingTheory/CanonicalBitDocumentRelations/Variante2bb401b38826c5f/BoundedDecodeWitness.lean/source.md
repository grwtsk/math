# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f.BoundedDecodeWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1393cef73a3d2d766b7fe755fbf73b119bee8989` · SHA-256 `ba916427f2f804e0c9de1ef74b6bbbd8b9afd040556de4452f727d6fc4c55b3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete bounded canonical decode witness
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a
Organized SHA-256: 3fc5bcef57329d1df85c5fb38b15e52819368de86f00945d0a13b1eaf7ad6b58
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Pure declarative finite bit/string data and equations only; no source IO, runtime decode/UTF8 test, omitted length bound or acceptance claim. Every copied field and proof is unchanged. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f.SyntaxAndFraming

import BitMatrix.Codec.Source

/-!
# Canonical bit-document semantics

This is the provider-neutral semantic layer shared by runtime correspondence
tests.  It fixes prefix and payload bit order and the single final-LF framing;
resource limits and successful UTF-8 decoding remain explicit witnesses.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f

/-- A byte length is representable by a fixed-width unsigned prefix exactly
when it is strictly below the first omitted power of two. -/
def RepresentableLength (prefixWidth byteLength : Nat) : Prop :=
  byteLength < 2 ^ prefixWidth

instance representableLengthDecidable (prefixWidth byteLength : Nat) :
    Decidable (RepresentableLength prefixWidth byteLength) := by
  unfold RepresentableLength
  infer_instance

/-- Exact declarative encode/decode relation.  The representability conjunct is
essential: without it `lengthPrefixDigits` would silently truncate high length
bits and the resulting document would be rejected by a fail-closed decoder. -/
def EncodeDecodeRelation
    (prefixWidth : Nat)
    (payload : Utf8Payload)
    (document : BitDocument) : Prop :=
  document = encodeBitDocument prefixWidth payload ∧
    RepresentableLength prefixWidth payload.bytes.size

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

theorem decodeWitness_declared_length_matches
    {prefixWidth explicitMaximum : Nat}
    {document : BitDocument}
    (witness : DecodeWitness prefixWidth explicitMaximum document) :
    document.digits =
      lengthPrefixDigits prefixWidth witness.payload.bytes.size ++
        payloadDigitsMSB witness.payload := by
  simpa [encodeBitDocument] using
    congrArg BitDocument.digits witness.exactEncoding.1

/-- Every successful decode witness carries the exact fixed-width
representability obligation for its declared byte length. -/
theorem decodeWitness_length_representable
    {prefixWidth explicitMaximum : Nat}
    {document : BitDocument}
    (witness : DecodeWitness prefixWidth explicitMaximum document) :
    RepresentableLength prefixWidth witness.payload.bytes.size :=
  witness.exactEncoding.2

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f
```
