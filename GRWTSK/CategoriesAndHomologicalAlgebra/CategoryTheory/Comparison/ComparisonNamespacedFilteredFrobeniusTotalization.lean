-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredFrobeniusTotalization.Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FilteredFrobeniusTotalization.Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Prismatic.FilteredFrobenius
import DAF.Prismatic.Totalization

/-!
# Certified preservation through totalization

Frobenius and Nygaard compatibility do not follow from an arbitrary
totalization functor.  `FilteredFrobeniusTotalization` is the explicit
capability that promotes the cellwise equations to the totalized comparison.
This keeps arithmetic structure independent from runtime counters and fabric
metadata.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredFrobeniusTotalization.Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4

namespace DAF.Prismatic

open CategoryTheory

/--
Properties of a totalized comparison supplied by a selected arithmetic
implementation.  They are abstract because the generic target need not carry
canonical Frobenius or filtration objects.
-/
structure FilteredFrobeniusTotalization
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target) where
  FrobeniusCompatible :
    ∀ {A B : SourceRealization F P},
      FilteredFrobeniusComparison A B →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  NygaardCompatible :
    ∀ {A B : SourceRealization F P},
      Int →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  frobenius_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      FrobeniusCompatible C
        (prismaticReactionMap P T C.algebraMap)

  nygaard_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      NygaardCompatible C.filtrationShift
        (prismaticReactionMap P T C.algebraMap)

theorem totalized_frobenius_compatible
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : FilteredFrobeniusTotalization (F := F) T)
    {A B : SourceRealization F P}
    (C : FilteredFrobeniusComparison A B) :
    Q.FrobeniusCompatible C
      (prismaticReactionMap P T C.algebraMap) :=
  Q.frobenius_compatible C

theorem totalized_nygaard_compatible
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : FilteredFrobeniusTotalization (F := F) T)
    {A B : SourceRealization F P}
    (C : FilteredFrobeniusComparison A B) :
    Q.NygaardCompatible C.filtrationShift
      (prismaticReactionMap P T C.algebraMap) :=
  Q.nygaard_compatible C

end DAF.Prismatic
