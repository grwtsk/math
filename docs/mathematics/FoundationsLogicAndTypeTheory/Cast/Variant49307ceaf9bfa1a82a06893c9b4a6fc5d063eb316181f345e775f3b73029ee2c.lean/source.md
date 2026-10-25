# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Cast.Variant49307ceaf9bfa1a82a06893c9b4a6fc5d063eb316181f345e775f3b73029ee2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bffa8ea88dd5cf9f9d8d28a19c29914c7f6f3251` · SHA-256 `10044bd0a0cc4b14ca89ecde804cc78bca61c15a3774fff6f7b6b401af16ac1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CastDescFactorialTwo.Variant45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CastDescFactorialTwo.Variant45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Factorial/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Nat.Cast.Basic
public import Mathlib.Data.Nat.Factorial.Basic

/-!
# Cast of factorials

This file allows calculating factorials (including ascending and descending ones) as elements of a
semiring.

This is particularly crucial for `Nat.descFactorial` as subtraction on `ℕ` does **not** correspond
to subtraction on a general semiring. For example, we can't rely on existing cast lemmas to prove
`↑(a.descFactorial 2) = ↑a * (↑a - 1)`. We must use the fact that, whenever `↑(a - 1)` is not equal
to `↑a - 1`, the other factor is `0` anyway.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CastDescFactorialTwo.Variant45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39

public section


open Nat

variable (S : Type*)

namespace Nat

section Ring

variable [Ring S] (a : ℕ)

/-- Convenience lemma. The `a - 1` is not using truncated subtraction, as opposed to the definition
of `Nat.descFactorial` as a natural. -/
theorem cast_descFactorial_two : (a.descFactorial 2 : S) = a * (a - 1) := by
  rw [descFactorial]
  cases a
  · simp
  · simp [mul_add, add_mul]

end Ring

end Nat
```
