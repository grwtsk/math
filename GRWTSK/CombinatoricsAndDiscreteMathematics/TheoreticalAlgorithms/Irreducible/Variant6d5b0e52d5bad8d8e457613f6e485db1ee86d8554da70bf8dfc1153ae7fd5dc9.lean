import Surface.Legacy.BinaryLogicMatrix.Tree.EuclidInfinitude

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure Modularity where
  name : String
  carrier : BinaryLogicTree
  claimBoundary : List String
deriving Repr

structure ReducibleBy where
  source : Modularity
  left : Modularity
  right : Modularity
  witness :
    source.carrier =
      BinaryLogicTree.node left.carrier right.carrier

def Irreducible (M : Modularity) : Prop :=
  ¬ ∃ L R : Modularity,
      M.carrier =
        BinaryLogicTree.node L.carrier R.carrier

structure IrreducibleFactor where
  modularity : Modularity
  prime : PrimeLabel
  irreducible : Irreducible modularity
  claimBoundary : List String

structure IrreducibleFactorRegistry where
  factors : List IrreducibleFactor
  primeInjective :
    ∀ A B,
      A ∈ factors →
      B ∈ factors →
      A.prime.value = B.prime.value →
        A.modularity = B.modularity
  allIrreducible :
    ∀ A, A ∈ factors → Irreducible A.modularity
  claimBoundary : List String

theorem irreducible_modularity_has_prime_label
    (F : IrreducibleFactor) :
    Nat.Prime F.prime.value :=
  F.prime.isPrime

theorem primeLabels_distinguish_irreducibles
    (R : IrreducibleFactorRegistry)
    {A B : IrreducibleFactor}
    (hA : A ∈ R.factors)
    (hB : B ∈ R.factors)
    (h : A.prime.value = B.prime.value) :
    A.modularity = B.modularity :=
  R.primeInjective A B hA hB h

theorem primeLabeling_injective_on_irreducibles
    (R : IrreducibleFactorRegistry)
    {A B : IrreducibleFactor}
    (hA : A ∈ R.factors)
    (hB : B ∈ R.factors)
    (h : A.prime.value = B.prime.value) :
    A.modularity = B.modularity :=
  primeLabels_distinguish_irreducibles R hA hB h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
