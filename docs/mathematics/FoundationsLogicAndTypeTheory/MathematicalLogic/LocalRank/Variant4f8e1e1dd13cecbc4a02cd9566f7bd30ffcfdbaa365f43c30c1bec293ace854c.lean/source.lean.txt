/-!
# Finite local ranks

The ordering source is explicit and rank injectivity is proof-bearing.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteLocalRank (Frontier : Type u) where
  orderingSourceRef : String
  rank : Frontier → Nat
  injective : Function.Injective rank

end Mathematics.StratifiedBoundary
