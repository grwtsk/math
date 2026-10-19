/-
Minimal observation factorization predicates
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

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.RecoverableObservationRepresentations

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ObservationFactorization
universe u v w a b
namespace SufficientRepresentation
variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

def IsMinimal (q : SufficientRepresentation.{u, v, w, a} C) : Prop :=
  ∀ r : SufficientRepresentation.{u, v, w, b} C, q.FactorsThrough r

theorem factor_of_minimal {q : SufficientRepresentation.{u, v, w, a} C}
    (hq : IsMinimal.{u, v, w, a, b} q)
    (r : SufficientRepresentation.{u, v, w, b} C) : q.FactorsThrough r :=
  hq r
end SufficientRepresentation
end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ObservationFactorization
