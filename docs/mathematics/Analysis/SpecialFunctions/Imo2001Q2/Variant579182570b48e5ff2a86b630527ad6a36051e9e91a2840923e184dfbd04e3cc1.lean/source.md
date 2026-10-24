# Complete source: GRWTSK.Analysis.SpecialFunctions.Imo2001Q2.Variant579182570b48e5ff2a86b630527ad6a36051e9e91a2840923e184dfbd04e3cc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `910f819a24e8fe2aa5b28324a3da56e30dcb3a21` · SHA-256 `3fe2c06dfbc07f942f91d2c09dfc938962779ea253de6d7b148571fce57e6a98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Bound.Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Bound.Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Imo/Imo2001Q2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# IMO 2001 Q2

Let $a$, $b$, $c$ be positive reals. Prove that
$$
\frac{a}{\sqrt{a^2 + 8bc}} +
\frac{b}{\sqrt{b^2 + 8ca}} +
\frac{c}{\sqrt{c^2 + 8ab}} ≥ 1.
$$

## Solution

This proof is based on the bound
$$
\frac{a}{\sqrt{a^2 + 8bc}} ≥
\frac{a^{\frac43}}{a^{\frac43} + b^{\frac43} + c^{\frac43}}.
$$

-/



namespace GRWTSK.Analysis.SpecialFunctions.Bound.Variant68b917da1c7aa5ae3aa88a5909725576268be502674201a6deb2a3bfb34f7351

open Real

variable {a b c : ℝ}

namespace Imo2001Q2

theorem bound (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    a ^ 4 / (a ^ 4 + b ^ 4 + c ^ 4) ≤ a ^ 3 / sqrt ((a ^ 3) ^ 2 + ↑8 * b ^ 3 * c ^ 3) := by
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  calc a ^ 4 * sqrt ((a ^ 3) ^ 2 + (8:ℝ) * b ^ 3 * c ^ 3)
      = a ^ 3 * (a * sqrt ((a ^ 3) ^ 2 + (8:ℝ) * b ^ 3 * c ^ 3)) := by ring
    _ ≤ a ^ 3 * (a ^ 4 + b ^ 4 + c ^ 4) := ?_
  gcongr
  apply le_of_pow_le_pow_left₀ two_ne_zero (by positivity)
  rw [mul_pow, sq_sqrt (by positivity), ← sub_nonneg]
  calc
    (a ^ 4 + b ^ 4 + c ^ 4) ^ 2 - a ^ 2 * ((a ^ 3) ^ 2 + 8 * b ^ 3 * c ^ 3)
      = 2 * (a ^ 2 * (b ^ 2 - c ^ 2)) ^ 2 + (b ^ 4 - c ^ 4) ^ 2 +
        (2 * (a ^ 2 * b * c - b ^ 2 * c ^ 2)) ^ 2 := by ring
    _ ≥ 0 := by positivity

theorem imo2001_q2' (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    ↑1 ≤ a ^ 3 / sqrt ((a ^ 3) ^ 2 + ↑8 * b ^ 3 * c ^ 3) +
      b ^ 3 / sqrt ((b ^ 3) ^ 2 + ↑8 * c ^ 3 * a ^ 3) +
        c ^ 3 / sqrt ((c ^ 3) ^ 2 + ↑8 * a ^ 3 * b ^ 3) :=
  have H : a ^ 4 + b ^ 4 + c ^ 4 ≠ 0 := by positivity
  calc
    _ ≥ _ := add_le_add (add_le_add (bound ha hb hc) (bound hb hc ha)) (bound hc ha hb)
    _ = 1 := by ring_nf at H ⊢; field_simp

end Imo2001Q2

open Imo2001Q2

theorem imo2001_q2 (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : ↑1 ≤
    a / sqrt (a ^ 2 + ↑8 * b * c) + b / sqrt (b ^ 2 + ↑8 * c * a) + c / sqrt (c ^ 2 + ↑8 * a * b) :=
  have h3 : ∀ {x : ℝ}, 0 < x → (x ^ (3 : ℝ)⁻¹) ^ 3 = x := fun hx =>
    show ↑3 = (3 : ℝ) by norm_num ▸ rpow_inv_natCast_pow hx.le three_ne_zero
  calc
    1 ≤ _ := imo2001_q2' (rpow_pos_of_pos ha _) (rpow_pos_of_pos hb _) (rpow_pos_of_pos hc _)
    _ = _ := by rw [h3 ha, h3 hb, h3 hc]
```
