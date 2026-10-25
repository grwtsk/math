# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogVerification.Variant9bc662331e2c31482b51ecfb6b364b18c1e58362df5b7669307b78045383d15d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0828d65c0597d26f6e182388f113161829d3e46f` · SHA-256 `9bc662331e2c31482b51ecfb6b364b18c1e58362df5b7669307b78045383d15d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.Damping

/-! # Branch- and domain-bound logarithmic verification -/

namespace Mathematics.Stability

structure LogarithmicVerificationProfile (X : Type) where
  profileId : StableId
  decode : X → X
  inputDomain : X → Prop
  branchRef : Option StableId
  conditioningUpperBound : Option Nat

structure LogarithmicRoundTripCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (verification : LogarithmicVerificationProfile X) where
  outputInDomain :
    ∀ x, construction.domain.contains x →
      verification.inputDomain (construction.apply x)
  roundTrip :
    ∀ x, construction.domain.contains x →
      verification.decode (construction.apply x) = x

theorem logarithmic_verifier_round_trip
    {X : Type}
    {construction : ReflectiveMap X}
    {verification : LogarithmicVerificationProfile X}
    (certificate :
      LogarithmicRoundTripCertificate construction verification)
    (x : X)
    (member : construction.domain.contains x) :
    verification.decode (construction.apply x) = x :=
  certificate.roundTrip x member

structure LogarithmOpenObligations where
  domainStatement : Prop
  branchStatement : Prop
  conditioningStatement : Prop
  domainStatus : ProofDisposition
  branchStatus : ProofDisposition
  conditioningStatus : ProofDisposition

end Mathematics.Stability
```
