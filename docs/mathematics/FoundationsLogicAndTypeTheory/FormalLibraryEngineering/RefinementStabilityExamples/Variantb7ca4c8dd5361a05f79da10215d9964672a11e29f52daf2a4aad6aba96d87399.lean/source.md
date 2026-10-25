# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefinementStabilityExamples.Variantb7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `160ae47d24e7a3bf897d0c615b78dfcef14bd60a` · SHA-256 `b7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.RefinementStability

/-!
# Refinement stability examples

Toy certificates exercise the Gamma-convergence refinement-stability theorem.
They do not prove analytic convergence from finite data.
-/

namespace AnalyticNumber
namespace RefinementStabilityExamples

open RefinementStability

def toyLevel0 : FiniteEnergyLevel where
  level := 0
  carrierHash := 10
  energyHash := 20
  relaxationHash := 30
  theoremResolutionHash := 40

def toyLevel1 : FiniteEnergyLevel where
  level := 1
  carrierHash := 11
  energyHash := 21
  relaxationHash := 31
  theoremResolutionHash := 41

def toyFiniteEnergyTower : FiniteEnergyTower where
  towerHash := 100
  levels := [toyLevel0, toyLevel1]
  refinementMapHash := 200

def toyLimitEnergy : LimitEnergy where
  spaceHash := 300
  energyHash := 400
  topologyHash := 500
  authorityBoundaryHash := 600

def toyGammaCertificate : GammaConvergenceCertificate where
  finiteTower := toyFiniteEnergyTower
  limitEnergy := toyLimitEnergy
  liminfInequality := True
  liminfProof := trivial
  recoverySequence := True
  recoveryProof := trivial
  topologyCompatible := True
  topologyProof := trivial
  equicoerciveOrCompactSublevels := True
  compactnessProof := trivial
  authorityBoundarySound := True
  authorityBoundaryProof := trivial

def toyMinimizerCertificate : MinimizerStabilityCertificate where
  minimizersExistAtFiniteLevels := True
  finiteMinimizerProof := trivial
  limitMinimizerExists := True
  limitMinimizerProof := trivial
  minimizersConvergeToLimitClass := True
  minimizerConvergenceProof := trivial

def toyEndpointCertificate : StableEndpointCertificate where
  finiteEndpointsExist := True
  finiteEndpointProof := trivial
  limitEndpointExists := True
  limitEndpointProof := trivial
  endpointsConvergeToLimitClass := True
  endpointConvergenceProof := trivial

def toyRefinementStabilityCertificate : RefinementStabilityCertificate where
  gamma := toyGammaCertificate
  minimizers := toyMinimizerCertificate
  endpoints := toyEndpointCertificate
  refinementStable := True
  refinementStableProof := trivial
  domPresentationPreservesStableClass := True
  domPresentationProof := trivial

theorem example_refinement_stability_gamma_convergence :
    toyRefinementStabilityCertificate.refinementStable ∧
    toyRefinementStabilityCertificate.minimizers.minimizersConvergeToLimitClass ∧
    toyRefinementStabilityCertificate.endpoints.endpointsConvergeToLimitClass :=
  let h := refinement_stability_gamma_convergence toyRefinementStabilityCertificate
  ⟨h.2.2.2.2.2.2.2.2.2.2.2.1,
   h.2.2.2.2.2.2.2.1,
   h.2.2.2.2.2.2.2.2.2.2.1⟩

end RefinementStabilityExamples
end AnalyticNumber
```
