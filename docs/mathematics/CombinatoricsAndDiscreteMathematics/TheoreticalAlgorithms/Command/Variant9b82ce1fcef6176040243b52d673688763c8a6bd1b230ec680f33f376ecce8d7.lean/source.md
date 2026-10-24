# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Command.Variant9b82ce1fcef6176040243b52d673688763c8a6bd1b230ec680f33f376ecce8d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fd79154be956035c2efd2888637e085f12f9928` · SHA-256 `9e9269998be0c3d9e512843db33438a23cc75cf34b03f40edb5d7b652fb311f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
