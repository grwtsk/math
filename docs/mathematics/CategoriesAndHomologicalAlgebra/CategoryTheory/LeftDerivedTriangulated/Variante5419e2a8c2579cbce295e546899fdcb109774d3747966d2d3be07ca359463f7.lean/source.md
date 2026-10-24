# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerivedTriangulated.Variante5419e2a8c2579cbce295e546899fdcb109774d3747966d2d3be07ca359463f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63307eb8e941a0c7fe7d6dc45910b1f879e98e18` · SHA-256 `d70ceacc92000062bd187f74f71b6685827d2af9779fb2e8e664a1e4723d9bec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsTriangulatedOfRightExtension.Variant6606d02766c198f00b0f764d8ade757ba980364ef773445199b9405f71587df6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6606d02766c198f00b0f764d8ade757ba980364ef773445199b9405f71587df6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsTriangulatedOfRightExtension.Variant6606d02766c198f00b0f764d8ade757ba980364ef773445199b9405f71587df6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6606d02766c198f00b0f764d8ade757ba980364ef773445199b9405f71587df6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Functor/Derived/LeftDerivedTriangulated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Triangulated.Functor

/-!
# Left derived functors are triangulated

Let `F : C ⥤ D`, `L : C ⥤ H`, `F' : H ⥤ D` be functors between
pretriangulated categories. Let `α : L ⋙ F' ⟶ F` be a natural transformation.
We show that `F'` is triangulated if `F`, `L`, `F'` and `α` commute with
shifts, `F` and `L` are triangulated, and for any morphism `f` in `H`,
there exists a distinguished triangle `T` in `C` such that
`Arrow.mk (L.map T.mor₁) ≅ Arrow.mk f`, and `α.app T.obj₁`, `α.app T.obj₂`,
and `α.app T.obj₃` are isomorphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsTriangulatedOfRightExtension.Variant6606d02766c198f00b0f764d8ade757ba980364ef773445199b9405f71587df6

namespace CategoryTheory.Functor

open Limits Pretriangulated

variable {C D H : Type*} [Category* C] [Category* D] [Category* H]
  (F' : H ⥤ D) {F : C ⥤ D} {L : C ⥤ H}
  [HasShift C ℤ] [HasShift D ℤ] [HasShift H ℤ]
  [HasZeroObject C] [HasZeroObject D] [HasZeroObject H]
  [Preadditive C] [Preadditive D] [Preadditive H]
  [∀ (n : ℤ), (shiftFunctor C n).Additive]
  [∀ (n : ℤ), (shiftFunctor D n).Additive]
  [∀ (n : ℤ), (shiftFunctor H n).Additive]
  [Pretriangulated C] [Pretriangulated D] [Pretriangulated H]
  [F.CommShift ℤ] [L.CommShift ℤ] [F'.CommShift ℤ]
  [F.IsTriangulated] [L.IsTriangulated]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
public lemma isTriangulated_of_rightExtension
    (α : L ⋙ F' ⟶ F) [NatTrans.CommShift α ℤ]
    (h : ∀ ⦃X Y : H⦄ (f : X ⟶ Y), ∃ (T : Triangle C) (_ : T ∈ distTriang C)
      (_ : IsIso (α.app T.obj₁)) (_ : IsIso (α.app T.obj₂)) (_ : IsIso (α.app T.obj₃)),
      Nonempty (Arrow.mk (L.map T.mor₁) ≅ Arrow.mk f)) : F'.IsTriangulated where
  map_distinguished T hT := by
    suffices ∃ (T' : Triangle H) (_ : T ≅ T'), F'.mapTriangle.obj T' ∈ distTriang D by
      obtain ⟨T', e, hT'⟩ := this
      exact isomorphic_distinguished _ hT' _ (F'.mapTriangle.mapIso e)
    obtain ⟨T', hT', h₁, h₂, h₃, ⟨e⟩⟩ := h T.mor₁
    refine ⟨L.mapTriangle.obj T', (isoTriangleOfIso₁₂ _ _
        (L.map_distinguished T' hT') hT (Arrow.leftFunc.mapIso e)
        (Arrow.rightFunc.mapIso e) (by simp)).symm,
      isomorphic_distinguished _ (F.map_distinguished T' hT') _
        (((mapTriangleCompIso L F').symm.app T') ≪≫
          (Triangle.isoMk _ _ (asIso (α.app _)) (asIso (α.app _)) (asIso (α.app _))
            (by simp [dsimp% α.naturality]) (by simp [dsimp% α.naturality]) ?_))⟩
    simp [← dsimp% α.naturality_assoc, NatTrans.shift_app_comm]

end CategoryTheory.Functor
```
