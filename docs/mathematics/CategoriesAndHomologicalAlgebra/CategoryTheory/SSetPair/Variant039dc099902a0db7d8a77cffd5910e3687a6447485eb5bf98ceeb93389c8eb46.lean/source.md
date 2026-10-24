# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SSetPair.Variant039dc099902a0db7d8a77cffd5910e3687a6447485eb5bf98ceeb93389c8eb46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95b304cf72dbe3089f44323fc6e94deeb6b510ba` · SHA-256 `1e7ff4de6ca45801923181bce3ecbda5d8739d7e8e477f4f07283f5c90f0198c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SSetPair.Variantd94736ac0b452dbd04ff4c96fbdbd75797a5e7d5b43dc0e899e5cbf80fedfc94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d94736ac0b452dbd04ff4c96fbdbd75797a5e7d5b43dc0e899e5cbf80fedfc94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SSetPair.Variantd94736ac0b452dbd04ff4c96fbdbd75797a5e7d5b43dc0e899e5cbf80fedfc94","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d94736ac0b452dbd04ff4c96fbdbd75797a5e7d5b43dc0e899e5cbf80fedfc94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/SSetPair.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Andrew Yang
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex
public import Mathlib.CategoryTheory.MorphismProperty.Comma

/-!
# Pairs of simplicial sets

In this file, we define the category `SSetPair` of pairs of simplicial
sets, which consist of monomorphisms `i : X ⟶ Y` of simplicial sets.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SSetPair.Variantd94736ac0b452dbd04ff4c96fbdbd75797a5e7d5b43dc0e899e5cbf80fedfc94

@[expose] public section

open Simplicial CategoryTheory

universe u

/-- The category `SSetPair` is the category of pairs of simplicial sets,
i.e. monomorphisms `i : X ⟶ Y`, see `SSetPair.of`. -/
abbrev SSetPair : Type (u + 1) := MorphismProperty.Arrow (.monomorphisms SSet.{u}) ⊤ ⊤

namespace SSetPair

instance (P : SSetPair.{u}) : Mono P.hom := P.prop

/-- Constructor for `SSetPair`. -/
abbrev of {X Y : SSet.{u}} (i : X ⟶ Y) [Mono i] : SSetPair.{u} :=
  MorphismProperty.Arrow.mk i (by assumption)

/-- The forget functor from `SSetPair` to the category `Arrow SSet`. -/
abbrev forget : SSetPair.{u} ⥤ Arrow SSet.{u} :=
  MorphismProperty.Arrow.forget _ _ _

/-- Constructor for morphisms in `SSetPair`. -/
abbrev homMk {X Y : SSetPair.{u}} (left : X.left ⟶ Y.left) (right : X.right ⟶ Y.right)
    (w : left ≫ Y.hom = X.hom ≫ right := by cat_disch) : X ⟶ Y :=
  MorphismProperty.Arrow.Hom.mk (Arrow.homMk left right w) (by simp) (by simp)

end SSetPair

/-- Given a subcomplex `A` of a simplical set `X`, this is the pair in `SSetPair`
corresponding to the inclusion `A.ι : (A : SSet) ⟶ X`. -/
abbrev SSet.Subcomplex.pair {X : SSet.{u}} (A : X.Subcomplex) : SSetPair.{u} := .of A.ι

/-- Given `X : SSet`, this is the functor `X.Subcomplex ⥤ SSetPair` which sends
`A : X.Subcomplex` to the pair corresponding to the inclusion `A.ι : (A : SSet) ⟶ X`. -/
@[implicit_reducible, simps]
def SSet.Subcomplex.toPairFunctor (X : SSet.{u}) : X.Subcomplex ⥤ SSetPair.{u} where
  obj := pair
  map f := SSetPair.homMk (SSet.Subcomplex.homOfLE f.le) (𝟙 _)

/-- If `X` is a simplicial set, this is the pair in `SSetPair` corresponding
to the inclusion of the empty subcomplex in `X`. -/
abbrev SSet.pair (X : SSet.{u}) : SSetPair.{u} := SSet.Subcomplex.pair (X := X) ⊥

/-- The functor `SSet ⥤ SSetPair` which sends `X : SSet` to the pair
corresponding to the inclusion of the empty subcomplex in `X`. -/
@[implicit_reducible, simps]
def SSet.toPairFunctor : SSet.{u} ⥤ SSetPair.{u} where
  obj := SSet.pair
  map f := SSetPair.homMk (Subcomplex.lift (Subcomplex.ι _ ≫ f) (fun _ _ h ↦ by simp at h)) f
```
