# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant42dfb94e7f8fbb156ab6c146252033ffb0d81c7d6739482c6be4e3d731407d65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17dfb700b277a92a437ad635b368562929b6b570` · SHA-256 `c7b2e8112bf6f660d8036a3b13291a4c4b56e8fb6f1e45d78ad33312aa7d9f61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoFactorisation.Variantd00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoFactorisation.Variantd00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/FunctorCategory/Shapes/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Images
public import Mathlib.CategoryTheory.Subfunctor.Image
public import Mathlib.Tactic.CategoryTheory.CategoryStar

/-!

# The category of type-valued functors has images
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoFactorisation.Variantd00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f

@[expose] public section

universe u

namespace CategoryTheory.FunctorToTypes

open Limits

variable {C : Type*} [Category* C]

/-- The image of a natural transformation between type-valued functors is a `MonoFactorisation` -/
@[simps]
def monoFactorisation {F G : C ⥤ Type u} (f : F ⟶ G) : MonoFactorisation f where
  I := (Subfunctor.range f).toFunctor
  m := (Subfunctor.range f).ι
  e := Subfunctor.toRange f

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The image of a natural transformation between type-valued functors satisfies the universal
property of images -/
noncomputable def monoFactorisationIsImage {F G : C ⥤ Type u} (f : F ⟶ G) :
    IsImage <| monoFactorisation f where
  lift H := {
    app X := ↾fun ⟨x, hx⟩ ↦ H.e.app _ hx.choose
    naturality X Y g := by
      ext
      apply injective_of_mono (H.m.app Y)
      simp
      grind }
  lift_fac H := by
    ext
    simp
    grind

instance : HasImages (C ⥤ Type*) where
  has_image f := { exists_image := ⟨ { F := _, isImage := monoFactorisationIsImage f } ⟩ }

instance : HasStrongEpiMonoFactorisations (C ⥤ Type*) where
  has_fac {F G} f := ⟨{ I := image f, m := image.ι f, e := factorThruImage f }⟩

end CategoryTheory.FunctorToTypes
```
