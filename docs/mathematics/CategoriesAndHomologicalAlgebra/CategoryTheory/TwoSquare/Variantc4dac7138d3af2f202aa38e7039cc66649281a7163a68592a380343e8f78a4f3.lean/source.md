# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoSquare.Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcef7afa2290577698a8e01970e124df6cebf114` · SHA-256 `d406b575bf12fec870102a765cbe00432bfdb8f692be655a03586ce40399ea61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoSquare.Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TwoSquare.Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/TwoSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Jakob von Raumer
-/
import Mathlib.CategoryTheory.Whiskering
import Mathlib.CategoryTheory.Opposites
import Mathlib.Tactic.CategoryTheory.Slice

/-!
# 2-squares of functors

Given four functors `T`, `L`, `R` and `B`, a 2-square `TwoSquare T L R B` consists of
a natural transformation `w : T ⋙ R ⟶ L ⋙ B`:
```
     T
  C₁ ⥤ C₂
L |     | R
  v     v
  C₃ ⥤ C₄
     B
```

We define operations to paste such squares horizontally and vertically and prove the interchange
law of those two operations.

## TODO

Generalize all of this to double categories.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoSquare.Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467

universe v₁ v₂ v₃ v₄ v₅ v₆ v₇ v₈ v₉ u₁ u₂ u₃ u₄ u₅ u₆ u₇ u₈ u₉

namespace CategoryTheory

open Category

variable {C₁ : Type u₁} {C₂ : Type u₂} {C₃ : Type u₃} {C₄ : Type u₄}
  [Category.{v₁} C₁] [Category.{v₂} C₂] [Category.{v₃} C₃] [Category.{v₄} C₄]
  (T : C₁ ⥤ C₂) (L : C₁ ⥤ C₃) (R : C₂ ⥤ C₄) (B : C₃ ⥤ C₄)

/-- A `2`-square consists of a natural transformation `T ⋙ R ⟶ L ⋙ B`
involving fours functors `T`, `L`, `R`, `B` that are on the
top/left/right/bottom sides of a square of categories. -/
def TwoSquare := T ⋙ R ⟶ L ⋙ B

namespace TwoSquare

/-- Constructor for `TwoSquare`. -/
abbrev mk (α : T ⋙ R ⟶ L ⋙ B) : TwoSquare T L R B := α

variable {T} {L} {R} {B} in
/-- The natural transfomration associated to a 2-square. -/
abbrev natTrans (w : TwoSquare T L R B) : T ⋙ R ⟶ L ⋙ B := w

/-- The type of 2-squares on functors `T`, `L`, `R`, and `B` is trivially equivalent to
the type of natural transformations `T ⋙ R ⟶ L ⋙ B`. -/
@[simps]
def equivNatTrans : TwoSquare T L R B ≃ (T ⋙ R ⟶ L ⋙ B) where
  toFun := natTrans
  invFun := mk T L R B
  left_inv _ := rfl
  right_inv _ := rfl

variable {T L R B}

/-- The opposite of a `2`-square. -/
def op (α : TwoSquare T L R B) : TwoSquare L.op T.op B.op R.op := NatTrans.op α

@[simp]
lemma natTrans_op (α : TwoSquare T L R B) :
    α.op.natTrans = NatTrans.op α.natTrans := rfl

@[ext]
lemma ext (w w' : TwoSquare T L R B) (h : ∀ (X : C₁), w.natTrans.app X = w'.natTrans.app X) :
    w = w' :=
  NatTrans.ext (funext h)

/-- The hoizontal identity 2-square. -/
@[simps!]
def hId (L : C₁ ⥤ C₃) : TwoSquare (𝟭 _) L L (𝟭 _) :=
  𝟙 _

/-- Notation for the horizontal identity 2-square. -/
scoped notation "𝟙ₕ" => hId  -- type as \b1\_h

/-- The vertical identity 2-square. -/
@[simps!]
def vId (T : C₁ ⥤ C₂) : TwoSquare T (𝟭 _) (𝟭 _) T :=
  𝟙 _

/-- Notation for the vertical identity 2-square. -/
scoped notation "𝟙ᵥ" => vId  -- type as \b1\_v

/-- Whiskering a 2-square with a natural transformation at the top. -/
@[simps!]
protected def whiskerTop {T' : C₁ ⥤ C₂} (w : TwoSquare T' L R B) (α : T ⟶ T') : TwoSquare T L R B :=
  .mk _ _ _ _ <| whiskerRight α R ≫ w.natTrans

/-- Whiskering a 2-square with a natural transformation at the left side. -/
@[simps!]
protected def whiskerLeft {L' : C₁ ⥤ C₃} (w : TwoSquare T L R B) (α : L ⟶ L') :
    TwoSquare T L' R B :=
  .mk _ _ _ _ <| w.natTrans ≫ whiskerRight α B

/-- Whiskering a 2-square with a natural transformation at the right side. -/
@[simps!]
protected def whiskerRight {R' : C₂ ⥤ C₄} (w : TwoSquare T L R' B) (α : R ⟶ R') :
    TwoSquare T L R B :=
  .mk _ _ _ _ <| whiskerLeft T α ≫ w.natTrans

/-- Whiskering a 2-square with a natural transformation at the bottom. -/
@[simps!]
protected def whiskerBottom {B' : C₃ ⥤ C₄} (w : TwoSquare T L R B) (α : B ⟶ B') :
    TwoSquare T L R B' :=
  .mk _ _ _ _ <| w.natTrans ≫ whiskerLeft L α

variable {C₅ : Type u₅} {C₆ : Type u₆} {C₇ : Type u₇} {C₈ : Type u₈}
  [Category.{v₅} C₅] [Category.{v₆} C₆] [Category.{v₇} C₇] [Category.{v₈} C₈]
  {T' : C₂ ⥤ C₅} {R' : C₅ ⥤ C₆} {B' : C₄ ⥤ C₆} {L' : C₃ ⥤ C₇} {R'' : C₄ ⥤ C₈} {B'' : C₇ ⥤ C₈}

/-- The horizontal composition of 2-squares. -/
@[simps!]
def hComp (w : TwoSquare T L R B) (w' : TwoSquare T' R R' B') :
    TwoSquare (T ⋙ T') L R' (B ⋙ B') :=
  .mk _ _ _ _ <| (Functor.associator _ _ _).hom ≫ (whiskerLeft T w'.natTrans) ≫
    (Functor.associator _ _ _).inv ≫ (whiskerRight w.natTrans B') ≫ (Functor.associator _ _ _).hom

/-- Notation for the horizontal composition of 2-squares. -/
scoped infixr:80 " ≫ₕ " => hComp -- type as \gg\_h

/-- The vertical composition of 2-squares. -/
@[simps!]
def vComp (w : TwoSquare T L R B) (w' : TwoSquare B L' R'' B'') :
    TwoSquare T (L ⋙ L') (R ⋙ R'') B'' :=
  .mk _ _ _ _ <| (Functor.associator _ _ _).hom ≫ (whiskerRight w.natTrans R'') ≫
    (Functor.associator _ _ _).inv ≫ (whiskerLeft L w'.natTrans) ≫ (Functor.associator _ _ _).hom

/-- Notation for the vertical composition of 2-squares. -/
scoped infixr:80 " ≫ᵥ " => vComp -- type as \gg\_v

section Interchange

variable {C₉ : Type u₉} [Category.{v₉} C₉] {R₃ : C₆ ⥤ C₉} {B₃ : C₈ ⥤ C₉}

/-- When composing 2-squares which form a diagram of grid, compositing horionzall first yields the
same result as composing vertically first. -/
lemma hCompVCompHComp (w₁ : TwoSquare T L R B) (w₂ : TwoSquare T' R R' B')
    (w₃ : TwoSquare B L' R'' B'') (w₄ : TwoSquare B' R'' R₃ B₃) :
    (w₁ ≫ₕ w₂) ≫ᵥ (w₃ ≫ₕ w₄) = (w₁ ≫ᵥ w₃) ≫ₕ (w₂ ≫ᵥ w₄) := by
  unfold hComp vComp whiskerLeft whiskerRight
  ext c
  simp only [Functor.comp_obj, NatTrans.comp_app, Functor.associator_hom_app,
    Functor.associator_inv_app, comp_id, id_comp, Functor.map_comp, assoc]
  slice_rhs 2 3 =>
    rw [← Functor.comp_map _ B₃, ← w₄.naturality]
  simp

end Interchange

end TwoSquare

end CategoryTheory
````
