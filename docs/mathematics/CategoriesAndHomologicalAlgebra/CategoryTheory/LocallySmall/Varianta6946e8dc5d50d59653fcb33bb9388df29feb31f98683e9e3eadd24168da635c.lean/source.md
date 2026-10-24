# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Varianta6946e8dc5d50d59653fcb33bb9388df29feb31f98683e9e3eadd24168da635c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `598223a0a24fbd702e706bf7c8b2665ae8c5f69e` · SHA-256 `6398f1b9f21628300dd3f926998fa612c98976b8476431b1692a0309ca97b9a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variantad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.StructuredArrow.Variantad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Comma/LocallySmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic
import Mathlib.CategoryTheory.Comma.Over.Basic
import Mathlib.CategoryTheory.EssentiallySmall

/-!
# Comma categories are locally small

We introduce instances showing that the various comma categories
are locally small when the relevant categories that are
involved are locally small.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variantad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162

universe w v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

variable {A : Type u₁} {B : Type u₂} {T : Type u₃}
  [Category.{v₁} A] [Category.{v₂} B] [Category.{v₃} T]

instance Comma.locallySmall
    (L : A ⥤ T) (R : B ⥤ T) [LocallySmall.{w} A] [LocallySmall.{w} B] :
    LocallySmall.{w} (Comma L R) where
  hom_small X Y := small_of_injective.{w}
      (f := fun g ↦ (⟨g.left, g.right⟩ : _ × _))
        (fun _ _ _ ↦ by aesop)

instance StructuredArrow.locallySmall (S : T) (T : B ⥤ T)
    [LocallySmall.{w} B] :
    LocallySmall.{w} (StructuredArrow S T) :=
  Comma.locallySmall _ _

instance CostructuredArrow.locallySmall (S : A ⥤ T) (X : T)
    [LocallySmall.{w} A] :
    LocallySmall.{w} (CostructuredArrow S X) :=
  Comma.locallySmall _ _

instance Over.locallySmall (X : T) [LocallySmall.{w} T] :
    LocallySmall.{w} (Over X) :=
  CostructuredArrow.locallySmall _ _

instance Under.locallySmall (X : T) [LocallySmall.{w} T] :
    LocallySmall.{w} (Under X) :=
  StructuredArrow.locallySmall _ _

end CategoryTheory
```
