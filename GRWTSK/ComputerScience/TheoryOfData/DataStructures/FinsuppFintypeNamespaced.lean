-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Single.Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Single.Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/Fintype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Alex J. Best
-/
import Mathlib.Data.Finsupp.Single
import Mathlib.Data.Fintype.BigOperators

/-!

# Finiteness and infiniteness of `Finsupp`

Some lemmas on the combination of `Finsupp`, `Fintype` and `Infinite`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Single.Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362

variable {ι α : Type*} [DecidableEq ι] [Fintype ι] [Zero α] [Fintype α]

noncomputable instance Finsupp.fintype : Fintype (ι →₀ α) :=
  Fintype.ofEquiv _ Finsupp.equivFunOnFinite.symm

instance Finsupp.infinite_of_left [Nontrivial α] [Infinite ι] : Infinite (ι →₀ α) :=
  let ⟨_, hm⟩ := exists_ne (0 : α)
  Infinite.of_injective _ <| Finsupp.single_left_injective hm

instance Finsupp.infinite_of_right [Infinite α] [Nonempty ι] : Infinite (ι →₀ α) :=
  Infinite.of_injective (fun i => Finsupp.single (Classical.arbitrary ι) i)
    (Finsupp.single_injective (Classical.arbitrary ι))

variable (ι α) in
@[simp] lemma Fintype.card_finsupp : card (ι →₀ α) = card α ^ card ι := by
  simp [card_congr Finsupp.equivFunOnFinite]
