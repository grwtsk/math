# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cast.Variant6857d3660d2516a5cf6d776704fd12ded9820d275978e7afd499182486437f70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62beacf014befc87778bfc982e4ba8a274e42b10` · SHA-256 `c5613426d486f28267ef1f3a82dadeaecc3b8584f33c561aeba73e4f1b9e713b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CastAscFactorial.Variantccd96a77915d6303ed4df9a81964729a57656a4bc2f2fdd7bc343a6ee2be8675","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccd96a77915d6303ed4df9a81964729a57656a4bc2f2fdd7bc343a6ee2be8675","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CastAscFactorial.Variantccd96a77915d6303ed4df9a81964729a57656a4bc2f2fdd7bc343a6ee2be8675","mathematical_subject":"Algebra.Polynomials","original_sha256":"ccd96a77915d6303ed4df9a81964729a57656a4bc2f2fdd7bc343a6ee2be8675","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/Factorial/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.RingTheory.Polynomial.Pochhammer


namespace GRWTSK.Algebra.CommutativeAlgebra.CastAscFactorial.Variantccd96a77915d6303ed4df9a81964729a57656a4bc2f2fdd7bc343a6ee2be8675

#align_import data.nat.factorial.cast from "leanprover-community/mathlib"@"d50b12ae8e2bd910d08a94823976adae9825718b"

/-!
# Cast of factorials

This file allows calculating factorials (including ascending and descending ones) as elements of a
semiring.

This is particularly crucial for `Nat.descFactorial` as subtraction on `ℕ` does **not** correspond
to subtraction on a general semiring. For example, we can't rely on existing cast lemmas to prove
`↑(a.descFactorial 2) = ↑a * (↑a - 1)`. We must use the fact that, whenever `↑(a - 1)` is not equal
to `↑a - 1`, the other factor is `0` anyway.
-/


open Nat

variable (S : Type*)

namespace Nat

section Semiring

variable [Semiring S] (a b : ℕ)

-- Porting note: added type ascription around a + 1
theorem cast_ascFactorial : (a.ascFactorial b : S) = (pochhammer S b).eval (a + 1 : S) := by
  rw [← pochhammer_nat_eq_ascFactorial, pochhammer_eval_cast, Nat.cast_add, Nat.cast_one]
#align nat.cast_asc_factorial Nat.cast_ascFactorial

-- Porting note: added type ascription around a - (b - 1)
theorem cast_descFactorial : (a.descFactorial b : S) = (pochhammer S b).eval (a - (b - 1) : S) := by
  rw [← pochhammer_eval_cast, pochhammer_nat_eq_descFactorial]
  induction' b with b
  · simp
  · simp_rw [add_succ, succ_sub_one]
    obtain h | h := le_total a b
    · rw [descFactorial_of_lt (lt_succ_of_le h), descFactorial_of_lt (lt_succ_of_le _)]
      rw [tsub_eq_zero_iff_le.mpr h, zero_add]
    · rw [tsub_add_cancel_of_le h]
#align nat.cast_desc_factorial Nat.cast_descFactorial

theorem cast_factorial : (a ! : S) = (pochhammer S a).eval 1 := by
  rw [← zero_ascFactorial, cast_ascFactorial, cast_zero, zero_add]
#align nat.cast_factorial Nat.cast_factorial

end Semiring

section Ring

variable [Ring S] (a b : ℕ)

/-- Convenience lemma. The `a - 1` is not using truncated subtraction, as opposed to the definition
of `Nat.descFactorial` as a natural. -/
theorem cast_descFactorial_two : (a.descFactorial 2 : S) = a * (a - 1) := by
  rw [cast_descFactorial]
  cases a
  · simp
  · rw [succ_sub_succ, tsub_zero, cast_succ, add_sub_cancel, pochhammer_succ_right, pochhammer_one,
      Polynomial.X_mul, Polynomial.eval_mul_X, Polynomial.eval_add, Polynomial.eval_X, cast_one,
      Polynomial.eval_one]
#align nat.cast_desc_factorial_two Nat.cast_descFactorial_two

end Ring

end Nat
```
