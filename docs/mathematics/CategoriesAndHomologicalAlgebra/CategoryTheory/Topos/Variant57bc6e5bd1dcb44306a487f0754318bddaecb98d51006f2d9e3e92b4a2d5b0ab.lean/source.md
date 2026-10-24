# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Topos.Variant57bc6e5bd1dcb44306a487f0754318bddaecb98d51006f2d9e3e92b4a2d5b0ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce20eb5cd3d72ded8d5cd34bbd13aa4de7a17fa6` · SHA-256 `57bc6e5bd1dcb44306a487f0754318bddaecb98d51006f2d9e3e92b4a2d5b0ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
