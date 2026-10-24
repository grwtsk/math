# Complete source: GRWTSK.Algebra.LinearAlgebra.PacketRing.Variant2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c468023af7d722b019c3fc7ae3571ab52863185c` · SHA-256 `2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.RingState
import FilesystemCodec.Blocks

/-!
# Framed filesystem-packet ring adapter

Packet rings retain `BitPacket.payloadBits`; they do not replace framed packets
with bare dependent matrices.  This adapter is intentionally downstream of
both the generic runtime ring and the filesystem codec.
-/

namespace BinaryMatrix.Runtime

open FilesystemCodec

/-- Validated framed filesystem packets stored in a generic ring. -/
abbrev PacketRingState
    (capacity width : Nat) :=
  DAF.Runtime.RingState capacity (BitPacket width)

/--
Observe the latest packet through its exact payload length and a caller-chosen
matrix reduction.  The length prevents trailing-zero framing loss.
-/
def latestPayloadAndMatrixObservation
    (state : PacketRingState capacity width)
    (hcapacity : 0 < capacity)
    (reduceMatrix : VariableMatrix width → Summary) :
    Option (Nat × Summary) :=
  (DAF.Runtime.RingState.latestEntry state hcapacity).map fun packet =>
    (packet.payloadBits, reduceMatrix packet.toVariableMatrix)

end BinaryMatrix.Runtime
```
