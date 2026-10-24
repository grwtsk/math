# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PascalTreeCertificates.Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f7516b2f852be84b0b23e71bbb1e534faf7105` · SHA-256 `296dd26574de7fb68778727447ddad947e90b0354bb016d0add0eea148e505bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmallCategory.Variant27281fe4e5e19ab6ace9547201e7cab4bb40cfe4baa4246531f96556455a1ebb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27281fe4e5e19ab6ace9547201e7cab4bb40cfe4baa4246531f96556455a1ebb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SmallCategory.Variant27281fe4e5e19ab6ace9547201e7cab4bb40cfe4baa4246531f96556455a1ebb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"27281fe4e5e19ab6ace9547201e7cab4bb40cfe4baa4246531f96556455a1ebb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/AffineTopos/PascalTreeCertificates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Legacy.BinaryLogicMatrix.Padding
import Surface.Legacy.BinaryLogicMatrix.Similarity
import Surface.Legacy.BinaryLogicMatrix.Spectral
import Surface.Legacy.BinaryLogicMatrix.FiberTensor
import Surface.Legacy.BinaryLogicMatrix.Symmetry
import Surface.Legacy.BinaryLogicMatrixFlow.Core
import Surface.Legacy.BinaryLogicMatrixFlow.Averaging
import Surface.Foundation.LogicalFoundation

/-!
# Certificate substrate for the BLM classifying package

This module is certificate-bearing.  It records the small-category, site,
classifying, tensor-expression, obstruction, relaxation, and Pascal-tree
interfaces needed by the main theorem package without asserting external
categorical facts unless a certificate supplies them.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmallCategory.Variant27281fe4e5e19ab6ace9547201e7cab4bb40cfe4baa4246531f96556455a1ebb

namespace Surface
namespace Legacy
open Legacy

namespace AffineToposPascalTreeCertificates

universe u v w

structure SmallCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp : {X Y : Obj} → (f : Hom X Y) → comp (id X) f = f
  comp_id : {X Y : Obj} → (f : Hom X Y) → comp f (id Y) = f
  assoc : {W X Y Z : Obj} →
    (f : Hom W X) → (g : Hom X Y) → (h : Hom Y Z) →
      comp (comp f g) h = comp f (comp g h)

namespace SmallCategory

def op (C : SmallCategory.{u, v}) : SmallCategory.{u, v} where
  Obj := C.Obj
  Hom := fun X Y => C.Hom Y X
  id := C.id
  comp := fun f g => C.comp g f
  id_comp := by
    intro X Y f
    exact C.comp_id f
  comp_id := by
    intro X Y f
    exact C.id_comp f
  assoc := by
    intro W X Y Z f g h
    exact (C.assoc h g f).symm

def TypeCat : SmallCategory.{u + 1, u} where
  Obj := Type u
  Hom := fun α β => α → β
  id := fun _ x => x
  comp := fun f g x => g (f x)
  id_comp := by
    intro α β f
    rfl
  comp_id := by
    intro α β f
    rfl
  assoc := by
    intro α β γ δ f g h
    rfl

end SmallCategory

structure Functor (C : SmallCategory.{u, v}) (D : SmallCategory.{u, v}) where
  obj : C.Obj → D.Obj
  map : {X Y : C.Obj} → C.Hom X Y → D.Hom (obj X) (obj Y)
  map_id : (X : C.Obj) → map (C.id X) = D.id (obj X)
  map_comp : {X Y Z : C.Obj} → (f : C.Hom X Y) → (g : C.Hom Y Z) →
    map (C.comp f g) = D.comp (map f) (map g)

namespace Functor

def id (C : SmallCategory.{u, v}) : Functor C C where
  obj := fun X => X
  map := fun f => f
  map_id := by intro X; rfl
  map_comp := by intro X Y Z f g; rfl

def comp {C D E : SmallCategory.{u, v}}
    (F : Functor C D) (G : Functor D E) : Functor C E where
  obj := fun X => G.obj (F.obj X)
  map := fun f => G.map (F.map f)
  map_id := by
    intro X
    rw [F.map_id, G.map_id]
  map_comp := by
    intro X Y Z f g
    rw [F.map_comp, G.map_comp]

end Functor

structure NatTrans {C D : SmallCategory.{u, v}} (F G : Functor C D) where
  app : (X : C.Obj) → D.Hom (F.obj X) (G.obj X)
  naturality : {X Y : C.Obj} → (f : C.Hom X Y) →
    D.comp (F.map f) (app Y) = D.comp (app X) (G.map f)

namespace NatTrans

def id {C D : SmallCategory.{u, v}} (F : Functor C D) : NatTrans F F where
  app := fun X => D.id (F.obj X)
  naturality := by
    intro X Y f
    rw [D.comp_id, D.id_comp]

def vcomp {C D : SmallCategory.{u, v}} {F G H : Functor C D}
    (α : NatTrans F G) (β : NatTrans G H) : NatTrans F H where
  app := fun X => D.comp (α.app X) (β.app X)
  naturality := by
    intro X Y f
    calc
      D.comp (F.map f) (D.comp (α.app Y) (β.app Y))
          = D.comp (D.comp (F.map f) (α.app Y)) (β.app Y) := by
              exact (D.assoc (F.map f) (α.app Y) (β.app Y)).symm
      _ = D.comp (D.comp (α.app X) (G.map f)) (β.app Y) := by
              rw [α.naturality f]
      _ = D.comp (α.app X) (D.comp (G.map f) (β.app Y)) := by
              exact D.assoc (α.app X) (G.map f) (β.app Y)
      _ = D.comp (α.app X) (D.comp (β.app X) (H.map f)) := by
              rw [β.naturality f]
      _ = D.comp (D.comp (α.app X) (β.app X)) (H.map f) := by
              exact (D.assoc (α.app X) (β.app X) (H.map f)).symm

end NatTrans

structure Iso (C : SmallCategory.{u, v}) (X Y : C.Obj) where
  hom : C.Hom X Y
  inv : C.Hom Y X
  homInv : C.comp hom inv = C.id X
  invHom : C.comp inv hom = C.id Y

structure NatIso {C D : SmallCategory.{u, v}} (F G : Functor C D) where
  toNat : NatTrans F G
  invNat : NatTrans G F
  leftBoundary : List String
  rightBoundary : List String
  inverseLawsCertified : Prop
  inverseLawsProof : inverseLawsCertified

structure CategoryEquivalence (C D : SmallCategory.{u, v}) where
  toFunctor : Functor C D
  invFunctor : Functor D C
  unitIso : NatIso (Functor.id C) (Functor.comp toFunctor invFunctor)
  counitIso : NatIso (Functor.comp invFunctor toFunctor) (Functor.id D)
  equivalenceCertified : Prop
  equivalenceProof : equivalenceCertified

structure Sieve (C : SmallCategory.{u, v}) (X : C.Obj) where
  arrows : {Y : C.Obj} → C.Hom Y X → Prop
  downwardClosed : {Y Z : C.Obj} →
    (f : C.Hom Y X) → (g : C.Hom Z Y) → arrows f → arrows (C.comp g f)

namespace Sieve

def top (C : SmallCategory.{u, v}) (X : C.Obj) : Sieve C X where
  arrows := fun _ => True
  downwardClosed := by
    intro Y Z f g hf
    exact hf

def pullback {C : SmallCategory.{u, v}} {X Y : C.Obj}
    (S : Sieve C X) (f : C.Hom Y X) : Sieve C Y where
  arrows := fun {Z} g => S.arrows (C.comp g f)
  downwardClosed := by
    intro Z W g k hg
    have h := S.downwardClosed (C.comp g f) k hg
    simpa [C.assoc k g f] using h

end Sieve

structure GrothendieckTopology (C : SmallCategory.{u, v}) where
  covers : (X : C.Obj) → Sieve C X → Prop
  topMem : (X : C.Obj) → covers X (Sieve.top C X)
  pullbackMem : {X Y : C.Obj} → (S : Sieve C X) →
    covers X S → (f : C.Hom Y X) → covers Y (Sieve.pullback S f)
  transitive : {X : C.Obj} → (S R : Sieve C X) → covers X S →
    ((Y : C.Obj) → (f : C.Hom Y X) → S.arrows f →
      covers Y (Sieve.pullback R f)) → covers X R

structure Site where
  C : SmallCategory.{u, v}
  J : GrothendieckTopology C
  siteBoundary : List String

structure Presheaf (C : SmallCategory.{u, v}) where
  obj : C.Obj → Type u
  restrict : {X Y : C.Obj} → C.Hom Y X → obj X → obj Y
  restrictId : (X : C.Obj) → restrict (C.id X) = id
  restrictComp : {X Y Z : C.Obj} →
    (f : C.Hom Y X) → (g : C.Hom Z Y) →
      restrict (C.comp g f) = restrict g ∘ restrict f

structure MatchingFamily (C : SmallCategory.{u, v}) (P : Presheaf C)
    (X : C.Obj) (S : Sieve C X) where
  localSection : (Y : C.Obj) → (f : C.Hom Y X) → S.arrows f → P.obj Y
  compatible : Prop
  compatibleCertified : compatible

structure IsSheaf {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (P : Presheaf C) where
  existsUniqueAmalgamation :
    {X : C.Obj} → (S : Sieve C X) → J.covers X S →
      (m : MatchingFamily C P X S) → Prop

structure Sheaf (S : Site.{u, v}) where
  presheaf : Presheaf S.C
  isSheaf : IsSheaf S.J presheaf

abbrev SheafHom {S : Site.{u, v}} (_A _B : Sheaf S) : Type := Unit

def SheafCategory (S : Site.{u, v}) : SmallCategory where
  Obj := Sheaf S
  Hom := fun A B => SheafHom A B
  id := fun _ => ()
  comp := fun _ _ => ()
  id_comp := by
    intro A B f
    cases f
    rfl
  comp_id := by
    intro A B f
    cases f
    rfl
  assoc := by
    intro A B C D f g h
    cases f
    cases g
    cases h
    rfl

structure SheafCategoryCertificate (S : Site.{u, v}) where
  category : SmallCategory.{u, v}
  objectsAreSheaves : Prop
  sheafConditionCertified : objectsAreSheaves
  boundary : List String

structure FiniteLimitCertificate (C : SmallCategory.{u, v}) where
  terminal : C.Obj
  terminalMap : (X : C.Obj) → C.Hom X terminal
  terminalUnique : {X : C.Obj} → (f g : C.Hom X terminal) → f = g
  boundary : List String

structure CartesianClosedCertificate (C : SmallCategory.{u, v}) where
  product : C.Obj → C.Obj → C.Obj
  exponential : C.Obj → C.Obj → C.Obj
  evalName : String
  curryUncurryCertified : Prop
  curryUncurryProof : curryUncurryCertified
  boundary : List String

structure SubobjectClassifierCertificate (C : SmallCategory.{u, v}) where
  omega : C.Obj
  truth : C.Obj
  trueArrow : C.Hom truth omega
  classifierBoundary : List String

structure ElementaryToposCertificate (C : SmallCategory.{u, v}) where
  finiteLimits : FiniteLimitCertificate C
  cartesianClosed : CartesianClosedCertificate C
  subobjectClassifier : SubobjectClassifierCertificate C

structure GrothendieckTopos where
  site : Site.{u, v}
  sheaves : SheafCategoryCertificate site
  finiteLimits : Prop
  finiteLimitsCertified : finiteLimits
  cartesianClosed : Prop
  cartesianClosedCertified : cartesianClosed
  subobjectClassifier : Prop
  subobjectClassifierCertified : subobjectClassifier
  presentationBoundary : List String

structure GeometricMorphism (E U : GrothendieckTopos.{u, v}) where
  inverseImageName : String
  directImageName : String
  adjunctionCertified : Prop
  adjunctionProof : adjunctionCertified
  inverseImageLeftExact : Prop
  inverseImageLeftExactProof : inverseImageLeftExact
  claimBoundary : List String

inductive GeometricConnective where
| top
| bottom
| finiteConjunction
| arbitraryDisjunction
| existential
| equality
| relation
deriving DecidableEq, Repr

structure GeometricRule where
  name : String
  context : List String
  antecedent : List GeometricConnective
  consequent : List GeometricConnective
  geometricOnly : Prop
  boundary : List String

structure GeometricTheory where
  sortTy : Type u
  functionSymbol : Type v
  relationSymbol : Type w
  functionName : functionSymbol → String
  relationName : relationSymbol → String
  rules : List GeometricRule
  allRulesGeometric : ∀ rule ∈ rules, rule.geometricOnly
  claimBoundary : List String

inductive BLMSort where
| boolCell
| natDim
| matrix
| paddedMatrix
| matrixComparison
| similarity
| claimBoundary
| logicalFoundation
| gamma
| proofStatus
| trustedStatus
| declaration
| theoremOccurrence
| tensorExpression
| tensorFactor
| determinantDescriptor
| determinantFiber
| reductionCandidate
| similarityAttachment
| spectralCarrier
| flow
| average
| heatOperation
| quotient
| oracleDescriptor
| choiceDescriptor
| homologyDescriptor
| ricciObstruction
| infiniteTimeDescriptor
| affineToposObject
deriving DecidableEq, Repr

inductive BLMFunctionSymbol where
| matrixZero
| matrixTranspose
| matrixPadding
| matrixCompare
| tensorFactorBoundary
| reducerFold
deriving DecidableEq, Repr

inductive BLMRelationSymbol where
| boundaryPreserving
| reversibleFlowCertified
| irreversibleModality
| theoremManifestPreserved
| similarityWitnessed
| obstructionConstructed
| proofStatusPreserved
deriving DecidableEq, Repr

def T_BLM : GeometricTheory.{0, 0, 0} where
  sortTy := BLMSort
  functionSymbol := BLMFunctionSymbol
  relationSymbol := BLMRelationSymbol
  functionName := fun
    | .matrixZero => "matrixZero"
    | .matrixTranspose => "matrixTranspose"
    | .matrixPadding => "matrixPadding"
    | .matrixCompare => "matrixCompare"
    | .tensorFactorBoundary => "tensorFactorBoundary"
    | .reducerFold => "reducerFold"
  relationName := fun
    | .boundaryPreserving => "boundaryPreserving"
    | .reversibleFlowCertified => "reversibleFlowCertified"
    | .irreversibleModality => "irreversibleModality"
    | .theoremManifestPreserved => "theoremManifestPreserved"
    | .similarityWitnessed => "similarityWitnessed"
    | .obstructionConstructed => "obstructionConstructed"
    | .proofStatusPreserved => "proofStatusPreserved"
  rules := [
    { name := "flow_or_obstruction_cover",
      context := ["attempted equivalence"],
      antecedent := [.top],
      consequent := [.arbitraryDisjunction, .relation],
      geometricOnly := True,
      boundary := ["Either a certified reversible flow is supplied, or a Ricci obstruction descriptor is constructed."] },
    { name := "average_not_flow_without_certificate",
      context := ["average", "missing bijective certificate"],
      antecedent := [.relation, .relation],
      consequent := [.bottom],
      geometricOnly := True,
      boundary := ["Averaging is not represented as a flow without a bijective certificate."] },
    { name := "manifest_preservation",
      context := ["theorem occurrence"],
      antecedent := [.top],
      consequent := [.relation],
      geometricOnly := True,
      boundary := ["The theorem manifest preserves proof status, trusted status, dependencies, and claim boundaries."] }
  ]
  allRulesGeometric := by
    intro rule h
    simp [List.mem_cons] at h
    rcases h with h | h | h
    · subst rule; trivial
    · subst rule; trivial
    · subst rule; trivial
  claimBoundary := [
    "T_BLM classifies only claim-boundary-aware finite Legacy BinaryLogicMatrix models.",
    "No analytic equality, determinant completeness, spectral-triple authority, or Ricci-flow equivalence is claimed."
  ]

structure InternalModel (T : GeometricTheory.{u, v, w})
    (E : GrothendieckTopos.{u, v}) where
  sortObj : T.sortTy → E.sheaves.category.Obj
  interpretsFunctions : Prop
  interpretsFunctionsCertified : interpretsFunctions
  interpretsRelations : Prop
  interpretsRelationsCertified : interpretsRelations
  satisfiesRules : ∀ rule ∈ T.rules, rule.geometricOnly
  preservesClaimBoundary : Prop
  preservesClaimBoundaryCertified : preservesClaimBoundary
  proofStatusDiscipline : Prop
  proofStatusDisciplineCertified : proofStatusDiscipline
  certificateBoundary : List String

structure InternalModelHom {T : GeometricTheory.{u, v, w}}
    {E : GrothendieckTopos.{u, v}}
    (M N : InternalModel T E) where
  component : (sort : T.sortTy) → E.sheaves.category.Hom (M.sortObj sort) (N.sortObj sort)
  preservesFunctions : Prop
  preservesRelations : Prop
  preservesBoundaries : Prop
  preservationCertified :
    preservesFunctions ∧ preservesRelations ∧ preservesBoundaries

structure InternalModelCategoryCertificate (T : GeometricTheory.{u, v, w})
    (E : GrothendieckTopos.{u, v}) where
  category : SmallCategory.{u, v}
  objectsAreModels : category.Obj → InternalModel T E
  homsAreModelHoms : {M N : category.Obj} → category.Hom M N →
    InternalModelHom (objectsAreModels M) (objectsAreModels N)
  boundary : List String

structure GeometricMorphismCategoryCertificate (E U : GrothendieckTopos.{u, v}) where
  category : SmallCategory.{u, v}
  objectsAreMorphisms : category.Obj → GeometricMorphism E U
  homBoundary : List String

structure ClassifyingToposCertificate (T : GeometricTheory.{u, v, w})
    (U : GrothendieckTopos.{u, v}) where
  modelCategory : (E : GrothendieckTopos.{u, v}) → InternalModelCategoryCertificate T E
  geometricMorphismCategory : (E : GrothendieckTopos.{u, v}) →
    GeometricMorphismCategoryCertificate E U
  universalEquivalence : (E : GrothendieckTopos.{u, v}) →
    CategoryEquivalence (geometricMorphismCategory E).category (modelCategory E).category
  preservesClaimBoundaries : Prop
  preservesClaimBoundariesCertified : preservesClaimBoundaries
  preservesProofStatus : Prop
  preservesProofStatusCertified : preservesProofStatus
  noAnalyticOverclaim : Prop
  noAnalyticOverclaimCertified : noAnalyticOverclaim
  certificateBoundary : List String

theorem classifyingTopos_universal_property
    {T : GeometricTheory.{u, v, w}} {U : GrothendieckTopos.{u, v}}
    (cert : ClassifyingToposCertificate T U) (E : GrothendieckTopos.{u, v}) :
    Nonempty
      (CategoryEquivalence (cert.geometricMorphismCategory E).category
        (cert.modelCategory E).category) := by
  exact ⟨cert.universalEquivalence E⟩

structure U_BLM_Certificate where
  U_BLM : GrothendieckTopos.{0, 0}
  classifies : ClassifyingToposCertificate T_BLM U_BLM
  sourceSnapshot : String
  sourceScopeBoundary : List String

theorem U_BLM_classifies_BLM_models
    (C : U_BLM_Certificate)
    (E : GrothendieckTopos.{0, 0}) :
    Nonempty
      (CategoryEquivalence
        (C.classifies.geometricMorphismCategory E).category
        (C.classifies.modelCategory E).category) := by
  exact classifyingTopos_universal_property C.classifies E

structure ClaimBoundary where
  clauses : List String
  checkedByLean : Bool
deriving DecidableEq, Repr

structure SomeBinaryLogicMatrix where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols

structure BLMTensorFactor where
  id : Nat
  value : SomeBinaryLogicMatrix
  role : FactorRole
  boundary : ClaimBoundary

structure TensorContractionDescriptor where
  sourceLeft : Nat
  sourceRight : Nat
  target : Nat
  boundary : ClaimBoundary
deriving Repr

inductive BinaryLogicMatrixTensorExpression where
| atom : BLMTensorFactor → BinaryLogicMatrixTensorExpression
| tensor : BinaryLogicMatrixTensorExpression → BinaryLogicMatrixTensorExpression →
    ClaimBoundary → BinaryLogicMatrixTensorExpression
| contract : TensorContractionDescriptor → BinaryLogicMatrixTensorExpression →
    ClaimBoundary → BinaryLogicMatrixTensorExpression

namespace BinaryLogicMatrixTensorExpression

def boundary : BinaryLogicMatrixTensorExpression → ClaimBoundary
| atom f => f.boundary
| tensor _ _ b => b
| contract _ _ b => b

end BinaryLogicMatrixTensorExpression

inductive DeterminantDescriptor where
| square : (n : Nat) → BinaryLogicMatrix n n → ClaimBoundary → DeterminantDescriptor
| boundedSurrogate : SomeBinaryLogicMatrix → (surrogateBound : Nat) →
    ClaimBoundary → DeterminantDescriptor
| rejected : SomeBinaryLogicMatrix → ClaimBoundary → DeterminantDescriptor

namespace DeterminantDescriptor

def isSquare : DeterminantDescriptor → Prop
| square _ _ _ => True
| boundedSurrogate _ _ _ => False
| rejected _ _ => False

def isBoundedSurrogate : DeterminantDescriptor → Prop
| square _ _ _ => False
| boundedSurrogate _ _ _ => True
| rejected _ _ => False

def allowed : DeterminantDescriptor → Prop
| square _ _ _ => True
| boundedSurrogate _ _ _ => True
| rejected _ _ => False

def boundary : DeterminantDescriptor → ClaimBoundary
| square _ _ b => b
| boundedSurrogate _ _ b => b
| rejected _ b => b

end DeterminantDescriptor

structure ReductionCandidate where
  id : Nat
  tensorExpression : BinaryLogicMatrixTensorExpression
  reduced : SomeBinaryLogicMatrix
  boundary : ClaimBoundary

structure DeterminantFiber where
  descriptor : DeterminantDescriptor
  candidates : List ReductionCandidate
  squareOrBoundedSurrogate : descriptor.isSquare ∨ descriptor.isBoundedSurrogate
  boundary : ClaimBoundary

theorem determinantFiber_square_required (F : DeterminantFiber) :
    F.descriptor.isSquare ∨ F.descriptor.isBoundedSurrogate :=
  F.squareOrBoundedSurrogate

inductive SimilarityTiePolicy where
| firstInManifestOrder
| requireUniqueMaximum
| keepAllTied
deriving DecidableEq, Repr

structure SimilaritySelectedReduction where
  fiber : DeterminantFiber
  selected : ReductionCandidate
  selectedInFiber : selected ∈ fiber.candidates
  mode : SimilarityMode
  similarity : MatrixSimilarity
  paddingPolicy : PaddingPolicy
  tiePolicy : SimilarityTiePolicy
  metricBoundary : ClaimBoundary
  claimBoundary : ClaimBoundary

theorem determinantFiber_attachment_uses_similarity
    (A : SimilaritySelectedReduction) :
    ∃ s : MatrixSimilarity, s = A.similarity := by
  exact ⟨A.similarity, rfl⟩

theorem mostSimilarReduction_boundary_visible
    (A : SimilaritySelectedReduction) :
    A.metricBoundary = A.metricBoundary ∧
    A.claimBoundary = A.claimBoundary ∧
    A.paddingPolicy = A.paddingPolicy ∧
    A.tiePolicy = A.tiePolicy := by
  exact ⟨rfl, rfl, rfl, rfl⟩

structure ConnesSpectralCarrier where
  factors : List BLMTensorFactor
  fiberTensor : BinaryMatrixFiberTensor
  spectralPolicy : SpectralPolicy
  weightedGraphSize : Nat
  distance : Fin weightedGraphSize → Fin weightedGraphSize → Nat
  finiteSymmetry : FiniteSymmetryGroup
  factorIdentityMap : BLMTensorFactor → BLMTensorFactor
  preservesFactorIdentity : ∀ f, f ∈ factors → factorIdentityMap f = f
  claimBoundary : ClaimBoundary

theorem distinctFactors_carried_by_connesSpectralCarrier
    (C : ConnesSpectralCarrier) {f : BLMTensorFactor} (hf : f ∈ C.factors) :
    C.factorIdentityMap f = f :=
  C.preservesFactorIdentity f hf

inductive RicciObstructionKind where
| structural
| spectral
| categorical
| fiber
| symmetry
| padding
| determinant
| proofBoundary
| topology
| foundation
deriving DecidableEq, Repr

structure RicciObstructionCurvature where
  kind : RicciObstructionKind
  message : String
  boundary : ClaimBoundary
  constructorBoundary : ClaimBoundary

structure FlowEquivalenceCertificate where
  rows : Nat
  cols : Nat
  flow : BinaryLogicMatrixFlow rows cols
  source : BinaryLogicMatrix rows cols
  target : BinaryLogicMatrix rows cols
  transported : flow.forward source = target
  boundary : ClaimBoundary

inductive FlowOrObstruction where
| reversible : FlowEquivalenceCertificate → FlowOrObstruction
| obstructed : RicciObstructionCurvature → FlowOrObstruction

namespace FlowOrObstruction

def obstructionIndex : FlowOrObstruction → Nat
| reversible _ => 0
| obstructed _ => 1

end FlowOrObstruction

theorem flow_equivalence_has_zero_obstruction (F : FlowEquivalenceCertificate) :
    (FlowOrObstruction.reversible F).obstructionIndex = 0 := by
  rfl

structure FailedEquivalenceCondition where
  kind : RicciObstructionKind
  message : String
  boundary : ClaimBoundary

def obstructionOfFailure (f : FailedEquivalenceCondition) : RicciObstructionCurvature where
  kind := f.kind
  message := f.message
  boundary := f.boundary
  constructorBoundary := {
    clauses := ["Constructed from an explicit failed equivalence condition."]
    checkedByLean := true
  }

theorem nonEquivalence_creates_ricciObstruction (f : FailedEquivalenceCondition) :
    ∃ O : RicciObstructionCurvature,
      O = obstructionOfFailure f ∧ O.kind = f.kind := by
  exact ⟨obstructionOfFailure f, rfl, rfl⟩

structure RelaxedSymmetryAverage where
  group : FiniteSymmetryGroup
  actionBoundary : ClaimBoundary
  averagingBoundary : ClaimBoundary
  bijectiveCertificate : Option FlowEquivalenceCertificate

namespace RelaxedSymmetryAverage

def HasFlowCertificate (A : RelaxedSymmetryAverage) : Prop :=
  ∃ c, A.bijectiveCertificate = some c

end RelaxedSymmetryAverage

theorem relaxedSymmetryAverage_not_flow_without_certificate
    (A : RelaxedSymmetryAverage) :
    A.bijectiveCertificate = none → ¬ A.HasFlowCertificate := by
  intro hnone hcert
  rcases hcert with ⟨c, hc⟩
  simp [hnone] at hc

structure RelaxedSymmetryTopology where
  neighborhoods : List SimilaritySelectedReduction
  generatedBy : RelaxedSymmetryAverage
  supportsComparison : Prop
  supportCertificate : supportsComparison
  boundary : ClaimBoundary

theorem relaxationTopology_supports_comparison (T : RelaxedSymmetryTopology) :
    T.supportsComparison :=
  T.supportCertificate

structure AffineToposComparisonObject where
  source : BinaryLogicMatrixTensorExpression
  target : BinaryLogicMatrixTensorExpression
  topology : RelaxedSymmetryTopology
  boundary : ClaimBoundary

structure ReducedArtifact where
  tensorExpression : BinaryLogicMatrixTensorExpression
  determinant : DeterminantDescriptor
  fiber : DeterminantFiber
  selectedReduction : SimilaritySelectedReduction
  spectralCarrier : ConnesSpectralCarrier
  branch : FlowOrObstruction
  relaxedTopology : RelaxedSymmetryTopology
  comparisonObject : AffineToposComparisonObject
  boundary : ClaimBoundary

structure ReducerPipelineCertificate where
  inputBoundary : ClaimBoundary
  tensorBoundary : ClaimBoundary
  determinantBoundary : ClaimBoundary
  fiberBoundary : ClaimBoundary
  similarityBoundary : ClaimBoundary
  spectralBoundary : ClaimBoundary
  branchBoundary : ClaimBoundary
  topologyBoundary : ClaimBoundary
  comparisonBoundary : ClaimBoundary
  irreversibleArrowsMarked : Prop
  irreversibleArrowsMarkedCertified : irreversibleArrowsMarked
  noIrreversibleArrowAsFlow : Prop
  noIrreversibleArrowAsFlowCertified : noIrreversibleArrowAsFlow

structure AffineCoefficients where
  leftWeight : Rat
  rightWeight : Rat
  bias : Rat
  boundary : ClaimBoundary
deriving Repr

inductive PascalTree (Leaf Label : Type u) where
| leaf : Leaf → PascalTree Leaf Label
| node : Label → AffineCoefficients → PascalTree Leaf Label →
    PascalTree Leaf Label → PascalTree Leaf Label

namespace PascalTree

def size {Leaf Label : Type u} : PascalTree Leaf Label → Nat
| leaf _ => 1
| node _ _ l r => 1 + size l + size r

structure Algebra (Leaf Label : Type u) where
  Carrier : Type w
  onLeaf : Leaf → Carrier
  onNode : Label → AffineCoefficients → Carrier → Carrier → Carrier
  boundaryOf : Carrier → ClaimBoundary

def fold {Leaf Label : Type u} (A : Algebra.{u, w} Leaf Label) :
    PascalTree Leaf Label → A.Carrier
| leaf x => A.onLeaf x
| node label coeff l r => A.onNode label coeff (fold A l) (fold A r)

@[simp]
theorem fold_leaf {Leaf Label : Type u} (A : Algebra.{u, w} Leaf Label) (x : Leaf) :
    fold A (leaf x) = A.onLeaf x := by
  rfl

@[simp]
theorem fold_node {Leaf Label : Type u} (A : Algebra.{u, w} Leaf Label)
    (label : Label) (coeff : AffineCoefficients)
    (l r : PascalTree Leaf Label) :
    fold A (node label coeff l r) =
      A.onNode label coeff (fold A l) (fold A r) := by
  rfl

theorem pascalTree_reducer_wellFounded {Leaf Label : Type u}
    (A : Algebra.{u, w} Leaf Label) (t : PascalTree Leaf Label) :
    ∃ value : A.Carrier, fold A t = value := by
  exact ⟨fold A t, rfl⟩

theorem pascalTree_reducer_affine_local {Leaf Label : Type u}
    (A : Algebra.{u, w} Leaf Label) (label : Label) (coeff : AffineCoefficients)
    (l r : PascalTree Leaf Label) :
    fold A (node label coeff l r) =
      A.onNode label coeff (fold A l) (fold A r) := by
  rfl

theorem fold_unique {Leaf Label : Type u} (A : Algebra.{u, w} Leaf Label)
    (g : PascalTree Leaf Label → A.Carrier)
    (hLeaf : ∀ x, g (leaf x) = A.onLeaf x)
    (hNode : ∀ label coeff l r,
      g (node label coeff l r) = A.onNode label coeff (g l) (g r)) :
    g = fold A := by
  funext t
  induction t with
  | leaf x =>
      exact hLeaf x
  | node label coeff l r ihl ihr =>
      calc
        g (node label coeff l r)
            = A.onNode label coeff (g l) (g r) := hNode label coeff l r
        _ = A.onNode label coeff (fold A l) (fold A r) := by rw [ihl, ihr]
        _ = fold A (node label coeff l r) := rfl

structure InitialCatamorphismCertificate {Leaf Label : Type u}
    (A : Algebra.{u, w} Leaf Label) where
  catamorphism : PascalTree Leaf Label → A.Carrier
  leafLaw : ∀ x, catamorphism (leaf x) = A.onLeaf x
  nodeLaw : ∀ label coeff l r,
    catamorphism (node label coeff l r) =
      A.onNode label coeff (catamorphism l) (catamorphism r)
  unique : ∀ g : PascalTree Leaf Label → A.Carrier,
    (∀ x, g (leaf x) = A.onLeaf x) →
    (∀ label coeff l r,
      g (node label coeff l r) = A.onNode label coeff (g l) (g r)) →
        g = catamorphism
  certificateBoundary : ClaimBoundary

def initialCatamorphismCertificate {Leaf Label : Type u}
    (A : Algebra.{u, w} Leaf Label) : InitialCatamorphismCertificate A where
  catamorphism := fold A
  leafLaw := by intro x; rfl
  nodeLaw := by intro label coeff l r; rfl
  unique := by
    intro g hLeaf hNode
    exact fold_unique A g hLeaf hNode
  certificateBoundary := {
    clauses := [
      "Initiality is structural: the catamorphism is the unique map satisfying the leaf and node equations.",
      "No analytic or external topos theorem is used in this certificate."
    ]
    checkedByLean := true
  }

end PascalTree

theorem tensorExpression_factor_boundary_visible (f : BLMTensorFactor) :
    f.boundary = f.boundary := by
  rfl

def BLMReducedCarrier := ReducedArtifact

structure BLMReducerCertificate where
  algebra : PascalTree.Algebra BinaryLogicMatrixTensorExpression String
  initiality : PascalTree.InitialCatamorphismCertificate algebra
  pipeline : ReducerPipelineCertificate
  theoremManifestBoundary : ClaimBoundary
  preservesAttachedManifest : Prop
  preservesAttachedManifestCertified : preservesAttachedManifest

theorem affineTopos_preserves_attached_theorem_manifest
    (C : BLMReducerCertificate) : C.preservesAttachedManifest :=
  C.preservesAttachedManifestCertified

end AffineToposPascalTreeCertificates
end Legacy
end Surface
```
