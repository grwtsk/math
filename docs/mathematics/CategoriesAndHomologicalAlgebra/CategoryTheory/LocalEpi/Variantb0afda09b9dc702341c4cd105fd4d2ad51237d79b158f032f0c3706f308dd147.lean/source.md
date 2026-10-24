# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalEpi.Variantb0afda09b9dc702341c4cd105fd4d2ad51237d79b158f032f0c3706f308dd147

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a20dcbb4e9f5f6bb82651e9317781a852b334c56` · SHA-256 `8cd11ce751ab59e1c1a81bd1a787e6964072567dc8d0cb40b7a0a893bc354b2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalEpi.Variantdae31729a962a05e226ab4571ff06f4869fbd142aa3178ae0013e53c2881840a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dae31729a962a05e226ab4571ff06f4869fbd142aa3178ae0013e53c2881840a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LocalEpi.Variantdae31729a962a05e226ab4571ff06f4869fbd142aa3178ae0013e53c2881840a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dae31729a962a05e226ab4571ff06f4869fbd142aa3178ae0013e53c2881840a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/MorphismProperty/LocalEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.MorphismProperty.Limits
public import Mathlib.CategoryTheory.Localization.Bousfield

/-!
# Local epimorphisms with respect to an object property

Let `P` be an object property on a category `C`. We say that `f : X ⟶ Y`
is a local epimorphism wrt. `P` if `f` cancels on the left for morphisms with
codomain in `P`.

If `C` is the category of presheafs on some category with Grothendieck topology `J` and `P` the
property of being a sheaf for `J`, then being a local epimorphism wrt. `P` is being
an epimorphism after sheafification.

## Main declarations

- `CategoryTheory.ObjectProperty.localEpi`: The morphism property of local epimorphisms.
- `CategoryTheory.ObjectProperty.localEpi_mem_range_iff_epi`: If `F ⊣ G` and `G`
  is fully faithful, then `f : X ⟶ Y` is a local epimorphism if and only if `F.map f` is an
  epimorphism.

## References

The terminology is from [M. Kashiwara, P. Schapira, *Categories and Sheaves*, 16.1][Kashiwara2006].
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalEpi.Variantdae31729a962a05e226ab4571ff06f4869fbd142aa3178ae0013e53c2881840a

@[expose] public section

namespace CategoryTheory

open Limits

variable {C : Type*} [Category* C] {P : ObjectProperty C}

namespace ObjectProperty

/-- A morphism `f` is a local epimorphism wrt. the object property `P`
if it satisfies left cancellation for morphisms with codomain in `P`. -/
def localEpi (P : ObjectProperty C) : MorphismProperty C := fun _ _ f ↦
  ∀ ⦃Z⦄, P Z → Function.Injective fun (g : _ ⟶ Z) ↦ f ≫ g

instance : P.localEpi.IsMultiplicative where
  id_mem X Z _ := by simpa using! Function.injective_id
  comp_mem f g hf hg T hT _ _ huv := hg hT (hf hT <| by simpa using huv)

lemma localEpi.of_epi {X Y : C} (f : X ⟶ Y) [Epi f] : P.localEpi f := by
  intro Z hZ u v huv
  rwa [← cancel_epi f]

@[simp]
lemma localEpi_top_apply_iff {X Y : C} {f : X ⟶ Y} :
    (⊤ : ObjectProperty C).localEpi f ↔ Epi f :=
  ⟨fun h ↦ ⟨fun _ _ huv ↦ h trivial huv⟩, fun _ ↦ .of_epi _⟩

lemma localEpi_top_eq_epimorphisms : (⊤ : ObjectProperty C).localEpi = .epimorphisms C := by
  ext
  simp

lemma localEpi_antitone : Antitone (localEpi (C := C)) :=
  fun _ _ hPQ _ _ _ hf _ hZ _ _ huv ↦ hf (hPQ _ hZ) huv

lemma localEpi_isoClosure : P.isoClosure.localEpi = P.localEpi := by
  refine le_antisymm (localEpi_antitone <| le_isoClosure P) ?_
  intro X Y f hf Z ⟨T, hT, ⟨e⟩⟩ u v huv
  rw [← cancel_mono e.hom]
  apply hf hT
  simpa

lemma isLocal_le_localEpi : P.isLocal ≤ P.localEpi :=
  fun _ _ _ hf Z hZ ↦ (hf Z hZ).injective

instance : P.localEpi.RespectsIso :=
  MorphismProperty.respectsIso_of_isStableUnderComposition fun _ _ _ _ ↦ .of_epi _

instance (W : MorphismProperty C) : P.localEpi.HasOfPrecompProperty W where
  of_precomp {X Y Z} f g _ hfg T hT u v huv := hfg hT (by simp [huv])

instance : P.localEpi.HasOfPostcompProperty P.isLocal where
  of_postcomp {X Y Z} f g hg hfg T hT u v huv := by
    obtain ⟨u, rfl⟩ := (hg _ hT).surjective u
    obtain ⟨v, rfl⟩ := (hg _ hT).surjective v
    simp [hfg hT (by simpa using huv)]

instance : P.localEpi.IsStableUnderCobaseChange := by
  refine .mk' fun X Y S f g _ hg T hT u v huv ↦ ?_
  refine pushout.hom_ext (hg hT ?_) huv
  simp [pushout.condition_assoc, huv]

instance : P.localEpi.Respects P.isLocal where
  precomp _ hf _ hg := MorphismProperty.comp_mem _ _ _ (isLocal_le_localEpi _ hf) hg
  postcomp _ hf _ hg := MorphismProperty.comp_mem _ _ _ hg (isLocal_le_localEpi _ hf)

variable {D : Type*} [Category* D] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)
  [G.Faithful] [G.Full]
include adj

lemma localEpi_mem_range_iff_epi {X Y : C} (f : X ⟶ Y) :
    localEpi (· ∈ Set.range G.obj) f ↔ Epi (F.map f) := by
  rw [← dsimp% (localEpi (· ∈ Set.range G.obj)).postcomp_iff _ _ (isLocal_adj_unit_app adj Y),
    dsimp% adj.unit.naturality f,
    dsimp% (localEpi (· ∈ Set.range G.obj)).precomp_iff _ _ (isLocal_adj_unit_app adj X)]
  refine ⟨fun h ↦ ⟨fun {Z} u v huv ↦ ?_⟩, ?_⟩
  · refine G.map_injective ?_
    apply h ⟨Z, rfl⟩
    simp [← Functor.map_comp, huv]
  · rintro h _ ⟨Z, rfl⟩ u v huv
    obtain ⟨u, rfl⟩ := G.map_surjective u
    obtain ⟨v, rfl⟩ := G.map_surjective v
    simp only [← G.map_comp, G.map_injective_iff, cancel_epi] at huv
    rw [huv]

lemma localEpi_mem_range_eq_inverseImage_epimorphisms :
    localEpi (· ∈ Set.range G.obj) = (MorphismProperty.epimorphisms _).inverseImage F := by
  ext X Y f
  rw [localEpi_mem_range_iff_epi adj]
  simp

lemma localEpi_essImage :
    G.essImage.localEpi = (MorphismProperty.epimorphisms _).inverseImage F := by
  rw [← Functor.isoClosure_eq_essImage, localEpi_isoClosure,
    localEpi_mem_range_eq_inverseImage_epimorphisms adj]

end ObjectProperty

end CategoryTheory
```
