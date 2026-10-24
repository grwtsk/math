# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CoverageCertificate.Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d43ce95251ad811e0aa3ae971ceb293cbc7a68` · SHA-256 `d2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Exploration.UniversalSequence
import Mathematics.GraphAccess.Exploration.DeBruijn

/-!
# Independent coverage verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentCoverageVerification where
  declaredClassOrAlphabetRef : String
  constructorRef : String
  verifierRef : String
  independent : Prop
  coverageAccepted : Prop
  independentEvidence : independent
  coverageAcceptedEvidence : coverageAccepted

theorem independently_verified_coverage_is_accepted
    (verification : IndependentCoverageVerification) :
    verification.coverageAccepted :=
  verification.coverageAcceptedEvidence

end Mathematics.GraphAccess
```
