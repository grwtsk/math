# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Bounds.Variant3da7cf743d1df1ea2e4241b33d71aa42248028d3667ba069477a2f306b4390e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f820852f9bffd22ef431bb6cbe30439e0404836` · SHA-256 `0a986e22ee5a8953512ca3f0832fc7f4df52b93c439e7e63ed82a47d623ad72a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ChooseLePow.Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.ChooseLePow.Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/Choose/Bounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Eric Rodriguez
-/
import Mathlib.Algebra.GroupPower.Lemmas
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Data.Nat.Choose.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ChooseLePow.Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571

#align_import data.nat.choose.bounds from "leanprover-community/mathlib"@"550b58538991c8977703fdeb7c9d51a5aa27df11"

/-!
# Inequalities for binomial coefficients

This file proves exponential bounds on binomial coefficients. We might want to add here the
bounds `n^r/r^r ≤ n.choose r ≤ e^r n^r/r^r` in the future.

## Main declarations

* `Nat.choose_le_pow`: `n.choose r ≤ n^r / r!`
* `Nat.pow_le_choose`: `(n + 1 - r)^r / r! ≤ n.choose r`. Beware of the fishy ℕ-subtraction.
-/


open Nat

variable {α : Type*} [LinearOrderedSemifield α]

namespace Nat

theorem choose_le_pow (r n : ℕ) : (n.choose r : α) ≤ (n ^ r : α) / r ! := by
  rw [le_div_iff']
  · norm_cast
    rw [← Nat.descFactorial_eq_factorial_mul_choose]
    exact n.descFactorial_le_pow r
  exact_mod_cast r.factorial_pos
#align nat.choose_le_pow Nat.choose_le_pow

-- horrific casting is due to ℕ-subtraction
theorem pow_le_choose (r n : ℕ) : ((n + 1 - r : ℕ) ^ r : α) / r ! ≤ n.choose r := by
  rw [div_le_iff']
  · norm_cast
    rw [← Nat.descFactorial_eq_factorial_mul_choose]
    exact n.pow_sub_le_descFactorial r
  exact_mod_cast r.factorial_pos
#align nat.pow_le_choose Nat.pow_le_choose

end Nat
```
