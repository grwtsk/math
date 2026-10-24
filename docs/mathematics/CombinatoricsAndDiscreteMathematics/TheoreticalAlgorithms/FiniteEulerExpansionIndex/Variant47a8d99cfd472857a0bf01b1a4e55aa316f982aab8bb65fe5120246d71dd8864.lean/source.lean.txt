import Folder.Rebuild.AnalyticNumberTheory.WeightedDirichletPolynomialProduct
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers
import Folder.Rebuild.Exposition.AnalyticNumberTheoryIndex

/-!
# Folder.Rebuild.Exposition.FiniteEulerExpansionIndex

Exposition index for finite weighted Cauchy and Euler-product expansion facts.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def weightedFiniteCauchyProductAnchor : ClassicalAnchor where
  shortName := "Weighted finite Cauchy product"
  paperOrBook := "Checked rebuild finite Dirichlet-polynomial layer"
  theoremLabel := "dirichletPolynomialComplex_mul_pair"
  mathematicalContent :=
    "The weighted finite Dirichlet-polynomial product is checked in pair-indexed form."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteExponentVectorEulerExpansionAnchor : ClassicalAnchor where
  shortName := "Finite exponent-vector Euler expansion"
  paperOrBook := "Checked rebuild finite Euler-product layer"
  theoremLabel := "finiteZetaEulerProductReal_expands_exponent_vectors"
  mathematicalContent :=
    "The finite Euler product expands exactly over bounded exponent vectors."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def boundedSmoothNumberReindexingAnchor : ClassicalAnchor where
  shortName := "Bounded smooth-number reindexing"
  paperOrBook := "Finite Euler-product smooth-number route"
  theoremLabel := "finiteEulerProductOf_expands_boundedSmoothNumbers"
  mathematicalContent :=
    "The bounded smooth-number image is defined and the finite Euler-product reindexing is checked."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def infiniteEulerProductTargetAnchor : ClassicalAnchor where
  shortName := "Infinite Euler product target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "The infinite Euler product remains a target and is not used as a checked dependency here."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def dirichletSeriesCauchyProductTargetAnchor : ClassicalAnchor where
  shortName := "Dirichlet-series Cauchy product target"
  paperOrBook := "Classical Dirichlet-series references"
  theoremLabel := "InfiniteDirichletSeriesCauchyProductTarget"
  mathematicalContent :=
    "The infinite Cauchy product for convergent Dirichlet series remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def finiteEulerExpansionAnchors : List ClassicalAnchor :=
  [ weightedFiniteCauchyProductAnchor
  , finiteExponentVectorEulerExpansionAnchor
  , boundedSmoothNumberReindexingAnchor
  , infiniteEulerProductTargetAnchor
  , dirichletSeriesCauchyProductTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
