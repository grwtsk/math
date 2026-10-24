# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03dd50dc946ccd79b85c3f7306dba3c1f9ec4358` · SHA-256 `4b58673eabbeaff598864860c4d18ddf8bae1563b1ff10e1a503d2160d4f4f10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialCategory.Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SimplicialCategory.Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialCategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Monoidal
import Mathlib.CategoryTheory.Enriched.Ordinary.Basic

/-!
# Simplicial categories

A simplicial category is a category `C` that is enriched over the
category of simplicial sets in such a way that morphisms in
`C` identify to the `0`-simplices of the enriched hom.

## TODO

* construct a simplicial category structure on simplicial objects, so
  that it applies in particular to simplicial sets
* obtain the adjunction property `(K ⊗ X ⟶ Y) ≃ (K ⟶ sHom X Y)` when `K`, `X`, and `Y`
  are simplicial sets
* develop the notion of "simplicial tensor" `K ⊗ₛ X : C` with `K : SSet` and `X : C`
  an object in a simplicial category `C`
* define the notion of path between `0`-simplices of simplicial sets
* deduce the notion of homotopy between morphisms in a simplicial category
* obtain that homotopies in simplicial categories can be interpreted as given
  by morphisms `Δ[1] ⊗ X ⟶ Y`.

## References
* [Daniel G. Quillen, *Homotopical algebra*, II §1][quillen-1967]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialCategory.Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691

universe v u

open CategoryTheory Category Simplicial MonoidalCategory

namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

/-- A simplicial category is a category `C` that is enriched over the
category of simplicial sets in such a way that morphisms in
`C` identify to the `0`-simplices of the enriched hom. -/
abbrev SimplicialCategory := EnrichedOrdinaryCategory SSet.{v} C

namespace SimplicialCategory

variable [SimplicialCategory C]

variable {C}

/-- Abbreviation for the enriched hom of a simplicial category. -/
abbrev sHom (K L : C) : SSet.{v} := K ⟶[SSet] L

/-- Abbreviation for the enriched composition in a simplicial category. -/
abbrev sHomComp (K L M : C) : sHom K L ⊗ sHom L M ⟶ sHom K M := eComp SSet K L M

/-- The bijection `(K ⟶ L) ≃ sHom K L _⦋0⦌` for all objects `K` and `L`
in a simplicial category. -/
def homEquiv' (K L : C) : (K ⟶ L) ≃ sHom K L _⦋0⦌ :=
  (eHomEquiv SSet).trans (sHom K L).unitHomEquiv

variable (C) in
/-- The bifunctor `Cᵒᵖ ⥤ C ⥤ SSet.{v}` which sends `K : Cᵒᵖ` and `L : C` to `sHom K.unop L`. -/
noncomputable abbrev sHomFunctor : Cᵒᵖ ⥤ C ⥤ SSet.{v} := eHomFunctor _ _

end SimplicialCategory

end CategoryTheory
```
