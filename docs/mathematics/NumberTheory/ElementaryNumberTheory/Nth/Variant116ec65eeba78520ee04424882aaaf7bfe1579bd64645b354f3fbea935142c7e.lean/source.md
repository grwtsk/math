# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Nth.Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eb54a5dbb5bb885d01f9db509cb3d8c05567d5e` · SHA-256 `1de96510344f847fe1d77bd89812ab1e48ff1d0febf99c940d78069aeb9a3813`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.NthPrimeZeroEqTwo.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.NthPrimeZeroEqTwo.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"c2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Prime/Nth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Ralf Stephan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ralf Stephan
-/
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Nth

/-!
# The Nth primes
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.NthPrimeZeroEqTwo.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9

namespace Nat

@[simp]
theorem nth_prime_zero_eq_two : nth Prime 0 = 2 := nth_count prime_two

@[simp]
theorem nth_prime_one_eq_three : nth Nat.Prime 1 = 3 := nth_count prime_three

@[simp]
theorem nth_prime_two_eq_five : nth Nat.Prime 2 = 5 := nth_count prime_five

@[simp]
theorem nth_prime_three_eq_seven : nth Nat.Prime 3 = 7 := nth_count prime_seven

@[simp]
theorem nth_prime_four_eq_eleven : nth Nat.Prime 4 = 11 := nth_count prime_eleven

end Nat
```
