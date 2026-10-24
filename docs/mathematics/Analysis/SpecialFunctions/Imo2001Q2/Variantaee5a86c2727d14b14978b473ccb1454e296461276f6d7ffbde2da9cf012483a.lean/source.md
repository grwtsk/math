# Complete source: GRWTSK.Analysis.SpecialFunctions.Imo2001Q2.Variantaee5a86c2727d14b14978b473ccb1454e296461276f6d7ffbde2da9cf012483a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe748c76b9d8673aace62c3e2f0e9b41251fe725` · SHA-256 `87c621ea78d2f7e9bc77bd909dd65cbc7deaffda1f941413ea71ede3bd4b3bfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Bound.Variantd66e8e9f61c92a4378a7d8f3423eefb9363b163dab9134646047de1ff63add35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d66e8e9f61c92a4378a7d8f3423eefb9363b163dab9134646047de1ff63add35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Bound.Variantd66e8e9f61c92a4378a7d8f3423eefb9363b163dab9134646047de1ff63add35","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d66e8e9f61c92a4378a7d8f3423eefb9363b163dab9134646047de1ff63add35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo2001Q2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
module

public import Mathlib.Analysis.SpecialFunctions.Pow.Real

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


namespace GRWTSK.Analysis.SpecialFunctions.Bound.Variantd66e8e9f61c92a4378a7d8f3423eefb9363b163dab9134646047de1ff63add35

public section

open Real

variable {a b c : ℝ}

namespace Imo2001Q2

theorem bound (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    a ^ 4 / (a ^ 4 + b ^ 4 + c ^ 4) ≤ a ^ 3 / sqrt ((a ^ 3) ^ 2 + ↑8 * b ^ 3 * c ^ 3) := by
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  calc a ^ 4 * sqrt ((a ^ 3) ^ 2 + (8 : ℝ) * b ^ 3 * c ^ 3)
      = a ^ 3 * (a * sqrt ((a ^ 3) ^ 2 + (8 : ℝ) * b ^ 3 * c ^ 3)) := by ring
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
    _ = 1 := by ring_nf at H ⊢; field

end Imo2001Q2

open Imo2001Q2

theorem imo2001_q2 (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : ↑1 ≤
    a / sqrt (a ^ 2 + ↑8 * b * c) + b / sqrt (b ^ 2 + ↑8 * c * a) + c / sqrt (c ^ 2 + ↑8 * a * b) :=
  have h3 : ∀ {x : ℝ}, 0 < x → (x ^ (3 : ℝ)⁻¹) ^ 3 = x := fun hx =>
    show ↑3 = (3 : ℝ) by simp ▸ rpow_inv_natCast_pow hx.le three_ne_zero
  calc
    1 ≤ _ := imo2001_q2' (rpow_pos_of_pos ha _) (rpow_pos_of_pos hb _) (rpow_pos_of_pos hc _)
    _ = _ := by rw [h3 ha, h3 hb, h3 hc]
```
