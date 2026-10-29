import Mathematics.Orbit.CircleClosure

/-! # Certified torus-closure claims -/

namespace Mathematics.Orbit

structure TorusClosureCertificate where
  phaseVectorDigest : Digest
  rationalIndependenceCertificate : CertificateId
  dimension : Nat
  positiveDimension : 0 < dimension

def TorusClosureCertificate.status
    (certificate : TorusClosureCertificate) : Status :=
  .denseTorus certificate.dimension

end Mathematics.Orbit
