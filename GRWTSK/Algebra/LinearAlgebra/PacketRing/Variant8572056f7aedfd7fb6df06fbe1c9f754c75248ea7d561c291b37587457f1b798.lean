-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PacketRingState.Variant5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PacketRingState.Variant5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d","mathematical_subject":"Foundations.Unclassified","original_sha256":"5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/PacketRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.RingState
import FilesystemCodec.Blocks

/-!
# Framed filesystem-packet ring adapter

Packet rings retain `BitPacket.payloadBits`; they do not replace framed packets
with bare dependent matrices.  This adapter is intentionally downstream of
both the generic runtime ring and the filesystem codec.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PacketRingState.Variant5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d

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
