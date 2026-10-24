# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RealEulerProductIndex.Variant88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78697cea4b065107630a3c2238f37dbc3835cc98` · SHA-256 `88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence
import Folder.Rebuild.Exposition.FiniteReindexingIndex

/-!
# Folder.Rebuild.Exposition.RealEulerProductIndex

Exposition anchors for the checked real Euler-product convergence theorem.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def zetaPartialSumsConvergenceAnchor : ClassicalAnchor where
  shortName := "Real zeta partial sums"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaPartialReal"
  mathematicalContent :=
    "Positive real zeta partial sums converge for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def realEulerProductConvergenceAnchor : ClassicalAnchor where
  shortName := "Real Euler-product convergence"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaEulerApproxReal"
  mathematicalContent :=
    "Diagonal finite Euler products over primes up to N with cutoff N converge to the real zeta series for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexEulerProductHalfPlaneTargetAnchor : ClassicalAnchor where
  shortName := "Complex Euler product half-plane"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ComplexEulerProductHalfPlaneTarget"
  mathematicalContent :=
    "The complex half-plane Euler product remains a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaAnalyticContinuationTargetAnchor : ClassicalAnchor where
  shortName := "Zeta analytic continuation"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation of zeta is target-only in this rebuild branch."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntAnalyticRouteStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT analytic route still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def realEulerProductAnchors : List ClassicalAnchor :=
  [ zetaPartialSumsConvergenceAnchor
  , realEulerProductConvergenceAnchor
  , complexEulerProductHalfPlaneTargetAnchor
  , zetaAnalyticContinuationTargetAnchor
  , pntAnalyticRouteStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
