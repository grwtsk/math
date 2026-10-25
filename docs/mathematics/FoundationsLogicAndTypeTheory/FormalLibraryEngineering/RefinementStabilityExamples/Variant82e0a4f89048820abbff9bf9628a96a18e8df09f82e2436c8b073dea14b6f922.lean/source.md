# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefinementStabilityExamples.Variant82e0a4f89048820abbff9bf9628a96a18e8df09f82e2436c8b073dea14b6f922

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82b619ca599ad079557ba6366107a81335ae69f4` · SHA-256 `261f06662c8158ac2e0a5e6d331fa5969a8a664ada4689d2083233a355333492`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyLevel0.Variantb7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyLevel0.Variantb7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399","mathematical_subject":"Foundations.Unclassified","original_sha256":"b7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/RefinementStabilityExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.RefinementStability

/-!
# Refinement stability examples

Toy certificates exercise the Gamma-convergence refinement-stability theorem.
They do not prove analytic convergence from finite data.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyLevel0.Variantb7ca4c8dd5361a05f79da10215d9964672a11e29f52daf2a4aad6aba96d87399

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
