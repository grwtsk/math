# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Codec.Variant82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ceddc029443ad71b0c6b651abdb10229e00460f` · SHA-256 `82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FilesystemCodec.FieldRows

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

namespace FilesystemCodec

universe u

/--
A snapshot codec whose encoded values are canonically framed variable-row
binary matrix packets.
-/
structure FilesystemMatrixCodec
    (Snapshot : Type u)
    (r : Nat) where
  encode : Snapshot → BitPacket r
  decode : BitPacket r → Option Snapshot
  decode_encode : ∀ snapshot, decode (encode snapshot) = some snapshot

namespace FilesystemMatrixCodec

/-- A lossless filesystem matrix encoder is injective. -/
theorem encode_injective
    (C : FilesystemMatrixCodec Snapshot r) :
    Function.Injective C.encode := by
  intro x y hxy
  have hdecode := congrArg C.decode hxy
  simpa [C.decode_encode] using hdecode

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

end FilesystemCodec
```
