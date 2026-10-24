# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Infinite.Variantc68af8f80be37d81dceed721fcbc9d18057978a5a7510e8215792a8abfe520a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a596ee0c5fcf31bffadb3a8eb24de90a0af9b9ad` · SHA-256 `aeee467c1387d70d66e010f4502337947b5233d4ece915cef010b4730f023a95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsInfinitePrimes.Variantf9ec0b82a10cc8d8dc23610fb195a191b886062207916356b2d3e416d47c2fd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9ec0b82a10cc8d8dc23610fb195a191b886062207916356b2d3e416d47c2fd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ExistsInfinitePrimes.Variantf9ec0b82a10cc8d8dc23610fb195a191b886062207916356b2d3e416d47c2fd8","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f9ec0b82a10cc8d8dc23610fb195a191b886062207916356b2d3e416d47c2fd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Prime/Infinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Order.Bounds.Basic

/-!
## Notable Theorems

- `Nat.exists_infinite_primes`: Euclid's theorem that there exist infinitely many prime numbers.
  This also appears as `Nat.not_bddAbove_setOf_prime` and `Nat.infinite_setOf_prime` (the latter
  in `Data.Nat.PrimeFin`).

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsInfinitePrimes.Variantf9ec0b82a10cc8d8dc23610fb195a191b886062207916356b2d3e416d47c2fd8

open Bool Subtype

open Nat

namespace Nat

section Infinite

/-- Euclid's theorem on the **infinitude of primes**.
Here given in the form: for every `n`, there exists a prime number `p ≥ n`. -/
theorem exists_infinite_primes (n : ℕ) : ∃ p, n ≤ p ∧ Prime p :=
  let p := minFac (n ! + 1)
  have f1 : n ! + 1 ≠ 1 := ne_of_gt <| succ_lt_succ <| factorial_pos _
  have pp : Prime p := minFac_prime f1
  have np : n ≤ p :=
    le_of_not_ge fun h =>
      have h₁ : p ∣ n ! := dvd_factorial (minFac_pos _) h
      have h₂ : p ∣ 1 := (Nat.dvd_add_iff_right h₁).2 (minFac_dvd _)
      pp.not_dvd_one h₂
  ⟨p, np, pp⟩

/-- A version of `Nat.exists_infinite_primes` using the `BddAbove` predicate. -/
theorem not_bddAbove_setOf_prime : ¬BddAbove { p | Prime p } := by
  rw [not_bddAbove_iff]
  intro n
  obtain ⟨p, hi, hp⟩ := exists_infinite_primes n.succ
  exact ⟨p, hp, hi⟩

end Infinite

end Nat
```
