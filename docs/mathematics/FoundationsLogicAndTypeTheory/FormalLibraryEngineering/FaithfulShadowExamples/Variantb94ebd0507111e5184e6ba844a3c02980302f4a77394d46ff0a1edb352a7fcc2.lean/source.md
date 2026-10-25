# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FaithfulShadowExamples.Variantb94ebd0507111e5184e6ba844a3c02980302f4a77394d46ff0a1edb352a7fcc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d5f8b20a207b4dbb1606ef6fd820946dd8b36a5` · SHA-256 `94605ec834c56879cb2616786431322376bfb78ef174bf577c159bdb0fe14aad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyShadowLevel0.Variantfa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyShadowLevel0.Variantfa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656","mathematical_subject":"Foundations.Unclassified","original_sha256":"fa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/FaithfulShadowExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.FaithfulShadow

/-!
# Faithful shadow examples

Toy certificates exercise finite shadow recoverability. They do not prove that
an arbitrary analytic relaxation reconstructs finite matrices.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyShadowLevel0.Variantfa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656

namespace AnalyticNumber
namespace FaithfulShadowExamples

open FaithfulShadow

def toyShadowLevel0 : BinaryShadowLevel where
  level := 0
  matrixHash := 101
  supportHash := 201
  sourceTreeHash := 301
  theoremResolutionHash := 401

def toyRelaxedLimit : RelaxedLimitDescriptor where
  spaceHash := 501
  relaxationHash := 601
  equivalenceClassHash := 701
  authorityBoundaryHash := 801

def toyShadowMap0 : ShadowMapCertificate where
  level := 0
  shadowMapHash := 901
  targetMatrixHash := toyShadowLevel0.matrixHash
  sectionOnFiniteImage := True
  sectionProof := trivial
  limitShadowCompatibility := True
  compatibilityProof := trivial
  supportPreserved := True
  supportProof := trivial
  theoremResolutionPreserved := True
  theoremResolutionProof := trivial
  authorityBoundarySound := True
  authorityBoundaryProof := trivial

def toyFaithfulShadowCertificate : FaithfulShadowCertificate where
  finiteLevels := [toyShadowLevel0]
  relaxedLimit := toyRelaxedLimit
  shadowMaps := [toyShadowMap0]
  shadowMapsExist := True
  shadowMapsExistProof := trivial
  everyFiniteLevelRecovered := True
  finiteRecoveryProof := trivial
  limitShadowsRecovered := True
  limitRecoveryProof := trivial
  faithfulOnChosenEquivalenceClass := True
  faithfulProof := trivial
  sourceTreeIdentityPreserved := True
  sourceTreeProof := trivial
  theoremResolutionIdentityPreserved := True
  theoremResolutionProof := trivial
  supportStructurePreserved := True
  supportProof := trivial
  noAuthorityCreated := True
  noAuthorityProof := trivial

theorem example_faithful_shadow_recoverability :
    toyFaithfulShadowCertificate.everyFiniteLevelRecovered ∧
    toyFaithfulShadowCertificate.limitShadowsRecovered ∧
    toyFaithfulShadowCertificate.faithfulOnChosenEquivalenceClass :=
  ⟨finite_levels_recovered toyFaithfulShadowCertificate,
   limit_shadows_recovered toyFaithfulShadowCertificate,
   faithful_on_chosen_class toyFaithfulShadowCertificate⟩

end FaithfulShadowExamples
end AnalyticNumber
```
