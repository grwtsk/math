import Mathematics.Orbit.Phase

/-! # Certified circle-closure claims -/

namespace Mathematics.Orbit

structure CircleClosureCertificate where
  phaseDigest : Digest
  irrationalityCertificate : CertificateId
  deriving DecidableEq, Repr

def CircleClosureCertificate.status (_ : CircleClosureCertificate) : Status :=
  .denseCircle

end Mathematics.Orbit
