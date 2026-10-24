# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CT13SpecializationAndBlowup.Variant9b554bba1e2b42c2277ef9686a524032a075b9a6bae808378a6c6ca72470d68c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e24e6c5e6111b16fd495bb52d7b11880d14752cf` · SHA-256 `9b554bba1e2b42c2277ef9686a524032a075b9a6bae808378a6c6ca72470d68c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-13: specialization naturality and generic-fiber blow-up invariance.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct13_specializationAndBlowup
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT13Claim S :=
  registry.ct13

end FCRS.Theorems
```
