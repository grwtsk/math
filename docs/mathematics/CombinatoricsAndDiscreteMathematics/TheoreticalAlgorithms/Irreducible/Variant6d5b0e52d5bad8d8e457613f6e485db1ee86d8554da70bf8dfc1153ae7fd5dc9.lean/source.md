# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Irreducible.Variant6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8dd519ab875946d91a4da0dc986227b1aa5a095` · SHA-256 `6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
