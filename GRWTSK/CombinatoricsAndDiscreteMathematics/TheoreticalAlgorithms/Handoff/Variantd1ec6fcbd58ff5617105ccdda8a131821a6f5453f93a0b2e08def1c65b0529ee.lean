-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HandoffContext.Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HandoffContext.Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f","mathematical_subject":"Computation.DataStructures","original_sha256":"1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Handoff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Execution

/-!
# Cross-device handoff

Handoff transfers navigation context.  A source-device lease cannot authorize
an operation on a distinct target device.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HandoffContext.Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f

namespace Mathematics.Capability

structure HandoffContext where
  sourceDevice : DeviceId
  targetDevice : DeviceId
  devices_distinct :
    sourceDevice ≠ targetDevice
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress

def HandoffContext.transferredLease
    (_ : HandoffContext) :
    Option Lease :=
  none

@[simp] theorem handoff_transfers_no_lease
    (handoff : HandoffContext) :
    handoff.transferredLease = none :=
  rfl

theorem source_lease_does_not_authorize_target
    (handoff : HandoffContext)
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest)
    (sourceBound :
      lease.capability.device = handoff.sourceDevice)
    (targetBound :
      request.device = handoff.targetDevice) :
    ¬ lease.Allows revocations time request := by
  intro authorization
  apply handoff.devices_distinct
  calc
    handoff.sourceDevice = lease.capability.device := sourceBound.symm
    _ = request.device := authorization.device_bound
    _ = handoff.targetDevice := targetBound

end Mathematics.Capability
