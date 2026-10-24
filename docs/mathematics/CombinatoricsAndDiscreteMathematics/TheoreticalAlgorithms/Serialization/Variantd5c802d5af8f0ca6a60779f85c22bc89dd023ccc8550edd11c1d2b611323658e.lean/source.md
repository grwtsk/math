# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Serialization.Variantd5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40bf1bb9a9fe1b9ea069d11911b54a53295f0528` · SHA-256 `d5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Codec

/-!
# Abstract canonical filesystem serialization

This module isolates the only serialization property needed by the later
matrix pipeline: encoding has a decoder that is a left inverse. A deterministic
serializer is not automatically injective; injectivity follows here from the
explicit `decode_encode` proof.

The exact correspondence is between snapshots and the **image** of a chosen
encoder, not every byte array. Reversibility is therefore relative to the
abstract snapshot model and its serialization policy. A concrete canonical
serializer must fix traversal and child ordering, path and filename encoding,
record tags and length framing, metadata policy, symbolic- and hard-link
handling, sparse data, extended attributes, byte order, and snapshot
consistency. Live filesystem traversal and host materialization are outside
this pure development.
-/

namespace FilesystemCodec

universe u

/-! ## Filesystem-specific serialization interface -/

/-- A framed byte sequence; framing policy belongs to the selected codec. -/
abbrev FramedBytes := Array UInt8

/--
An abstract canonical filesystem serializer. Its model and framing choices are
explicit in the selected `DAF.LeftInverseCodec` value.
-/
abbrev CanonicalSerializer (Snapshot : Type u) :=
  DAF.LeftInverseCodec Snapshot FramedBytes

namespace CanonicalSerializer

/-- A byte array is valid precisely when it is emitted by the serializer. -/
def Valid
    (S : CanonicalSerializer Snapshot)
    (bytes : FramedBytes) :
    Prop :=
  DAF.LeftInverseCodec.ValidOutput S bytes

/-- Canonical serialization is injective by its proved left inverse. -/
theorem encode_injective
    (S : CanonicalSerializer Snapshot) :
    Function.Injective S.encode :=
  DAF.LeftInverseCodec.encode_injective S

end CanonicalSerializer

end FilesystemCodec
```
