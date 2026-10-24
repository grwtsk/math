# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerPrimeDivergenceIndex.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00a50451626698a023304cfa67173a4bf644cd1a` · SHA-256 `906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.EulerPrimeReciprocalDivergence
import Folder.Rebuild.Exposition.RealEulerProductIndex

/-!
# Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex

Exposition anchors for Euler's divergence of reciprocal primes.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def harmonicSeriesDivergenceAnchor : ClassicalAnchor where
  shortName := "Harmonic divergence"
  paperOrBook := "Checked rebuild analytic number theory layer"
  theoremLabel := "harmonicPartial_unbounded"
  mathematicalContent :=
    "The harmonic partial sums are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAtOneAnchor : ClassicalAnchor where
  shortName := "Finite Euler product at one"
  paperOrBook := "Checked rebuild finite Euler-product layer"
  theoremLabel := "harmonicPartial_le_finiteHarmonicEulerProduct"
  mathematicalContent :=
    "Harmonic partial sums are bounded above by finite Euler products over primes up to N with cutoff N."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPrimeReciprocalDivergenceAnchor : ClassicalAnchor where
  shortName := "Euler reciprocal-prime divergence"
  paperOrBook := "Euler's finite-product argument"
  theoremLabel := "primeReciprocalPartial_unbounded"
  mathematicalContent :=
    "The partial sums of reciprocal primes are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def pntStrongerAsymptoticStillTargetAnchor : ClassicalAnchor where
  shortName := "Prime asymptotic still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Prime-counting asymptotics remain target-only and are not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zeroFreeLineStillTargetAnchor : ClassicalAnchor where
  shortName := "Boundary zero-free line still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZeroFreeLineTarget"
  mathematicalContent :=
    "The boundary zero-free theorem remains target-only and is not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def eulerPrimeDivergenceAnchors : List ClassicalAnchor :=
  [ harmonicSeriesDivergenceAnchor
  , finiteEulerProductAtOneAnchor
  , eulerPrimeReciprocalDivergenceAnchor
  , pntStrongerAsymptoticStillTargetAnchor
  , zeroFreeLineStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
