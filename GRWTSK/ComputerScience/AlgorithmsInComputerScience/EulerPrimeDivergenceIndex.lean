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
