# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Varianta6e4907a4e70eda6a47a4d17a595d8c47b000252d1722f101ef202324aeb09ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c07081e573aab22a3761e1bd7fb93e3611a62440` · SHA-256 `bf32d490f0c25bbb55e67ca0815735e951bbeb39bd1906225813c5bed2a63443`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant90bdf2fa86ca83f3e0ff28bc84501264669dfb14c5919cc976084cb18867c719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90bdf2fa86ca83f3e0ff28bc84501264669dfb14c5919cc976084cb18867c719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Transport.Variant90bdf2fa86ca83f3e0ff28bc84501264669dfb14c5919cc976084cb18867c719","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"90bdf2fa86ca83f3e0ff28bc84501264669dfb14c5919cc976084cb18867c719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/LeftResolution/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.LeftResolution.Basic

/-!
# Transport left resolutions along equivalences

If `ι : C ⥤ A` is equipped with `Λ : LeftResolution ι` and
`ι' : C' ⥤ A'` is a functor which corresponds to `ι` via
equivalences of categories `A' ≌ A` and `C' ≌ C`, we
define `Λ.transport .. : LeftResolution ι'`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant90bdf2fa86ca83f3e0ff28bc84501264669dfb14c5919cc976084cb18867c719

@[expose] public section

namespace CategoryTheory.Abelian

variable {A C : Type*} [Category* C] [Category* A]
  {A' C' : Type*} [Category* C'] [Category* A']

namespace LeftResolution

open CategoryTheory.Functor

set_option backward.defeqAttrib.useBackward true in
/-- Transport `LeftResolution` via equivalences of categories. -/
def transport {ι : C ⥤ A} (Λ : LeftResolution ι) {ι' : C' ⥤ A'}
    (eA : A' ≌ A) (eC : C' ≌ C) (e : ι' ⋙ eA.functor ≅ eC.functor ⋙ ι) :
    LeftResolution ι' where
  F := eA.functor ⋙ Λ.F ⋙ eC.inverse
  π := (rightUnitor _).inv ≫ whiskerLeft _ eA.unitIso.hom ≫
      (associator _ _ _).hom ≫ whiskerLeft _ (associator _ _ _).inv ≫
      whiskerLeft _ (whiskerRight e.hom _) ≫ (associator _ _ _).inv ≫
      whiskerRight (associator _ _ _).inv _ ≫
      whiskerRight (whiskerRight (associator _ _ _).hom _) _ ≫
      whiskerRight (whiskerRight (whiskerLeft _ ((associator _ _ _).hom ≫
      whiskerLeft Λ.F eC.counitIso.hom ≫ Λ.F.rightUnitor.hom)) _) _ ≫
        (whiskerRight ((associator _ _ _).hom ≫ whiskerLeft _ Λ.π ≫
          (rightUnitor _).hom) _) ≫ eA.unitIso.inv
  epi_π_app _ := by dsimp; infer_instance

/-- If we have an isomorphism `e : G ⋙ ι' ≅ ι`, then any `Λ : LeftResolution ι`
induces `Λ.ofCompIso e : LeftResolution ι'`. -/
def ofCompIso {ι : C ⥤ A} (Λ : LeftResolution ι) {ι' : C' ⥤ A} {G : C ⥤ C'}
    (e : G ⋙ ι' ≅ ι) :
    LeftResolution ι' where
  F := Λ.F ⋙ G
  π := (associator _ _ _).hom ≫ whiskerLeft _ e.hom ≫ Λ.π
  epi_π_app _ := by dsimp; infer_instance

end LeftResolution

end CategoryTheory.Abelian
```
