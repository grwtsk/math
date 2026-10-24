# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ExpLog.Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7412942e9297f232b074c7734561d580735a5c0c` · SHA-256 `2a5ddc3b92b5c2f854ea0d0195b6e6dafb48dca29a41f31472f62ebd73796695`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SummableClogOneSub.Variant86f30a4413f909f8651c3e5762e40feac9d002857beb09fb921f94f5704015c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86f30a4413f909f8651c3e5762e40feac9d002857beb09fb921f94f5704015c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SummableClogOneSub.Variant86f30a4413f909f8651c3e5762e40feac9d002857beb09fb921f94f5704015c6","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"86f30a4413f909f8651c3e5762e40feac9d002857beb09fb921f94f5704015c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/EulerProduct/ExpLog.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
import Mathlib.Data.Complex.FiniteDimensional
import Mathlib.NumberTheory.EulerProduct.Basic

/-!
# Logarithms of Euler Products

We consider `f : ℕ →*₀ ℂ` and show that `exp (∑ p in Primes, log (1 - f p)⁻¹) = ∑ n : ℕ, f n`
under suitable conditions on `f`. This can be seen as a logarithmic version of the
Euler product for `f`.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.SummableClogOneSub.Variant86f30a4413f909f8651c3e5762e40feac9d002857beb09fb921f94f5704015c6

open Complex

open Topology in
/-- If `f : α → ℂ` is summable, then so is `n ↦ log (1 - f n)`. -/
lemma Summable.clog_one_sub {α  : Type*} {f : α → ℂ} (hsum : Summable f) :
    Summable fun n ↦ log (1 - f n) := by
  have hg : DifferentiableAt ℂ (fun z ↦ log (1 - z)) 0 := by
    have : 1 - 0 ∈ slitPlane := (sub_zero (1 : ℂ)).symm ▸ one_mem_slitPlane
    fun_prop (disch := assumption)
  have : (fun z ↦ log (1 - z)) =O[𝓝 0] id := by
    simpa only [sub_zero, log_one] using hg.isBigO_sub
  exact this.comp_summable hsum

namespace EulerProduct

/-- A variant of the Euler Product formula in terms of the exponential of a sum of logarithms. -/
theorem exp_tsum_primes_log_eq_tsum {f : ℕ →*₀ ℂ} (hsum : Summable (‖f ·‖)) :
    exp (∑' p : Nat.Primes, -log (1 - f p)) = ∑' n : ℕ, f n := by
  have hs {p : ℕ} (hp : 1 < p) : ‖f p‖ < 1 := hsum.of_norm.norm_lt_one (f := f.toMonoidHom) hp
  have hp (p : Nat.Primes) : 1 - f p ≠ 0 :=
    fun h ↦ (norm_one (α := ℂ) ▸ (sub_eq_zero.mp h) ▸ hs p.prop.one_lt).false
  have H := hsum.of_norm.clog_one_sub.neg.subtype {p | p.Prime} |>.hasSum.cexp.tprod_eq
  simp only [Set.coe_setOf, Set.mem_setOf_eq, Function.comp_apply, exp_neg, exp_log (hp _)] at H
  exact H.symm.trans <| eulerProduct_completely_multiplicative_tprod hsum

end EulerProduct
```
