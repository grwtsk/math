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
