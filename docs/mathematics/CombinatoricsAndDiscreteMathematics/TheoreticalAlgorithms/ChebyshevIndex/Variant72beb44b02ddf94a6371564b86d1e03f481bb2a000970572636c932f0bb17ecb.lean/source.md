# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChebyshevIndex.Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fecf0bf0ce77c060ef8188dcc0b940edff6b50f5` · SHA-256 `72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds
import Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex

/-!
# Folder.Rebuild.Exposition.ChebyshevIndex

Exposition anchors for the finite Chebyshev-function layer.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def chebyshevThetaDefinitionAnchor : ClassicalAnchor where
  shortName := "Chebyshev theta"
  paperOrBook := "Checked rebuild Chebyshev-function layer"
  theoremLabel := "chebyshevTheta"
  mathematicalContent :=
    "The finite function theta(N) is the sum of log p over primes p <= N, with nonnegativity and monotonicity checked."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def chebyshevPsiDefinitionAnchor : ClassicalAnchor where
  shortName := "Chebyshev psi"
  paperOrBook := "Checked rebuild Chebyshev-function layer"
  theoremLabel := "chebyshevPsi"
  mathematicalContent :=
    "The finite function psi(N) is represented as a logarithmic sum over prime powers p^k <= N."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def lcmPsiIdentityAnchor : ClassicalAnchor where
  shortName := "LCM-psi identity"
  paperOrBook := "Finite factorization bridge"
  theoremLabel := "log_intervalLcm_eq_chebyshevPsi"
  mathematicalContent :=
    "The logarithm of the lcm of the interval 1..N is exactly the checked finite psi function."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def centralBinomialChebyshevAnchor : ClassicalAnchor where
  shortName := "Central binomial Chebyshev bridge"
  paperOrBook := "Classical central-binomial estimates"
  theoremLabel := "log_centralBinomial_le_n_log_four"
  mathematicalContent :=
    "The checked central-binomial estimate log C(2n,n) <= n log 4 is available; the full theta-difference bound is retained as a theorem target."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def chebyshevPrimeCountingBoundsTargetAnchor : ClassicalAnchor where
  shortName := "Chebyshev prime-counting bounds"
  paperOrBook := "Classical pre-PNT Chebyshev bounds"
  theoremLabel := "ChebyshevPrimeCountingBoundsTarget"
  mathematicalContent :=
    "Two-sided prime-counting bounds of order N/log N are recorded only as a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAfterChebyshevAnchor : ClassicalAnchor where
  shortName := "Prime-counting theorem still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The Chebyshev layer supports exposition toward prime-counting asymptotics, but does not prove them."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def chebyshevAnchors : List ClassicalAnchor :=
  [ chebyshevThetaDefinitionAnchor
  , chebyshevPsiDefinitionAnchor
  , lcmPsiIdentityAnchor
  , centralBinomialChebyshevAnchor
  , chebyshevPrimeCountingBoundsTargetAnchor
  , pntStillTargetAfterChebyshevAnchor
  ]

end Exposition
end Rebuild
end Folder
```
