# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BousfieldTransfiniteComposition.Variante1399075964e0a75289fd3c7f2d748a15ca6c28c90c8bff802e14fb5235bc7e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f34a915f9d8f1d6df2584919e1c931715ee57b` · SHA-256 `a61c1ee44d1e65bc2b6eda640438792b17fb70725434863a18b7e5424ae1a3bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bousfield.Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Bousfield.Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Localization/BousfieldTransfiniteComposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Localization.Bousfield
public import Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition
public import Mathlib.CategoryTheory.SmallObject.WellOrderInductionData

/-!
# ObjectProperty.isLocal is stable under transfinite compositions

If `P : ObjectProperty C`, then `P.isLocal : MorphismProperty C`
is stable under transfinite compositions.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bousfield.Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc

public section

universe w v u

namespace CategoryTheory

open Limits Opposite

variable {C : Type u} [Category.{v} C]

namespace ObjectProperty

variable (P : ObjectProperty C)

set_option backward.defeqAttrib.useBackward true in
instance (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J] :
    P.isLocal.IsStableUnderTransfiniteCompositionOfShape J where
  le := fun X Y f ⟨hf⟩ Z hZ ↦ by
    refine ⟨fun g₁ g₂ h ↦ hf.isColimit.hom_ext (fun j ↦ ?_), fun g ↦ ?_⟩
    · dsimp at h ⊢
      induction j using SuccOrder.limitRecOn with
      | isMin j hj =>
        obtain rfl := hj.eq_bot
        simpa [← cancel_epi hf.isoBot.inv]
      | succ j hj hj' => exact (hf.map_mem j hj _ hZ).1 (by simpa)
      | isSuccLimit j hj hj' =>
        exact (hf.F.isColimitOfIsWellOrderContinuous j hj).hom_ext
          (fun ⟨k, hk⟩ ↦ by simpa using! hj' _ hk)
    · let d : (hf.F.op ⋙ yoneda.obj Z).WellOrderInductionData :=
        .ofExists (fun j hj ↦ (hf.map_mem j hj _ hZ).2) (fun j hj s ↦ by
          let c : Cocone ((Set.principalSegIio j).monotone.functor ⋙ hf.F) :=
            { pt := Z
              ι.app k := s.1 (op k)
              ι.naturality _ _ g := by
                dsimp
                simpa only [Category.comp_id] using! s.2 g.op }
          exact ⟨(hf.F.isColimitOfIsWellOrderContinuous j hj).desc c, fun k hk ↦
            by simpa using! (hf.F.isColimitOfIsWellOrderContinuous j hj).fac c ⟨k, hk⟩⟩)
      let σ := d.sectionsMk (hf.isoBot.hom ≫ g)
      let c : Cocone hf.F :=
        { pt := Z
          ι.app j := σ.1 (op j)
          ι.naturality _ _ f := by
            dsimp
            simpa only [Category.comp_id] using! σ.2 f.op }
      exact ⟨hf.isColimit.desc c, by
        simp only [← hf.fac, Category.assoc, hf.isColimit.fac c ⊥, c, σ,
          d.sectionsMk_val_op_bot, Iso.inv_hom_id_assoc]⟩

instance : MorphismProperty.IsStableUnderTransfiniteComposition.{w} P.isLocal where

end ObjectProperty

end CategoryTheory
```
