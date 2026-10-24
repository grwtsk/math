# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Cast.Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8688827b39afddfb304c448a743305f88e2aebf` · SHA-256 `4e123ab33287c2ac9696432612748b2ba78a20dd8469afa9ed95b09f37373613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CastChoose.Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CastChoose.Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"d6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Choose/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Factorial.Cast

/-!
# Cast of binomial coefficients

This file allows calculating the binomial coefficient `a.choose b` as an element of a division ring
of characteristic `0`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CastChoose.Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b

open Nat

variable (K : Type*)

namespace Nat
section DivisionSemiring
variable [DivisionSemiring K] [CharZero K]

theorem cast_choose {a b : ℕ} (h : a ≤ b) : (b.choose a : K) = b ! / (a ! * (b - a)!) := by
  have : ∀ {n : ℕ}, (n ! : K) ≠ 0 := Nat.cast_ne_zero.2 (factorial_ne_zero _)
  rw [eq_div_iff_mul_eq (mul_ne_zero this this)]
  rw_mod_cast [← mul_assoc, choose_mul_factorial_mul_factorial h]

theorem cast_add_choose {a b : ℕ} : ((a + b).choose a : K) = (a + b)! / (a ! * b !) := by
  rw [cast_choose K (_root_.le_add_right le_rfl), add_tsub_cancel_left]

theorem cast_choose_eq_ascPochhammer_div (a b : ℕ) :
    (a.choose b : K) = (ascPochhammer K b).eval ↑(a - (b - 1)) / b ! := by
  rw [eq_div_iff_mul_eq (cast_ne_zero.2 b.factorial_ne_zero : (b ! : K) ≠ 0), ← cast_mul,
    mul_comm, ← descFactorial_eq_factorial_mul_choose, ← cast_descFactorial]

end DivisionSemiring

section DivisionRing
variable [DivisionRing K] [CharZero K]

theorem cast_choose_eq_descPochhammer_div (a b : ℕ) :
    (a.choose b : K) = (descPochhammer K b).eval ↑a / b ! := by
  rw [eq_div_iff_mul_eq (cast_ne_zero.2 b.factorial_ne_zero : (b ! : K) ≠ 0), ← cast_mul,
    mul_comm, ← descFactorial_eq_factorial_mul_choose, descPochhammer_eval_eq_descFactorial]

theorem cast_choose_two (a : ℕ) : (a.choose 2 : K) = a * (a - 1) / 2 := by
  rw [← cast_descFactorial_two, descFactorial_eq_factorial_mul_choose, factorial_two, mul_comm,
    cast_mul, cast_two, eq_div_iff_mul_eq (two_ne_zero : (2 : K) ≠ 0)]

end DivisionRing
end Nat
```
