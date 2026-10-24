# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.IsBoundedAtImInfty.Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `323d46764a6ba0b4d8b09abcfb00a69cfc57f0eb` · SHA-256 `58dcae12b2757256f11d89947ae3b1128807248199d450883dd016d1afbcf5d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SummableNormEisSummand.Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SummableNormEisSummand.Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/EisensteinSeries/IsBoundedAtImInfty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty
import Mathlib.Analysis.Normed.Order.Lattice
import Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence
import Mathlib.NumberTheory.ModularForms.Identities

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


namespace GRWTSK.Analysis.AsymptoticAnalysis.SummableNormEisSummand.Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba

noncomputable section

open ModularForm UpperHalfPlane  Matrix SlashInvariantForm CongruenceSubgroup
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
    ‖eisensteinSeries a k z‖  ≤ ∑' (x : Fin 2 → ℤ), ‖eisSummand k x z‖ := by
  simp_rw [eisensteinSeries]
  apply le_trans (norm_tsum_le_tsum_norm ((summable_norm_eisSummand hk z).subtype _))
    (Summable.tsum_subtype_le (fun (x : Fin 2 → ℤ) ↦ ‖(eisSummand k x z)‖) _ (fun _ ↦ norm_nonneg _)
      (summable_norm_eisSummand hk z))

@[deprecated (since := "2025-02-17")] alias abs_le_tsum_abs := norm_le_tsum_norm

/-- Eisenstein series are bounded at infinity. -/
theorem isBoundedAtImInfty_eisensteinSeries_SIF {N : ℕ+} (a : Fin 2 → ZMod N) {k : ℤ} (hk : 3 ≤ k)
    (A : SL(2, ℤ)) : IsBoundedAtImInfty ((eisensteinSeries_SIF a k).toFun ∣[k] A) := by
  simp_rw [UpperHalfPlane.isBoundedAtImInfty_iff, eisensteinSeries_SIF] at *
  refine ⟨∑'(x : Fin 2 → ℤ), r ⟨⟨N, 2⟩, Nat.ofNat_pos⟩ ^ (-k) * ‖x‖ ^ (-k), 2, ?_⟩
  intro z hz
  obtain ⟨n, hn⟩ := (ModularGroup_T_zpow_mem_verticalStrip z N.2)
  rw [eisensteinSeries_slash_apply, ← eisensteinSeries_SIF_apply,
    ← T_zpow_width_invariant N k n (eisensteinSeries_SIF (a ᵥ* A) k) z]
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
```
