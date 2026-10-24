# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Product.Variant8228a1b4af5767981243cf59729b28384235be3defab26fc724494a22209b038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d77fd7123607cdd06aa34c46140f399f63561e8` · SHA-256 `6baf6f9fc8af6944784111c16987e303896b1b93a909001dd766d4565e1626ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProduct.Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BinaryProduct.Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Category/Product.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Category.Product

Radiation role: category-interface
BinaryMatrix spine: This module supplies categorical interfaces used by sheaf and monodromy layers around the BinaryMatrix spine.
Ontology: category.product
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProduct.Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e

namespace Folder
namespace Category

open CategoryTheory

universe u v

structure BinaryProduct
    (C : Type u) [CategoryTheory.Category.{v} C]
    (A B : C) where
  obj : C
  fst : obj ⟶ A
  snd : obj ⟶ B
  lift : {X : C} → (X ⟶ A) → (X ⟶ B) → (X ⟶ obj)
  lift_fst : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ fst = f
  lift_snd : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ snd = g
  lift_unique :
    {X : C} → (h : X ⟶ obj) → (f : X ⟶ A) → (g : X ⟶ B) →
      h ≫ fst = f →
      h ≫ snd = g →
      h = lift f g

class HasChosenBinaryProducts
    (C : Type u) [CategoryTheory.Category.{v} C] where
  product : ∀ A B : C, BinaryProduct C A B

end Category
end Folder
```
