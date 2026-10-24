# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monomorphisms.Variant41a4a085007128b68e8eaefda6cbd81e995d1df15962845b46ebd520d95eeec2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `862a03b016e4989f8cd7d542b05917f0af7b1bc2` · SHA-256 `08a49f03264f3621a77c100cdd3a63c95387285b47ed4a6378c7926172436882`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mono.Variante19ddd03d0b68d6874362bebb151044c4a118eab08ce6fd2cbbc81b250de6679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e19ddd03d0b68d6874362bebb151044c4a118eab08ce6fd2cbbc81b250de6679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Mono.Variante19ddd03d0b68d6874362bebb151044c4a118eab08ce6fd2cbbc81b250de6679","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e19ddd03d0b68d6874362bebb151044c4a118eab08ce6fd2cbbc81b250de6679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckCategory/Monomorphisms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Colim
import Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition

/-!
# Monomorphisms in Grothendieck abelian categories

In this file, we show that in a Grothendieck abelian category,
monomorphisms are stable under transfinite composition.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mono.Variante19ddd03d0b68d6874362bebb151044c4a118eab08ce6fd2cbbc81b250de6679

universe w v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] [Abelian C] [IsGrothendieckAbelian.{w} C]

namespace MorphismProperty.TransfiniteCompositionOfShape

variable {J : Type w} [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J]
  {X Y : C} {f : X ⟶ Y} (h : (monomorphisms C).TransfiniteCompositionOfShape J f)

attribute [local instance] IsCofiltered.isConnected

namespace mono

instance map_bot_le (j : J) : Mono (h.F.map (homOfLE bot_le : ⊥ ⟶ j)) := by
  induction j using SuccOrder.limitRecOn with
  | isMin j hj =>
    obtain rfl := hj.eq_bot
    exact inferInstanceAs (Mono (h.F.map (𝟙 _)))
  | succ j hj hj' =>
    have : Mono _ := h.map_mem j hj
    rw [← homOfLE_comp bot_le (Order.le_succ j), Functor.map_comp]
    infer_instance
  | isSuccLimit j hj hj' =>
    have : OrderBot (Set.Iio j) :=
      { bot := ⟨⊥, Order.IsSuccLimit.bot_lt hj ⟩
        bot_le _ := bot_le }
    let φ : (Functor.const _).obj (h.F.obj ⊥) ⟶
        (Set.principalSegIio j).monotone.functor ⋙ h.F :=
      { app k := h.F.map (homOfLE bot_le)
        naturality k k' hkk' := by
          dsimp
          rw [Category.id_comp, ← Functor.map_comp]
          rfl }
    have (k : Set.Iio j) : Mono (φ.app k) := hj' k.1 k.2
    have : Mono φ := NatTrans.mono_of_mono_app φ
    apply colim.map_mono' φ
      (isColimitConstCocone (Set.Iio j) (h.F.obj ⊥))
      (h.F.isColimitOfIsWellOrderContinuous j hj)
    rintro k
    dsimp [φ]
    rw [Category.id_comp, ← Functor.map_comp]
    rfl

end mono

include h in
lemma mono : Mono f := by
  let φ : (Functor.const _).obj X ⟶ h.F :=
    { app k := h.isoBot.inv ≫ h.F.map (homOfLE bot_le)
      naturality k k' hkk' := by
        dsimp
        rw [Category.id_comp, Category.assoc, ← Functor.map_comp]
        rfl }
  have : Mono φ := NatTrans.mono_of_mono_app φ
  exact colim.map_mono' φ (isColimitConstCocone J X) (h.isColimit) f (by aesop_cat)

instance mono_map (j j' : J) (f : j ⟶ j') : Mono (h.F.map f) :=
  ((h.ici j).iic ⟨j', leOfHom f⟩).mono

end MorphismProperty.TransfiniteCompositionOfShape

namespace IsGrothendieckAbelian

open MorphismProperty

instance : IsStableUnderTransfiniteComposition.{w} (monomorphisms C) where
  isStableUnderTransfiniteCompositionOfShape _ _ _ _ _ :=
    ⟨fun _ _ _ ⟨hf⟩ ↦ hf.mono⟩

end IsGrothendieckAbelian

end CategoryTheory
```
