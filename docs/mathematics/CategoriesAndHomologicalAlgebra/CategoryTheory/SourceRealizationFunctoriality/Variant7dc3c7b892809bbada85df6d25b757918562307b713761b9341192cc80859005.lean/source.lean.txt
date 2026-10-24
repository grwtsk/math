-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceRealizationHom.Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceRealizationHom.Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/SourceRealizationFunctoriality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Prismatic.Totalization

/-!
# Functorial maps between selected source realizations

`SourceRealization` is representation-dependent data.  A change of such data
must therefore carry its arithmetic map explicitly; a presentation label or a
terrain mutation does not manufacture that map.  The hom type below also
retains a presentation morphism and a cellwise arithmetic morphism.  Applying
the prismatic value is contravariant, and the identity/composition laws are
proved using the existing `prismaticReactionMap` API.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceRealizationHom.Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac

namespace DAF.Prismatic

open CategoryTheory

/--
An explicit, representation-aware change between two source realizations on
the same fabric and in the same selected arithmetic theory.
-/
structure SourceRealization.Hom
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (A B : SourceRealization F P) where
  presentationMap :
    ∀ {n : Nat} (x : F.Cell n),
      DAF.Fabric.Presentation.Hom
        (F.cellPresentation x)
        (F.cellPresentation x)
  algebraMap : A.algebra ⟶ B.algebra
  cellArithmeticMap :
    ∀ {n : Nat} (x : F.Cell n),
      A.cellCorrespondence x ⟶ B.cellCorrespondence x

namespace SourceRealization.Hom

/-- Identity change of one selected source realization. -/
def id
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (A : SourceRealization F P) :
    SourceRealization.Hom A A where
  presentationMap := fun x ↦
    DAF.Fabric.Presentation.Hom.id (F.cellPresentation x)
  algebraMap := 𝟙 A.algebra
  cellArithmeticMap := fun x ↦ 𝟙 (A.cellCorrespondence x)

/-- Composition, with `f` applied before `g`. -/
def comp
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {A B C : SourceRealization F P}
    (f : SourceRealization.Hom A B)
    (g : SourceRealization.Hom B C) :
    SourceRealization.Hom A C where
  presentationMap := fun x ↦
    (g.presentationMap x).comp (f.presentationMap x)
  algebraMap := f.algebraMap ≫ g.algebraMap
  cellArithmeticMap := fun x ↦
    f.cellArithmeticMap x ≫ g.cellArithmeticMap x

/-- Contravariant totalized map induced by the explicit source map. -/
def toPrismaticMap
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target)
    {A B : SourceRealization F P}
    (f : SourceRealization.Hom A B) :
    fabricPrismaticValue P T B.algebra ⟶
      fabricPrismaticValue P T A.algebra :=
  prismaticReactionMap P T f.algebraMap

/-- Source identity realizes as the identity prismatic map. -/
@[simp]
theorem toPrismaticMap_id
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target)
    (A : SourceRealization F P) :
    (id A).toPrismaticMap T =
      𝟙 (fabricPrismaticValue P T A.algebra) := by
  exact prismaticReactionMap_id P T A.algebra

/-- Source composition realizes in the exact reversed prismatic order. -/
theorem toPrismaticMap_comp
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target)
    {A B C : SourceRealization F P}
    (f : SourceRealization.Hom A B)
    (g : SourceRealization.Hom B C) :
    (f.comp g).toPrismaticMap T =
      g.toPrismaticMap T ≫ f.toPrismaticMap T := by
  exact prismaticReactionMap_comp P T f.algebraMap g.algebraMap

end SourceRealization.Hom

end DAF.Prismatic
