# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.ValuativeRel.Variant8318ba832dc7a97afdcf5431b2a1c72234590f6655af9387b358c0612aeb2dee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea73a8cdab1855bd077fc4d8743ae2a19c1dedfe` · SHA-256 `0d811f93c871c90e88c5ca5016cb360f797678514a91a8e16ceda85bc76de0c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.ValuationPNeZero.Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PadicNumbers.SourceCorpus.ValuationPNeZero.Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d","mathematical_subject":"NumberTheory.PadicNumbers","original_sha256":"f579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/Padics/ValuativeRel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
module

public import Mathlib.NumberTheory.Padics.PadicNumbers
public import Mathlib.RingTheory.Valuation.RankOne
public import Mathlib.Topology.Algebra.ValuativeRel.ValuativeTopology

/-!
# p-adic numbers with a valuative relation

The instance `IsNonarchimedeanLocalField ℚ_[p]`, which builds on the instances constructed here,
can be found in `Mathlib/NumberTheory/Padics/LocalField.lean`.

## Tags

p-adic, p adic, padic, norm, valuation, cauchy, completion, p-adic completion
-/


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.ValuationPNeZero.Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d

public section

variable {p : ℕ} [hp : Fact p.Prime] {Γ₀ : Type*} [LinearOrderedCommMonoidWithZero Γ₀]
    (v : Valuation ℚ_[p] Γ₀)

open ValuativeRel WithZero Valuation MonoidWithZeroHom.ValueGroup₀

namespace Padic

-- TODO: should this be automatic from a nonarchimedean nontrivially normed field?
noncomputable instance : ValuativeRel ℚ_[p] := .ofValuation mulValuation

instance : Valuation.Compatible (mulValuation (p := p)) := .ofValuation _

variable [v.Compatible]

lemma valuation_p_ne_zero : v p ≠ 0 := by
  simp [(isEquiv v (Padic.mulValuation)).eq_zero, hp.out.ne_zero]

@[simp]
lemma valuation_p_lt_one : v p < 1 := by
  simp [(isEquiv v (Padic.mulValuation)).lt_one_iff_lt_one, hp.out.ne_zero]

instance : IsNontrivial ℚ_[p] where
  condition := ⟨ValuativeRel.valuation _ p, valuation_p_ne_zero _, (valuation_p_lt_one _).ne⟩

instance : IsRankLeOne ℚ_[p] := .of_compatible_mulArchimedean mulValuation

instance : IsValuativeTopology ℚ_[p] := by
  refine IsValuativeTopology.of_mem_nhds_zero_iff_vle (mulValuation (p := p)) fun {s} ↦ ?_
  rw [Metric.mem_nhds_iff]
  have h1p : (1 : ℝ) < p := mod_cast hp.out.one_lt
  constructor
  · -- A metric ball `‖·‖ < ε` contains the valuation ball of radius `v (p ^ n)` for large `n`.
    intro ⟨ε, hε, hball⟩
    obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hε (inv_lt_one_of_one_lt₀ h1p)
    have hnorm : ‖(p : ℚ_[p]) ^ n‖ < ε := by simpa [norm_pow, norm_p] using hn
    refine ⟨Units.mk0 (mulValuation.restrict (p ^ n)) ?_,
      fun z hz ↦ hball (mem_ball_zero_iff.mpr ?_)⟩
    · exact (ne_zero_iff _).mpr (pow_ne_zero _ (Nat.cast_ne_zero.mpr hp.out.ne_zero))
    simp only [Set.mem_ofPred_eq, Units.val_mk0, restrict_lt_iff] at hz
    exact (norm_lt_norm_iff_mulValuation_lt.mpr hz).trans hnorm
  · -- Conversely, a valuation ball `v · < γ` is the metric ball of radius `p ^ log γ`.
    intro ⟨γ, hγ⟩
    refine ⟨p ^ log (embedding γ.val), zpow_pos (by positivity) _, fun _ hz ↦ hγ ?_⟩
    rw [mem_ball_zero_iff, norm_lt_zpow_iff_mulValuation_lt_exp, exp_log (by simp)] at hz
    simpa [restrict_lt_iff_lt_embedding] using hz

end Padic
```
