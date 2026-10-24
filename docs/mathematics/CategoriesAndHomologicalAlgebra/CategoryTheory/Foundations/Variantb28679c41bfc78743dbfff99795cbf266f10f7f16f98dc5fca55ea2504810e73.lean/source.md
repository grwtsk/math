# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Foundations.Variantb28679c41bfc78743dbfff99795cbf266f10f7f16f98dc5fca55ea2504810e73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `284e94dab928815b245552332f7b69466adcba8c` · SHA-256 `761bb79f763818b5ab9e7221388ff85d7b4949eeb75d8ed90fc85b0da9cd2e3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiClass.Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EpiClass.Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Foundations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Categorical

/-
Signature-level foundations for polarized algebraization and Henselian
generator completion.

Deep geometric inputs remain explicit fields of theorem registries.  The
generic quotient/generator argument is represented directly and does not
identify the effective target with an essential image by definition.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiClass.Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105

universe uObj uHom

namespace FCRS.Algebraization

/-- A compositional class of morphisms designated as epimorphisms. -/
structure EpiClass
    (C : CategoryLike.{uObj, uHom}) where
  holds : {X Y : C.Obj} → C.Hom X Y → Prop
  comp :
    ∀ {X Y Z : C.Obj}
      {f : C.Hom X Y} {g : C.Hom Y Z},
      holds f → holds g → holds (C.comp f g)
  isoHom :
    ∀ {X Y : C.Obj} (e : IsoLike C X Y),
      holds e.hom
  isoInv :
    ∀ {X Y : C.Obj} (e : IsoLike C X Y),
      holds e.inv

/-- Preservation of the chosen epimorphism classes. -/
def PreservesEpis
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiC : EpiClass C)
    (epiD : EpiClass D) : Prop :=
  ∀ {X Y : C.Obj} (f : C.Hom X Y),
    epiC.holds f → epiD.holds (F.map f)

/--
A bridge between algebraic ample generators and the corresponding named
Henselian generators.
-/
structure GeneratorBridge
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D) where
  Index : Type uObj
  alg : Index → C.Obj
  hen : Index → D.Obj
  comparison :
    ∀ i : Index,
      IsoLike D (F.obj (alg i)) (hen i)

/-- Every source object is a quotient of a designated algebraic generator. -/
def SourceGenerated
    {C D : CategoryLike.{uObj, uHom}}
    {F : FunctorLike C D}
    (B : GeneratorBridge F)
    (epiC : EpiClass C) : Prop :=
  ∀ X : C.Obj,
    ∃ i : B.Index,
    ∃ q : C.Hom (B.alg i) X,
      epiC.holds q

/--
Intrinsic algebraic-generation predicate in the Henselian target.

It mentions only the named target generator family and a finite quotient
witness; it does not quantify over an unknown algebraic preimage.
-/
def AlgebraicallyGenerated
    {C D : CategoryLike.{uObj, uHom}}
    {F : FunctorLike C D}
    (B : GeneratorBridge F)
    (epiD : EpiClass D)
    (Y : D.Obj) : Prop :=
  ∃ i : B.Index,
  ∃ q : D.Hom (B.hen i) Y,
    epiD.holds q

/-- The essential image is closed under target epimorphic quotients. -/
def EssentialImageClosedUnderEpiQuotients
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiD : EpiClass D) : Prop :=
  ∀ {X : C.Obj} {Y : D.Obj}
    (q : D.Hom (F.obj X) Y),
      epiD.holds q → EssentialImage F Y

/-- Henselian Serre generation, scoped to the designated ample generators. -/
def HenselianSerreGeneration
    {C D : CategoryLike.{uObj, uHom}}
    {F : FunctorLike C D}
    (B : GeneratorBridge F)
    (epiD : EpiClass D) : Prop :=
  ∀ Y : D.Obj, AlgebraicallyGenerated B epiD Y

/-- Every functor image object is algebraically generated. -/
def imageObjectsGenerated
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiC : EpiClass C)
    (epiD : EpiClass D)
    (B : GeneratorBridge F)
    (hSource : SourceGenerated B epiC)
    (hPreserves : PreservesEpis F epiC epiD) :
    ∀ X : C.Obj, AlgebraicallyGenerated B epiD (F.obj X) := by
  intro X
  rcases hSource X with ⟨i, q, hq⟩
  refine ⟨i, D.comp (B.comparison i).inv (F.map q), ?_⟩
  exact epiD.comp
    (epiD.isoInv (B.comparison i))
    (hPreserves q hq)

/-- Algebraic generation implies membership in the essential image. -/
def generatedIsEssentialImage
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiD : EpiClass D)
    (B : GeneratorBridge F)
    (hClosed : EssentialImageClosedUnderEpiQuotients F epiD) :
    ∀ Y : D.Obj,
      AlgebraicallyGenerated B epiD Y →
      EssentialImage F Y := by
  intro Y hGenerated
  rcases hGenerated with ⟨i, q, hq⟩
  apply hClosed
    (D.comp (B.comparison i).hom q)
  exact epiD.comp
    (epiD.isoHom (B.comparison i))
    hq

/-- Membership in the essential image implies algebraic generation. -/
def essentialImageIsGenerated
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiC : EpiClass C)
    (epiD : EpiClass D)
    (B : GeneratorBridge F)
    (hSource : SourceGenerated B epiC)
    (hPreserves : PreservesEpis F epiC epiD) :
    ∀ Y : D.Obj,
      EssentialImage F Y →
      AlgebraicallyGenerated B epiD Y := by
  intro Y hImage
  rcases hImage with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  rcases hSource X with ⟨i, q, hq⟩
  refine
    ⟨i,
      D.comp
        (D.comp (B.comparison i).inv (F.map q))
        e.hom,
      ?_⟩
  exact epiD.comp
    (epiD.comp
      (epiD.isoInv (B.comparison i))
      (hPreserves q hq))
    (epiD.isoHom e)

/-- Pointwise characterization of the essential image by generators. -/
def generatedIffEssentialImage
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiC : EpiClass C)
    (epiD : EpiClass D)
    (B : GeneratorBridge F)
    (hSource : SourceGenerated B epiC)
    (hPreserves : PreservesEpis F epiC epiD)
    (hClosed : EssentialImageClosedUnderEpiQuotients F epiD) :
    ∀ Y : D.Obj,
      AlgebraicallyGenerated B epiD Y ↔
      EssentialImage F Y := by
  intro Y
  constructor
  · exact generatedIsEssentialImage F epiD B hClosed Y
  · exact essentialImageIsGenerated
      F epiC epiD B hSource hPreserves Y

/-- All realization categories used by the algebraization extension. -/
structure AlgebraizationCategories where
  ProjPol : CategoryLike.{uObj, uHom}
  AnPol : CategoryLike.{uObj, uHom}
  FormalPol : CategoryLike.{uObj, uHom}
  CohAlg : CategoryLike.{uObj, uHom}
  CohHen : CategoryLike.{uObj, uHom}
  SemanticAlg : CategoryLike.{uObj, uHom}
  SemanticHen : CategoryLike.{uObj, uHom}
  TannakaGeom : CategoryLike.{uObj, uHom}
  TannakaEff : CategoryLike.{uObj, uHom}
  TannakaAll : CategoryLike.{uObj, uHom}
  Global : CategoryLike.{uObj, uHom}
  PlaceFamily : CategoryLike.{uObj, uHom}

/-- Typed functors in the polarized/Henselian completion program. -/
structure AlgebraizationFunctors
    (C : AlgebraizationCategories.{uObj, uHom}) where
  PolAn : FunctorLike C.ProjPol C.AnPol
  PolAlg : FunctorLike C.AnPol C.ProjPol
  FormalCompletion : FunctorLike C.ProjPol C.FormalPol
  FormalAlgebraization : FunctorLike C.FormalPol C.ProjPol
  FormalGeneric : FunctorLike C.FormalPol C.AnPol
  HenPullback : FunctorLike C.CohAlg C.CohHen
  SemanticPullback : FunctorLike C.SemanticAlg C.SemanticHen
  TannakaEffective : FunctorLike C.TannakaGeom C.TannakaEff
  TannakaUnrestricted : FunctorLike C.TannakaGeom C.TannakaAll
  GlobalRealization : FunctorLike C.Global C.PlaceFamily

/-- Objectwise predicates required by the moduli-effectivity pipeline. -/
structure ModuliObjectPredicates
    (Obj : Type uObj) where
  excellentHenselianBase : Prop
  properPolarizedSource : Prop
  boundedAlgebraicModuli : Obj → Prop
  formalEffectivity : Obj → Prop
  approximation : Obj → Prop
  henselianLifting : Obj → Prop
  finiteDeterminacy : Obj → Prop
  effectiveIsomorphismDescent : Obj → Prop

/-- ME1 through ME8, packaged for one Henselian semantic object. -/
structure ModuliEffectivityCertificate
    {Obj : Type uObj}
    (M : ModuliObjectPredicates Obj)
    (Y : Obj) : Prop where
  me1_excellentHenselianBase : M.excellentHenselianBase
  me2_properPolarizedSource : M.properPolarizedSource
  me3_boundedAlgebraicModuli : M.boundedAlgebraicModuli Y
  me4_formalEffectivity : M.formalEffectivity Y
  me5_approximation : M.approximation Y
  me6_henselianLifting : M.henselianLifting Y
  me7_finiteDeterminacy : M.finiteDeterminacy Y
  me8_effectiveIsomorphismDescent :
    M.effectiveIsomorphismDescent Y

/-- Comparison of algebraic and Henselian extension classes. -/
structure ExtensionComparison where
  AlgExt : Type uObj
  HenExt : Type uObj
  map : AlgExt → HenExt
  algebraizable : HenExt → Prop

/-- Exact image characterization for effective extensions. -/
def ExtensionImageCharacterization
    (E : ExtensionComparison.{uObj}) : Prop :=
  ∀ e : E.HenExt,
    E.algebraizable e ↔
    ∃ a : E.AlgExt, E.map a = e

/-- Scope and status predicates kept separate from categorical evidence. -/
structure AlgebraizationPredicates where
  polarizedProfile : Prop
  sectionRingConstruction : Prop
  veroneseIndependence : Prop
  coherentIdealAlgebraization : Prop
  polarizationAlgebraization : Prop
  polarizedMorphismAlgebraization : Prop
  formalPolarizedProfile : Prop
  formalGrothendieckEffectivity : Prop
  henselianProfile : Prop
  henselianPullbackExact : Prop
  henselianImageSubobjectClosed : Prop
  generatedKernelClosed : Prop
  generatedCokernelClosed : Prop
  generatedFiniteSumClosed : Prop
  generatedTensorClosed : Prop
  generatedDirectSummandClosed : Prop
  generatedAmbientExtensionClosed : Prop
  henselianRegularity : Prop
  positiveCharacteristicProfile : Prop
  positiveCharacteristicAffineInput : Prop
  positiveCharacteristicFiniteHenselianPresentations : Prop
  positiveCharacteristicTwistedCechControl : Prop
  positiveCharacteristicHyperplaneRegularity : Prop
  positiveCharacteristicGlobalGeneration : Prop
  characteristicZeroOrMixedProfile : Prop
  knownRankTwoNonAlgebraizableObject : Prop
  knownNonAlgebraizableExtensionOfGenerated : Prop
  tannakaHypotheses : Prop
  globalModelHypothesis : Prop
  archimedeanAndNonarchCommonSource : Prop

/-- Complete carrier for the proposed algebraization method. -/
structure AlgebraizationSystem where
  categories : AlgebraizationCategories.{uObj, uHom}
  functors : AlgebraizationFunctors categories
  cohAlgEpi : EpiClass categories.CohAlg
  cohHenEpi : EpiClass categories.CohHen
  generators : GeneratorBridge functors.HenPullback
  moduli : ModuliObjectPredicates categories.SemanticHen.Obj
  extensions : ExtensionComparison.{uObj}
  predicates : AlgebraizationPredicates

namespace AlgebraizationSystem

abbrev P (S : AlgebraizationSystem) : AlgebraizationPredicates :=
  S.predicates

abbrev CohAG (S : AlgebraizationSystem) :
    CategoryLike.{uObj, uHom} :=
  FullSubcategory
    S.categories.CohHen
    (AlgebraicallyGenerated S.generators S.cohHenEpi)

abbrev SemanticEff (S : AlgebraizationSystem) :
    CategoryLike.{uObj, uHom} :=
  FullSubcategory
    S.categories.SemanticHen
    (fun Y => ModuliEffectivityCertificate S.moduli Y)

end AlgebraizationSystem

/-- Restriction of Henselian pullback to the algebraically generated target. -/
def henselianPullbackAG
    (S : AlgebraizationSystem)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    (hPreserves :
      PreservesEpis
        S.functors.HenPullback
        S.cohAlgEpi
        S.cohHenEpi) :
    FunctorLike S.categories.CohAlg S.CohAG :=
  restrictCodomain
    S.functors.HenPullback
    (AlgebraicallyGenerated S.generators S.cohHenEpi)
    (imageObjectsGenerated
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi
      S.generators
      hSource
      hPreserves)

/-- Restriction of a semantic pullback to objects carrying ME1--ME8 data. -/
def semanticPullbackEff
    (S : AlgebraizationSystem)
    (hSource :
      ∀ X : S.categories.SemanticAlg.Obj,
        ModuliEffectivityCertificate
          S.moduli
          (S.functors.SemanticPullback.obj X)) :
    FunctorLike S.categories.SemanticAlg S.SemanticEff :=
  restrictCodomain
    S.functors.SemanticPullback
    (fun Y => ModuliEffectivityCertificate S.moduli Y)
    hSource

/-- ALG-1 evidence: polarized effectivity and a section-ring quasi-inverse. -/
structure ALG01Evidence
    (S : AlgebraizationSystem) : Prop where
  sectionRingConstruction : S.P.sectionRingConstruction
  veroneseIndependence : S.P.veroneseIndependence
  quasiInverse :
    QuasiInverseData
      S.functors.PolAn
      S.functors.PolAlg
  essentiallySurjective :
    EssentiallySurjective S.functors.PolAn

/-- ALG-2 evidence: proper GAGA supplies full faithfulness and descent data. -/
structure ALG02Evidence
    (S : AlgebraizationSystem) : Prop where
  full : Full S.functors.PolAn
  faithful : Faithful S.functors.PolAn
  coherentIdealAlgebraization :
    S.P.coherentIdealAlgebraization
  polarizationAlgebraization :
    S.P.polarizationAlgebraization
  polarizedMorphismAlgebraization :
    S.P.polarizedMorphismAlgebraization

/-- Formal polarized effectivity and generic-fiber compatibility. -/
structure ALG04Evidence
    (S : AlgebraizationSystem) : Prop where
  grothendieckEffectivity :
    S.P.formalGrothendieckEffectivity
  completionQuasiInverse :
    QuasiInverseData
      S.functors.FormalCompletion
      S.functors.FormalAlgebraization
  genericCompatibility :
    Nonempty
      (NatIsoLike
        (composeFunctors
          S.functors.FormalAlgebraization
          S.functors.PolAn)
        S.functors.FormalGeneric)

/-- HEN-1 exact fully faithful pullback, including quotient preservation. -/
structure HEN01Evidence
    (S : AlgebraizationSystem) : Prop where
  exact : S.P.henselianPullbackExact
  full : Full S.functors.HenPullback
  faithful : Faithful S.functors.HenPullback
  preservesEpis :
    PreservesEpis
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi

/-- HEN-2 subobject and quotient closure, without extension closure. -/
structure HEN02Evidence
    (S : AlgebraizationSystem) : Prop where
  subobjectClosed :
    S.P.henselianImageSubobjectClosed
  quotientClosed :
    EssentialImageClosedUnderEpiQuotients
      S.functors.HenPullback
      S.cohHenEpi

/-- Rule implementing the ME1--ME8 objectwise effectivity pipeline. -/
def ModuliPipelineRule
    (S : AlgebraizationSystem) : Prop :=
  ∀ Y : S.categories.SemanticHen.Obj,
    ModuliEffectivityCertificate S.moduli Y →
    EssentialImage S.functors.SemanticPullback Y

/-- Every algebraic semantic object lands in the independently selected target. -/
def SemanticSourceEffective
    (S : AlgebraizationSystem) : Prop :=
  ∀ X : S.categories.SemanticAlg.Obj,
    ModuliEffectivityCertificate
      S.moduli
      (S.functors.SemanticPullback.obj X)

/-- ALG-1 claim. -/
def ALG01Claim (S : AlgebraizationSystem) : Prop :=
  S.P.polarizedProfile → ALG01Evidence S

/-- ALG-2 claim. -/
def ALG02Claim (S : AlgebraizationSystem) : Prop :=
  S.P.polarizedProfile → ALG02Evidence S

/-- Formal polarized algebraization claim. -/
def ALG04Claim (S : AlgebraizationSystem) : Prop :=
  S.P.formalPolarizedProfile → ALG04Evidence S

/-- HEN-1 claim. -/
def HEN01Claim (S : AlgebraizationSystem) : Prop :=
  S.P.henselianProfile → HEN01Evidence S

/-- HEN-2 claim. -/
def HEN02Claim (S : AlgebraizationSystem) : Prop :=
  S.P.henselianProfile → HEN02Evidence S

/-- Proposed regularity-to-generation implication. -/
def HEN06Claim (S : AlgebraizationSystem) : Prop :=
  S.P.henselianRegularity →
    HenselianSerreGeneration S.generators S.cohHenEpi

/-- Characteristic-zero or mixed-characteristic counterexample boundary. -/
def HEN07Claim (S : AlgebraizationSystem) : Prop :=
  S.P.characteristicZeroOrMixedProfile →
  S.P.knownRankTwoNonAlgebraizableObject →
    CounterexampleToEssentialSurjectivity
      S.functors.HenPullback

/-- Canonicity up to a unique compatible source isomorphism. -/
def HEN08Claim (S : AlgebraizationSystem) : Prop :=
  Full S.functors.HenPullback →
  Faithful S.functors.HenPullback →
    FibersUniquelyIsomorphic S.functors.HenPullback

/-- Established positive-characteristic affine input. -/
def HEN10Claim (S : AlgebraizationSystem) : Prop :=
  S.P.positiveCharacteristicProfile →
    S.P.positiveCharacteristicAffineInput

/-- P1--P4 evidence for the proposed global positive-characteristic route. -/
structure PositiveCharacteristicRouteCertificate
    (S : AlgebraizationSystem) : Prop where
  p1_finiteHenselianPresentations :
    S.P.positiveCharacteristicFiniteHenselianPresentations
  p2_twistedCechControl :
    S.P.positiveCharacteristicTwistedCechControl
  p3_hyperplaneRegularity :
    S.P.positiveCharacteristicHyperplaneRegularity
  p4_globalGeneration :
    S.P.positiveCharacteristicGlobalGeneration

/-- Conditional P1--P5 route from local presentations to HSG. -/
def HEN16Claim (S : AlgebraizationSystem) : Prop :=
  S.P.positiveCharacteristicProfile →
  S.P.positiveCharacteristicAffineInput →
  PositiveCharacteristicRouteCertificate S →
    HenselianSerreGeneration S.generators S.cohHenEpi

/-- The obstructing example prevents ambient extension closure. -/
def HEN12Claim (S : AlgebraizationSystem) : Prop :=
  S.P.characteristicZeroOrMixedProfile →
  S.P.knownNonAlgebraizableExtensionOfGenerated →
    ¬ S.P.generatedAmbientExtensionClosed

/-- Effective target closure, deliberately excluding ambient extensions. -/
def HEN15Claim (S : AlgebraizationSystem) : Prop :=
  S.P.henselianProfile →
    S.P.generatedKernelClosed ∧
    S.P.generatedCokernelClosed ∧
    S.P.generatedFiniteSumClosed ∧
    S.P.generatedTensorClosed ∧
    S.P.generatedDirectSummandClosed

/-- Effective coherent Tannaka claim. -/
def TAN01Claim (S : AlgebraizationSystem) : Prop :=
  S.P.tannakaHypotheses →
    EquivalenceWitness S.functors.TannakaEffective

/-- Upgrade to all Henselian tensor semantics, conditional on HSG. -/
def TAN02Claim (S : AlgebraizationSystem) : Prop :=
  S.P.tannakaHypotheses →
  HenselianSerreGeneration S.generators S.cohHenEpi →
    EquivalenceWitness S.functors.TannakaUnrestricted

/-- Common global provenance for Archimedean and non-Archimedean fibers. -/
def GLOB01Claim (S : AlgebraizationSystem) : Prop :=
  S.P.globalModelHypothesis →
    S.P.archimedeanAndNonarchCommonSource

/-- Type-specific moduli pipeline claim. -/
def MODPipelineClaim (S : AlgebraizationSystem) : Prop :=
  ModuliPipelineRule S

/-- Optional full-faithfulness input for a moduli semantic type. -/
def MODFullFaithfulClaim (S : AlgebraizationSystem) : Prop :=
  Full S.functors.SemanticPullback ∧
  Faithful S.functors.SemanticPullback

/-- Extension-class image criterion. -/
def EXT01Claim (S : AlgebraizationSystem) : Prop :=
  ExtensionImageCharacterization S.extensions

/--
Explicit theorem registry.

Established literature inputs and type-specific conditional rules are fields,
not global axioms.  The proposed HSG theorem remains a separately invocable
conditional implication (`hen06`), not an unconditional conclusion.
-/
structure AlgebraizationTheoremRegistry
    (S : AlgebraizationSystem) : Prop where
  alg01 : ALG01Claim S
  alg02 : ALG02Claim S
  alg04 : ALG04Claim S
  hen01 : HEN01Claim S
  hen02 : HEN02Claim S
  hen06 : HEN06Claim S
  hen07 : HEN07Claim S
  hen08 : HEN08Claim S
  hen10 : HEN10Claim S
  hen12 : HEN12Claim S
  hen15 : HEN15Claim S
  hen16 : HEN16Claim S
  modPipeline : MODPipelineClaim S
  modFullFaithful : MODFullFaithfulClaim S
  tan01 : TAN01Claim S
  tan02 : TAN02Claim S
  glob01 : GLOB01Claim S
  ext01 : EXT01Claim S

/-- Source-profile assumptions for the scoped completeness theorem. -/
structure AlgebraizationHypotheses
    (S : AlgebraizationSystem) : Prop where
  polarizedProfile : S.P.polarizedProfile
  formalPolarizedProfile : S.P.formalPolarizedProfile
  henselianProfile : S.P.henselianProfile
  sourceGenerated :
    SourceGenerated S.generators S.cohAlgEpi
  tannakaHypotheses : S.P.tannakaHypotheses
  globalModelHypothesis : S.P.globalModelHypothesis
  semanticSourceEffective : SemanticSourceEffective S

/-- All scoped conclusions of `alg-hen-completeness-v1`. -/
structure AlgebraizationCompleteSystem
    (S : AlgebraizationSystem) : Prop where
  polarizedEquivalence :
    EquivalenceWitness S.functors.PolAn
  polarizedQuasiInverse :
    QuasiInverseData
      S.functors.PolAn
      S.functors.PolAlg
  formalPolarizedEffectivity :
    ALG04Evidence S
  henselianImageCharacterization :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y
  henselianGeneratorEquivalence :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj)
  hsgCriterion :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi
  unrestrictedFromHSG :
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi →
    EquivalenceWitness S.functors.HenPullback
  characteristicBoundary :
    S.P.characteristicZeroOrMixedProfile →
    S.P.knownRankTwoNonAlgebraizableObject →
      ¬ EssentiallySurjective S.functors.HenPullback
  algebraizationFibersCanonical :
    FibersUniquelyIsomorphic S.functors.HenPullback
  positiveCharacteristicAffineInput :
    S.P.positiveCharacteristicProfile →
      S.P.positiveCharacteristicAffineInput
  extensionNonclosureBoundary :
    S.P.characteristicZeroOrMixedProfile →
    S.P.knownNonAlgebraizableExtensionOfGenerated →
      ¬ S.P.generatedAmbientExtensionClosed
  effectiveTargetClosure :
    S.P.generatedKernelClosed ∧
    S.P.generatedCokernelClosed ∧
    S.P.generatedFiniteSumClosed ∧
    S.P.generatedTensorClosed ∧
    S.P.generatedDirectSummandClosed
  positiveCharacteristicRouteToHSG :
    S.P.positiveCharacteristicProfile →
    S.P.positiveCharacteristicAffineInput →
    PositiveCharacteristicRouteCertificate S →
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi
  moduliObjectEffectivity :
    ModuliPipelineRule S
  moduliSemanticEquivalence :
    ∃ hObj : SemanticSourceEffective S,
      EquivalenceWitness
        (semanticPullbackEff S hObj)
  effectiveTannaka :
    EquivalenceWitness S.functors.TannakaEffective
  unrestrictedTannakaFromHSG :
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi →
      EquivalenceWitness
        S.functors.TannakaUnrestricted
  commonGlobalProvenance :
    S.P.archimedeanAndNonarchCommonSource
  extensionImageCriterion :
    ExtensionImageCharacterization S.extensions

end FCRS.Algebraization
```
