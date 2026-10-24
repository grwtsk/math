# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea37ed2fdf360580c24b5cf93e17d06ae405fa67` · SHA-256 `dd30d7cdf6ff8c89ed3333d1e67452d93a43e7e1291b65ff93f64b9ac77993b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppHom.Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AppHom.Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.CategoryTheory.Preadditive.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Preadditive structure on functor categories

If `C` and `D` are categories and `D` is preadditive,
then `C ⥤ D` is also preadditive.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppHom.Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354

namespace CategoryTheory

open CategoryTheory.Limits Preadditive

variable {C D : Type*} [Category C] [Category D] [Preadditive D]

instance {F G : C ⥤ D} : Zero (F ⟶ G) where
  zero := { app := fun _ => 0 }

instance {F G : C ⥤ D} : Add (F ⟶ G) where
  add α β := { app := fun X => α.app X + β.app X }

instance {F G : C ⥤ D} : Neg (F ⟶ G) where
  neg α := { app := fun X => -α.app X }

instance functorCategoryPreadditive : Preadditive (C ⥤ D) where
  homGroup F G :=
    { nsmul := nsmulRec
      zsmul := zsmulRec
      sub := fun α β => { app := fun X => α.app X - β.app X }
      add_assoc := by
        intros
        ext
        apply add_assoc
      zero_add := by
        intros
        ext
        apply zero_add
      add_zero := by
        intros
        ext
        apply add_zero
      add_comm := by
        intros
        ext
        apply add_comm
      sub_eq_add_neg := by
        intros
        ext
        apply sub_eq_add_neg
      neg_add_cancel := by
        intros
        ext
        apply neg_add_cancel }
  add_comp := by
    intros
    dsimp
    ext
    apply add_comp
  comp_add := by
    intros
    dsimp
    ext
    apply comp_add

namespace NatTrans

variable {F G : C ⥤ D}

/-- Application of a natural transformation at a fixed object,
as group homomorphism -/
@[simps]
def appHom (X : C) : (F ⟶ G) →+ (F.obj X ⟶ G.obj X) where
  toFun α := α.app X
  map_zero' := rfl
  map_add' _ _ := rfl

@[simp]
theorem app_zero (X : C) : (0 : F ⟶ G).app X = 0 :=
  rfl

@[simp]
theorem app_add (X : C) (α β : F ⟶ G) : (α + β).app X = α.app X + β.app X :=
  rfl

@[simp]
theorem app_sub (X : C) (α β : F ⟶ G) : (α - β).app X = α.app X - β.app X :=
  rfl

@[simp]
theorem app_neg (X : C) (α : F ⟶ G) : (-α).app X = -α.app X :=
  rfl

@[simp]
theorem app_nsmul (X : C) (α : F ⟶ G) (n : ℕ) : (n • α).app X = n • α.app X :=
  (appHom X).map_nsmul α n

@[simp]
theorem app_zsmul (X : C) (α : F ⟶ G) (n : ℤ) : (n • α).app X = n • α.app X :=
  (appHom X : (F ⟶ G) →+ (F.obj X ⟶ G.obj X)).map_zsmul α n

@[simp]
theorem app_units_zsmul (X : C) (α : F ⟶ G) (n : ℤˣ) : (n • α).app X = n • α.app X := by
  apply app_zsmul

@[simp]
theorem app_sum {ι : Type*} (s : Finset ι) (X : C) (α : ι → (F ⟶ G)) :
    (∑ i ∈ s, α i).app X = ∑ i ∈ s, (α i).app X := by
  simp only [← appHom_apply, map_sum]

end NatTrans

end CategoryTheory
```
