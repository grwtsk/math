-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant9a27e64c17edddc6cd291da68edef0e8d61d99e0a4fc9f81117f8829382a9a7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a27e64c17edddc6cd291da68edef0e8d61d99e0a4fc9f81117f8829382a9a7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Over.Variant9a27e64c17edddc6cd291da68edef0e8d61d99e0a4fc9f81117f8829382a9a7d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9a27e64c17edddc6cd291da68edef0e8d61d99e0a4fc9f81117f8829382a9a7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/LiftingProperties/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.LiftingProperties.Basic
public import Mathlib.CategoryTheory.Comma.Over.Basic

/-!
# Lifting properties in Over categories

In this file, we show that if `sq` is a commutative square in
a category `Over S` for `S : C`, there is a lift for `sq`
if there is a lift for the underlying commutative square
in the category `C`. It follows that if `i` and `p` are
morphisms in `Over S`, then `i` has the left lifting
property with respect to `p` when `i.left` has
the left lifting property with respect to `p.left`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant9a27e64c17edddc6cd291da68edef0e8d61d99e0a4fc9f81117f8829382a9a7d

public section

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] {S : C}

namespace CommSq.HasLift

lemma over {X₁ X₂ X₃ X₄ : Over S}
    {t : X₁ ⟶ X₂} {l : X₁ ⟶ X₃} {r : X₂ ⟶ X₄} {b : X₃ ⟶ X₄} {sq : CommSq t l r b}
    [CommSq.HasLift (f := t.left) (i := l.left) (p := r.left) (g := b.left)
      (sq.map (Over.forget _))] :
    sq.HasLift := by
  let sq' := sq.map (Over.forget _)
  dsimp at sq'
  exact ⟨⟨{
    l := Over.homMk sq'.lift
      (by rw [← Over.w b, ← sq'.fac_right_assoc, Over.w r])
  }⟩⟩

end CommSq.HasLift

namespace HasLiftingProperty

lemma over {A B X Y : Over S}
    (i : A ⟶ B) (p : X ⟶ Y) [HasLiftingProperty i.left p.left] :
    HasLiftingProperty i p := ⟨fun _ ↦ .over⟩

end HasLiftingProperty

end CategoryTheory
