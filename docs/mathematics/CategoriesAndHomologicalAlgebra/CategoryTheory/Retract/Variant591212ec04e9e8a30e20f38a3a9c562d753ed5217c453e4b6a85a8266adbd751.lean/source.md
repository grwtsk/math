# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant591212ec04e9e8a30e20f38a3a9c562d753ed5217c453e4b6a85a8266adbd751

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9641bad89c07e9e880c95597ef34b069cedd8c6` · SHA-256 `9395581bf9d08dcb3c2bb9217ff1a92b57fb0d0f267c9428fb4c6f0fea9705a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Retract.Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Retract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
import Mathlib.CategoryTheory.Comma.Arrow
import Mathlib.CategoryTheory.EpiMono

/-!
# Retracts

Defines retracts of objects and morphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa

universe v v' u u'

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

/-- An object `X` is a retract of `Y` if there are morphisms `i : X ⟶ Y` and `r : Y ⟶ X` such
that `i ≫ r = 𝟙 X`. -/
structure Retract (X Y : C) where
  /-- the split monomorphism -/
  i : X ⟶ Y
  /-- the split epimorphism -/
  r : Y ⟶ X
  retract : i ≫ r = 𝟙 X := by aesop_cat

namespace Retract

attribute [reassoc (attr := simp)] retract

variable {X Y : C} (h : Retract X Y)

/-- If `X` is a retract of `Y`, then `F.obj X` is a retract of `F.obj Y`. -/
@[simps]
def map (F : C ⥤ D) : Retract (F.obj X) (F.obj Y) where
  i := F.map h.i
  r := F.map h.r
  retract := by rw [← F.map_comp h.i h.r, h.retract, F.map_id]

/-- a retract determines a split epimorphism. -/
@[simps] def splitEpi : SplitEpi h.r where
  section_ := h.i

/-- a retract determines a split monomorphism. -/
@[simps] def splitMono : SplitMono h.i where
  retraction := h.r

instance : IsSplitEpi h.r := ⟨⟨h.splitEpi⟩⟩

instance : IsSplitMono h.i := ⟨⟨h.splitMono⟩⟩

variable (X) in
/-- Any object is a retract of itself. -/
@[simps]
def refl : Retract X X where
  i := 𝟙 X
  r := 𝟙 X

/-- A retract of a retract is a retract. -/
@[simps]
def trans {Z : C} (h' : Retract Y Z) : Retract X Z where
  i := h.i ≫ h'.i
  r := h'.r ≫ h.r

/-- If `e : X ≅ Y`, then `X` is a retract of `Y`. -/
def ofIso (e : X ≅ Y) : Retract X Y where
  i := e.hom
  r := e.inv

end Retract

/--
```
  X -------> Z -------> X
  |          |          |
  f          g          f
  |          |          |
  v          v          v
  Y -------> W -------> Y

```
A morphism `f : X ⟶ Y` is a retract of `g : Z ⟶ W` if there are morphisms `i : f ⟶ g`
and `r : g ⟶ f` in the arrow category such that `i ≫ r = 𝟙 f`. -/
abbrev RetractArrow {X Y Z W : C} (f : X ⟶ Y) (g : Z ⟶ W) := Retract (Arrow.mk f) (Arrow.mk g)

namespace RetractArrow

variable {X Y Z W : C} {f : X ⟶ Y} {g : Z ⟶ W} (h : RetractArrow f g)

@[reassoc]
lemma i_w : h.i.left ≫ g = f ≫ h.i.right := h.i.w

@[reassoc]
lemma r_w : h.r.left ≫ f = g ≫ h.r.right := h.r.w

/-- The top of a retract diagram of morphisms determines a retract of objects. -/
@[simps!]
def left : Retract X Z := h.map Arrow.leftFunc

/-- The bottom of a retract diagram of morphisms determines a retract of objects. -/
@[simps!]
def right : Retract Y W := h.map Arrow.rightFunc

@[reassoc (attr := simp)]
lemma retract_left : h.i.left ≫ h.r.left = 𝟙 X := h.left.retract

@[reassoc (attr := simp)]
lemma retract_right : h.i.right ≫ h.r.right = 𝟙 Y := h.right.retract

instance : IsSplitEpi h.r.left := ⟨⟨h.left.splitEpi⟩⟩

instance : IsSplitEpi h.r.right := ⟨⟨h.right.splitEpi⟩⟩

instance : IsSplitMono h.i.left := ⟨⟨h.left.splitMono⟩⟩

instance : IsSplitMono h.i.right := ⟨⟨h.right.splitMono⟩⟩

end RetractArrow

namespace Iso

/-- If `X` is isomorphic to `Y`, then `X` is a retract of `Y`. -/
@[simps]
def retract {X Y : C} (e : X ≅ Y) : Retract X Y where
  i := e.hom
  r := e.inv

end Iso

end CategoryTheory
````
