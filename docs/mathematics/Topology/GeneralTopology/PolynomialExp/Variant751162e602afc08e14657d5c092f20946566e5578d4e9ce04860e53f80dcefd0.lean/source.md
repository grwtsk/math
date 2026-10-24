# Complete source: GRWTSK.Topology.GeneralTopology.PolynomialExp.Variant751162e602afc08e14657d5c092f20946566e5578d4e9ce04860e53f80dcefd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a8030e786b1282dbb4c20275a36a64314fc09ce` · SHA-256 `6c98cf62ba14f7739cbbea5caa54909c8b8e05193c40238154bd053ff76bcf5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoDivExpAtTop.Variantbf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoDivExpAtTop.Variantbf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/SpecialFunctions/PolynomialExp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Limits of `P(x) / e ^ x` for a polynomial `P`

In this file we prove that $\lim_{x\to\infty}\frac{P(x)}{e^x}=0$ for any polynomial `P`.

## TODO

Add more similar lemmas: limit at `-∞`, versions with $e^{cx}$ etc.

## Keywords

polynomial, limit, exponential
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoDivExpAtTop.Variantbf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4

open Filter Topology Real

namespace Polynomial

theorem tendsto_div_exp_atTop (p : ℝ[X]) : Tendsto (fun x ↦ p.eval x / exp x) atTop (𝓝 0) := by
  induction p using Polynomial.induction_on' with
  | monomial n c => simpa [exp_neg, div_eq_mul_inv, mul_assoc]
    using tendsto_const_nhds.mul (tendsto_pow_mul_exp_neg_atTop_nhds_zero n)
  | add p q hp hq => simpa [add_div] using hp.add hq

end Polynomial
```
