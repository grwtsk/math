# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteSearchExamples.Variant08a76e0a8a6f53213fa34ed8c51bca6f38e74036a4e3b49338bbc54705b3105d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b3f2245bedcbcf28905076bc48be3233205d6f0` · SHA-256 `88c2c96fabca838598be790c3940d842cb6d010743ac84b83d975dece45eef77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactFiniteCertificate.Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExactFiniteCertificate.Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/FiniteSearchExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.FiniteSearch

/-!
# Theorem-backed finite-search examples

Unlike smoke-test `Examples` modules that use `True`, this file demonstrates the
finite certificate shape with exact propositions and concrete proofs.  It is
still example material and is not used as phase-advance theorem evidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactFiniteCertificate.Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1

namespace Presentation
namespace FiniteSearchExamples

def exactFiniteCertificate : FiniteSearch.PrismaticShadowFiniteCertificate where
  minimum :=
    { feasible :=
        { label := "singleton feasible set"
          stateCount := 1
          nonempty := 1 = 1
          nonemptyProof := rfl }
      minimumExists := 0 = 0
      minimumExistsProof := rfl }
  stableClass :=
    { classLabel := "singleton class"
      minimizersOneClass := 1 + 0 = 1
      minimizersOneClassProof := rfl }
  searchWitness :=
    { witnessLabel := "zero-energy witness"
      minimumEnergyWitness := 2 = 2
      minimumEnergyWitnessProof := rfl }
  energyGap :=
    { gapNumerator := 1
      gapDenominator := 1
      gapDenominatorPositive := by decide
      energyGapWitnessed := 3 = 3
      energyGapProof := rfl }
  projection :=
    { projectionLabel := "identity projection"
      preservesFeasibility := 4 = 4
      preservesFeasibilityProof := rfl }
  boundary :=
    { checkerLabel := "zero boundary checker"
      semanticBoundaryZero := 5 = 5
      semanticBoundaryZeroProof := rfl }
  residue :=
    { residueTableLabel := "empty residue table"
      allResidueWitnessed := 6 = 6
      allResidueWitnessedProof := rfl }

theorem exact_finite_certificate_sound :
    exactFiniteCertificate.sound :=
  FiniteSearch.prismatic_shadow_finite_certificate_sound exactFiniteCertificate

end FiniteSearchExamples
end Presentation
```
