# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c254c82725e045c7a53f5eb923eac1a85dc5b67` · SHA-256 `cb6b769c08c996da9947c5222e2d0da83add67d5b054b245d01a289282df5897`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BifunctorCompObj.Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BifunctorCompObj.Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/Trifunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Functor.Category
/-!
# Trifunctors obtained by composition of bifunctors

Given two bifunctors `F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂` and `G : C₁₂ ⥤ C₃ ⥤ C₄`, we define
the trifunctor `bifunctorComp₁₂ F₁₂ G : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which sends three
objects `X₁ : C₁`, `X₂ : C₂` and `X₃ : C₃` to `G.obj ((F₁₂.obj X₁).obj X₂)).obj X₃`.

Similarly, given two bifunctors `F : C₁ ⥤ C₂₃ ⥤ C₄` and `G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃`, we define
the trifunctor `bifunctorComp₂₃ F G₂₃ : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which sends three
objects `X₁ : C₁`, `X₂ : C₂` and `X₃ : C₃` to `(F.obj X₁).obj ((G₂₃.obj X₂).obj X₃)`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BifunctorCompObj.Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5

namespace CategoryTheory

variable {C₁ C₂ C₃ C₄ C₁₂ C₂₃ : Type*} [Category C₁] [Category C₂] [Category C₃]
  [Category C₄] [Category C₁₂] [Category C₂₃]

section bifunctorComp₁₂Functor

/-- Auxiliary definition for `bifunctorComp₁₂`. -/
@[simps]
def bifunctorComp₁₂Obj (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) (G : C₁₂ ⥤ C₃ ⥤ C₄) (X₁ : C₁) :
    C₂ ⥤ C₃ ⥤ C₄ where
  obj X₂ :=
    { obj := fun X₃ => (G.obj ((F₁₂.obj X₁).obj X₂)).obj X₃
      map := fun {_ _} φ => (G.obj ((F₁₂.obj X₁).obj X₂)).map φ }
  map {X₂ Y₂} φ :=
    { app := fun X₃ => (G.map ((F₁₂.obj X₁).map φ)).app X₃ }

/-- Given two bifunctors `F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂` and `G : C₁₂ ⥤ C₃ ⥤ C₄`, this is
the trifunctor `C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` obtained by composition. -/
@[simps]
def bifunctorComp₁₂ (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) (G : C₁₂ ⥤ C₃ ⥤ C₄) :
    C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj X₁ := bifunctorComp₁₂Obj F₁₂ G X₁
  map {X₁ Y₁} φ :=
    { app := fun X₂ =>
        { app := fun X₃ => (G.map ((F₁₂.map φ).app X₂)).app X₃ }
      naturality := fun {X₂ Y₂} ψ => by
        ext X₃
        dsimp
        simp only [← NatTrans.comp_app, ← G.map_comp, NatTrans.naturality] }

/-- Auxiliary definition for `bifunctorComp₁₂Functor`. -/
@[simps]
def bifunctorComp₁₂FunctorObj (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) :
    (C₁₂ ⥤ C₃ ⥤ C₄) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj G := bifunctorComp₁₂ F₁₂ G
  map {G G'} φ :=
    { app X₁ :=
        { app X₂ :=
            { app X₃ := (φ.app ((F₁₂.obj X₁).obj X₂)).app X₃ }
          naturality := fun X₂ Y₂ f ↦ by
            ext X₃
            dsimp
            simp only [← NatTrans.comp_app, NatTrans.naturality] }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality] }

/-- Auxiliary definition for `bifunctorComp₁₂Functor`. -/
@[simps]
def bifunctorComp₁₂FunctorMap {F₁₂ F₁₂' : C₁ ⥤ C₂ ⥤ C₁₂} (φ : F₁₂ ⟶ F₁₂') :
    bifunctorComp₁₂FunctorObj (C₃ := C₃) (C₄ := C₄) F₁₂ ⟶ bifunctorComp₁₂FunctorObj F₁₂' where
  app G :=
    { app X₁ :=
        { app X₂ := { app X₃ := (G.map ((φ.app X₁).app X₂)).app X₃ }
          naturality := fun X₂ Y₂ f ↦ by
            ext X₃
            dsimp
            simp only [← NatTrans.comp_app, NatTrans.naturality, ← G.map_comp] }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality, ← G.map_comp] }
  naturality G G' f := by
    ext X₁ X₂ X₃
    dsimp
    simp only [← NatTrans.comp_app, NatTrans.naturality]

/-- The functor `(C₁ ⥤ C₂ ⥤ C₁₂) ⥤ (C₁₂ ⥤ C₃ ⥤ C₄) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which
sends `F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂` and `G : C₁₂ ⥤ C₃ ⥤ C₄` to the functor
`bifunctorComp₁₂ F₁₂ G : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄`. -/
@[simps]
def bifunctorComp₁₂Functor : (C₁ ⥤ C₂ ⥤ C₁₂) ⥤ (C₁₂ ⥤ C₃ ⥤ C₄) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj := bifunctorComp₁₂FunctorObj
  map := bifunctorComp₁₂FunctorMap

end bifunctorComp₁₂Functor

section bifunctorComp₂₃Functor

/-- Auxiliary definition for `bifunctorComp₂₃`. -/
@[simps]
def bifunctorComp₂₃Obj (F : C₁ ⥤ C₂₃ ⥤ C₄) (G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃) (X₁ : C₁) :
    C₂ ⥤ C₃ ⥤ C₄ where
  obj X₂ :=
    { obj X₃ := (F.obj X₁).obj ((G₂₃.obj X₂).obj X₃)
      map φ := (F.obj X₁).map ((G₂₃.obj X₂).map φ) }
  map {X₂ Y₂} φ :=
    { app X₃ := (F.obj X₁).map ((G₂₃.map φ).app X₃)
      naturality X₃ Y₃ φ := by
        dsimp
        simp only [← Functor.map_comp, NatTrans.naturality] }

/-- Given two bifunctors `F : C₁ ⥤ C₂₃ ⥤ C₄` and `G₂₃ : C₂ ⥤ C₃ ⥤ C₄`, this is
the trifunctor `C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` obtained by composition. -/
@[simps]
def bifunctorComp₂₃ (F : C₁ ⥤ C₂₃ ⥤ C₄) (G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃) :
    C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj X₁ := bifunctorComp₂₃Obj F G₂₃ X₁
  map {X₁ Y₁} φ :=
    { app := fun X₂ =>
        { app := fun X₃ => (F.map φ).app ((G₂₃.obj X₂).obj X₃) } }

/-- Auxiliary definition for `bifunctorComp₂₃Functor`. -/
@[simps]
def bifunctorComp₂₃FunctorObj (F : C₁ ⥤ C₂₃ ⥤ C₄) :
    (C₂ ⥤ C₃ ⥤ C₂₃) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj G₂₃ := bifunctorComp₂₃ F G₂₃
  map {G₂₃ G₂₃'} φ :=
    { app X₁ :=
        { app X₂ :=
            { app X₃ := (F.obj X₁).map ((φ.app X₂).app X₃)
              naturality X₃ Y₃ f := by
                dsimp
                simp only [← Functor.map_comp, NatTrans.naturality] }
          naturality X₂ Y₂ f := by
            ext X₃
            dsimp
            simp only [← NatTrans.comp_app, ← Functor.map_comp, NatTrans.naturality] } }

/-- Auxiliary definition for `bifunctorComp₂₃Functor`. -/
@[simps]
def bifunctorComp₂₃FunctorMap {F F' : C₁ ⥤ C₂₃ ⥤ C₄} (φ : F ⟶ F') :
    bifunctorComp₂₃FunctorObj F (C₂ := C₂) (C₃ := C₃) ⟶ bifunctorComp₂₃FunctorObj F' where
  app G₂₃ :=
    { app X₁ := { app X₂ := { app X₃ := (φ.app X₁).app ((G₂₃.obj X₂).obj X₃) } }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality] }

/-- The functor `(C₁ ⥤ C₂₃ ⥤ C₄) ⥤ (C₂ ⥤ C₃ ⥤ C₂₃) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which
sends `F : C₁ ⥤ C₂₃ ⥤ C₄` and `G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃` to the
functor `bifunctorComp₂₃ F G₂₃ : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄`. -/
@[simps]
def bifunctorComp₂₃Functor :
    (C₁ ⥤ C₂₃ ⥤ C₄) ⥤ (C₂ ⥤ C₃ ⥤ C₂₃) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj := bifunctorComp₂₃FunctorObj
  map := bifunctorComp₂₃FunctorMap

end bifunctorComp₂₃Functor

end CategoryTheory
```
