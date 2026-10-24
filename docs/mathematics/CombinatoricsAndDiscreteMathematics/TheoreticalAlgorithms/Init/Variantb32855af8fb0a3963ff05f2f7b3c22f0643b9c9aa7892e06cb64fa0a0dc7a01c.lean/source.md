# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Init.Variantb32855af8fb0a3963ff05f2f7b3c22f0643b9c9aa7892e06cb64fa0a0dc7a01c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea347a18c0a3c5fa45089eebac6901640032767f` · SHA-256 `8a3f24e8b69263d4e2276a021a10f3a9f2211db618e56ce978501b4677d5af95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XorAssoc.Variantee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.XorAssoc.Variantee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fin/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Wrenna Robson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wrenna Robson
-/
module

public import Mathlib.Data.Nat.Notation
public import Init.Data.Fin.Bitwise

/-!
# Basic operations on bounded natural numbers.

This file should not depend on anything defined in Mathlib (except for notation), so that it can be
upstreamed to Batteries or the Lean standard library easily.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XorAssoc.Variantee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314

public section

/- We don't want to import the algebraic hierarchy in this file. -/
assert_not_exists Monoid

namespace Fin

variable {n k : ℕ}

theorem xor_assoc (h : k = 2 ^ n) (a b c : Fin k) : (a ^^^ b) ^^^ c = a ^^^ (b ^^^ c) := by
  grind [Fin.xor_val, Nat.xor_mod_two_pow, Nat.mod_mod]
theorem xor_comm (a b : Fin k) : a ^^^ b = b ^^^ a := by grind [Fin.xor_val]
@[simp] theorem xor_self [NeZero k] (a : Fin k) : a ^^^ a = 0 := by
  grind [Fin.xor_val, Nat.zero_mod]
@[simp] theorem xor_zero [NeZero k] (a : Fin k) : a ^^^ 0 = a := by
  grind [Fin.xor_val, Fin.val_zero, Nat.mod_eq_of_lt]

end Fin
```
