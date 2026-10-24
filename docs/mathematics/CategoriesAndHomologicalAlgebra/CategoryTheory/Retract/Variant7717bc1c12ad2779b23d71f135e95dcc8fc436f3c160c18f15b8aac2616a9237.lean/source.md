# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant7717bc1c12ad2779b23d71f135e95dcc8fc436f3c160c18f15b8aac2616a9237

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60bd5ee6c8071398a4675c8da4eb3437f6c7a90d` · SHA-256 `a4faae697284b499cd15a22035018d4df90fda65d2f72b73a920ac35e1b9492d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant88c6c4844b317c19b4e8ac91c5a2d0388f0e2ce75935dad155ac53aec8db6a81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c6c4844b317c19b4e8ac91c5a2d0388f0e2ce75935dad155ac53aec8db6a81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Retract.Variant88c6c4844b317c19b4e8ac91c5a2d0388f0e2ce75935dad155ac53aec8db6a81","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"88c6c4844b317c19b4e8ac91c5a2d0388f0e2ce75935dad155ac53aec8db6a81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Retract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Comma.Arrow
public import Mathlib.CategoryTheory.EpiMono

/-!
# Retracts

Defines retracts of objects and morphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant88c6c4844b317c19b4e8ac91c5a2d0388f0e2ce75935dad155ac53aec8db6a81

@[expose] public section

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
  retract : i ≫ r = 𝟙 X := by cat_disch

to_dual_name_hint I R, IArrow RArrow, Left Right

attribute [to_dual existing] Retract.i
attribute [to_dual self] Retract.mk

namespace Retract

attribute [reassoc (attr := simp)] retract

variable {X Y : C} (h : Retract X Y)

open Opposite

/-- Retracts are preserved when passing to the opposite category. -/
@[simps]
def op : Retract (op X) (op Y) where
  i := h.r.op
  r := h.i.op
  retract := by simp [← op_comp, h.retract]

attribute [to_dual existing] op_i

/-- If `X` is a retract of `Y`, then `F.obj X` is a retract of `F.obj Y`. -/
@[simps]
def map (F : C ⥤ D) : Retract (F.obj X) (F.obj Y) where
  i := F.map h.i
  r := F.map h.r
  retract := by rw [← F.map_comp h.i h.r, h.retract, F.map_id]

attribute [to_dual existing] map_i

/-- a retract determines a split epimorphism. -/
@[to_dual (attr := simps)/-- a retract determines a split monomorphism. -/]
def splitEpi : SplitEpi h.r where
  section_ := h.i

@[to_dual]
instance : IsSplitEpi h.r := ⟨⟨h.splitEpi⟩⟩

variable (X) in
/-- Any object is a retract of itself. -/
@[simps]
def refl : Retract X X where
  i := 𝟙 X
  r := 𝟙 X

attribute [to_dual existing] refl_i

/-- A retract of a retract is a retract. -/
@[simps]
def trans {Z : C} (h' : Retract Y Z) : Retract X Z where
  i := h.i ≫ h'.i
  r := h'.r ≫ h.r

attribute [to_dual existing] trans_i

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
@[to_dual self]
abbrev RetractArrow {X Y Z W : C} (f : X ⟶ Y) (g : Z ⟶ W) := Retract (Arrow.mk f) (Arrow.mk g)

namespace RetractArrow

variable {X Y Z W : C} {f : X ⟶ Y} {g : Z ⟶ W} (h : RetractArrow f g)

set_option backward.isDefEq.respectTransparency false in -- This is needed for `MorphismProperty/Retract.lean`
@[to_dual none, reassoc]
lemma i_w : h.i.left ≫ g = f ≫ h.i.right := h.i.w

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[to_dual none, reassoc]
lemma r_w : h.r.left ≫ f = g ≫ h.r.right := h.r.w

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The top of a retract diagram of morphisms determines a retract of objects. -/
@[to_dual (attr := simps!)
/-- The bottom of a retract diagram of morphisms determines a retract of objects. -/]
def left : Retract X Z := h.map Arrow.leftFunc

@[to_dual (attr := reassoc (attr := simp))]
lemma retract_left : h.i.left ≫ h.r.left = 𝟙 X := h.left.retract

@[to_dual]
instance : IsSplitEpi h.r.left := ⟨⟨h.left.splitEpi⟩⟩

@[to_dual]
instance : IsSplitEpi h.r.right := ⟨⟨h.right.splitEpi⟩⟩

/-- If a morphism `f` is a retract of `g`,
then `F.map f` is a retract of `F.map g` for any functor `F`. -/
@[to_dual self, simps!]
def map (F : C ⥤ D) : RetractArrow (F.map f) (F.map g) :=
  Retract.map h F.mapArrow

attribute [to_dual existing] map_i_left map_i_right

set_option backward.defeqAttrib.useBackward true in
/-- If a morphism `f` is a retract of `g`, then `f.op` is a retract of `g.op`. -/
@[to_dual self, simps]
def op : RetractArrow f.op g.op where
  i := Arrow.homMk (h.r.right.op) (h.r.left.op) (by simp [← op_comp])
  r := Arrow.homMk (h.i.right.op) (h.i.left.op) (by simp [← op_comp])
  retract := by ext <;> simp [← op_comp]

attribute [to_dual existing (reorder := X Y, Z W)] op_i

set_option backward.defeqAttrib.useBackward true in
/-- If a morphism `f` in the opposite category is a retract of `g`,
then `f.unop` is a retract of `g.unop`. -/
@[to_dual self, simps]
def unop {X Y Z W : Cᵒᵖ} {f : X ⟶ Y} {g : Z ⟶ W} (h : RetractArrow f g) :
    RetractArrow f.unop g.unop where
  i := Arrow.homMk (h.r.right.unop) (h.r.left.unop) (by simp [← unop_comp])
  r := Arrow.homMk (h.i.right.unop) (h.i.left.unop) (by simp [← unop_comp])
  retract := by ext <;> simp [← unop_comp]

attribute [to_dual existing (reorder := X Y, Z W)] unop_i

end RetractArrow

namespace Iso

/-- If `X` is isomorphic to `Y`, then `X` is a retract of `Y`. -/
@[simps]
def retract {X Y : C} (e : X ≅ Y) : Retract X Y where
  i := e.hom
  r := e.inv

attribute [to_dual existing] retract_i

end Iso

set_option backward.defeqAttrib.useBackward true in
/-- If `X` is a retract of `Y`, then for any natural transformation `τ`,
the natural transformation `τ.app X` is a retract of `τ.app Y`. -/
@[to_dual self, simps]
def NatTrans.retractArrowApp {F G : C ⥤ D}
    (τ : F ⟶ G) {X Y : C} (h : Retract X Y) : RetractArrow (τ.app X) (τ.app Y) where
  i := Arrow.homMk (F.map h.i) (G.map h.i) (by simp)
  r := Arrow.homMk (F.map h.r) (G.map h.r) (by simp)
  retract := by ext <;> simp [← Functor.map_comp]

attribute [to_dual existing (reorder := F G)] NatTrans.retractArrowApp_i

end CategoryTheory
````
