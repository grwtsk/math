/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.SharedShadowPullback
import GRWTSK.InformationAndCommunicationTheoryCircuits.CommunicationInformation.PrefixLengthVariableCommaFreeCodes.RoundTrip

set_option autoImplicit false
noncomputable section

/-!
# Actual Huffman composition for a lossless shared-shadow record

SharedShadowPullback constructs an exact, proof-bearing two-source
record. Its source round trip is independent of a chosen byte format.
Here we use the EXISTING concrete Huffman byte codec, not a new
Huffman implementation or an assumed Huffman codec law.

A real byte serialization of the ENTIRE reified record is a
separate input and MUST satisfy its own round-trip theorem. One
cannot inject every state of an unrestricted uncountable real
symplectic vector space into all finite UInt8 lists; this interface
does not manufacture such a serializer, approximate real parameters
or silently discard fiber labels, phase, multiplicities or source
identities. Its theorem is the valid composition at the exact
domain covered by the supplied serializer.
-/

namespace GRWTSK.InformationTheory.SourceCoding.SharedShadowHuffman

open GRWTSK.Algebra.SharedShadowPullback

universe u v w t

variable {A : Type u} {B : Type v} {L : Type w} {R : Type t}
variable [AddCommGroup A] [AddCommGroup B]
variable [AddCommGroup L] [AddCommGroup R]

/-- The missing source-to-BYTES adapter is explicit: it must encode
every field of the chosen full reified record, including its
two distinct source coordinates and selected lower shadow. -/
structure ByteRecordCodec (S : SharedShadow A B L R) where
  write : S.Reified → List UInt8
  read : List UInt8 → Option S.Reified
  read_write : ∀ record : S.Reified, read (write record) = some record

/-- Compose the actual published Huffman encoder with the complete
mathematical source-reifying record. -/
def encodePacket (S : SharedShadow A B L R)
    (codec : ByteRecordCodec S) (x : S.Paired) :
    GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Packet :=
  GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.encode
    (codec.write (S.encode x))

/-- Decode Huffman, then the external typed byte serializer, then the
exact two-source reifier. Any error stays in Option. -/
def decodePacket (S : SharedShadow A B L R)
    (codec : ByteRecordCodec S)
    (packet :
      GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Packet) :
    Option S.Paired := do
  let bytes ←
    GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode packet
  let record ← codec.read bytes
  pure (S.decode record)

/-- The ACTUAL Huffman round trip and the separately proved typed
serialization round trip imply exact recovery of BOTH originals.
Neither a source-independent bit count nor compression gain is
claimed. -/
theorem decode_encodePacket (S : SharedShadow A B L R)
    (codec : ByteRecordCodec S) (x : S.Paired) :
    decodePacket S codec (encodePacket S codec x) = some x := by
  simp [decodePacket, encodePacket,
    GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode_encode,
    codec.read_write, S.decode_encode]

end GRWTSK.InformationTheory.SourceCoding.SharedShadowHuffman
