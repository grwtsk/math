-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CommandPacket.Variant495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CommandPacket.Variant495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51","mathematical_subject":"Computation.DataStructures","original_sha256":"495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Execution
import NetworkElements.Operation

/-! # Snapshot-bound capability-admitted command packets -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CommandPacket.Variant495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51

namespace URSM.Network

open Mathematics
open Mathematics.Capability

structure CommandPacket where
  eventId : StableId
  clientSequence : Nat
  request : OperationRequest
  baseSnapshot : ObjectAddress
  operation : NetworkOperation
  bodyDigest : Digest

structure AdmittedCommand
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (packet : CommandPacket) where
  authorization :
    lease.Allows revocations time packet.request
  snapshot_bound :
    packet.request.snapshot = packet.baseSnapshot
  effect_bound :
    packet.request.effect = packet.operation.requiredEffect

def AdmittedCommand.evidenceKind
    {lease revocations time packet}
    (_ : AdmittedCommand lease revocations time packet) :
    Mathematics.Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem admitted_command_has_no_theorem_authority
    {lease revocations time packet}
    (admitted : AdmittedCommand lease revocations time packet) :
    Mathematics.Authority.contributesTheoremAuthority
      admitted.evidenceKind = false :=
  rfl

end URSM.Network
