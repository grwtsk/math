# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Over.Variant2b88fe1d62d4d5a40672f40c525978fd08032b0436e7a2274ad2868ef5c24d61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a98061dbe5971250022c8e2ce8a8136676b59b9a` · SHA-256 `651271a74bef0cafc32128993bcbe9c7d1685f2f37c228f74fd6d3346b9a1d50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Over.Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Over.Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.AlgebraicGeometry.Scheme
public import Mathlib.CategoryTheory.Comma.Over.OverClass

/-!
# Typeclasses for `S`-schemes and `S`-morphisms

We define these as thin wrappers around `CategoryTheory/Comma/OverClass`.

## Main definition
- `AlgebraicGeometry.Scheme.Over`: `X.Over S` equips `X` with an `S`-scheme structure.
  `X ↘ S : X ⟶ S` is the structure morphism.
- `AlgebraicGeometry.Scheme.Hom.IsOver`: `f.IsOver S` asserts that `f` is an `S`-morphism.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Over.Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c

public section

namespace AlgebraicGeometry.Scheme

universe u

open CategoryTheory

variable {X Y : Scheme.{u}} (f : X.Hom Y) (S : Scheme.{u})

/--
`X.Over S` is the typeclass containing the data of a structure morphism `X ↘ S : X ⟶ S`.
-/
protected abbrev Over (X S : Scheme.{u}) := OverClass X S

/--
`X.CanonicallyOver S` is the typeclass containing the data of a structure morphism `X ↘ S : X ⟶ S`,
and that `S` is (uniquely) inferable from the structure of `X`.
-/
abbrev CanonicallyOver (X S : Scheme.{u}) := CanonicallyOverClass X S

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
```
