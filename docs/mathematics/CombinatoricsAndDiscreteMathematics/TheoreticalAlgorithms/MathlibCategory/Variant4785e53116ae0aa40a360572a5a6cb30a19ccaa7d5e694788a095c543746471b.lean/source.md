# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MathlibCategory.Variant4785e53116ae0aa40a360572a5a6cb30a19ccaa7d5e694788a095c543746471b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4beeb213b7dead011866f47c3b831602e330b70` · SHA-256 `4785e53116ae0aa40a360572a5a6cb30a19ccaa7d5e694788a095c543746471b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
