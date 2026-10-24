# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirichletCauchyProductIndex.Variant1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `240adf1e520cb0c47374a6c66829691f93e3b17d` · SHA-256 `1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane
import Folder.Rebuild.Exposition.ZetaNonvanishingIndex

/-!
# Folder.Rebuild.Exposition.DirichletCauchyProductIndex

Exposition anchors for the generic absolutely convergent Dirichlet-series
Cauchy product and inverse criterion.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def positivePairReindexingAnchor : ClassicalAnchor where
  shortName := "Positive factor-pair reindexing"
  paperOrBook := "Checked rebuild Dirichlet-series layer"
  theoremLabel := "productFiberSum_eq_sum_positive_pairs"
  mathematicalContent :=
    "Finite divisor fibers are equivalently indexed by positive factor pairs."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def genericDirichletCauchyProductAnchor : ClassicalAnchor where
  shortName := "Generic Dirichlet Cauchy product"
  paperOrBook := "Checked rebuild Dirichlet-series layer"
  theoremLabel := "complexDirichletSeries_mul_of_absSummable"
  mathematicalContent :=
    "Absolutely summable Dirichlet series multiply by Dirichlet convolution in the region of absolute convergence."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def dirichletInverseCriterionAnchor : ClassicalAnchor where
  shortName := "Dirichlet inverse criterion"
  paperOrBook := "Checked rebuild Dirichlet-series layer"
  theoremLabel := "dirichletSeries_ne_zero_of_has_absSummable_inverse"
  mathematicalContent :=
    "A Dirichlet series with an absolutely summable Dirichlet inverse is nonzero at that point."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaMobiusInverseRefactorAnchor : ClassicalAnchor where
  shortName := "Zeta-Moebius inverse refactor"
  paperOrBook := "Checked rebuild Dirichlet-series layer"
  theoremLabel := "zetaComplexHalfPlane_ne_zero"
  mathematicalContent :=
    "The zeta nonvanishing theorem in Re(s) greater than one is now an instance of the generic inverse criterion."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def infiniteEulerProductNonzeroStillTargetAnchor : ClassicalAnchor where
  shortName := "Infinite Euler-product nonzero target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "InfiniteEulerProductNonzeroTarget"
  mathematicalContent :=
    "The usual infinite-product nonvanishing proof remains target-only until product convergence and inverse factors are formalized."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def boundaryZeroFreeLineStillTargetAnchor : ClassicalAnchor where
  shortName := "Boundary zero-free line target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaZeroFreeLineReOneTarget"
  mathematicalContent :=
    "The boundary-line zero-free theorem remains outside the checked absolute-convergence layer."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetFromCauchyAnchor : ClassicalAnchor where
  shortName := "PNT still target from Cauchy layer"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Prime asymptotics remain target-only; the generic Cauchy product does not prove them."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def dirichletCauchyProductAnchors : List ClassicalAnchor :=
  [ positivePairReindexingAnchor
  , genericDirichletCauchyProductAnchor
  , dirichletInverseCriterionAnchor
  , zetaMobiusInverseRefactorAnchor
  , infiniteEulerProductNonzeroStillTargetAnchor
  , boundaryZeroFreeLineStillTargetAnchor
  , pntStillTargetFromCauchyAnchor
  ]

end Exposition
end Rebuild
end Folder
```
