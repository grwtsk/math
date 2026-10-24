# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompMul.Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b4d1aadd940dd54456d60a6c7a7d25852904b61` · SHA-256 `f2cca55d3223d5d0c39cc2e23b5f3394b00c5f99579373199ea976ced85ab6b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivWithinAtCompMulLeftSmulIff.Variant76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivWithinAtCompMulLeftSmulIff.Variant76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33","mathematical_subject":"Analysis.Calculus","original_sha256":"76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Deriv/CompMul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.FDeriv.Equiv
import Mathlib.Analysis.Calculus.Deriv.Mul

/-!
# Derivative of `x ↦ f (cx)`

In this file we prove that the derivative of `fun x ↦ f (c * x)`
equals `c` times the derivative of `f` evaluated at `c * x`.

Since Mathlib uses `0` as the fallback value for the derivatives whenever they are undefined,
the theorems in this file require neither differentiability of `f`,
nor assumptions like `UniqueDiffWithinAt 𝕜 s x`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivWithinAtCompMulLeftSmulIff.Variant76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33

open Set
open scoped Pointwise

variable {𝕜 E : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {c : 𝕜} {f : 𝕜 → E} {f' : E} {s : Set 𝕜} {x : 𝕜}

theorem hasDerivWithinAt_comp_mul_left_smul_iff :
    HasDerivWithinAt (f <| c * ·) (c • f') s x ↔ HasDerivWithinAt f f' (c • s) (c * x) := by
  simp only [hasDerivWithinAt_iff_hasFDerivWithinAt, ← smul_eq_mul,
    ← hasFDerivWithinAt_comp_smul_smul_iff]
  simp only [ContinuousLinearMap.one_smulRight_eq_toSpanSingleton,
    ContinuousLinearMap.toSpanSingleton_smul]

variable (c f s x) in
theorem derivWithin_comp_mul_left :
    derivWithin (f <| c * ·) s x = c • derivWithin f (c • s) (c * x) := by
  simp only [← smul_eq_mul]
  rw [← derivWithin_const_smul', derivWithin, derivWithin,
    fderivWithin_comp_smul_eq_fderivWithin_smul, Pi.smul_def]

variable (c f x) in
theorem deriv_comp_mul_left : deriv (f <| c * ·) x = c • deriv f (c * x) := by
  simp only [← smul_eq_mul, deriv, fderiv_comp_smul, ContinuousLinearMap.smul_apply]
```
