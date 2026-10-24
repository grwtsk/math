# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reduced.Variantc8ee2ecc48394e1de5aa546c73195302b094750e7cf3ce438be7c797de29b438

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9aa2e0371055eb49c1b3c561920f51fe8f71593` · SHA-256 `42b8b8019f224b3e08d9e60fe2547095a82e06c80a09a4515a07ed0ab7180960`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KaroubiFPrime.Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.KaroubiFPrime.Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/LeftResolution/Reduced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.LeftResolution.Transport
public import Mathlib.CategoryTheory.Idempotents.FunctorExtension
public import Mathlib.CategoryTheory.MorphismProperty.Retract

/-!
# Left resolutions which preserve the zero object

The structure `LeftResolution` allows to define a functorial
resolution of an object (see `LeftResolution.chainComplexFunctor`
in the file `Mathlib/Algebra/Homology/LeftResolution/Basic.lean`). In
order to extend this resolution to complexes, we not only
need the functoriality but also that zero morphisms
are sent to zero. In this file, given `ι : C ⥤ A`,
we extend `Λ : LeftResolution ι` to idempotent completions as
`Λ.karoubi : LeftResolution ((functorExtension₂ C A).obj ι)`, and
when both `C` and `A` are idempotent complete, we define
`Λ.reduced : LeftResolution ι` in such a way that the
functor `Λ.reduced.F : A ⥤ C` preserves zero morphisms.

For example, if `A := ModuleCat R` and `C` is the full subcategory
of flat `R`-modules, we may first define `Λ` by using the
functor which sends an `R`-module `M` to the free `R`-module
on the elements of `M`. Then, `Λ.reduced.F.obj M` will be obtained
from the free `R`-module on `M` by factoring out the direct factor
corresponding to the submodule spanned by the generator corresponding
to `0 : M` (TODO).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KaroubiFPrime.Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83

@[expose] public section

namespace CategoryTheory.Abelian

variable {A C : Type*} [Category* C] [Category* A] {ι : C ⥤ A}
  (Λ : LeftResolution ι)

open Idempotents Limits MorphismProperty

namespace LeftResolution

variable [Preadditive C] [Preadditive A] [ι.Additive]

/-- Auxiliary definition for `LeftResolution.karoubi`. -/
@[simps]
def karoubi.F' : A ⥤ Karoubi C where
  obj X := ⟨Λ.F.obj X, 𝟙 _ - Λ.F.map 0, by simp [← Functor.map_comp]⟩
  map {X Y} f := ⟨Λ.F.map f - Λ.F.map 0, by simp [← Functor.map_comp]⟩
  map_comp _ _ := by simp [← Functor.map_comp]

/-- Auxiliary definition for `LeftResolution.karoubi`. -/
@[simps!]
def karoubi.F : Karoubi A ⥤ Karoubi C := (functorExtension₁ A C).obj (karoubi.F' Λ)

instance : (karoubi.F Λ).PreservesZeroMorphisms where

set_option backward.defeqAttrib.useBackward true in
/-- Auxiliary definition for `LeftResolution.karoubi`. -/
@[simps]
def karoubi.π' : toKaroubi A ⋙ F Λ ⋙ (functorExtension₂ C A).obj ι ⟶ toKaroubi A where
  app X := ⟨Λ.π.app X, by simp⟩

set_option backward.defeqAttrib.useBackward true in
/-- The morphism `(karoubi.π' Λ).app X` is a retract of `(toKaroubi _).map (Λ.π.app X)`. -/
def karoubi.retractArrow (X : A) :
    RetractArrow ((karoubi.π' Λ).app X) ((toKaroubi _).map (Λ.π.app X)) where
  i := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  r := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  retract := by
    ext
    · simp [← Functor.map_comp]
    · simp

instance (X : A) : Epi ((karoubi.π' Λ).app X) :=
  of_retract (P := epimorphisms _) (karoubi.retractArrow Λ X)
    (epimorphisms.infer_property _)

/-- Auxiliary definition for `LeftResolution.karoubi`. -/
def karoubi.π : karoubi.F Λ ⋙ (functorExtension₂ C A).obj ι ⟶ 𝟭 (Karoubi A) :=
  whiskeringLeftObjToKaroubiFullyFaithful.preimage (karoubi.π' Λ)

set_option backward.defeqAttrib.useBackward true in
@[simp]
lemma karoubi.π_app_toKaroubi_obj (X : A) :
    (karoubi.π Λ).app ((toKaroubi _).obj X) = (karoubi.π' Λ).app X := by
  simp [π, whiskeringLeftObjToKaroubiFullyFaithful]

instance (X : A) : Epi ((karoubi.π Λ).app ((toKaroubi _).obj X)) := by
  rw [karoubi.π_app_toKaroubi_obj]
  infer_instance

instance (X : Karoubi A) : Epi ((karoubi.π Λ).app X) :=
  of_retract (P := epimorphisms _) (NatTrans.retractArrowApp (karoubi.π Λ) X.retract)
    (epimorphisms.infer_property _)

/-- Given `ι : C ⥤ A`, this is the extension of `Λ : LeftResolution ι` to
`LeftResolution ((functorExtension₂ C A).obj ι)`, where
`(functorExtension₂ C A).obj ι : Karoubi C ⥤ Karoubi A` is the extension of `ι`. -/
@[simps]
noncomputable def karoubi : LeftResolution ((functorExtension₂ C A).obj ι) where
  F := karoubi.F Λ
  π := karoubi.π Λ

set_option backward.defeqAttrib.useBackward true in
instance : Λ.karoubi.F.PreservesZeroMorphisms where

section

variable [IsIdempotentComplete A] [IsIdempotentComplete C]

/-- Given an additive functor `ι : C ⥤ A` between idempotent complete categories,
any `Λ : LeftResolution ι` induces a term `Λ.reduced : LeftResolution ι`
such that `Λ.reduced.F` preserves zero morphisms. -/
noncomputable def reduced : LeftResolution ι :=
  Λ.karoubi.transport (toKaroubiEquivalence A) (toKaroubiEquivalence C)
     ((karoubiUniversal₁ C A).unitIso.app _)

instance : Λ.reduced.F.PreservesZeroMorphisms := by
  dsimp [reduced, transport]
  infer_instance

end

end LeftResolution

end CategoryTheory.Abelian
```
