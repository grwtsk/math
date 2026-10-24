# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a22ad558e60350fd45bb8cffc8a7e71026caa2bf` · SHA-256 `8d1df0b121c31131e6af79a476a4097db3a54b392e1c20c9406350b88debf59f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLeftDerivedFunctor.Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLeftDerivedFunctor.Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/Derived/LeftDerived.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Functor.KanExtension.Basic
import Mathlib.CategoryTheory.Localization.Predicate

/-!
# Left derived functors

In this file, given a functor `F : C ⥤ H`, and `L : C ⥤ D` that is a
localization functor for `W : MorphismProperty C`, we define
`F.totalLeftDerived L W : D ⥤ H` as the right Kan extension of `F`
along `L`: it is defined if the type class `F.HasLeftDerivedFunctor W`
asserting the existence of a right Kan extension is satisfied.
(The name `totalLeftDerived` is to avoid name-collision with
`Functor.leftDerived` which are the left derived functors in
the context of abelian categories.)

Given `LF : D ⥤ H` and `α : L ⋙ RF ⟶ F`, we also introduce a type class
`F.IsLeftDerivedFunctor α W` saying that `α` is a right Kan extension of `F`
along the localization functor `L`.

(This file was obtained by dualizing the results in the file
`Mathlib.CategoryTheory.Functor.Derived.RightDerived`.)

## References

* https://ncatlab.org/nlab/show/derived+functor

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLeftDerivedFunctor.Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64

namespace CategoryTheory

namespace Functor

variable {C C' D D' H H' : Type _} [Category C] [Category C']
  [Category D] [Category D'] [Category H] [Category H']
  (LF'' LF' LF : D ⥤ H) {F F' F'' : C ⥤ H} (e : F ≅ F') {L : C ⥤ D}
  (α'' : L ⋙ LF'' ⟶ F'') (α' : L ⋙ LF' ⟶ F') (α : L ⋙ LF ⟶ F) (α'₂ : L ⋙ LF' ⟶ F)
  (W : MorphismProperty C)

/-- A functor `LF : D ⥤ H` is a left derived functor of `F : C ⥤ H`
if it is equipped with a natural transformation `α : L ⋙ LF ⟶ F`
which makes it a right Kan extension of `F` along `L`,
where `L : C ⥤ D` is a localization functor for `W : MorphismProperty C`. -/
class IsLeftDerivedFunctor (LF : D ⥤ H) {F : C ⥤ H} {L : C ⥤ D} (α : L ⋙ LF ⟶ F)
    (W : MorphismProperty C) [L.IsLocalization W] : Prop where
  isRightKanExtension (LF α) : LF.IsRightKanExtension α

lemma isLeftDerivedFunctor_iff_isRightKanExtension [L.IsLocalization W] :
    LF.IsLeftDerivedFunctor α W ↔ LF.IsRightKanExtension α := by
  constructor
  · exact fun _ => IsLeftDerivedFunctor.isRightKanExtension LF α W
  · exact fun h => ⟨h⟩

variable {RF RF'} in
lemma isLeftDerivedFunctor_iff_of_iso (α' : L ⋙ LF' ⟶ F) (W : MorphismProperty C)
    [L.IsLocalization W] (e : LF ≅ LF') (comm : whiskerLeft L e.hom ≫ α' = α) :
    LF.IsLeftDerivedFunctor α W ↔ LF'.IsLeftDerivedFunctor α' W := by
  simp only [isLeftDerivedFunctor_iff_isRightKanExtension]
  exact isRightKanExtension_iff_of_iso e _ _ comm

section

variable [L.IsLocalization W] [LF.IsLeftDerivedFunctor α W]

/-- Constructor for natural transformations to a left derived functor. -/
noncomputable def leftDerivedLift (G : D ⥤ H) (β : L ⋙ G ⟶ F) : G ⟶ LF :=
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  LF.liftOfIsRightKanExtension α G β

@[reassoc (attr := simp)]
lemma leftDerived_fac (G : D ⥤ H) (β : L ⋙ G ⟶ F) :
    whiskerLeft L (LF.leftDerivedLift α W G β) ≫ α = β :=
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  LF.liftOfIsRightKanExtension_fac α G β

@[reassoc (attr := simp)]
lemma leftDerived_fac_app (G : D ⥤ H) (β : L ⋙ G ⟶ F) (X : C) :
    (LF.leftDerivedLift α W G β).app (L.obj X) ≫ α.app X = β.app X :=
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  LF.liftOfIsRightKanExtension_fac_app α G β X

include W in
lemma leftDerived_ext (G : D ⥤ H) (γ₁ γ₂ : G ⟶ LF)
    (hγ : whiskerLeft L γ₁ ≫ α = whiskerLeft L γ₂ ≫ α) : γ₁ = γ₂ :=
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  LF.hom_ext_of_isRightKanExtension α γ₁ γ₂ hγ

/-- The natural transformation `LF' ⟶ LF` on left derived functors that is
induced by a natural transformation `F' ⟶ F`. -/
noncomputable def leftDerivedNatTrans (τ : F' ⟶ F) : LF' ⟶ LF :=
  LF.leftDerivedLift α W LF' (α' ≫ τ)

@[reassoc (attr := simp)]
lemma leftDerivedNatTrans_fac (τ : F' ⟶ F) :
    whiskerLeft L (leftDerivedNatTrans LF' LF α' α W τ) ≫ α = α' ≫ τ := by
  dsimp only [leftDerivedNatTrans]
  simp

@[reassoc (attr := simp)]
lemma leftDerivedNatTrans_app (τ : F' ⟶ F) (X : C) :
    (leftDerivedNatTrans LF' LF α' α W τ).app (L.obj X) ≫ α.app X =
    α'.app X ≫ τ.app X := by
  dsimp only [leftDerivedNatTrans]
  simp

@[simp]
lemma leftDerivedNatTrans_id :
    leftDerivedNatTrans LF LF α α W (𝟙 F) = 𝟙 LF :=
  leftDerived_ext LF α W _ _ _ (by simp)

variable [LF'.IsLeftDerivedFunctor α' W]

@[reassoc (attr := simp)]
lemma leftDerivedNatTrans_comp (τ' : F'' ⟶ F') (τ : F' ⟶ F) :
    leftDerivedNatTrans LF'' LF' α'' α' W τ' ≫ leftDerivedNatTrans LF' LF α' α W τ =
    leftDerivedNatTrans LF'' LF α'' α W (τ' ≫ τ) :=
  leftDerived_ext LF α W _ _ _ (by simp)

/-- The natural isomorphism `LF' ≅ LF` on left derived functors that is
induced by a natural isomorphism `F' ≅ F`. -/
@[simps]
noncomputable def leftDerivedNatIso (τ : F' ≅ F) :
    LF' ≅ LF where
  hom := leftDerivedNatTrans LF' LF α' α W τ.hom
  inv := leftDerivedNatTrans LF LF' α α' W τ.inv

/-- Uniqueness (up to a natural isomorphism) of the left derived functor. -/
noncomputable abbrev leftDerivedUnique [LF'.IsLeftDerivedFunctor α'₂ W] : LF ≅ LF' :=
  leftDerivedNatIso LF LF' α α'₂ W (Iso.refl F)

lemma isLeftDerivedFunctor_iff_isIso_leftDerivedLift (G : D ⥤ H) (β : L ⋙ G ⟶ F) :
    G.IsLeftDerivedFunctor β W ↔ IsIso (LF.leftDerivedLift α W G β) := by
  rw [isLeftDerivedFunctor_iff_isRightKanExtension]
  have := IsLeftDerivedFunctor.isRightKanExtension _ α W
  exact isRightKanExtension_iff_isIso _ α _ (by simp)

end

variable (F)

/-- A functor `F : C ⥤ H` has a left derived functor with respect to
`W : MorphismProperty C` if it has a right Kan extension along
`W.Q : C ⥤ W.Localization` (or any localization functor `L : C ⥤ D`
for `W`, see `hasLeftDerivedFunctor_iff`). -/
class HasLeftDerivedFunctor : Prop where
  hasRightKanExtension' : HasRightKanExtension W.Q F

variable (L)
variable [L.IsLocalization W]

lemma hasLeftDerivedFunctor_iff :
    F.HasLeftDerivedFunctor W ↔ HasRightKanExtension L F := by
  have : HasLeftDerivedFunctor F W ↔ HasRightKanExtension W.Q F :=
    ⟨fun h => h.hasRightKanExtension', fun h => ⟨h⟩⟩
  rw [this, hasRightExtension_iff_postcomp₁ (Localization.compUniqFunctor W.Q L W) F]

variable {F}

include e in
lemma hasLeftDerivedFunctor_iff_of_iso :
    HasLeftDerivedFunctor F W ↔ HasLeftDerivedFunctor F' W := by
  rw [hasLeftDerivedFunctor_iff F W.Q W, hasLeftDerivedFunctor_iff F' W.Q W,
    hasRightExtension_iff_of_iso₂ W.Q e]

variable (F)

lemma HasLeftDerivedFunctor.hasRightKanExtension [HasLeftDerivedFunctor F W] :
    HasRightKanExtension L F := by
  simpa only [← hasLeftDerivedFunctor_iff F L W]

variable {F L W}

lemma HasLeftDerivedFunctor.mk' [LF.IsLeftDerivedFunctor α W] :
    HasLeftDerivedFunctor F W := by
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  simpa only [hasLeftDerivedFunctor_iff F L W] using HasRightKanExtension.mk LF α

section

variable (F) [F.HasLeftDerivedFunctor W] (L W)

/-- Given a functor `F : C ⥤ H`, and a localization functor `L : D ⥤ H` for `W`,
this is the left derived functor `D ⥤ H` of `F`, i.e. the right Kan extension
of `F` along `L`. -/
noncomputable def totalLeftDerived : D ⥤ H :=
  have := HasLeftDerivedFunctor.hasRightKanExtension F L W
  rightKanExtension L F

/-- The canonical natural transformation `L ⋙ F.totalLeftDerived L W ⟶ F`. -/
noncomputable def totalLeftDerivedCounit : L ⋙ F.totalLeftDerived L W ⟶ F :=
  have := HasLeftDerivedFunctor.hasRightKanExtension F L W
  rightKanExtensionCounit L F

instance : (F.totalLeftDerived L W).IsLeftDerivedFunctor
    (F.totalLeftDerivedCounit L W) W where
  isRightKanExtension := by
    dsimp [totalLeftDerived, totalLeftDerivedCounit]
    infer_instance

end

end Functor

end CategoryTheory
```
