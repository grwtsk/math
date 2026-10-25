import Mathematics.Orbit.Stabilizer
import Mathematics.Orbit.TorusClosure

/-! # Effective orbit reports -/

namespace Mathematics.Orbit

structure EffectiveOrbit where
  status : Status
  observedPrefixLength : Nat
  stabilizerDigest : Option Digest
  certificate : Option CertificateId
  deriving DecidableEq, Repr

def EffectiveOrbit.finitePrefixSafe (report : EffectiveOrbit) : Prop :=
  report.certificate.isNone → report.status = .unresolved ∨
    ∃ period, report.status = .finite period

end Mathematics.Orbit
