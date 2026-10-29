-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.VAddWidthPeriodic.Variantc0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.VAddWidthPeriodic.Variantc0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"c0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/Identities.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.NumberTheory.ModularForms.SlashInvariantForms
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups

/-!
# Identities of ModularForms and SlashInvariantForms

Collection of useful identities of modular forms.
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.VAddWidthPeriodic.Variantc0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5

noncomputable section

open ModularForm UpperHalfPlane Matrix CongruenceSubgroup

namespace SlashInvariantForm

/- TODO: Once we have cusps, do this more generally, same below. -/
theorem vAdd_width_periodic (N : ℕ) (k n : ℤ) (f : SlashInvariantForm (Gamma N) k) (z : ℍ) :
    f (((N * n) : ℝ) +ᵥ z) = f z := by
  norm_cast
  rw [← modular_T_zpow_smul z (N * n)]
  convert slash_action_eqn' f (ModularGroup_T_pow_mem_Gamma N (N * n) (Int.dvd_mul_right N n)) z
  simp only [Fin.isValue, ModularGroup.coe_T_zpow (N * n), of_apply, cons_val', cons_val_zero,
    empty_val', cons_val_fin_one, cons_val_one, head_fin_const, Int.cast_zero, zero_mul, head_cons,
    Int.cast_one, zero_add, one_zpow, one_mul]

theorem T_zpow_width_invariant (N : ℕ) (k n : ℤ) (f : SlashInvariantForm (Gamma N) k) (z : ℍ) :
    f (((ModularGroup.T ^ (N * n))) • z) = f z := by
  rw [modular_T_zpow_smul z (N * n)]
  simpa only [Int.cast_mul, Int.cast_natCast] using vAdd_width_periodic N k n f z

end SlashInvariantForm
