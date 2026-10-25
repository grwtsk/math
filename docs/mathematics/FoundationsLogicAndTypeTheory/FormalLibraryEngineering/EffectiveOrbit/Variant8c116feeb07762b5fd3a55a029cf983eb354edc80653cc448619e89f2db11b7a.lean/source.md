# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EffectiveOrbit.Variant8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aafa44638338a1bd58f859988d98fb2545639c19` · SHA-256 `8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
