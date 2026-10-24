# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsomorphismClasses.Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45bfa6d6adcf7ea0289c020874083ed3e0b08a67` · SHA-256 `935650202c022054e56747f0f75abfa5865fb146e2066a3a0153746d9544825e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIsomorphic.Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsIsomorphic.Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/IsomorphismClasses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.Types

/-!
# Objects of a category up to an isomorphism

`IsIsomorphic X Y := Nonempty (X ≅ Y)` is an equivalence relation on the objects of a category.
The quotient with respect to this relation defines a functor from our category to `Type`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIsomorphic.Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec

universe v u

namespace CategoryTheory

section Category

variable {C : Type u} [Category.{v} C]

/-- An object `X` is isomorphic to an object `Y`, if `X ≅ Y` is not empty. -/
def IsIsomorphic : C → C → Prop := fun X Y => Nonempty (X ≅ Y)

variable (C)

/-- `IsIsomorphic` defines a setoid. -/
def isIsomorphicSetoid : Setoid C where
  r := IsIsomorphic
  iseqv := ⟨fun X => ⟨Iso.refl X⟩, fun ⟨α⟩ => ⟨α.symm⟩, fun ⟨α⟩ ⟨β⟩ => ⟨α.trans β⟩⟩

end Category

/-- The functor that sends each category to the quotient space of its objects up to an isomorphism.
-/
def isomorphismClasses : Cat.{v, u} ⥤ Type u where
  obj C := Quotient (isIsomorphicSetoid C.α)
  map {_ _} F := Quot.map F.obj fun _ _ ⟨f⟩ => ⟨F.mapIso f⟩
  map_id {C} := by  -- Porting note: this used to be `tidy`
    dsimp; apply funext; intro x
    apply @Quot.recOn _ _ _ x
    · intro _ _ p
      simp only [types_id_apply]
    · intro _
      rfl
  map_comp {C D E} f g := by -- Porting note(s): idem
    dsimp; apply funext; intro x
    apply @Quot.recOn _ _ _ x
    · intro _ _ _
      simp only [types_id_apply]
    · intro _
      rfl

theorem Groupoid.isIsomorphic_iff_nonempty_hom {C : Type u} [Groupoid.{v} C] {X Y : C} :
    IsIsomorphic X Y ↔ Nonempty (X ⟶ Y) :=
  (Groupoid.isoEquivHom X Y).nonempty_congr

end CategoryTheory
```
