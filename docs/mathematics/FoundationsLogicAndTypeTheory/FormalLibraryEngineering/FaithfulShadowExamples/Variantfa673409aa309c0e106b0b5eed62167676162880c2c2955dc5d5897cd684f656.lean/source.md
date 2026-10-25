# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FaithfulShadowExamples.Variantfa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c37b7b5877a477e25307a390bd69720a23ca71f6` · SHA-256 `fa673409aa309c0e106b0b5eed62167676162880c2c2955dc5d5897cd684f656`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.FaithfulShadow

/-!
# Faithful shadow examples

Toy certificates exercise finite shadow recoverability. They do not prove that
an arbitrary analytic relaxation reconstructs finite matrices.
-/

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
