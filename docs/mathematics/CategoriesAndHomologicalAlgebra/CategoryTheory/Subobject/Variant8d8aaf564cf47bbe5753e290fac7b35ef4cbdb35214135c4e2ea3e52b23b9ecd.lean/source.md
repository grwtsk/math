# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant8d8aaf564cf47bbe5753e290fac7b35ef4cbdb35214135c4e2ea3e52b23b9ecd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f49b04520a77aad6268df3c60a67be71535d6fd` · SHA-256 `5353d2622774162cd2d5a41b97935077806acc4b111da0869e1be94eaffd2700`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantb24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Subobject.Variantb24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Category/Subobject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Category.Subobject

Radiation role: category-interface
BinaryMatrix spine: This module supplies categorical interfaces used by sheaf and monodromy layers around the BinaryMatrix spine.
Ontology: category.subobject
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantb24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2

namespace Folder
namespace Category

open CategoryTheory Opposite

universe u v w

structure Subobject
    {C : Type u} [Category.{v} C]
    (F : Cᵒᵖ ⥤ Type w) where
  contains : ∀ U : C, F.obj (op U) → Prop
  restrict :
    ∀ {U V : C} (f : U ⟶ V) {s : F.obj (op V)},
      contains V s →
      contains U (F.map f.op s)

end Category
end Folder
```
