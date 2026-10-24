# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `decdeb5317c240d0fdfefca4af560341cf5ea117` · SHA-256 `dd97a5b172d680f4005aac2b1247700d3b632683b73e99cbaf215941db22c472`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForgetCreatesLimitOfClosed.Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ForgetCreatesLimitOfClosed.Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/MorphismProperty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.CategoryTheory.Limits.Comma
import Mathlib.CategoryTheory.Limits.Constructions.Over.Basic
import Mathlib.CategoryTheory.Limits.FullSubcategory
import Mathlib.CategoryTheory.MorphismProperty.Comma
import Mathlib.CategoryTheory.MorphismProperty.Limits

/-!
# (Co)limits in subcategories of comma categories defined by morphism properties

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForgetCreatesLimitOfClosed.Variantffc7bf2e5851c5199491f070e01bd10326c0ab1bf920605cb68478f6d9fa0356

namespace CategoryTheory

open Limits MorphismProperty.Comma

variable {T : Type*} [Category T] (P : MorphismProperty T)

namespace MorphismProperty.Comma

variable {A B J : Type*} [Category A] [Category B] [Category J] {L : A ⥤ T} {R : B ⥤ T}
variable (D : J ⥤ P.Comma L R ⊤ ⊤)

/-- If `P` is closed under limits of shape `J` in `Comma L R`, then when `D` has
a limit in `Comma L R`, the forgetful functor creates this limit. -/
noncomputable def forgetCreatesLimitOfClosed
    (h : ClosedUnderLimitsOfShape J (fun f : Comma L R ↦ P f.hom))
    [HasLimit (D ⋙ forget L R P ⊤ ⊤)] :
    CreatesLimit D (forget L R P ⊤ ⊤) :=
  createsLimitOfFullyFaithfulOfIso
    (⟨limit (D ⋙ forget L R P ⊤ ⊤), h.limit fun j ↦ (D.obj j).prop⟩)
    (Iso.refl _)

/-- If `Comma L R` has limits of shape `J` and `Comma L R` is closed under limits of shape
`J`, then `forget L R P ⊤ ⊤` creates limits of shape `J`. -/
noncomputable def forgetCreatesLimitsOfShapeOfClosed [HasLimitsOfShape J (Comma L R)]
    (h : ClosedUnderLimitsOfShape J (fun f : Comma L R ↦ P f.hom)) :
    CreatesLimitsOfShape J (forget L R P ⊤ ⊤) where
  CreatesLimit := forgetCreatesLimitOfClosed _ _ h

lemma hasLimit_of_closedUnderLimitsOfShape
    (h : ClosedUnderLimitsOfShape J (fun f : Comma L R ↦ P f.hom))
    [HasLimit (D ⋙ forget L R P ⊤ ⊤)] :
    HasLimit D :=
  haveI : CreatesLimit D (forget L R P ⊤ ⊤) := forgetCreatesLimitOfClosed _ D h
  hasLimit_of_created D (forget L R P ⊤ ⊤)

lemma hasLimitsOfShape_of_closedUnderLimitsOfShape [HasLimitsOfShape J (Comma L R)]
    (h : ClosedUnderLimitsOfShape J (fun f : Comma L R ↦ P f.hom)) :
    HasLimitsOfShape J (P.Comma L R ⊤ ⊤) where
  has_limit _ := hasLimit_of_closedUnderLimitsOfShape _ _ h

end MorphismProperty.Comma

section

variable {A : Type*} [Category A] {L : A ⥤ T}

lemma CostructuredArrow.closedUnderLimitsOfShape_discrete_empty [L.Faithful] [L.Full] {Y : A}
    [P.ContainsIdentities] [P.RespectsIso] :
    ClosedUnderLimitsOfShape (Discrete PEmpty.{1})
      (fun f : CostructuredArrow L (L.obj Y) ↦ P f.hom) := by
  rintro D c hc -
  have : D = Functor.empty _ := Functor.empty_ext' _ _
  subst this
  let e : c.pt ≅ CostructuredArrow.mk (𝟙 (L.obj Y)) :=
    hc.conePointUniqueUpToIso CostructuredArrow.mkIdTerminal
  rw [P.costructuredArrow_iso_iff e]
  simpa using P.id_mem (L.obj Y)

end

section

variable {X : T}

lemma Over.closedUnderLimitsOfShape_discrete_empty [P.ContainsIdentities] [P.RespectsIso] :
    ClosedUnderLimitsOfShape (Discrete PEmpty.{1}) (fun f : Over X ↦ P f.hom) :=
  CostructuredArrow.closedUnderLimitsOfShape_discrete_empty P

/-- Let `P` be stable under composition and base change. If `P` satisfies cancellation on the right,
the subcategory of `Over X` defined by `P` is closed under pullbacks.

Without the cancellation property, this does not in general. Consider for example
`P = Function.Surjective` on `Type`. -/
lemma Over.closedUnderLimitsOfShape_pullback [HasPullbacks T]
    [P.IsStableUnderComposition] [P.IsStableUnderBaseChange] [P.HasOfPostcompProperty P] :
    ClosedUnderLimitsOfShape WalkingCospan (fun f : Over X ↦ P f.hom) := by
  intro D c hc hf
  have h : IsPullback (c.π.app .left).left (c.π.app .right).left (D.map WalkingCospan.Hom.inl).left
        (D.map WalkingCospan.Hom.inr).left := IsPullback.of_isLimit_cone <|
    Limits.isLimitOfPreserves (CategoryTheory.Over.forget X) hc
  rw [show c.pt.hom = (c.π.app .left).left ≫ (D.obj .left).hom by simp]
  apply P.comp_mem _ _ (P.of_isPullback h.flip ?_) (hf _)
  exact P.of_postcomp _ (D.obj WalkingCospan.one).hom (hf .one) (by simpa using hf .right)

end

namespace MorphismProperty.Over

variable (X : T)

noncomputable instance [P.ContainsIdentities] [P.RespectsIso] :
    CreatesLimitsOfShape (Discrete PEmpty.{1}) (Over.forget P ⊤ X) :=
  haveI : HasLimitsOfShape (Discrete PEmpty.{1}) (Comma (𝟭 T) (Functor.fromPUnit X)) := by
    show HasLimitsOfShape _ (Over X)
    infer_instance
  forgetCreatesLimitsOfShapeOfClosed P
    (Over.closedUnderLimitsOfShape_discrete_empty _)

variable {X} in
instance [P.ContainsIdentities] (Y : P.Over ⊤ X) :
    Unique (Y ⟶ Over.mk ⊤ (𝟙 X) (P.id_mem X)) where
  default := Over.homMk Y.hom
  uniq a := by
    ext
    · simp only [mk_left, Hom.hom_left, homMk_hom, Over.homMk_left]
      rw [← Over.w a]
      simp only [mk_left, Functor.const_obj_obj, Hom.hom_left, mk_hom, Category.comp_id]

/-- `X ⟶ X` is the terminal object of `P.Over ⊤ X`. -/
def mkIdTerminal [P.ContainsIdentities] :
    IsTerminal (Over.mk ⊤ (𝟙 X) (P.id_mem X)) :=
  IsTerminal.ofUnique _

instance [P.ContainsIdentities] : HasTerminal (P.Over ⊤ X) :=
  let h : IsTerminal (Over.mk ⊤ (𝟙 X) (P.id_mem X)) := Over.mkIdTerminal P X
  h.hasTerminal

/-- If `P` is stable under composition, base change and satisfies post-cancellation,
`Over.forget P ⊤ X` creates pullbacks. -/
noncomputable instance createsLimitsOfShape_walkingCospan [HasPullbacks T]
    [P.IsStableUnderComposition] [P.IsStableUnderBaseChange] [P.HasOfPostcompProperty P] :
    CreatesLimitsOfShape WalkingCospan (Over.forget P ⊤ X) :=
  haveI : HasLimitsOfShape WalkingCospan (Comma (𝟭 T) (Functor.fromPUnit X)) :=
    inferInstanceAs <| HasLimitsOfShape WalkingCospan (Over X)
  forgetCreatesLimitsOfShapeOfClosed P
    (Over.closedUnderLimitsOfShape_pullback P)

/-- If `P` is stable under composition, base change and satisfies post-cancellation,
`P.Over ⊤ X` has pullbacks -/
instance (priority := 900) hasPullbacks [HasPullbacks T] [P.IsStableUnderComposition]
    [P.IsStableUnderBaseChange] [P.HasOfPostcompProperty P] : HasPullbacks (P.Over ⊤ X) :=
  haveI : HasLimitsOfShape WalkingCospan (Comma (𝟭 T) (Functor.fromPUnit X)) :=
    inferInstanceAs <| HasLimitsOfShape WalkingCospan (Over X)
  hasLimitsOfShape_of_closedUnderLimitsOfShape P
    (Over.closedUnderLimitsOfShape_pullback P)

end MorphismProperty.Over

end CategoryTheory
```
