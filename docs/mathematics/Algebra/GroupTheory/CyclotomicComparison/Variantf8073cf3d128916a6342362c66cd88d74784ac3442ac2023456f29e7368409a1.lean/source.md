# Complete source: GRWTSK.Algebra.GroupTheory.CyclotomicComparison.Variantf8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b5fb51dc6462bd1c18156cbf6eab581f8a3b5b5` · SHA-256 `f8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Prismatic.StablePointEmbedding

/-!
# Prime-indexed action and comparison candidates

A monoid action plus prime-indexed maps is not yet a cyclotomic spectrum: this
file supplies no spectrum object, genuine `S¹` action, or Tate construction.
The records below therefore retain the exact maps and proof obligations while
remaining candidates.  K/TC and prismatic/TC identifications are never inferred
from their names.
-/

namespace Mathematics.Prismatic

universe u v w x

/--
The algebraic data visible before a cyclotomic-spectrum formalization: a
monoid action and one map to an externally supplied target at each certified
prime.
-/
structure PrimeIndexedActionCandidate
    (Symmetry : Type u)
    (Carrier : Type v)
    (PrimeTarget : CertifiedPrime → Type w)
    [Monoid Symmetry] where
  action : Symmetry → Carrier → Carrier
  one_action :
    ∀ value, action 1 value = value
  mul_action :
    ∀ left right value,
      action (left * right) value =
        action left (action right value)
  primeMap :
    (prime : CertifiedPrime) →
      Carrier → PrimeTarget prime
  actionDigest : Digest
  primeMapDigest : CertifiedPrime → Digest
  candidateAddress : ObjectAddress

/--
Candidate relative K/TC comparison under an explicit theorem hypothesis.  The
equivalence is real at the supplied carrier types, but this record does not by
itself prove that those types realize algebraic K-theory and TC.
-/
structure RelativeKTCComparisonCandidate
    (KTheoryCarrier : Type u)
    (TCCarrier : Type v)
    (hypothesis : Prop) where
  hypothesisProof : hypothesis
  comparison : KTheoryCarrier ≃ TCCarrier
  coefficientDigest : Digest
  henselianPairDigest : Digest
  claimedTheoremAddress : ObjectAddress
  evidenceAddress : ObjectAddress

/--
Candidate directional comparison between supplied prismatic and cyclotomic
carriers.  No inverse, equivalence, or identification of either carrier is
inferred.
-/
structure PrismaticCyclotomicComparisonCandidate
    (PrismaticCarrier : Type u)
    (CyclotomicCarrier : Type v) where
  prime : CertifiedPrime
  map : PrismaticCarrier → CyclotomicCarrier
  comparisonHypotheses : Prop
  hypothesesProved : comparisonHypotheses
  preservesFrobenius : Prop
  frobeniusCompatibilityProved : preservesFrobenius
  preservesFiltration : Prop
  filtrationCompatibilityProved : preservesFiltration
  comparisonDigest : Digest
  evidenceAddress : ObjectAddress

end Mathematics.Prismatic
```
