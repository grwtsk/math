# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0e66ffa2e01171db42502b12d2920ef79a72bf6` · SHA-256 `829019646e3816ef5c125a7e62e2912c84660c6da99e30b10abb61319608dbb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapDiagram.Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MapDiagram.Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sheaves/Functors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapDiagram.Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193

#align_import topology.sheaves.functors from "leanprover-community/mathlib"@"85d6221d32c37e68f05b2e42cde6cee658dae5e9"

/-!
# functors between categories of sheaves

Show that the pushforward of a sheaf is a sheaf, and define
the pushforward functor from the category of C-valued sheaves
on X to that of sheaves on Y, given a continuous map between
topological spaces X and Y.

TODO: pullback for presheaves and sheaves
-/


noncomputable section

universe w v u

open CategoryTheory

open CategoryTheory.Limits

open TopologicalSpace

variable {C : Type u} [Category.{v} C]

variable {X Y : TopCat.{w}} (f : X ⟶ Y)

variable ⦃ι : Type w⦄ {U : ι → Opens Y}

namespace TopCat

namespace Presheaf.SheafConditionPairwiseIntersections

theorem map_diagram :
    Pairwise.diagram U ⋙ Opens.map f = Pairwise.diagram ((Opens.map f).obj ∘ U) := by
  have obj_eq : ∀ (j : Pairwise ι), (Pairwise.diagram U ⋙ Opens.map f).obj j =
    (Pairwise.diagram ((Opens.map f).toPrefunctor.obj ∘ U)).obj j
  · rintro ⟨i⟩ <;> rfl
  refine Functor.hext obj_eq ?_
  intro i j g; apply Subsingleton.helim
  rw [obj_eq, obj_eq]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.map_diagram TopCat.Presheaf.SheafConditionPairwiseIntersections.map_diagram

theorem mapCocone :
    HEq ((Opens.map f).mapCocone (Pairwise.cocone U))
      (Pairwise.cocone ((Opens.map f).obj ∘ U)) := by
  unfold Functor.mapCocone Cocones.functoriality; dsimp; congr
  iterate 2 rw [map_diagram]; rw [Opens.map_iSup]
  apply Subsingleton.helim; rw [map_diagram, Opens.map_iSup]
  apply proof_irrel_heq
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.map_cocone TopCat.Presheaf.SheafConditionPairwiseIntersections.mapCocone

theorem pushforward_sheaf_of_sheaf {F : Presheaf C X} (h : F.IsSheafPairwiseIntersections) :
    (f _* F).IsSheafPairwiseIntersections := fun ι U => by
  convert h ((Opens.map f).obj ∘ U) using 2
  rw [← map_diagram]; rfl
  change HEq (Functor.mapCone F ((Opens.map f).mapCocone (Pairwise.cocone U)).op) _
  congr
  iterate 2 rw [map_diagram]
  apply mapCocone
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.pushforward_sheaf_of_sheaf TopCat.Presheaf.SheafConditionPairwiseIntersections.pushforward_sheaf_of_sheaf

end Presheaf.SheafConditionPairwiseIntersections

namespace Sheaf

open Presheaf

/-- The pushforward of a sheaf (by a continuous map) is a sheaf.
-/
theorem pushforward_sheaf_of_sheaf {F : X.Presheaf C} (h : F.IsSheaf) : (f _* F).IsSheaf := by
  rw [isSheaf_iff_isSheafPairwiseIntersections] at h ⊢
  exact SheafConditionPairwiseIntersections.pushforward_sheaf_of_sheaf f h
set_option linter.uppercaseLean3 false in
#align Top.sheaf.pushforward_sheaf_of_sheaf TopCat.Sheaf.pushforward_sheaf_of_sheaf

/-- The pushforward functor.
-/
def pushforward (f : X ⟶ Y) : X.Sheaf C ⥤ Y.Sheaf C where
  obj ℱ := ⟨f _* ℱ.1, pushforward_sheaf_of_sheaf f ℱ.2⟩
  map {_ _} g := ⟨pushforwardMap f g.1⟩
set_option linter.uppercaseLean3 false in
#align Top.sheaf.pushforward TopCat.Sheaf.pushforward

end Sheaf

end TopCat
```
