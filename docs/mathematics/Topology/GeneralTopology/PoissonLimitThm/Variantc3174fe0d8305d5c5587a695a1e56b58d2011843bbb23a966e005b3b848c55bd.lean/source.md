# Complete source: GRWTSK.Topology.GeneralTopology.PoissonLimitThm.Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a7cfd73464fe4e3392dd21a053e94b591b8848d` · SHA-256 `726437fc18bfebca03ba7a4517b9824efb1b1c6130a1f9c92c51e12d256d8987`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoZeroOfTendstoMulAtTop.Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoZeroOfTendstoMulAtTop.Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/Distributions/Poisson/PoissonLimitThm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yi Yuan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yi Yuan
-/
module

public import Mathlib.Probability.Distributions.Poisson.Basic
public import Mathlib.Probability.Distributions.Binomial

import Mathlib.Analysis.SpecialFunctions.Choose

/-!
# Poisson limit of binomial probabilities

This file proves a Poisson limit theorem.

Fix `k : ℕ`. Assuming `n * p n → r` as `n → ∞`, we show
`PMF.binomial (p n) (h n) n (Fin.ofNat (n + 1) k) → poissonPMF r k`.

## Main results

* `ProbabilityTheory.tendsto_choose_mul_pow_of_tendsto_mul_atTop`:
  if `n * p n → r`, then `n.choose k * (p n)^k * (1 - p n)^(n - k) → exp (-r) * r^k / k!`.

* `ProbabilityTheory.binomial_tendsto_poissonPMFReal_atTop`:
  convergence of `PMF.binomial` to `poissonPMF` in `ℝ≥0∞` under the natural hypotheses
  (`p n ≤ 1` and `n * p n → r`).

## Tags

binomial distribution, Poisson distribution, asymptotics, limits, probability mass function
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoZeroOfTendstoMulAtTop.Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181

public section

namespace ProbabilityTheory

open scoped NNReal

open Filter ENNReal

open scoped Topology

variable {p : ℕ → ℝ} {r : ℝ} (k : ℕ)

lemma tendsto_zero_of_tendsto_mul_atTop (hr : Tendsto (fun n => n * p n) atTop (𝓝 r)) :
    Tendsto p atTop (𝓝 0) := by
  have : (fun n => (n * p n) * (1 / n)) =ᶠ[atTop] p := by
    filter_upwards [eventually_ge_atTop 1] with n hn
    field
  simpa using (hr.mul tendsto_one_div_atTop_nhds_zero_nat).congr' this

open Asymptotics in
lemma tendsto_choose_mul_pow_atTop (hr : Tendsto (fun n => n * p n) atTop (𝓝 r)) :
    Tendsto (fun n => n.choose k * (p n) ^ k) atTop (𝓝 (r ^ k / k.factorial)) := by
  have : (fun n => n.choose k * (p n) ^ k) ~[atTop] (fun n ↦ ((n * p n) ^ k) / k.factorial) :=
    calc
    _ ~[atTop] (fun n => (n ^ k / k.factorial) * (p n) ^ k) :=
      (isEquivalent_choose k).mul IsEquivalent.refl
    _ ~[atTop] (fun n ↦ ((n * p n) ^ k) / k.factorial) :=
      EventuallyEq.isEquivalent (.of_eq (by ext; field))
  refine (IsEquivalent.tendsto_nhds_iff this).mpr ?_
  simpa [div_eq_mul_inv] using (hr.pow k).mul_const ((k.factorial : ℝ)⁻¹)

/--
**Poisson limit Theorem**: If `n * p n → r` as `n → ∞`. Then
`(n.choose k) * (p n)^k * (1 - p n)^(n - k) → exp (-r) * r^k / k!`.
-/
theorem tendsto_choose_mul_pow_of_tendsto_mul_atTop (hr : Tendsto (fun n => n * p n) atTop (𝓝 r)) :
    Tendsto (fun n => n.choose k * (p n) ^ k * (1 - p n) ^ (n - k))
    atTop (𝓝 (Real.exp (-r) * (r ^ k) / k.factorial)) := by
  rw [mul_div_assoc, mul_comm]
  refine (tendsto_choose_mul_pow_atTop k hr).mul ?_
  have hp_lt_half : ∀ᶠ n in atTop, p n < 1 / 2 :=
    (tendsto_zero_of_tendsto_mul_atTop hr).eventually (Iio_mem_nhds (by norm_num))
  have hEq : (fun n => (1 - p n) ^ (n - k)) =ᶠ[atTop]
      (fun n => (1 - p n) ^ n * ((1 - p n) ^ k)⁻¹) := by
    filter_upwards [eventually_ge_atTop k, hp_lt_half] with n hn hne
    rw [pow_sub₀ _ (by grind) hn]
  refine Tendsto.congr' hEq.symm ?_
  have : Real.exp (-r) = Real.exp (-r) * (1 ^ k)⁻¹ := by field
  rw [this]
  refine Tendsto.mul (Real.tendsto_one_add_pow_exp_of_tendsto ?_) ?_
  · simpa using hr.neg
  refine Tendsto.inv₀ (.pow ?_ k) (by simp)
  · simpa using tendsto_const_nhds.sub (tendsto_zero_of_tendsto_mul_atTop hr)

/--
Another version of Poisson Limit Theorem: convergence of `PMF.binomial` to `poissonPMF` in `ℝ≥0∞`
under the natural hypotheses (`∀ n, p n ≤ 1` and `r ≥ 0`).
-/
@[deprecated tendsto_choose_mul_pow_of_tendsto_mul_atTop (since := "2026-03-08")]
lemma binomial_tendsto_poissonPMFReal_atTop {r : ℝ≥0} {p : ℕ → unitInterval}
    (hr : Tendsto (fun n => n * (p n : ℝ)) atTop (𝓝 r)) :
    Tendsto (fun n ↦ Bin(n, p n) {k}) atTop (𝓝 (poissonMeasure r {k})) := by
  have t1 : Tendsto (fun n => (ENNReal.ofReal (n.choose k * (p n) ^ k * (1 - p n) ^ (n - k) : ℝ)))
      atTop (𝓝 (poissonMeasure r {k})) := by
    simp_rw [poissonMeasure_singleton]
    exact tendsto_ofReal (tendsto_choose_mul_pow_of_tendsto_mul_atTop k (by norm_cast))
  refine Tendsto.congr' ?_ t1
  simpa only [EventuallyEq, eventually_atTop, ge_iff_le] using
    ⟨k, fun b hb ↦ (binomial_singleton b k (p b)).symm⟩

end ProbabilityTheory
```
