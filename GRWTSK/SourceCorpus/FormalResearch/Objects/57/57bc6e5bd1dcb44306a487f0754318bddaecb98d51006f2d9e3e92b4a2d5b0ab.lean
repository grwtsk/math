import Think.Logic.Mathlib.Coherence

namespace Think.Logic.MathlibEcosystem

open CategoryTheory
open CategoryTheory.Limits

structure BundledKnowledgeTopos where
  Carrier : Type u
  [category : CategoryTheory.Category.{v} Carrier]
  topology : @KnowledgeTopology Carrier category
  subobjectClassifierHash : String
  omegaClosedSieveHeytingHash : String
  usesBooleanOmega : Bool
  claimBearing : Bool

def BundledKnowledgeTopos.omegaIsHeyting
    (K : BundledKnowledgeTopos) : Prop :=
  K.usesBooleanOmega = false

theorem BundledKnowledgeTopos.not_boolean_if_heyting
    (K : BundledKnowledgeTopos) :
    K.omegaIsHeyting → K.usesBooleanOmega = false :=
by
  intro h
  exact h

structure KnowledgeToposArrow
    (X Y : BundledKnowledgeTopos) where
  geometricMorphismHash : String
  inverseImageLeftExact : Prop
  sourceTopologyHash : String
  targetTopologyHash : String
  functorialityReceiptHash : String
  leftExactReceiptHash : String
  claimBearing : Bool

def KnowledgeToposArrow.inverse_image_left_exact
    {X Y : BundledKnowledgeTopos}
    (f : KnowledgeToposArrow X Y) : Prop :=
  f.inverseImageLeftExact

structure ToposCategoryBoundary
    (Obj : Type u) [CategoryTheory.Category.{v} Obj] where
  realize : Obj → BundledKnowledgeTopos.{u, v}
  realizeHom :
    {X Y : Obj} → (X ⟶ Y) → KnowledgeToposArrow (realize X) (realize Y)
  identityReceiptHash : String
  compositionReceiptHash : String
  geometricMorphismPolicyHash : String
  claimBearing : Bool

def ToposCategoryBoundary.hom_inverse_image_left_exact
    {Obj : Type u} [CategoryTheory.Category.{v} Obj]
    (B : ToposCategoryBoundary Obj)
    {X Y : Obj}
    (f : X ⟶ Y) : Prop :=
  KnowledgeToposArrow.inverse_image_left_exact (B.realizeHom f)

end Think.Logic.MathlibEcosystem
