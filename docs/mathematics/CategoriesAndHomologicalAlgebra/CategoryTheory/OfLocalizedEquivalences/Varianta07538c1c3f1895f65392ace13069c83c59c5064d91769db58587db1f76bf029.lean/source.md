# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfLocalizedEquivalences.Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b1101deea54428a0be2aa5150ea87b729f917c4` · SHA-256 `fbc9e4f4e40ae5f58b937280517fb1c7986565ff1a48f1333972007e5609afe2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLeftDerivabilityStructureOfIsLocalizedEquivalence.Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLeftDerivabilityStructureOfIsLocalizedEquivalence.Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Localization/DerivabilityStructure/OfLocalizedEquivalences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Localization.DerivabilityStructure.Basic
public import Mathlib.CategoryTheory.GuitartExact.HorizontalComposition

/-!
# Derivability structures deduced from localized equivalences

Assume that we have a diagram of localizer morphisms, in the
sense that we have an isomorphism `T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor`.
```
      T
 W₁  ---> W₂
 |        |
L|        |R
 v        v
 W₁' ---> W₂'
      B
```
In this file, we obtain the lemma
`LocalizerMorphism.isRightDerivabilityStructure_of_isLocalizedEquivalence` which shows
that if both `L` and `R` are localized equivalences (with `R.functor` essentially surjective),
then `B` is a right derivability structure when `T` is a right derivability structure,
the `2`-square above is Guitart exact (and `W₂'` respects isomorphisms).
In addition, if we require that `L.functor` is also essentially surjective,
that `R.functor` is full and that `W₂` is induced by `W₂'`, then
`B` is a right derivability structure iff `T` is.

The dual results for left derivability structures are also obtained.

This will be particularly useful when `L.functor` and `R.functor` are functors
from a category to a quotient category (e.g. functors from categories of homological
complexes to homotopy categories).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLeftDerivabilityStructureOfIsLocalizedEquivalence.Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37

public section

namespace CategoryTheory

namespace LocalizerMorphism

variable {C₁ C₂ D₁ D₂ : Type*} [Category* C₁] [Category* C₂] [Category* D₁] [Category* D₂]
  {W₁ : MorphismProperty C₁} {W₁' : MorphismProperty D₁}
  {W₂ : MorphismProperty C₂} {W₂' : MorphismProperty D₂}
  {T : LocalizerMorphism W₁ W₂} {L : LocalizerMorphism W₁ W₁'}
  {R : LocalizerMorphism W₂ W₂'} {B : LocalizerMorphism W₁' W₂'}

section

variable [W₂'.RespectsIso]
  [L.IsLocalizedEquivalence] [R.IsLocalizedEquivalence] [R.functor.EssSurj]

set_option backward.isDefEq.respectTransparency false in
lemma isLeftDerivabilityStructure_of_isLocalizedEquivalence
    [T.IsLeftDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.inv] :
    B.IsLeftDerivabilityStructure := by
  have : B.HasLeftResolutions := fun Y₂ ↦ by
    obtain ⟨X₂, ⟨e₂⟩⟩ := Functor.EssSurj.mem_essImage R.functor Y₂
    have ρ : T.LeftResolution X₂ := Classical.arbitrary _
    exact ⟨{
      X₁ := L.functor.obj ρ.X₁
      w := iso.inv.app _ ≫ R.functor.map ρ.w ≫ e₂.hom
      hw := (W₂'.arrow_mk_iso_iff (Arrow.isoMk (iso.app _) e₂)).1 (R.map _ ρ.hw) }⟩
  let F := B.localizedFunctor W₁'.Q W₂'.Q
  let e' := CatCommSq.iso B.functor W₁'.Q W₂'.Q F
  let iso' : CatCommSq T.functor L.functor R.functor B.functor := ⟨iso⟩
  let : CatCommSq T.functor (L.functor ⋙ W₁'.Q) (R.functor ⋙ W₂'.Q) F :=
    CatCommSq.vComp (H₂ := B.functor) _ _ _ _ _ _
  have : (TwoSquare.hComp iso.inv e'.inv).GuitartExact := by
    convert!
      T.guitartExact_of_isLeftDerivabilityStructure' (L.functor ⋙ W₁'.Q) (R.functor ⋙ W₂'.Q) F
        (CatCommSq.iso _ _ _ _)
    ext
    simp [e', CatCommSq.iso, iso']
  rw [B.isLeftDerivabilityStructure_iff W₁'.Q W₂'.Q F e']
  apply TwoSquare.GuitartExact.of_hComp iso.inv

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
lemma isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence
    [L.functor.EssSurj] [R.functor.Full] [R.IsInduced]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.inv] :
    T.IsLeftDerivabilityStructure ↔ B.IsLeftDerivabilityStructure := by
  refine ⟨fun _ ↦ isLeftDerivabilityStructure_of_isLocalizedEquivalence iso, fun _ ↦ ?_⟩
  have : T.HasLeftResolutions := fun X₂ ↦ by
    let ρ : B.LeftResolution (R.functor.obj X₂) := Classical.arbitrary _
    exact ⟨{
      X₁ := L.functor.objPreimage ρ.X₁
      w :=
        R.functor.preimage (iso.hom.app _ ≫
          B.functor.map (L.functor.objObjPreimageIso ρ.X₁).hom ≫ ρ.w)
      hw := by
        simp only [← R.inverseImage_eq, Functor.comp_obj,
          MorphismProperty.inverseImage_iff, Functor.map_preimage]
        refine (W₂'.arrow_mk_iso_iff ?_).2 ρ.hw
        exact Arrow.isoMk (iso.app _ ≪≫ B.functor.mapIso (L.functor.objObjPreimageIso ρ.X₁))
          (Iso.refl _) }⟩
  let F := B.localizedFunctor W₁'.Q W₂'.Q
  let e' := CatCommSq.iso B.functor W₁'.Q W₂'.Q F
  let e : T.functor ⋙ R.functor ⋙ W₂'.Q ≅ (L.functor ⋙ W₁'.Q) ⋙ F :=
    (Functor.associator _ _ _).symm ≪≫ Functor.isoWhiskerRight iso _ ≪≫
      Functor.associator _ _ _ ≪≫
      Functor.isoWhiskerLeft _ e' ≪≫ (Functor.associator _ _ _).symm
  have he' : TwoSquare.GuitartExact e'.inv := inferInstance
  have : TwoSquare.hComp iso.inv e'.inv = e.inv := by ext; simp [e]
  rw [T.isLeftDerivabilityStructure_iff (L.functor ⋙ W₁'.Q)
    (R.functor ⋙ W₂'.Q) F e, ← this]
  infer_instance

set_option backward.isDefEq.respectTransparency.types false in
lemma isRightDerivabilityStructure_of_isLocalizedEquivalence
    [T.IsRightDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.hom] :
    B.IsRightDerivabilityStructure := by
  rw [isRightDerivabilityStructure_iff_op]
  let iso' : T.op.functor ⋙ R.op.functor ≅ L.op.functor ⋙ B.op.functor := NatIso.op iso.symm
  have : TwoSquare.GuitartExact iso'.inv :=
    inferInstanceAs (TwoSquare.op iso.hom).GuitartExact
  exact isLeftDerivabilityStructure_of_isLocalizedEquivalence iso'

set_option backward.isDefEq.respectTransparency.types false in
lemma isRightDerivabilityStructure_iff_of_isLocalizedEquivalence
    [L.functor.EssSurj] [R.functor.Full] [R.IsInduced]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.hom] :
    T.IsRightDerivabilityStructure ↔ B.IsRightDerivabilityStructure := by
  simp only [isRightDerivabilityStructure_iff_op]
  let iso' : T.op.functor ⋙ R.op.functor ≅ L.op.functor ⋙ B.op.functor := NatIso.op iso.symm
  have : TwoSquare.GuitartExact iso'.inv :=
    inferInstanceAs (TwoSquare.op iso.hom).GuitartExact
  exact isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence iso'

end

variable [W₁'.RespectsIso] [W₂'.RespectsIso] [L.IsInduced] [L.functor.IsEquivalence]
  [R.IsInduced] [R.functor.IsEquivalence]
  (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)

set_option backward.isDefEq.respectTransparency.types false in
lemma isLeftDerivabilityStructure_of_equivalences
    [T.IsLeftDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor) :
    B.IsLeftDerivabilityStructure := by
  have := L.isLocalizedEquivalence_of_isInduced
  have := R.isLocalizedEquivalence_of_isInduced
  exact isLeftDerivabilityStructure_of_isLocalizedEquivalence iso

open CategoryTheory.Functor in
lemma isLeftDerivabilityStructure_iff_of_equivalences
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor) :
    T.IsLeftDerivabilityStructure ↔ B.IsLeftDerivabilityStructure :=
  ⟨fun _ ↦ isLeftDerivabilityStructure_of_equivalences iso, fun _ ↦ by
    let e : B.functor ⋙ R.inv.functor ≅ L.inv.functor ⋙ T.functor :=
      (leftUnitor _).symm ≪≫
        isoWhiskerRight L.functor.asEquivalence.counitIso.symm _ ≪≫
        associator _ _ _ ≪≫ isoWhiskerLeft _ (associator _ _ _).symm ≪≫
        isoWhiskerLeft _ (isoWhiskerRight iso.symm R.inv.functor) ≪≫
        isoWhiskerLeft _ (associator _ _ _) ≪≫
        isoWhiskerLeft _ (isoWhiskerLeft _ R.functor.asEquivalence.unitIso.symm) ≪≫
        (associator _ _ _).symm ≪≫ rightUnitor _
    have : W₁.RespectsIso := by rw [← L.inverseImage_eq]; infer_instance
    have : W₂.RespectsIso := by rw [← R.inverseImage_eq]; infer_instance
    exact isLeftDerivabilityStructure_of_equivalences e⟩

lemma isRightDerivabilityStructure_iff_of_equivalences
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor) :
    T.IsRightDerivabilityStructure ↔ B.IsRightDerivabilityStructure := by
  let e : T.op.functor ⋙ R.op.functor ≅ L.op.functor ⋙ B.op.functor := NatIso.op iso.symm
  simp only [isRightDerivabilityStructure_iff_op,
    isLeftDerivabilityStructure_iff_of_equivalences e]

lemma isRightDerivabilityStructure_of_equivalences
    [T.IsRightDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor) :
    B.IsRightDerivabilityStructure := by
  rwa [← isRightDerivabilityStructure_iff_of_equivalences iso]

end LocalizerMorphism

end CategoryTheory
````
