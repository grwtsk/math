import Mathematics.Capability.Lease

/-! # Fully bound operation requests -/

namespace Mathematics.Capability

structure OperationRequest where
  requestId : RequestId
  principal : Principal
  device : DeviceId
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effect : Effect

end Mathematics.Capability
