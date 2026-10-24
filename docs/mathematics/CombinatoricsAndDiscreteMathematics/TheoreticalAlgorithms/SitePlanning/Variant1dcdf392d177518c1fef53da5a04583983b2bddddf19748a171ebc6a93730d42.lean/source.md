# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SitePlanning.Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e21dbaa8b73ce7a082a466d3d84a2b5461d7f73d` · SHA-256 `1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ComplexSitePlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  localObjects : List String
  covers : List String
  irreduciblePrimeModularities : List PrimeLabel
  topologyPrime : PrimeLabel
  obstructionBoundary : List String
  claimBoundary : List String

def complexSitePlan
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers : List String)
    (obstructionBoundary : List String) :
    ComplexSitePlan where
  tree := T
  normalForm := normalize R T
  localObjects := localObjects
  covers := covers
  irreduciblePrimeModularities := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  obstructionBoundary := obstructionBoundary
  claimBoundary := [
    "ComplexSitePlan is site-planning metadata only.",
    "Site-theoretic universality requires checked AffineTopos or NativeSyntacticTopos theorems."
  ]

theorem complexSitePlan_primeModularities_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).irreduciblePrimeModularities =
      primeFactorsCore (normalizeCore R T) := rfl

theorem complexSitePlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).topologyPrime =
      topologyPrimeIdentity R T := rfl

theorem complexSitePlan_claimBoundary_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).claimBoundary ≠ [] := by
  simp [complexSitePlan]

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
