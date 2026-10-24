# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Totalization.Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d65f24f03f7615de32d016b8623e021accc92ea3` · SHA-256 `614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Prismatic.Fabric

/-!
# Explicit totalization capability

`TotalizationTheory` is a supplied functor on cosimplicial objects.  The name
`totalize` makes no derived or homotopy-correctness claim.  In particular, a
simplicial arithmetic source does not automatically satisfy prismatic
descent; such a conclusion requires `PrismaticDescentCertificate` and its
explicit hypothesis.
-/

namespace DAF.Prismatic

open CategoryTheory

universe u v

/-- A selected totalization functor, without an implicit derived claim. -/
structure TotalizationTheory
    (C : Type u)
    [Category.{v} C] where
  totalize : CosimplicialObject C ⥤ C

/-- The totalized prismatic value of a simplicial arithmetic source. -/
def fabricPrismaticValue
    (P : Theory)
    (T : TotalizationTheory P.Target)
    (X : SimplicialObject P.DerivedAlg) :
    P.Target :=
  T.totalize.obj (P.cosimplicialValue X)

/--
Contravariant comparison induced by a simplicial source map.  The reversal is
visible in the result type.
-/
def prismaticReactionMap
    (P : Theory)
    (T : TotalizationTheory P.Target)
    {X Y : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y) :
    fabricPrismaticValue P T Y ⟶
      fabricPrismaticValue P T X :=
  T.totalize.map (P.cosimplicialValueMap f)

@[simp]
theorem prismaticReactionMap_id
    (P : Theory)
    (T : TotalizationTheory P.Target)
    (X : SimplicialObject P.DerivedAlg) :
    prismaticReactionMap P T (𝟙 X) =
      𝟙 (fabricPrismaticValue P T X) := by
  simp [prismaticReactionMap, fabricPrismaticValue]

theorem prismaticReactionMap_comp
    (P : Theory)
    (T : TotalizationTheory P.Target)
    {X Y Z : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y)
    (g : Y ⟶ Z) :
    prismaticReactionMap P T (f ≫ g) =
      prismaticReactionMap P T g ≫
        prismaticReactionMap P T f := by
  simp [prismaticReactionMap, fabricPrismaticValue,
    P.cosimplicialValueMap_comp f g]

/--
A conditional descent comparison.  Merely constructing `comparison` does not
make it invertible; `comparison_isIso` consumes the separately supplied
descent hypothesis.
-/
structure PrismaticDescentCertificate
    (P : Theory)
    (T : TotalizationTheory P.Target)
    (X : SimplicialObject P.DerivedAlg)
    (geometricValue : P.Target) where
  Hypothesis : Prop
  comparison : fabricPrismaticValue P T X ⟶ geometricValue
  comparison_isIso : Hypothesis → IsIso comparison

end DAF.Prismatic
```
