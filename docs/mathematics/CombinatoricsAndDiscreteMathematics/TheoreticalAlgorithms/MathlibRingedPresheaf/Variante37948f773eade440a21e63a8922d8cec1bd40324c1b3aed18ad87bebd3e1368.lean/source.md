# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MathlibRingedPresheaf.Variante37948f773eade440a21e63a8922d8cec1bd40324c1b3aed18ad87bebd3e1368

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e54a3ef13f2906e636d731d56c2f5f216acf3783` · SHA-256 `e37948f773eade440a21e63a8922d8cec1bd40324c1b3aed18ad87bebd3e1368`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Site.MathlibCategory

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from `StructurePresheafOfRingsData` to a future
Mathlib ring-valued presheaf backend.

What is certificate-gated:
The Mathlib backend and all transferred presheaf/ring laws.

What is not claimed:
This file does not construct a Mathlib presheaf, sheaf, or ringed topos. It only
records the obligations required before such a backend can enter a final proof
cone.

Primary mathematical source:
Surface.Prismatic.Site, especially `StructurePresheafOfRingsData`.
-/

/-- Exact-file adapter for a ring-valued prismatic structure presheaf. -/
structure PrismaticSiteMathlibRingedPresheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C) where
  backend : MathlibAdapterBackend
  categoryAdapter :
    PrismaticSiteMathlibCategoryAdapter P X C
  sectionRingAdapter :
    ∀ U : PrismaticSiteObject P X,
      MathlibCommRingAdapter (D.ringStructure U)
  restrictionFunctorTransferred : Prop
  restrictionFunctorTransferredCertified :
    restrictionFunctorTransferred
  restrictionRingHomTransferred : Prop
  restrictionRingHomTransferredCertified :
    restrictionRingHomTransferred
  usesActualSectionTypes : Prop
  usesActualSectionTypesCertified :
    usesActualSectionTypes
  boundary : List String

def PrismaticSiteMathlibRingedPresheafAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    (A : PrismaticSiteMathlibRingedPresheafAdapter D) :
    Prop :=
  A.backend.usableForFinalTheorem ∧
    A.categoryAdapter.usableForFinalTheorem ∧
    ∀ U : PrismaticSiteObject P X,
      (A.sectionRingAdapter U).usableForFinalTheorem

theorem PrismaticSiteMathlibRingedPresheafAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    (A : PrismaticSiteMathlibRingedPresheafAdapter D)
    (h : A.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem := by
  intro hUse
  rw [PrismaticSiteMathlibRingedPresheafAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibAdapterBackend.unavailable_not_usableForFinalTheorem hUse.1

end Surface.Prismatic
```
