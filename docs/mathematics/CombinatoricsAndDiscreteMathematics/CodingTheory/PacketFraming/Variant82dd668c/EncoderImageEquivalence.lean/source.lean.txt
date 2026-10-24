/-
Encoder-image validity and the exact snapshot equivalence
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
The noncomputable equivalence targets only the encoder image subtype and retains Classical.choose; arbitrary packets are not its codomain.
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

/-- A packet is valid for a codec exactly when that codec emitted it. -/
def ValidPacket
    (C : FilesystemMatrixCodec Snapshot r)
    (packet : BitPacket r) :
    Prop :=
  ∃ snapshot, C.encode snapshot = packet

/-- The image of a filesystem matrix encoder, retaining its validity proof. -/
def ValidPacketType
    (C : FilesystemMatrixCodec Snapshot r) :=
  {packet : BitPacket r // C.ValidPacket packet}

/--
Snapshots are exactly equivalent to valid packets in the encoder image.  The
ambient packet type can contain canonical bit packets not emitted by this
particular snapshot serializer, so it is intentionally not used as the
codomain of this equivalence.
-/
noncomputable def snapshotEquivValidPacket
    (C : FilesystemMatrixCodec Snapshot r) :
    Snapshot ≃ C.ValidPacketType where
  toFun snapshot := ⟨C.encode snapshot, ⟨snapshot, rfl⟩⟩
  invFun packet := Classical.choose packet.property
  left_inv snapshot := by
    apply C.encode_injective
    exact Classical.choose_spec
      ((show C.ValidPacket (C.encode snapshot) from ⟨snapshot, rfl⟩))
  right_inv packet := by
    apply Subtype.ext
    exact Classical.choose_spec packet.property

end FilesystemMatrixCodec

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c
