-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsInfinitePrimes.Variantede54daa0f432b403dfd402d96c682fc892f371fcbec26fb003c3fece9aea3f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ede54daa0f432b403dfd402d96c682fc892f371fcbec26fb003c3fece9aea3f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ExistsInfinitePrimes.Variantede54daa0f432b403dfd402d96c682fc892f371fcbec26fb003c3fece9aea3f5","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ede54daa0f432b403dfd402d96c682fc892f371fcbec26fb003c3fece9aea3f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Prime/Infinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

public import Mathlib.Data.Nat.Factorial.Basic
public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.Order.Bounds.Basic

/-!
# Infinitude of the primes

## Main statements

- `Nat.exists_infinite_primes`: Euclid's theorem that there exist infinitely many prime numbers.
  This also appears as `Nat.not_bddAbove_setOfPred_prime` and `Nat.infinite_setOfPred_prime`
  (the latter in `Data.Nat.PrimeFin`).

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsInfinitePrimes.Variantede54daa0f432b403dfd402d96c682fc892f371fcbec26fb003c3fece9aea3f5

public section

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
theorem not_bddAbove_setOfPred_prime : ¬BddAbove { p | Prime p } := by
  rw [not_bddAbove_iff]
  intro n
  obtain ⟨p, hi, hp⟩ := exists_infinite_primes n.succ
  exact ⟨p, hp, hi⟩

@[deprecated (since := "2026-07-09")] alias not_bddAbove_setOf_prime := not_bddAbove_setOfPred_prime

end Infinite

end Nat
