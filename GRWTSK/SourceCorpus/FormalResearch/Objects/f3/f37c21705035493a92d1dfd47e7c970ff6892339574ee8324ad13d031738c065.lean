import Mathematics.Cubical.All

/-! # Homological event envelopes -/

namespace Mathematics.Homology

structure Event where
  id : StableId
  target : ElementRef
  revision : Nat
  payloadDigest : Digest
  deriving DecidableEq, Repr

structure TransportCertificate where
  event : Event
  sourceBoundaryDigest : Digest
  targetBoundaryDigest : Digest
  boundaryPreserved : sourceBoundaryDigest = targetBoundaryDigest

end Mathematics.Homology
