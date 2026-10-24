-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteBooleanAlgebra.Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CompleteBooleanAlgebra.Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5","mathematical_subject":"Algebra.OrderTheory","original_sha256":"04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/BooleanAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Order.CompleteBooleanAlgebra

/-!
# Sets are a complete atomic boolean algebra.

This file contains only the definition of the complete atomic boolean algebra structure on `Set`.
Indexed union/intersection are defined in `Mathlib.Order.SetNotation`; lemmas are available in
`Mathlib/Data/Set/Lattice.lean`.

## Main declarations

* `Set.completeAtomicBooleanAlgebra`: `Set α` is a `CompleteAtomicBooleanAlgebra` with `≤ = ⊆`,
  `< = ⊂`, `⊓ = ∩`, `⊔ = ∪`, `⨅ = ⋂`, `⨆ = ⋃` and `\` as the set difference.
  See `Set.instBooleanAlgebra`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteBooleanAlgebra.Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5

variable {α : Type*}

namespace Set

/-! ### Complete lattice and complete Boolean algebra instances -/

instance instCompleteAtomicBooleanAlgebra : CompleteAtomicBooleanAlgebra (Set α) :=
  { instBooleanAlgebra with
    le_sSup := fun _ t t_in _ a_in => ⟨t, t_in, a_in⟩
    sSup_le := fun _ _ h _ ⟨t', ⟨t'_in, a_in⟩⟩ => h t' t'_in a_in
    le_sInf := fun _ _ h _ a_in t' t'_in => h t' t'_in a_in
    sInf_le := fun _ _ t_in _ h => h _ t_in
    iInf_iSup_eq := by intros; ext; simp [Classical.skolem] }

instance : OrderTop (Set α) where
  top := univ
  le_top := by simp

end Set
