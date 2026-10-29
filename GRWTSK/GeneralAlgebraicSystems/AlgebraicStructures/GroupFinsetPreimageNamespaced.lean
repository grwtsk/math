-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdPreimagePrime.Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdPreimagePrime.Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Group/Finset/Preimage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Finset.Preimage
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Sums and products over preimages of finite sets.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdPreimagePrime.Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff

assert_not_exists MonoidWithZero MulAction OrderedCommMonoid

variable {ι κ β : Type*}

open Fin Function

namespace Finset

variable [CommMonoid β]

@[to_additive]
lemma prod_preimage' (f : ι → κ) [DecidablePred (· ∈ Set.range f)] (s : Finset κ) (hf) (g : κ → β) :
    ∏ x ∈ s.preimage f hf, g (f x) = ∏ x ∈ s with x ∈ Set.range f, g x := by
  classical
  calc
    ∏ x ∈ preimage s f hf, g (f x) = ∏ x ∈ image f (preimage s f hf), g x :=
      Eq.symm <| prod_image <| by simpa only [mem_preimage, Set.InjOn] using hf
    _ = ∏ x ∈ s with x ∈ Set.range f, g x := by rw [image_preimage]

@[to_additive]
lemma prod_preimage (f : ι → κ) (s : Finset κ) (hf) (g : κ → β)
    (hg : ∀ x ∈ s, x ∉ Set.range f → g x = 1) :
    ∏ x ∈ s.preimage f hf, g (f x) = ∏ x ∈ s, g x := by
  classical rw [prod_preimage', prod_filter_of_ne]; exact fun x hx ↦ Not.imp_symm (hg x hx)

@[to_additive]
lemma prod_preimage_of_bij (f : ι → κ) (s : Finset κ) (hf : Set.BijOn f (f ⁻¹' ↑s) ↑s) (g : κ → β) :
    ∏ x ∈ s.preimage f hf.injOn, g (f x) = ∏ x ∈ s, g x :=
  prod_preimage _ _ hf.injOn g fun _ hs h_f ↦ (h_f <| hf.subset_range hs).elim

end Finset
