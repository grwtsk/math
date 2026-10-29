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
