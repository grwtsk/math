# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Advice.Variant5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70880413a5f04aa4f2b78ae622a612486cba21b1` · SHA-256 `5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Result

/-!
# Advice is not authority

Heuristic guidance has its own constructor and cannot inhabit a certificate
constructor without an explicit, independently checked conversion.
-/

namespace Mathematics.Resolution

universe u v

structure ResolutionAdvice (Obligation : Type u) where
  suggested : List Obligation
  summaryDigest : String

inductive ResolverArtifact
    (Obligation : Type u)
    (Certificate : Type v)
  | advice (value : ResolutionAdvice Obligation)
  | observation (digest : String)
  | certificate (value : Certificate)

theorem advice_constructor_ne_certificate
    (advice : ResolutionAdvice Obligation)
    (certificate : Certificate) :
    ResolverArtifact.advice advice ≠
      ResolverArtifact.certificate certificate := by
  intro equal
  cases equal

end Mathematics.Resolution
```
