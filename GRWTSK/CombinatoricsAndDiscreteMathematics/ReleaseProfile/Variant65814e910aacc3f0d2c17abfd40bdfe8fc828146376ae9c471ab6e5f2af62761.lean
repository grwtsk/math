import Mathematics.SemiLocalDefect.Access.PassivityObstruction

/-!
# Certified connector release

Release is a proposal priority unless a separate admissible-heuristic theorem
relates it to remaining primary cost.
-/

namespace Mathematics.SemiLocalDefect.Access

structure ConnectorReleaseProfile
    (primeUniverse : FinitePrimeUniverse) where
  edge : PrimeInsertionEdge primeUniverse
  descendantWeight : ℚ
  proofCost : ℚ
  descendantWeight_nonnegative :
    0 ≤ descendantWeight
  proofCost_positive :
    0 < proofCost
  descendantCount :
    descendantWeight =
      2 ^
        (Fintype.card primeUniverse.Prime -
          edge.source.card - 1)
  release : ℚ
  release_eq :
    release =
      descendantWeight / proofCost
  certified : Prop
  certifiedProof : certified

structure ReleaseAStarAdmissibility
    {primeUniverse : FinitePrimeUniverse}
    (profile :
      ConnectorReleaseProfile primeUniverse) where
  remainingPrimaryCost : ℚ
  heuristic : ℚ
  lowerBound :
    heuristic ≤ remainingPrimaryCost
  releaseDerived : Prop
  releaseDerivedProof : releaseDerived

end Mathematics.SemiLocalDefect.Access
