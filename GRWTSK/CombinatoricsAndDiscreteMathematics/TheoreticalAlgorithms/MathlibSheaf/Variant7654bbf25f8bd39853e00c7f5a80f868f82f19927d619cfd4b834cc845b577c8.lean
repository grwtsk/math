import Surface.Prismatic.Site.MathlibRingedPresheaf

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from `CertifiedStructureSheafOfRings` to a future
Mathlib sheaf-of-rings backend.

What is certificate-gated:
The actual Mathlib sheaf backend and the existing Surface final-theorem
construction status of the certified structure sheaf.

What is not claimed:
This file does not prove the prismatic structure sheaves are sheaves in Mathlib.
It exposes the exact obligations required to transfer the already typed Surface
certificate into such a backend.

Primary mathematical source:
Surface.Prismatic.Site and Surface.Prismatic.MathlibAdapters.
-/

/-- Exact-file adapter for a certified prismatic structure sheaf of rings. -/
structure PrismaticSiteMathlibSheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) where
  sheafAdapter : MathlibSheafOfRingsAdapter S
  ringedPresheafAdapter :
    PrismaticSiteMathlibRingedPresheafAdapter S.ringPresheaf
  sheafConditionUsesActualSections : Prop
  sheafConditionUsesActualSectionsCertified :
    sheafConditionUsesActualSections
  boundary : List String

def PrismaticSiteMathlibSheafAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S) :
    Prop :=
  A.sheafAdapter.usableForFinalTheorem ∧
    A.ringedPresheafAdapter.usableForFinalTheorem

theorem PrismaticSiteMathlibSheafAdapter.requires_Surface_sheaf_ready
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S)
    (h : A.usableForFinalTheorem) :
    S.usableForFinalTheorem :=
  A.sheafAdapter.usableForFinalTheorem_has_structureSheaf h.1

theorem PrismaticSiteMathlibSheafAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibSheafAdapter S)
    (h : A.sheafAdapter.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem := by
  intro hUse
  exact A.sheafAdapter.unavailable_not_usableForFinalTheorem h hUse.1

/--
Exact-file adapter for a pullback-certified prismatic structure sheaf of rings.

This is the preferred Mathlib-facing sheaf adapter for major proof cones: the
Surface input already records actual dependent sections and pullback-certified
overlaps.
-/
structure PrismaticSiteMathlibPullbackSheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X) where
  sheafAdapter : MathlibPullbackSheafOfRingsAdapter S
  ringedPresheafAdapter :
    PrismaticSiteMathlibRingedPresheafAdapter S.ringPresheaf
  sheafConditionUsesActualSections : Prop
  sheafConditionUsesActualSectionsCertified :
    sheafConditionUsesActualSections
  sheafConditionUsesPullbackOverlaps : Prop
  sheafConditionUsesPullbackOverlapsCertified :
    sheafConditionUsesPullbackOverlaps
  boundary : List String

def PrismaticSiteMathlibPullbackSheafAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S) :
    Prop :=
  A.sheafAdapter.usableForFinalTheorem ∧
    A.ringedPresheafAdapter.usableForFinalTheorem

theorem PrismaticSiteMathlibPullbackSheafAdapter.requires_Surface_sheaf_ready
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S)
    (h : A.usableForFinalTheorem) :
    S.usableForFinalTheorem :=
  A.sheafAdapter.usableForFinalTheorem_has_structureSheaf h.1

theorem PrismaticSiteMathlibPullbackSheafAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : PrismaticSiteMathlibPullbackSheafAdapter S)
    (h : A.sheafAdapter.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem := by
  intro hUse
  exact A.sheafAdapter.unavailable_not_usableForFinalTheorem h hUse.1

end Surface.Prismatic
