/-
Composition of supplied serializer, byte-bit framing and positive-width blocking
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Original FilesystemCodec.FieldRows remains an unresolved legacy import; no dependency replay or mathematical admission is asserted.
CanonicalSerializer, ByteBitCodec, BitPacket, block, unblock and their laws remain external unresolved prerequisites.
-/
import FilesystemCodec.FieldRows

import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c.LosslessPacketCodec
/-!
# Lossless composition of filesystem serialization and matrix framing

This module composes three proved layers: an abstract canonical serializer, a
chosen byte-to-bit framing codec, and the reversible variable-row blocking
equivalence.  The resulting matrix codec is lossless on snapshots because
each supplied decoder is a left inverse and canonical blocking is an exact
equivalence.

As at the serialization layer, the exact correspondence is with the image of
the encoder: arbitrary packets are not asserted to decode.  This is a
variable-size, lossless representation and is deliberately distinct from a
fixed-width hash or digest.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c

open FilesystemCodec

universe u

namespace FilesystemMatrixCodec

/--
Build a lossless matrix codec by composing canonical serialization,
byte-to-bit framing, and positive-width canonical blocking.
-/
def ofLayers
    {Snapshot : Type u}
    {r : Nat}
    (hr : 0 < r)
    (serializer : CanonicalSerializer Snapshot)
    (byteBits : ByteBitCodec) :
    FilesystemMatrixCodec Snapshot r where
  encode snapshot :=
    block hr (byteBits.encode (serializer.encode snapshot))
  decode packet :=
    match byteBits.decode (unblock packet) with
    | none => none
    | some bytes => serializer.decode bytes
  decode_encode snapshot := by
    rw [unblock_block, byteBits.decode_encode]
    exact serializer.decode_encode snapshot

end FilesystemMatrixCodec

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c
