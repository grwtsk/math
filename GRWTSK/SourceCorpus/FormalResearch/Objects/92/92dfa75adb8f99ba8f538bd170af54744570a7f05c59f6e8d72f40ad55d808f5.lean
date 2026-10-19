import Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane
import Folder.Rebuild.Exposition.ComplexEulerProductIndex

/-!
# Folder.Rebuild.Exposition.ZetaNonvanishingIndex

Exposition anchors for the checked Möbius-inverse nonvanishing theorem.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusDirichletSeriesConvergenceAnchor : ClassicalAnchor where
  shortName := "Moebius Dirichlet convergence"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "mobiusDirichlet_absSummable"
  mathematicalContent :=
    "The Moebius Dirichlet series is absolutely summable for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def dirichletCauchyProductAnchor : ClassicalAnchor where
  shortName := "Generic Dirichlet Cauchy product"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "complexDirichletSeries_mul_of_absSummable"
  mathematicalContent :=
    "The checked generic Cauchy product multiplies absolutely summable Dirichlet series by Dirichlet convolution."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaNonvanishingHalfPlaneAnchor : ClassicalAnchor where
  shortName := "Zeta nonvanishing half-plane"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "zetaComplexHalfPlane_ne_zero"
  mathematicalContent :=
    "The ordinary complex zeta Dirichlet series is nonzero for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaZeroFreeLineOneTargetAnchor : ClassicalAnchor where
  shortName := "Zeta zero-free line target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaZeroFreeLineReOneTarget"
  mathematicalContent :=
    "The boundary-line zero-free theorem remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The prime-counting asymptotic route remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def analyticContinuationStillTargetAnchor : ClassicalAnchor where
  shortName := "Analytic continuation still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation remains outside the checked half-plane Dirichlet-series theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaNonvanishingAnchors : List ClassicalAnchor :=
  [ mobiusDirichletSeriesConvergenceAnchor
  , dirichletCauchyProductAnchor
  , zetaNonvanishingHalfPlaneAnchor
  , zetaZeroFreeLineOneTargetAnchor
  , pntStillTargetAnchor
  , analyticContinuationStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
