import Surface.Legacy.PascalTree.TheoremManifest
import Surface.Legacy.PascalTree.RelaxationTopology
import Surface.Incremental.Main
import Surface.Legacy.BinaryLogicMatrix.Tree.Main
import Surface.Legacy.BinaryLogicMatrixFlow.Core
import Surface.Arithmetic
import Surface.Boolean

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical certificate package joining older BinaryLogicMatrix, PascalTree,
incremental-generation, arithmetic, and Boolean descriptors.

What is certificate-gated:
All classification, initiality, reversibility, and comparison claims are fields
of supplied certificates. The theorems below only eliminate those fields.

What is not claimed:
This module does not prove a classifying topos theorem, a Pascal reducer
initiality theorem, a BinaryLogicMatrix universality theorem, an analytic
comparison theorem, or any major proof-cone result.

Primary mathematical source:
Internal Surface historical theorem-package scaffold.
-/

namespace Surface
namespace Legacy
namespace MainTheoremPackage

structure SmallGeometricTheory where
  name : String
  finiteSignature : Prop
  geometricAxioms : Prop
  claimBoundary : AffineTopos.AffineClaimBoundary

structure GrothendieckToposDescriptor where
  name : String
  siteName : String
  topologyName : String
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ClassifyingToposDescriptor where
  theory : SmallGeometricTheory
  classifierTopos : GrothendieckToposDescriptor
  siteName : String
  coverageName : String
  claimBoundary : AffineTopos.AffineClaimBoundary

structure TypeEquivalence (α β : Type) where
  toFun : α → β
  invFun : β → α
  leftInverse : Prop
  leftInverseCertified : leftInverse
  rightInverse : Prop
  rightInverseCertified : rightInverse

structure InternalModelFamily where
  models : GrothendieckToposDescriptor → Type
  morphismsToClassifier : GrothendieckToposDescriptor → Type
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ClassificationCertificate where
  classifier : ClassifyingToposDescriptor
  family : InternalModelFamily
  equivalence :
    (E : GrothendieckToposDescriptor) →
      TypeEquivalence (family.morphismsToClassifier E) (family.models E)
  preservesManifest : PascalTree.TheoremPreservationManifest
  manifestAllEntriesPreserved : preservesManifest.allEntriesPreserved
  manifestNoWeakening : preservesManifest.noWeakening
  manifestClaimBoundariesPreserved : preservesManifest.claimBoundariesPreserved
  proofStatusDiscipline : Prop
  proofStatusDisciplineCertified : proofStatusDiscipline
  trustedStatusDiscipline : Prop
  trustedStatusDisciplineCertified : trustedStatusDiscipline
  dependencyDiscipline : Prop
  dependencyDisciplineCertified : dependencyDiscipline
  claimBoundaryDiscipline : Prop
  claimBoundaryDisciplineCertified : claimBoundaryDiscipline
  claimBoundary : AffineTopos.AffineClaimBoundary

structure AffineCatamorphism where
  carrierName : String
  apply : PascalTree.GeneralizedPascalTree → PascalTree.PascalReduction
  affineLocal : Prop
  claimBoundary : AffineTopos.AffineClaimBoundary

structure InitialAffineCatamorphismCertificate where
  reducer : AffineCatamorphism
  targetExpressionKind : String
  initialAmongAffineCatamorphisms : Prop
  initialAmongAffineCatamorphismsCertified : initialAmongAffineCatamorphisms
  claimBoundary : AffineTopos.AffineClaimBoundary

structure InternalIsomorphismDescriptor where
  sourceName : String
  targetName : String
  forwardName : String
  inverseName : String
  inverseLaws : Prop
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive CertifiedReversibleWitness where
| binaryLogicMatrixFlow (rows cols : Nat) :
    BinaryLogicMatrixFlow rows cols → CertifiedReversibleWitness
| internalIsomorphism : InternalIsomorphismDescriptor → CertifiedReversibleWitness

structure ReversibleModalityCertificate where
  reversibleWitnesses : Type
  witnessesAreFlowOrIso : reversibleWitnesses → CertifiedReversibleWitness
  reversibleModalityExact :
    AffineTopos.AffineModality.reversibleFlow =
      AffineTopos.AffineModality.reversibleFlow
  nonFlowModalitiesRequireBijectiveCertificate :
    ∀ modality : AffineTopos.AffineModality,
      modality.irreversible = true → Prop
  nonFlowModalitiesHaveCertificate :
    ∀ (modality : AffineTopos.AffineModality)
      (h : modality.irreversible = true),
      nonFlowModalitiesRequireBijectiveCertificate modality h
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ComparisonCategoryDescriptor where
  name : String
  objectName : String
  morphismName : String
  nontrivial : Prop
  nontrivialCertified : nontrivial
  establishedFiniteDescriptor : Prop
  establishedFiniteDescriptorCertified : establishedFiniteDescriptor
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ComparisonFunctorCertificate where
  source : ClassifyingToposDescriptor
  target : ComparisonCategoryDescriptor
  preservesFlowNonFlowDistinction : Prop
  preservesFlowNonFlowDistinctionCertified : preservesFlowNonFlowDistinction
  preservesComparisonData : Prop
  preservesComparisonDataCertified : preservesComparisonData
  nontrivial : Prop
  nontrivialCertified : nontrivial
  claimBoundary : AffineTopos.AffineClaimBoundary

structure CertifiedBLMMainTheoremPackage where
  classification : ClassificationCertificate
  initialReducer : InitialAffineCatamorphismCertificate
  reversibleModality : ReversibleModalityCertificate
  comparisonFunctor : ComparisonFunctorCertificate
  requestTimeGeneration? : Option Incremental.RequestTimeGenerationCertificate
  binaryMatrixLogicPrimeTree? :
    Option BinaryLogicMatrix.Tree.BinaryMatrixLogicPrimeTreePackage
  claimBoundary : AffineTopos.AffineClaimBoundary

def classificationBoundary : AffineTopos.AffineClaimBoundary where
  label :=
    "legacy classifying-topos statement is certificate-bearing; HTML and fixtures are not proof authority"

def initialReducerBoundary : AffineTopos.AffineClaimBoundary where
  label :=
    "legacy initial affine catamorphism requires the supplied initiality certificate"

def modalityBoundary : AffineTopos.AffineClaimBoundary where
  label :=
    "legacy reversible modality accepts only BinaryLogicMatrixFlow or internal isomorphism witnesses without extra certificate"

def comparisonBoundary : AffineTopos.AffineClaimBoundary where
  label :=
    "legacy comparison functor preserves finite comparison data without claiming analytic equivalence"

def mainPackageBoundary : AffineTopos.AffineClaimBoundary where
  label :=
    "legacy main theorem package records certificates and claim boundaries; unprovided categorical facts remain boundaries"

def descriptorLevelTheory : SmallGeometricTheory where
  name := "T_BLM"
  finiteSignature := True
  geometricAxioms := True
  claimBoundary := classificationBoundary

def descriptorLevelClassifier : ClassifyingToposDescriptor where
  theory := descriptorLevelTheory
  classifierTopos := {
    name := "U_BLM"
    siteName := "C_BLM"
    topologyName := "J_BLM"
    claimBoundary := classificationBoundary
  }
  siteName := "C_BLM"
  coverageName := "J_BLM"
  claimBoundary := classificationBoundary

def pascalReducerCatamorphism : AffineCatamorphism where
  carrierName := "GeneralizedPascalTreeReducer"
  apply := PascalTree.reduce
  affineLocal := True
  claimBoundary := initialReducerBoundary

theorem classification_preserves_attached_theorem_manifest
    (C : ClassificationCertificate) :
    C.preservesManifest.allEntriesPreserved ∧
      C.preservesManifest.noWeakening ∧
      C.preservesManifest.claimBoundariesPreserved := by
  exact ⟨
    C.manifestAllEntriesPreserved,
    C.manifestNoWeakening,
    C.manifestClaimBoundariesPreserved
  ⟩

theorem classifyingTopos_classifies_internal_models
    (C : ClassificationCertificate)
    (E : GrothendieckToposDescriptor) :
    Nonempty
      (TypeEquivalence (C.family.morphismsToClassifier E) (C.family.models E)) := by
  exact ⟨C.equivalence E⟩

theorem pascalTree_initial_affine_catamorphism
    (I : InitialAffineCatamorphismCertificate) :
    I.initialAmongAffineCatamorphisms := by
  exact I.initialAmongAffineCatamorphismsCertified

theorem pascalTree_reducer_is_packaged_catamorphism :
    pascalReducerCatamorphism.apply = PascalTree.reduce := by
  rfl

theorem reversible_modality_exactly_certified_flow_or_internal_iso
    (M : ReversibleModalityCertificate) :
    AffineTopos.AffineModality.reversibleFlow =
      AffineTopos.AffineModality.reversibleFlow := by
  exact M.reversibleModalityExact

theorem non_flow_modalities_require_bijective_certificate
    (M : ReversibleModalityCertificate)
    (modality : AffineTopos.AffineModality) :
    ∀ h : modality.irreversible = true,
      M.nonFlowModalitiesRequireBijectiveCertificate modality h := by
  intro h
  exact M.nonFlowModalitiesHaveCertificate modality h

theorem comparison_functor_preserves_flow_nonflow_and_data
    (F : ComparisonFunctorCertificate) :
    F.nontrivial ∧
      F.preservesFlowNonFlowDistinction ∧
      F.preservesComparisonData := by
  exact ⟨
    F.nontrivialCertified,
    F.preservesFlowNonFlowDistinctionCertified,
    F.preservesComparisonDataCertified
  ⟩

theorem main_theorem_package_sound
    (P : CertifiedBLMMainTheoremPackage) :
    (∀ E : GrothendieckToposDescriptor,
        Nonempty
          (TypeEquivalence
            (P.classification.family.morphismsToClassifier E)
            (P.classification.family.models E))) ∧
      P.initialReducer.initialAmongAffineCatamorphisms ∧
      P.comparisonFunctor.nontrivial ∧
      P.comparisonFunctor.preservesFlowNonFlowDistinction ∧
      P.comparisonFunctor.preservesComparisonData := by
  exact ⟨
    fun E => ⟨P.classification.equivalence E⟩,
    P.initialReducer.initialAmongAffineCatamorphismsCertified,
    P.comparisonFunctor.nontrivialCertified,
    P.comparisonFunctor.preservesFlowNonFlowDistinctionCertified,
    P.comparisonFunctor.preservesComparisonDataCertified
  ⟩

end MainTheoremPackage
end Legacy
end Surface
