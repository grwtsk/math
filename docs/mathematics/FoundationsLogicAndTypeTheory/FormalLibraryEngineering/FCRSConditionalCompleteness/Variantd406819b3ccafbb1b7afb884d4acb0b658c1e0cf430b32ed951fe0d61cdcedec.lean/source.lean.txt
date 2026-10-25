import FCRS.Theorems.CT01_FiniteTypeJacobson
import FCRS.Theorems.CT02_AnalytificationExists
import FCRS.Theorems.CT03_AnalytificationCompatibility
import FCRS.Theorems.CT04_AffinoidJacobson
import FCRS.Theorems.CT05_StrongNoetherian
import FCRS.Theorems.CT06_Sheafiness
import FCRS.Theorems.CT07_StableUniformSheafiness
import FCRS.Theorems.CT08_RigidBerkovichEquivalence
import FCRS.Theorems.CT09_BerkovichAdicEquivalence
import FCRS.Theorems.CT10_ProfileRestriction
import FCRS.Theorems.CT11_RaynaudEquivalence
import FCRS.Theorems.CT12_SeparatedFormalModels
import FCRS.Theorems.CT13_SpecializationAndBlowup
import FCRS.Theorems.CT14_CompletePairHenselian
import FCRS.Theorems.CT15_OperationClosure
import FCRS.Theorems.CT16_PrismaticBridge
import FCRS.Theorems.CT17_GlobalPlaceBridge
import FCRS.Theorems.CT18_ProperGAGA
import FCRS.Theorems.CT19_HenselianGAGA
import FCRS.Theorems.CT20_HenselianCounterboundary

namespace FCRS

open Theorems

/--
The full conditional closure theorem.

All geometric substance enters through `registry`.  Lean checks that CT-01
through CT-20, together with the explicit source-profile hypotheses, suffice
to construct every field of `CompleteSystem`.
-/
theorem fcrs_full_conditional_completeness
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    CompleteSystem S := by
  have c01 :=
    (ct01_finiteTypeJacobson S registry)
      h.algebraicFiniteType
  have c02 :=
    (ct02_analytificationExists S registry)
      h.baseCompleteNonarchRankOne
      h.algebraicFiniteType
  have c03 :=
    (ct03_analytificationCompatibility S registry)
      h.algebraicSeparated
      h.algebraicFiniteType
  have c04 :=
    (ct04_affinoidJacobson S registry)
      h.affinoidTopologicallyFiniteType
  have c05 :=
    (ct05_strongNoetherian S registry)
      h.baseCompleteNonarchRankOne
      h.affinoidTopologicallyFiniteType
  have c06 :=
    (ct06_sheafiness S registry)
      h.huberCompleteTate
      c05
  have c07 :=
    (ct07_stableUniformSheafiness S registry)
      h.huberCompleteTate
  have c08 :=
    (ct08_rigidBerkovichEquivalence S registry)
      h.rigidProfile
      h.berkovichProfile
  have c09 :=
    (ct09_berkovichAdicEquivalence S registry)
      h.berkovichProfile
      h.adicProfile
  have c10 :=
    (ct10_profileRestriction S registry)
      c08
      c09
  have c11 :=
    (ct11_raynaudEquivalence S registry)
      h.formalProfile
      h.rigidProfile
  have c12 :=
    (ct12_separatedFormalModels S registry)
      h.formalProfile
      h.rigidProfile
  have c13 :=
    (ct13_specializationAndBlowup S registry)
      h.formalProfile
  have c14 :=
    (ct14_completePairHenselian S registry)
      h.completeAdicPair
  have c15 :=
    (ct15_operationClosure S registry)
      h.tensorAndBaseChangeProfile
      c06.1
      h.adicProfile
      h.formalProfile
  have c16 :=
    ct16_prismaticBridge S registry
  have c17 :=
    ct17_globalPlaceBridge S registry
  have c18 :=
    ct18_properGAGA S registry
  have c19 :=
    ct19_henselianGAGA S registry
  have c20 :=
    ct20_henselianCounterboundary S registry

  exact {
    algebraicJacobson := c01.1
    algebraicClosedResiduesFinite := c01.2
    analytificationFunctorial := c02.1
    supportMapNatural := c02.2
    analytificationPreservesSeparatedness := c03.1
    analytificationPreservesFiberProducts := c03.2.1
    analytificationPreservesBaseChange := c03.2.2
    affinoidJacobson := c04.1
    affinoidClosedResiduesFinite := c04.2
    stronglyNoetherian := c05
    sheafyFromStrongNoetherian := c06.1
    rationalDomainAcyclic := c06.2
    stableUniformSheafiness := c07
    rigidBerkovichEquivalence := c08
    berkovichAdicEquivalence := c09
    comparisonRestrictsToProfile := c10
    raynaudEquivalence := c11
    separatedFormalModelsExist := c12
    specializationNatural := c13.1
    admissibleBlowupsGenericFiberInvariant := c13.2
    henselianChartPairs := c14
    operationClosure := c15
    prismaticBridge := c16
    globalPlaceBridge := c17
    properGAGA := c18
    henselianGAGA := c19
    henselianEssentialSurjectivityBoundary := c20
  }

end FCRS
