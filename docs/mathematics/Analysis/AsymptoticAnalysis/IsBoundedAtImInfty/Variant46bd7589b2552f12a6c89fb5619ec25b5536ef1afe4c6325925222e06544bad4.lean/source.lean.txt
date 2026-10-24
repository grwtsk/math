-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SummableNormEisSummand.Variant57f243a8a1d15462ae862d6f02f90f79fdf6c9d0062177b05b98efba7209b01f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57f243a8a1d15462ae862d6f02f90f79fdf6c9d0062177b05b98efba7209b01f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SummableNormEisSummand.Variant57f243a8a1d15462ae862d6f02f90f79fdf6c9d0062177b05b98efba7209b01f","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"57f243a8a1d15462ae862d6f02f90f79fdf6c9d0062177b05b98efba7209b01f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/ModularForms/EisensteinSeries/IsBoundedAtImInfty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty
public import Mathlib.NumberTheory.ModularForms.EisensteinSeries.Defs
public import Mathlib.NumberTheory.ModularForms.EisensteinSeries.Summable
public import Mathlib.NumberTheory.ModularForms.Identities

/-!
# Boundedness of Eisenstein series

We show that Eisenstein series of weight `k` and level `Γ(N)` with congruence condition
`a : Fin 2 → ZMod N` are bounded at infinity.

## Outline of argument

We need to bound the value of the Eisenstein series (acted on by `A : SL(2,ℤ)`)
at a given point `z` in the upper half plane. Since these are modular forms of level `Γ(N)`,
it suffices to prove this for `z ∈ verticalStrip N z.im`.

We can then, first observe that the slash action just changes our `a` to `(a ᵥ* A)` and
we then use our bounds for Eisenstein series in these vertical strips to get the result.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.SummableNormEisSummand.Variant57f243a8a1d15462ae862d6f02f90f79fdf6c9d0062177b05b98efba7209b01f

public section

noncomputable section

open ModularForm UpperHalfPlane Matrix SlashInvariantForm CongruenceSubgroup

open scoped MatrixGroups

namespace EisensteinSeries

lemma summable_norm_eisSummand {k : ℤ} (hk : 3 ≤ k) (z : ℍ) :
    Summable fun (x : Fin 2 → ℤ) ↦ ‖(eisSummand k x z)‖ := by
  have hk' : (2 : ℝ) < k := by norm_cast
  apply ((summable_one_div_norm_rpow hk').mul_left <| r z ^ (-k : ℝ)).of_nonneg_of_le
    (fun _ ↦ norm_nonneg _)
  intro b
  simp only [eisSummand, norm_zpow]
  exact_mod_cast summand_bound z (show 0 ≤ (k : ℝ) by positivity) b

/-- The norm of the restricted sum is less than the full sum of the norms. -/
lemma norm_le_tsum_norm (N : ℕ) (a : Fin 2 → ZMod N) (k : ℤ) (hk : 3 ≤ k) (z : ℍ) :
    ‖eisensteinSeries a k z‖ ≤ ∑' (x : Fin 2 → ℤ), ‖eisSummand k x z‖ := by
  simp_rw [eisensteinSeries]
  apply le_trans (norm_tsum_le_tsum_norm ((summable_norm_eisSummand hk z).subtype _))
    (Summable.tsum_subtype_le (fun (x : Fin 2 → ℤ) ↦ ‖(eisSummand k x z)‖) _ (fun _ ↦ norm_nonneg _)
      (summable_norm_eisSummand hk z))

/-- Eisenstein series are bounded at infinity. -/
theorem isBoundedAtImInfty_eisensteinSeriesSIF {N : ℕ} [NeZero N] (a : Fin 2 → ZMod N) {k : ℤ}
    (hk : 3 ≤ k) (A : SL(2, ℤ)) : IsBoundedAtImInfty (eisensteinSeriesSIF a k ∣[k] A) := by
  simp_rw [UpperHalfPlane.isBoundedAtImInfty_iff, eisensteinSeriesSIF] at *
  refine ⟨∑'(x : Fin 2 → ℤ), r ⟨⟨N, 2⟩, Nat.ofNat_pos⟩ ^ (-k) * ‖x‖ ^ (-k), 2, ?_⟩
  intro z hz
  obtain ⟨n, hn⟩ := (ModularGroup_T_zpow_mem_verticalStrip z (NeZero.pos N))
  rw [SlashInvariantForm.coe_mk, eisensteinSeries_slash_apply, ← eisensteinSeriesSIF_apply,
    ← T_zpow_width_invariant N k n (eisensteinSeriesSIF (a ᵥ* A) k) z]
  apply le_trans (norm_le_tsum_norm N (a ᵥ* A) k hk _)
  have hk' : (2 : ℝ) < k := by norm_cast
  apply (summable_norm_eisSummand hk _).tsum_le_tsum _
  · exact_mod_cast (summable_one_div_norm_rpow hk').mul_left <| r ⟨⟨N, 2⟩, Nat.ofNat_pos⟩ ^ (-k)
  · intro x
    simp_rw [eisSummand, norm_zpow]
    exact_mod_cast
      summand_bound_of_mem_verticalStrip (lt_trans two_pos hk').le x two_pos
      (verticalStrip_anti_right N hz hn)

end EisensteinSeries
