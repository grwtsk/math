# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SamplingCertificate.Variant0c25d43caed79936eb84b66b2b99c192c270f864f5bdf3d9d737cdc9a1461e9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a61d5b207134898b17f6ff24fdb0aa81efe45621` · SHA-256 `0c25d43caed79936eb84b66b2b99c192c270f864f5bdf3d9d737cdc9a1461e9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Sampling.TraceApproximation

/-!
# Independent discrepancy verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentSamplingVerification where
  samplerRef : String
  verifierRef : String
  independent : Prop
  discrepancyAccepted : Prop
  independentEvidence : independent
  discrepancyAcceptedEvidence : discrepancyAccepted

theorem independently_verified_sampling_bound_is_accepted
    (verification : IndependentSamplingVerification) :
    verification.discrepancyAccepted :=
  verification.discrepancyAcceptedEvidence

end Mathematics.GraphAccess
```
