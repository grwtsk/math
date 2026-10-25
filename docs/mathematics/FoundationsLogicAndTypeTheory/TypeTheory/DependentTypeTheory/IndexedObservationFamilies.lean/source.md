# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IndexedObservationFamilies

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `655a0ad1afc3a2820510604beb94d9e2348f2c05` · SHA-256 `b3c720f1908ffb3d947bef4890f1b7e980d4a473bc1d1a5cb00e2095816ea3a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Indexed observation families and observational equivalence
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
These are abstract dependent observation and recovery maps. No computable minimizer, statistical sufficiency, quotient construction or mathematical priority is asserted.
-/
import Mathlib

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ObservationFactorization
universe u v w a b
structure CertificateFamily (State : Type u) (Index : Type v) where
  value : Index → Type w
  observe : (i : Index) → State → value i

namespace CertificateFamily
variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)
def Equivalent (x y : State) : Prop := ∀ i, C.observe i x = C.observe i y
end CertificateFamily

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ObservationFactorization
```
