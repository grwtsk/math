-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RankPunit.Variant614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RankPunit.Variant614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824","mathematical_subject":"Logic.Foundations","original_sha256":"614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Dimension/Subsingleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kim Morrison, Eric Wieser, Junyan Xu, Andrew Yang
-/
import Mathlib.LinearAlgebra.Dimension.Basic

/-!
# Dimension of trivial modules
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RankPunit.Variant614922a95fbf6feecedee1febcd7f2631b497ddb93d7c64870ce298460f24824

variable (R M : Type*) [Semiring R] [AddCommMonoid M] [Module R M]

section

variable [Nontrivial R]

/-- See `rank_subsingleton` that assumes `Subsingleton R` instead. -/
@[simp, nontriviality] theorem rank_subsingleton' [Subsingleton M] : Module.rank R M = 0 := by
  rw [Module.rank, ← bot_eq_zero, eq_bot_iff]
  exact ciSup_le fun s ↦ by simp [(linearIndependent_subsingleton_iff _).mp s.2]

theorem rank_punit : Module.rank R PUnit = 0 := rank_subsingleton' _ _

theorem rank_bot : Module.rank R (⊥ : Submodule R M) = 0 := rank_subsingleton' _ _

end

@[nontriviality, simp]
theorem rank_subsingleton [Subsingleton R] : Module.rank R M = 1 := by
  haveI := Module.subsingleton R M
  have : Nonempty { s : Set M // LinearIndepOn R id s} := ⟨⟨∅, linearIndepOn_empty _ _⟩⟩
  rw [Module.rank_def, ciSup_eq_of_forall_le_of_forall_lt_exists_gt]
  · rintro ⟨s, hs⟩
    rw [Cardinal.mk_le_one_iff_set_subsingleton]
    apply Set.subsingleton_of_subsingleton
  intro w hw
  exact ⟨⟨{0}, LinearIndepOn.of_subsingleton⟩, hw.trans_eq (Cardinal.mk_singleton _).symm⟩
