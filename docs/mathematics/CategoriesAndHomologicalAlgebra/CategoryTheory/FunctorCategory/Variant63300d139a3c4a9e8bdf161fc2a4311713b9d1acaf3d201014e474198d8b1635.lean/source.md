# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72bb317a5034656e5e6fe1714949f1e54974080f` · SHA-256 `4139d1f996c0a61388b9ea5509a2d5dc20ef557fe0b8a7a2e407fe3b900fb4ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Rigid.Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Rigid.Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Rigid/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Rigid.Basic
import Mathlib.CategoryTheory.Monoidal.FunctorCategory

/-!
# Functors from a groupoid into a right/left rigid category form a right/left rigid category.

(Using the pointwise monoidal structure on the functor category.)
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Rigid.Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f

noncomputable section

open CategoryTheory

open CategoryTheory.MonoidalCategory

namespace CategoryTheory.Monoidal

variable {C D : Type*} [Groupoid C] [Category D] [MonoidalCategory D]

instance functorHasRightDual [RightRigidCategory D] (F : C ⥤ D) : HasRightDual F where
  rightDual :=
    { obj := fun X => (F.obj X)ᘁ
      map := fun f => (F.map (inv f))ᘁ
      map_comp := fun f g => by simp [comp_rightAdjointMate] }
  exact :=
    { evaluation' :=
        { app := fun _ => ε_ _ _
          naturality := fun X Y f => by
            dsimp
            rw [Category.comp_id, Functor.map_inv, ← id_tensor_comp_tensor_id, Category.assoc,
              id_tensorHom, tensorHom_id,
              rightAdjointMate_comp_evaluation, ← MonoidalCategory.whiskerLeft_comp_assoc,
              IsIso.hom_inv_id, MonoidalCategory.whiskerLeft_id, Category.id_comp] }
      coevaluation' :=
        { app := fun _ => η_ _ _
          naturality := fun X Y f => by
            dsimp
            rw [Functor.map_inv, Category.id_comp, ← id_tensor_comp_tensor_id,
              id_tensorHom, tensorHom_id, ← Category.assoc,
              coevaluation_comp_rightAdjointMate, Category.assoc, ← comp_whiskerRight,
              IsIso.inv_hom_id, id_whiskerRight, Category.comp_id] } }

instance rightRigidFunctorCategory [RightRigidCategory D] : RightRigidCategory (C ⥤ D) where

instance functorHasLeftDual [LeftRigidCategory D] (F : C ⥤ D) : HasLeftDual F where
  leftDual :=
    { obj := fun X => ᘁ(F.obj X)
      map := fun f => ᘁ(F.map (inv f))
      map_comp := fun f g => by simp [comp_leftAdjointMate] }
  exact :=
    { evaluation' :=
        { app := fun _ => ε_ _ _
          naturality := fun X Y f => by
            dsimp
            simp [tensorHom_def, leftAdjointMate_comp_evaluation] }
      coevaluation' :=
        { app := fun _ => η_ _ _
          naturality := fun X Y f => by
            dsimp
            simp [tensorHom_def, coevaluation_comp_leftAdjointMate_assoc] } }

instance leftRigidFunctorCategory [LeftRigidCategory D] : LeftRigidCategory (C ⥤ D) where

instance rigidFunctorCategory [RigidCategory D] : RigidCategory (C ⥤ D) where

end CategoryTheory.Monoidal
```
