# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cb3dc550b999e346a8aeb597e5a620bb34674ea` · SHA-256 `ba0ef37c1bb1eda811b855aa64dd195435298ddcb344485b591a45cc3a4d37f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransMonoIffMonoApp.Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NatTransMonoIffMonoApp.Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Constructions.EpiMono
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic

/-!
# Monomorphisms and epimorphisms in functor categories

A natural transformation `f : F ⟶ G` between functors `K ⥤ C`
is a mono (resp. epi) iff for all `k : K`, `f.app k` is,
at least when `C` has pullbacks (resp. pushouts),
see `NatTrans.mono_iff_mono_app` and `NatTrans.epi_iff_epi_app`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransMonoIffMonoApp.Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827

universe v v' v'' u u' u''

namespace CategoryTheory

open Limits

variable {K : Type u} [Category.{v} K] {C : Type u'} [Category.{v'} C]
  {D : Type u''} [Category.{v''} D] {F G : K ⥤ C} (f : F ⟶ G)
section

variable [HasPullbacks C]

instance [Mono f] (k : K) : Mono (f.app k) :=
  inferInstanceAs (Mono (((evaluation K C).obj k).map f))

lemma NatTrans.mono_iff_mono_app : Mono f ↔ ∀ (k : K), Mono (f.app k) :=
  ⟨fun _ ↦ inferInstance, fun _ ↦ mono_of_mono_app _⟩

instance [Mono f] (H : C ⥤ D) [H.PreservesMonomorphisms] :
    Mono (whiskerRight f H) := by
  have : ∀ X, Mono ((whiskerRight f H).app X) := by intros; dsimp; infer_instance
  apply NatTrans.mono_of_mono_app

end

section

variable [HasPushouts C]

instance [Epi f] (k : K) : Epi (f.app k) :=
  inferInstanceAs (Epi (((evaluation K C).obj k).map f))

lemma NatTrans.epi_iff_epi_app : Epi f ↔ ∀ (k : K), Epi (f.app k) :=
  ⟨fun _ ↦ inferInstance, fun _ ↦ epi_of_epi_app _⟩

instance [Epi f] (H : C ⥤ D) [H.PreservesEpimorphisms] :
    Epi (whiskerRight f H) := by
  have : ∀ X, Epi ((whiskerRight f H).app X) := by intros; dsimp; infer_instance
  apply NatTrans.epi_of_epi_app

end

end CategoryTheory
```
