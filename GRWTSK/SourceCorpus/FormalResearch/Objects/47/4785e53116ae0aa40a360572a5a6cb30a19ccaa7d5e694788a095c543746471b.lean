import Surface.Prismatic.MathlibAdapters

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from the typed prismatic-site morphism category
data to a future Mathlib category backend.

What is certificate-gated:
The actual Mathlib category instance is gated by `MathlibAdapterBackend`.

What is not claimed:
This file does not import Mathlib, construct a category instance, or prove
Bhatt--Scholze prismatic site theorems.

Primary mathematical source:
Surface.Prismatic.Site and the prismatic-site category interface.
-/

/-- Exact-file adapter for the prismatic-site category backend. -/
structure PrismaticSiteMathlibCategoryAdapter
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  adapter : MathlibCategoryAdapter P X C
  categoryLawsCertified :
    adapter.categoryLaws
  boundary : List String

def PrismaticSiteMathlibCategoryAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (A : PrismaticSiteMathlibCategoryAdapter P X C) :
    Prop :=
  A.adapter.usableForFinalTheorem

theorem PrismaticSiteMathlibCategoryAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (A : PrismaticSiteMathlibCategoryAdapter P X C)
    (h : A.adapter.backend = MathlibAdapterBackend.unavailable) :
    ¬ A.usableForFinalTheorem :=
  A.adapter.unavailable_not_usableForFinalTheorem h

end Surface.Prismatic
