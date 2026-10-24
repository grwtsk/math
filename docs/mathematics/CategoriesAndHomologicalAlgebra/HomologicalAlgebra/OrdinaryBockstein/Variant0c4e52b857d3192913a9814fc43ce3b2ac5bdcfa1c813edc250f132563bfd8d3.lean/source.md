# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.OrdinaryBockstein.Variant0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7707641d6cc6fa7a9e090465d51ecb3631064278` · SHA-256 `0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.BocksteinExtension

/-!
# Ordinary real-circle coefficient phase

In degree `r`, the Bockstein target is `Tor H^(r+1)(K; ℤ)`.  This phase
torsion is deliberately distinct from `Tor H^r(K; ℤ)`.
-/

namespace Mathematics.Homology

universe u v w

/-- Certified ordinary coefficient sequence in one cohomological degree. -/
structure OrdinaryBocksteinPhase
    (ContinuousTorus : Type u)
    (CircleCohomology : Type v)
    (NextIntegralTorsion : Type w)
    [AddCommGroup ContinuousTorus]
    [AddCommGroup CircleCohomology]
    [AddCommGroup NextIntegralTorsion] where
  degree : Nat
  extension :
    BocksteinExtension
      ContinuousTorus CircleCohomology NextIntegralTorsion
  continuousQuotientDigest : Digest
  nextDegreeTorsionDigest : Digest
  nextDegree_is_succ : Nat
  nextDegree_eq : nextDegree_is_succ = Nat.succ degree
  longExactSequenceCertificate : ObjectAddress

end Mathematics.Homology
```
