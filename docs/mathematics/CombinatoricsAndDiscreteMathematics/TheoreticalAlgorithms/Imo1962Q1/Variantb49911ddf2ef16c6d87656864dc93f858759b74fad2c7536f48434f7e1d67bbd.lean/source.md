# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Imo1962Q1.Variantb49911ddf2ef16c6d87656864dc93f858759b74fad2c7536f48434f7e1d67bbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e23a9a072541633f038404e97a348c3d1943e627` · SHA-256 `cf478a0fb2d03d61654ac346850b742e46f0cfcf6de3b4baec7e15d668c9d935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProblemPredicate.Variant699f542fa2ef6f510c411d2f7c608e45bfede0edd1a4c92386665fd666e1c61d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"699f542fa2ef6f510c411d2f7c608e45bfede0edd1a4c92386665fd666e1c61d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProblemPredicate.Variant699f542fa2ef6f510c411d2f7c608e45bfede0edd1a4c92386665fd666e1c61d","mathematical_subject":"Computation.DataStructures","original_sha256":"699f542fa2ef6f510c411d2f7c608e45bfede0edd1a4c92386665fd666e1c61d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo1962Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Lacker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker
-/
module

public import Mathlib.Data.Nat.Digits.Lemmas

/-!
# IMO 1962 Q1

Find the smallest natural number $n$ which has the following properties:

(a) Its decimal representation has 6 as the last digit.

(b) If the last digit 6 is erased and placed in front of the remaining digits,
the resulting number is four times as large as the original number $n$.

Since Lean does not explicitly express problems of the form "find the smallest number satisfying X",
we define the problem as a predicate, and then prove a particular number is the smallest member
of a set satisfying it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProblemPredicate.Variant699f542fa2ef6f510c411d2f7c608e45bfede0edd1a4c92386665fd666e1c61d

@[expose] public section

namespace Imo1962Q1

open Nat

def ProblemPredicate (n : ℕ) : Prop :=
  (digits 10 n).headI = 6 ∧ ofDigits 10 ((digits 10 n).tail.concat 6) = 4 * n

/-!
First, it's inconvenient to work with digits, so let's simplify them out of the problem.
-/

abbrev ProblemPredicate' (c n : ℕ) : Prop :=
  n = 10 * c + 6 ∧ 6 * 10 ^ (digits 10 c).length + c = 4 * n

lemma without_digits {n : ℕ} (hn : ProblemPredicate n) : ∃ c : ℕ, ProblemPredicate' c n := by
  use n / 10
  rcases n with - | n
  · have hpp : ¬ProblemPredicate 0 := by simp [ProblemPredicate]
    contradiction
  · rw [ProblemPredicate, digits_def' (by decide : 2 ≤ 10) n.succ_pos, List.headI, List.tail_cons,
      List.concat_eq_append] at hn
    constructor
    · rw [← hn.left, div_add_mod (n + 1) 10]
    · rw [← hn.right, ofDigits_append, ofDigits_digits, ofDigits_singleton, add_comm, mul_comm]

/-!
Now we can eliminate possibilities for `(digits 10 c).length` until we get to the one that works.
-/

lemma case_0_digits {c n : ℕ} (hc : (digits 10 c).length = 0) : ¬ProblemPredicate' c n := by
  intro hpp
  have hpow : 6 * 10 ^ 0 = 6 * 10 ^ (digits 10 c).length := by rw [hc]
  lia

lemma case_1_digits {c n : ℕ} (hc : (digits 10 c).length = 1) : ¬ProblemPredicate' c n := by
  intro hpp
  have hpow : 6 * 10 ^ 1 = 6 * 10 ^ (digits 10 c).length := by rw [hc]
  lia

lemma case_2_digits {c n : ℕ} (hc : (digits 10 c).length = 2) : ¬ProblemPredicate' c n := by
  intro hpp
  have hpow : 6 * 10 ^ 2 = 6 * 10 ^ (digits 10 c).length := by rw [hc]
  lia

lemma case_3_digits {c n : ℕ} (hc : (digits 10 c).length = 3) : ¬ProblemPredicate' c n := by
  intro hpp
  have hpow : 6 * 10 ^ 3 = 6 * 10 ^ (digits 10 c).length := by rw [hc]
  lia

lemma case_4_digits {c n : ℕ} (hc : (digits 10 c).length = 4) : ¬ProblemPredicate' c n := by
  intro hpp
  have hpow : 6 * 10 ^ 4 = 6 * 10 ^ (digits 10 c).length := by rw [hc]
  lia

/-- Putting this inline causes a deep recursion error, so we separate it out. -/
private lemma helper_5_digits {c : ℤ} (hc : 6 * 10 ^ 5 + c = 4 * (10 * c + 6)) : c = 15384 := by
  lia

lemma case_5_digits {c n : ℕ} (hc : (digits 10 c).length = 5) (hpp : ProblemPredicate' c n) :
    c = 15384 := by
  have hpow : 6 * 10 ^ 5 + c = 6 * 10 ^ (digits 10 c).length + c := by rw [hc]
  have hmul : 6 * 10 ^ 5 + c = 4 * (10 * c + 6) := by rw [hpow, hpp.right, hpp.left]
  zify at *
  exact helper_5_digits hmul

/-- `linarith` fails on numbers this large, so this lemma spells out some of the arithmetic
that normally would be automated.
-/
lemma case_more_digits {c n : ℕ} (hc : (digits 10 c).length ≥ 6) (hpp : ProblemPredicate' c n) :
    n ≥ 153846 := by
  have hnz : c ≠ 0 := by
    intro hc0
    have hcl : (digits 10 c).length = 0 := by simp [hc0]
    exact case_0_digits hcl hpp
  calc
    n ≥ 10 * c := le.intro hpp.left.symm
    _ ≥ 10 ^ (digits 10 c).length := base_pow_length_digits_le 10 c (by decide) hnz
    _ ≥ 10 ^ 6 := pow_right_mono₀ (by decide) hc
    _ ≥ 153846 := by simp

/-!
Now we combine these cases to show that 153846 is the smallest solution.
-/

lemma satisfied_by_153846 : ProblemPredicate 153846 := by simp +decide [ProblemPredicate]

lemma no_smaller_solutions (n : ℕ) (hn : ProblemPredicate n) : n ≥ 153846 := by
  have ⟨c, hcn⟩ := without_digits hn
  cases lt_or_ge (digits 10 c).length 6 with
  | inl =>
    interval_cases hc : (digits 10 c).length
    · exfalso; exact case_0_digits hc hcn
    · exfalso; exact case_1_digits hc hcn
    · exfalso; exact case_2_digits hc hcn
    · exfalso; exact case_3_digits hc hcn
    · exfalso; exact case_4_digits hc hcn
    · exact (case_5_digits hc hcn ▸ hcn.left).ge
  | inr hge => exact case_more_digits hge hcn

end Imo1962Q1

open Imo1962Q1

theorem imo1962_q1 : IsLeast {n | ProblemPredicate n} 153846 :=
  ⟨satisfied_by_153846, no_smaller_solutions⟩
```
