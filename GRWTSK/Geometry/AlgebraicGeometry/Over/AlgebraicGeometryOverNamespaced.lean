-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Over.Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Over.Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"b190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.CategoryTheory.Comma.Over.OverClass

/-!
# Typeclasses for `S`-schemes and `S`-morphisms

We define these as thin wrappers around `CategoryTheory/Comma/OverClass`.

## Main definition
- `AlgebraicGeometry.Scheme.Over`: `X.Over S` equips `X` with a `S`-scheme structure.
  `X ↘ S : X ⟶ S` is the structure morphism.
- `AlgebraicGeometry.Scheme.Hom.IsOver`: `f.IsOver S` asserts that `f` is a `S`-morphism.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Over.Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7

namespace AlgebraicGeometry.Scheme

universe u

open CategoryTheory

variable {X Y : Scheme.{u}} (f : X.Hom Y) (S S' : Scheme.{u})

/--
`X.Over S` is the typeclass containing the data of a structure morphism `X ↘ S : X ⟶ S`.
-/
protected abbrev Over (X S : Scheme.{u}) := OverClass X S

/--
`X.CanonicallyOver S` is the typeclass containing the data of a structure morphism `X ↘ S : X ⟶ S`,
and that `S` is (uniquely) inferable from the structure of `X`.
-/
abbrev CanonicallyOver := CanonicallyOverClass X S

/-- Given `X.Over S` and `Y.Over S` and `f : X ⟶ Y`,
`f.IsOver S` is the typeclass asserting `f` commutes with the structure morphisms. -/
abbrev Hom.IsOver (f : X.Hom Y) (S : Scheme.{u}) [X.Over S] [Y.Over S] := HomIsOver f S

@[simp]
lemma Hom.isOver_iff [X.Over S] [Y.Over S] {f : X ⟶ Y} : f.IsOver S ↔ f ≫ Y ↘ S = X ↘ S :=
  ⟨fun H ↦ H.1, fun h ↦ ⟨h⟩⟩

/-! Also note the existence of `CategoryTheory.IsOverTower X Y S`. -/

/-- Given `X.Over S`, this is the bundled object of `Over S`. -/
abbrev asOver (X S : Scheme.{u}) [X.Over S] := OverClass.asOver X S

/-- Given a morphism `X ⟶ Y` with `f.IsOver S`, this is the bundled morphism in `Over S`. -/
abbrev Hom.asOver (f : X.Hom Y) (S : Scheme.{u}) [X.Over S] [Y.Over S] [f.IsOver S] :=
  OverClass.asOverHom S f

end AlgebraicGeometry.Scheme
