-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPowModSeven.Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TwoPowModSeven.Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Imo/Imo1964Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
import Mathlib.Tactic.IntervalCases
import Mathlib.Data.Nat.ModEq
import Mathlib.Tactic.Ring


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPowModSeven.Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd

#align_import imo.imo1964_q1 from "leanprover-community/mathlib"@"2d6f88c296da8df484d7f5b9ee1d10910ab473a2"

/-!
# IMO 1964 Q1

(a) Find all positive integers $n$ for which $2^n-1$ is divisible by $7$.

(b) Prove that there is no positive integer $n$ for which $2^n+1$ is divisible by $7$.

We define a predicate for the solutions in (a), and prove that it is the set of positive
integers which are a multiple of 3.
-/


/-!
## Intermediate lemmas
-/


open Nat

namespace Imo1964Q1

theorem two_pow_mod_seven (n : ℕ) : 2 ^ n ≡ 2 ^ (n % 3) [MOD 7] :=
  let t := n % 3
  calc 2 ^ n = 2 ^ (3 * (n / 3) + t) := by rw [Nat.div_add_mod]
    _ = (2 ^ 3) ^ (n / 3) * 2 ^ t := by rw [pow_add, pow_mul]
    _ ≡ 1 ^ (n / 3) * 2 ^ t [MOD 7] := by gcongr; norm_num
    _ = 2 ^ t := by ring

/-!
## The question
-/


def ProblemPredicate (n : ℕ) : Prop :=
  7 ∣ 2 ^ n - 1
#align imo1964_q1.problem_predicate Imo1964Q1.ProblemPredicate

theorem imo1964_q1a (n : ℕ) (_ : 0 < n) : ProblemPredicate n ↔ 3 ∣ n := by
  let t := n % 3
  have : t < 3 := Nat.mod_lt _ (by decide)
  calc 7 ∣ 2 ^ n - 1 ↔ 2 ^ n ≡ 1 [MOD 7] := by
        rw [Nat.ModEq.comm, Nat.modEq_iff_dvd']
        apply Nat.one_le_pow'
    _ ↔ 2 ^ t ≡ 1 [MOD 7] := ⟨(two_pow_mod_seven n).symm.trans, (two_pow_mod_seven n).trans⟩
    _ ↔ t = 0 := by interval_cases t <;> decide
    _ ↔ 3 ∣ n := by rw [dvd_iff_mod_eq_zero]
#align imo1964_q1.imo1964_q1a Imo1964Q1.imo1964_q1a

end Imo1964Q1

open Imo1964Q1

theorem imo1964_q1b (n : ℕ) : ¬7 ∣ 2 ^ n + 1 := by
  intro h
  let t := n % 3
  have : t < 3 := Nat.mod_lt _ (by decide)
  have H : 2 ^ t + 1 ≡ 0 [MOD 7]
  · calc 2 ^ t + 1 ≡ 2 ^ n + 1 [MOD 7 ] := by gcongr ?_ + 1; exact (two_pow_mod_seven n).symm
      _ ≡ 0 [MOD 7] := h.modEq_zero_nat
  interval_cases t <;> norm_num at H
#align imo1964_q1b imo1964_q1b
