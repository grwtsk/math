-- Explicit retained providers for the complete packet dependency chain.
-- Mathematical declarations, hypotheses and proof bodies are unchanged.
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingState.Variantb47be07ca78f4f07b03b4f9b7e8c37975ec853842a7d76a05f14a185f53392e1
import GRWTSK.Algebra.UniversalAlgebra.Blocks.Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a

/-!
# Framed filesystem-packet ring adapter

Packet rings retain `BitPacket.payloadBits`; they do not replace framed packets
with bare dependent matrices.  This adapter is intentionally downstream of
both the generic runtime ring and the filesystem codec.
-/

namespace BitMatrix.Runtime

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

end BitMatrix.Runtime
