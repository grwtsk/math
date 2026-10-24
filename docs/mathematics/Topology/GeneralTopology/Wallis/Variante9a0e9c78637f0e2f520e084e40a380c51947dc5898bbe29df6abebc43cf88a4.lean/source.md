# Complete source: GRWTSK.Topology.GeneralTopology.Wallis.Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb82347a1d73a9cff822b1f851ccba6b6c2adfe3` · SHA-256 `2e1287acdaf12583fa166e4f5e9f3894f95ab204639d61ad021daf0d54ed1bdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.W.Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.W.Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96","mathematical_subject":"Topology.GeneralTopology","original_sha256":"427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Real/Pi/Wallis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Hanting Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hanting Zhang
-/
import Mathlib.Analysis.SpecialFunctions.Integrals

/-! # The Wallis formula for Pi

This file establishes the Wallis product for `π` (`Real.tendsto_prod_pi_div_two`). Our proof is
largely about analyzing the behaviour of the sequence `∫ x in 0..π, sin x ^ n` as `n → ∞`.
See: https://en.wikipedia.org/wiki/Wallis_product

The proof can be broken down into two pieces. The first step (carried out in
`Analysis.SpecialFunctions.Integrals`) is to use repeated integration by parts to obtain an
explicit formula for this integral, which is rational if `n` is odd and a rational multiple of `π`
if `n` is even.

The second step, carried out here, is to estimate the ratio
`∫ (x : ℝ) in 0..π, sin x ^ (2 * k + 1) / ∫ (x : ℝ) in 0..π, sin x ^ (2 * k)` and prove that
it converges to one using the squeeze theorem. The final product for `π` is obtained after some
algebraic manipulation.

## Main statements

* `Real.Wallis.W`: the product of the first `k` terms in Wallis' formula for `π`.
* `Real.Wallis.W_eq_integral_sin_pow_div_integral_sin_pow`: express `W n` as a ratio of integrals.
* `Real.Wallis.W_le` and `Real.Wallis.le_W`: upper and lower bounds for `W n`.
* `Real.tendsto_prod_pi_div_two`: the Wallis product formula.
-/



namespace GRWTSK.Topology.GeneralTopology.W.Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96

open scoped Real Topology Nat

open Filter Finset intervalIntegral

namespace Real

namespace Wallis


/-- The product of the first `k` terms in Wallis' formula for `π`. -/
noncomputable def W (k : ℕ) : ℝ :=
  ∏ i ∈ range k, (2 * i + 2) / (2 * i + 1) * ((2 * i + 2) / (2 * i + 3))

theorem W_succ (k : ℕ) :
    W (k + 1) = W k * ((2 * k + 2) / (2 * k + 1) * ((2 * k + 2) / (2 * k + 3))) :=
  prod_range_succ _ _

theorem W_pos (k : ℕ) : 0 < W k := by
  induction' k with k hk
  · unfold W; simp
  · rw [W_succ]
    refine mul_pos hk (mul_pos (div_pos ?_ ?_) (div_pos ?_ ?_)) <;> positivity

theorem W_eq_factorial_ratio (n : ℕ) :
    W n = 2 ^ (4 * n) * n ! ^ 4 / ((2 * n)! ^ 2 * (2 * n + 1)) := by
  induction' n with n IH
  · simp only [W, prod_range_zero, Nat.factorial_zero, mul_zero, pow_zero,
      algebraMap.coe_one, one_pow, mul_one, algebraMap.coe_zero, zero_add, div_self, Ne,
      one_ne_zero, not_false_iff]
    norm_num
  · unfold W at IH ⊢
    rw [prod_range_succ, IH, _root_.div_mul_div_comm, _root_.div_mul_div_comm]
    refine (div_eq_div_iff ?_ ?_).mpr ?_
    any_goals exact ne_of_gt (by positivity)
    simp_rw [Nat.mul_succ, Nat.factorial_succ, pow_succ]
    push_cast
    ring_nf

theorem W_eq_integral_sin_pow_div_integral_sin_pow (k : ℕ) : (π / 2)⁻¹ * W k =
    (∫ x : ℝ in (0)..π, sin x ^ (2 * k + 1)) / ∫ x : ℝ in (0)..π, sin x ^ (2 * k) := by
  rw [integral_sin_pow_even, integral_sin_pow_odd, mul_div_mul_comm, ← prod_div_distrib, inv_div]
  simp_rw [div_div_div_comm, div_div_eq_mul_div, mul_div_assoc]
  rfl

theorem W_le (k : ℕ) : W k ≤ π / 2 := by
  rw [← div_le_one pi_div_two_pos, div_eq_inv_mul]
  rw [W_eq_integral_sin_pow_div_integral_sin_pow, div_le_one (integral_sin_pow_pos _)]
  apply integral_sin_pow_succ_le

theorem le_W (k : ℕ) : ((2 : ℝ) * k + 1) / (2 * k + 2) * (π / 2) ≤ W k := by
  rw [← le_div_iff₀ pi_div_two_pos, div_eq_inv_mul (W k) _]
  rw [W_eq_integral_sin_pow_div_integral_sin_pow, le_div_iff₀ (integral_sin_pow_pos _)]
  convert integral_sin_pow_succ_le (2 * k + 1)
  rw [integral_sin_pow (2 * k)]
  simp

theorem tendsto_W_nhds_pi_div_two : Tendsto W atTop (𝓝 <| π / 2) := by
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le ?_ tendsto_const_nhds le_W W_le
  have : 𝓝 (π / 2) = 𝓝 ((1 - 0) * (π / 2)) := by rw [sub_zero, one_mul]
  rw [this]
  refine Tendsto.mul ?_ tendsto_const_nhds
  have h : ∀ n : ℕ, ((2 : ℝ) * n + 1) / (2 * n + 2) = 1 - 1 / (2 * n + 2) := by
    intro n
    rw [sub_div' (ne_of_gt (add_pos_of_nonneg_of_pos (mul_nonneg
      (two_pos : 0 < (2 : ℝ)).le (Nat.cast_nonneg _)) two_pos)), one_mul]
    congr 1; ring
  simp_rw [h]
  refine (tendsto_const_nhds.div_atTop ?_).const_sub _
  refine Tendsto.atTop_add ?_ tendsto_const_nhds
  exact tendsto_natCast_atTop_atTop.const_mul_atTop two_pos

end Wallis

end Real

/-- Wallis' product formula for `π / 2`. -/
theorem Real.tendsto_prod_pi_div_two :
    Tendsto (fun k => ∏ i ∈ range k, ((2 : ℝ) * i + 2) / (2 * i + 1) * ((2 * i + 2) / (2 * i + 3)))
      atTop (𝓝 (π / 2)) :=
  Real.Wallis.tendsto_W_nhds_pi_div_two
```
