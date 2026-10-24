# Complete source: GRWTSK.Algebra.LinearAlgebra.PacketRing.Variantbd4264e3634b68273638232279aa08b8d54c4ba0793a23940e40ca270cd821b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d78b1ba8be3483366334aca36e4b0c631636ee8a` · SHA-256 `9763a7694b8ea1fd4ecfe0ed9105e229c4890a046c6ec2803d4fb17aa63cb96c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PacketRingState.Variant2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PacketRingState.Variant2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/Runtime/PacketRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.RingState
import FilesystemCodec.Blocks

/-!
# Framed filesystem-packet ring adapter

Packet rings retain `BitPacket.payloadBits`; they do not replace framed packets
with bare dependent matrices.  This adapter is intentionally downstream of
both the generic runtime ring and the filesystem codec.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PacketRingState.Variant2b5a0bf145095825a4cddf2db9e2b31ccf0ee2d72de064336989dd987584bb4e

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
