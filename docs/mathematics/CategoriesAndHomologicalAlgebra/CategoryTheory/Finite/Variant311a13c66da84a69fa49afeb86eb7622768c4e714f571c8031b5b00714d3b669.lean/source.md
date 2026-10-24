# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant311a13c66da84a69fa49afeb86eb7622768c4e714f571c8031b5b00714d3b669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f430073a35dbf0d17ca1553e0dd682c671a013e` · SHA-256 `fa6f4bf0c3a61ba17522a941cab485f198cb85c2228413a7325053a54046658b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Category/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2

namespace Think.Knowledge.Category

/-! Finite category and pullback skeleton for knowledge sheaf certificates. -/

structure FinCat where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (U : Obj) → Hom U U
  comp : {U V W : Obj} → Hom U V → Hom V W → Hom U W

structure Pullback
  (C : FinCat) {V U W : C.Obj}
  (f : C.Hom U V) (g : C.Hom W V) where
  apex : C.Obj
  p₁ : C.Hom apex U
  p₂ : C.Hom apex W

end Think.Knowledge.Category
```
