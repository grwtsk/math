# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Totalization.Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7c8ddc71600ebe6c240309660e848b05eea3032` · SHA-256 `a4e32e2c6d3296032db1591cc5808414459fbee778ed32dde691e9684dc023a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TotalizationTheory.Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TotalizationTheory.Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/Totalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Prismatic.Fabric

/-!
# Explicit totalization capability

`TotalizationTheory` is a supplied functor on cosimplicial objects.  The name
`totalize` makes no derived or homotopy-correctness claim.  In particular, a
simplicial arithmetic source does not automatically satisfy prismatic
descent; such a conclusion requires `PrismaticDescentCertificate` and its
explicit hypothesis.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TotalizationTheory.Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d

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
