import FCRS.Algebraization.Theorems.ALG03_PolarizedCompleteness
import FCRS.Algebraization.Theorems.ALG04_FormalPolarizedEffectivity
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization
import FCRS.Algebraization.Theorems.HEN04_GeneratorCompleteness
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion
import FCRS.Algebraization.Theorems.HEN07_CharacteristicBoundary
import FCRS.Algebraization.Theorems.HEN08_FiberCanonicity
import FCRS.Algebraization.Theorems.HEN10_PositiveCharacteristicAffine
import FCRS.Algebraization.Theorems.HEN11_UnrestrictedCompletenessFromHSG
import FCRS.Algebraization.Theorems.HEN12_ExtensionNonclosure
import FCRS.Algebraization.Theorems.HEN15_EffectiveTargetClosure
import FCRS.Algebraization.Theorems.HEN16_PositiveCharacteristicRoute
import FCRS.Algebraization.Theorems.MOD07_SemanticEquivalence
import FCRS.Algebraization.Theorems.TAN01_EffectiveTannaka
import FCRS.Algebraization.Theorems.TAN02_UnrestrictedUpgrade
import FCRS.Algebraization.Theorems.GLOB01_GlobalProvenance
import FCRS.Algebraization.Theorems.EXT01_ExtensionCriterion

namespace FCRS.Algebraization

open Theorems

/--
The scoped completeness theorem for `alg-hen-completeness-v1`.

The theorem proves polarized algebraization completeness, equivalence onto the
intrinsic algebraically generated Henselian target, the exact HSG upgrade
criterion, conditional ME1--ME8 semantic completeness, effective Tannakian
completeness, and global provenance.  It does not assume HSG itself.
-/
theorem alg_hen_scoped_conditional_completeness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (h : AlgebraizationHypotheses S) :
    AlgebraizationCompleteSystem S := by
  have hAlg01 :=
    registry.alg01 h.polarizedProfile
  have hPolarized :=
    alg03_polarizedCompleteness
      S registry h.polarizedProfile
  have hFormal :=
    alg04_formalPolarizedEffectivity
      S registry h.formalPolarizedProfile
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry h.henselianProfile h.sourceGenerated
  have hGeneratorEquivalence :=
    hen04_generatorCompleteness
      S registry h.henselianProfile h.sourceGenerated
  have hHSGCriterion :=
    hen05_hsgCriterion
      S registry h.henselianProfile h.sourceGenerated
  have hFiber :=
    hen08_fiberCanonicity
      S registry h.henselianProfile
  have hModuli :=
    mod07_semanticEquivalence
      S registry h.semanticSourceEffective
  have hTannaka :=
    registry.tan01 h.tannakaHypotheses
  have hGlobal :=
    registry.glob01 h.globalModelHypothesis

  exact {
    polarizedEquivalence := hPolarized
    polarizedQuasiInverse := hAlg01.quasiInverse
    formalPolarizedEffectivity := hFormal
    henselianImageCharacterization := hCharacterization
    henselianGeneratorEquivalence := hGeneratorEquivalence
    hsgCriterion := hHSGCriterion
    unrestrictedFromHSG := by
      intro hHSG
      exact hen11_unrestrictedCompletenessFromHSG
        S registry
        h.henselianProfile
        h.sourceGenerated
        hHSG
    characteristicBoundary := by
      intro hCharacteristic hCounterexample
      exact hen07_characteristicBoundary
        S registry hCharacteristic hCounterexample
    algebraizationFibersCanonical := hFiber
    positiveCharacteristicAffineInput :=
      registry.hen10
    extensionNonclosureBoundary :=
      registry.hen12
    effectiveTargetClosure :=
      registry.hen15 h.henselianProfile
    positiveCharacteristicRouteToHSG :=
      registry.hen16
    moduliObjectEffectivity :=
      registry.modPipeline
    moduliSemanticEquivalence :=
      ⟨h.semanticSourceEffective, hModuli⟩
    effectiveTannaka := hTannaka
    unrestrictedTannakaFromHSG := by
      intro hHSG
      exact registry.tan02
        h.tannakaHypotheses
        hHSG
    commonGlobalProvenance := hGlobal
    extensionImageCriterion := registry.ext01
  }

end FCRS.Algebraization
