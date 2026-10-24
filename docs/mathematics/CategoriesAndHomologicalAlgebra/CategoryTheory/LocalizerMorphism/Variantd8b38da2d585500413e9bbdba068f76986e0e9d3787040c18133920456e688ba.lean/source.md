# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalizerMorphism.Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e73bc93bc18354b9603e6d75f4a13ff4c82d20d5` · SHA-256 `85597f129c747a7d854f4b2cc70c1f2835a63e252b44518b5c4c95efc2754da6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalizerMorphism.Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LocalizerMorphism.Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/LocalizerMorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Equivalence

/-!
# Morphisms of localizers

A morphism of localizers consists of a functor `F : C₁ ⥤ C₂` between
two categories equipped with morphism properties `W₁` and `W₂` such
that `F` sends morphisms in `W₁` to morphisms in `W₂`.

If `Φ : LocalizerMorphism W₁ W₂`, and that `L₁ : C₁ ⥤ D₁` and `L₂ : C₂ ⥤ D₂`
are localization functors for `W₁` and `W₂`, the induced functor `D₁ ⥤ D₂`
is denoted `Φ.localizedFunctor L₁ L₂`; we introduce the condition
`Φ.IsLocalizedEquivalence` which expresses that this functor is an equivalence
of categories. This condition is independent of the choice of the
localized categories.

## References
* [Bruno Kahn and Georges Maltsiniotis, *Structures de dérivabilité*][KahnMaltsiniotis2008]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalizerMorphism.Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855

universe v₁ v₂ v₃ v₄ v₄' v₅ v₅' v₆ u₁ u₂ u₃ u₄ u₄' u₅ u₅' u₆

namespace CategoryTheory

open Localization

variable {C₁ : Type u₁} {C₂ : Type u₂} {C₃ : Type u₃} {D₁ : Type u₄} {D₂ : Type u₅}
  [Category.{v₁} C₁] [Category.{v₂} C₂] [Category.{v₃} C₃] [Category.{v₄} D₁] [Category.{v₅} D₂]
  (W₁ : MorphismProperty C₁) (W₂ : MorphismProperty C₂) (W₃ : MorphismProperty C₃)

/-- If `W₁ : MorphismProperty C₁` and `W₂ : MorphismProperty C₂`, a `LocalizerMorphism W₁ W₂`
is the datum of a functor `C₁ ⥤ C₂` which sends morphisms in `W₁` to morphisms in `W₂` -/
structure LocalizerMorphism where
  /-- a functor between the two categories -/
  functor : C₁ ⥤ C₂
  /-- the functor is compatible with the `MorphismProperty` -/
  map : W₁ ≤ W₂.inverseImage functor

namespace LocalizerMorphism

/-- The identity functor as a morphism of localizers. -/
@[simps]
def id : LocalizerMorphism W₁ W₁ where
  functor := 𝟭 C₁
  map _ _ _ hf := hf

variable {W₁ W₂ W₃}

/-- The composition of two localizers morphisms. -/
@[simps]
def comp (Φ : LocalizerMorphism W₁ W₂) (Ψ : LocalizerMorphism W₂ W₃) :
    LocalizerMorphism W₁ W₃ where
  functor := Φ.functor ⋙ Ψ.functor
  map _ _ _ hf := Ψ.map _ (Φ.map _ hf)

variable (Φ : LocalizerMorphism W₁ W₂)

/-- The opposite localizer morphism `LocalizerMorphism W₁.op W₂.op` deduced
from `Φ : LocalizerMorphism W₁ W₂`. -/
@[simps]
def op : LocalizerMorphism W₁.op W₂.op where
  functor := Φ.functor.op
  map _ _ _ hf := Φ.map _ hf

variable (L₁ : C₁ ⥤ D₁) [L₁.IsLocalization W₁] (L₂ : C₂ ⥤ D₂) [L₂.IsLocalization W₂]

lemma inverts : W₁.IsInvertedBy (Φ.functor ⋙ L₂) :=
  fun _ _ _ hf => Localization.inverts L₂ W₂ _ (Φ.map _ hf)

/-- When `Φ : LocalizerMorphism W₁ W₂` and that `L₁` and `L₂` are localization functors
for `W₁` and `W₂`, then `Φ.localizedFunctor L₁ L₂` is the induced functor on the
localized categories. -/
noncomputable def localizedFunctor : D₁ ⥤ D₂ :=
  lift (Φ.functor ⋙ L₂) (Φ.inverts _) L₁

noncomputable instance liftingLocalizedFunctor :
    Lifting L₁ W₁ (Φ.functor ⋙ L₂) (Φ.localizedFunctor L₁ L₂) := by
  dsimp [localizedFunctor]
  infer_instance

/-- The 2-commutative square expressing that `Φ.localizedFunctor L₁ L₂` lifts the
functor `Φ.functor` -/
noncomputable instance catCommSq : CatCommSq Φ.functor L₁ L₂ (Φ.localizedFunctor L₁ L₂) :=
  CatCommSq.mk (Lifting.iso _ W₁ _ _).symm

variable (G : D₁ ⥤ D₂)

section

variable [CatCommSq Φ.functor L₁ L₂ G]
  {D₁' : Type u₄'} {D₂' : Type u₅'}
  [Category.{v₄'} D₁'] [Category.{v₅'} D₂']
  (L₁' : C₁ ⥤ D₁') (L₂' : C₂ ⥤ D₂') [L₁'.IsLocalization W₁] [L₂'.IsLocalization W₂]
  (G' : D₁' ⥤ D₂') [CatCommSq Φ.functor L₁' L₂' G']
include W₁ W₂ Φ L₁ L₂ L₁' L₂'

/-- If a localizer morphism induces an equivalence on some choice of localized categories,
it will be so for any choice of localized categoriees. -/
lemma isEquivalence_imp [G.IsEquivalence] : G'.IsEquivalence :=
  let E₁ := Localization.uniq L₁ L₁' W₁
  let E₂ := Localization.uniq L₂ L₂' W₂
  let e : L₁ ⋙ G ⋙ E₂.functor ≅ L₁ ⋙ E₁.functor ⋙ G' :=
    calc
      L₁ ⋙ G ⋙ E₂.functor ≅ Φ.functor ⋙ L₂ ⋙ E₂.functor :=
          (Functor.associator _ _ _).symm ≪≫
            isoWhiskerRight (CatCommSq.iso Φ.functor L₁ L₂ G).symm E₂.functor ≪≫
            Functor.associator _ _ _
      _ ≅ Φ.functor ⋙ L₂' := isoWhiskerLeft Φ.functor (compUniqFunctor L₂ L₂' W₂)
      _ ≅ L₁' ⋙ G' := CatCommSq.iso Φ.functor L₁' L₂' G'
      _ ≅ L₁ ⋙ E₁.functor ⋙ G' :=
            isoWhiskerRight (compUniqFunctor L₁ L₁' W₁).symm G' ≪≫ Functor.associator _ _ _
  have := Functor.isEquivalence_of_iso
    (liftNatIso L₁ W₁ _ _ (G ⋙ E₂.functor) (E₁.functor ⋙ G') e)
  Functor.isEquivalence_of_comp_left E₁.functor G'

lemma isEquivalence_iff : G.IsEquivalence ↔ G'.IsEquivalence :=
  ⟨fun _ => Φ.isEquivalence_imp L₁ L₂ G L₁' L₂' G',
    fun _ => Φ.isEquivalence_imp L₁' L₂' G' L₁ L₂ G⟩

end

/-- Condition that a `LocalizerMorphism` induces an equivalence on the localized categories -/
class IsLocalizedEquivalence : Prop where
  /-- the induced functor on the constructed localized categories is an equivalence -/
  isEquivalence : (Φ.localizedFunctor W₁.Q W₂.Q).IsEquivalence

lemma IsLocalizedEquivalence.mk' [CatCommSq Φ.functor L₁ L₂ G] [G.IsEquivalence] :
    Φ.IsLocalizedEquivalence where
  isEquivalence := by
    rw [Φ.isEquivalence_iff W₁.Q W₂.Q (Φ.localizedFunctor W₁.Q W₂.Q) L₁ L₂ G]
    exact inferInstance

/-- If a `LocalizerMorphism` is a localized equivalence, then any compatible functor
between the localized categories is an equivalence. -/
lemma isEquivalence [h : Φ.IsLocalizedEquivalence] [CatCommSq Φ.functor L₁ L₂ G] :
    G.IsEquivalence := (by
  rw [Φ.isEquivalence_iff L₁ L₂ G W₁.Q W₂.Q (Φ.localizedFunctor W₁.Q W₂.Q)]
  exact h.isEquivalence)

/-- If a `LocalizerMorphism` is a localized equivalence, then the induced functor on
the localized categories is an equivalence -/
instance localizedFunctor_isEquivalence [Φ.IsLocalizedEquivalence] :
    (Φ.localizedFunctor L₁ L₂).IsEquivalence :=
  Φ.isEquivalence L₁ L₂ _

/-- When `Φ : LocalizerMorphism W₁ W₂`, if the composition `Φ.functor ⋙ L₂` is a
localization functor for `W₁`, then `Φ` is a localized equivalence. -/
lemma IsLocalizedEquivalence.of_isLocalization_of_isLocalization
    [(Φ.functor ⋙ L₂).IsLocalization W₁] :
    IsLocalizedEquivalence Φ := by
  have : CatCommSq Φ.functor (Φ.functor ⋙ L₂) L₂ (𝟭 D₂) :=
    CatCommSq.mk (Functor.rightUnitor _).symm
  exact IsLocalizedEquivalence.mk' Φ (Φ.functor ⋙ L₂) L₂ (𝟭 D₂)

/-- When the underlying functor `Φ.functor` of `Φ : LocalizerMorphism W₁ W₂` is
an equivalence of categories and that `W₁` and `W₂` essentially correspond to each
other via this equivalence, then `Φ` is a localized equivalence. -/
lemma IsLocalizedEquivalence.of_equivalence [Φ.functor.IsEquivalence]
    (h : W₂ ≤ W₁.map Φ.functor) : IsLocalizedEquivalence Φ := by
  haveI : Functor.IsLocalization (Φ.functor ⋙ MorphismProperty.Q W₂) W₁ := by
    refine Functor.IsLocalization.of_equivalence_source W₂.Q W₂ (Φ.functor ⋙ W₂.Q) W₁
      (Functor.asEquivalence Φ.functor).symm ?_ (Φ.inverts W₂.Q)
      ((Functor.associator _ _ _).symm ≪≫ isoWhiskerRight ((Equivalence.unitIso _).symm) _ ≪≫
        Functor.leftUnitor _)
    erw [W₁.isoClosure.inverseImage_equivalence_functor_eq_map_inverse]
    rw [MorphismProperty.map_isoClosure]
    exact h
  exact IsLocalizedEquivalence.of_isLocalization_of_isLocalization Φ W₂.Q

instance IsLocalizedEquivalence.isLocalization [Φ.IsLocalizedEquivalence] :
    (Φ.functor ⋙ L₂).IsLocalization W₁ :=
  Functor.IsLocalization.of_iso _ ((Φ.catCommSq W₁.Q L₂).iso).symm

/-- The localizer morphism from `W₁.arrow` to `W₂.arrow` that is induced by
`Φ : LocalizerMorphism W₁ W₂`. -/
@[simps]
def arrow : LocalizerMorphism W₁.arrow W₂.arrow where
  functor := Φ.functor.mapArrow
  map _ _ _ hf := ⟨Φ.map _ hf.1, Φ.map _ hf.2⟩

end LocalizerMorphism

end CategoryTheory
```
