import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing
import Folder.Rebuild.AnalyticNumberTheory.WeightedCauchyReindexed
import Folder.Rebuild.Exposition.FiniteEulerExpansionIndex

/-!
# Folder.Rebuild.Exposition.FiniteReindexingIndex

Exposition index for checked finite reindexing theorems.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def exponentVectorInjectivityAnchor : ClassicalAnchor where
  shortName := "Exponent-vector injectivity"
  paperOrBook := "Checked finite factorization plumbing"
  theoremLabel := "exponentVectorNat_injective_of_prime_set"
  mathematicalContent :=
    "Prime factorization recovers bounded exponent vectors over a finite prime set."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def smoothNumberReindexingCheckedAnchor : ClassicalAnchor where
  shortName := "Smooth-number reindexing checked"
  paperOrBook := "Checked finite Euler-product reindexing"
  theoremLabel := "finiteEulerProductOf_expands_boundedSmoothNumbers"
  mathematicalContent :=
    "Completely multiplicative finite Euler products reindex over bounded smooth numbers."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def boundedDirichletConvolutionReindexingAnchor : ClassicalAnchor where
  shortName := "Bounded Dirichlet convolution reindexing"
  paperOrBook := "Checked finite divisor-pair reindexing"
  theoremLabel := "pairProductByValue_eq_boundedDirichletConv"
  mathematicalContent :=
    "Pairs with fixed product are reindexed by bounded divisors."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def weightedCauchyBoundedConvAnchor : ClassicalAnchor where
  shortName := "Weighted Cauchy bounded convolution"
  paperOrBook := "Checked finite Dirichlet-polynomial layer"
  theoremLabel := "dirichletPolynomialComplex_mul_boundedConv"
  mathematicalContent :=
    "The weighted finite Cauchy product is reindexed by bounded Dirichlet convolution."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def infiniteDirichletCauchyProductTargetAnchor : ClassicalAnchor where
  shortName := "Infinite Dirichlet Cauchy target"
  paperOrBook := "Classical Dirichlet-series references"
  theoremLabel := "InfiniteDirichletSeriesCauchyProductTarget"
  mathematicalContent :=
    "The infinite Cauchy product for convergent Dirichlet series remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def finiteReindexingAnchors : List ClassicalAnchor :=
  [ exponentVectorInjectivityAnchor
  , smoothNumberReindexingCheckedAnchor
  , boundedDirichletConvolutionReindexingAnchor
  , weightedCauchyBoundedConvAnchor
  , infiniteDirichletCauchyProductTargetAnchor
  , infiniteEulerProductTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
