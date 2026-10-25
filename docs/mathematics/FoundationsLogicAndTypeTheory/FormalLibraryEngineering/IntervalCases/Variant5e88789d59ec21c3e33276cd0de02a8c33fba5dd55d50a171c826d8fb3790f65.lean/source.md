# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant5e88789d59ec21c3e33276cd0de02a8c33fba5dd55d50a171c826d8fb3790f65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91e227bf66f31fb9f342d3664caa7926afcc33ae` · SHA-256 `02ae6799c8ce9ebed96de8b77c0fe451be6ad55ec524b84b82537b74bedadcd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntervalCases.Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/interval_cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/

import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Set


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c

example (n : ℕ) : True := by
  fail_if_success interval_cases n
  trivial

example (n : ℕ) (_ : 2 ≤ n) : True := by
  fail_if_success interval_cases n
  trivial

example (n m : ℕ) (_ : n ≤ m) : True := by
  fail_if_success interval_cases n
  trivial

example (n : ℕ) (w₂ : n < 0) : False := by interval_cases n

example (n : ℕ) (w₂ : n < 1) : n = 0 := by
  interval_cases n
  rfl -- done for free in the mathlib3 version

example (n : ℕ) (w₂ : n < 2) : n = 0 ∨ n = 1 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : 1 ≤ n) (w₂ : n < 3) : n = 1 ∨ n = 2 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : 1 ≤ n) (w₂ : n < 3) : n = 1 ∨ n = 2 := by
  interval_cases using w₁, w₂
  · left; rfl
  · right; rfl

-- make sure we only pick up bounds on the specified variable:
example (n m : ℕ) (w₁ : 1 ≤ n) (w₂ : n < 3) (_ : m < 2) : n = 1 ∨ n = 2 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : 1 < n) (w₂ : n < 4) : n = 2 ∨ n = 3 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : n ≥ 3) (w₂ : n < 5) : n = 3 ∨ n = 4 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₀ : n ≥ 2) (w₁ : n ≥ 3) (w₂ : n < 5) : n = 3 ∨ n = 4 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : n > 2) (w₂ : n < 5) : n = 3 ∨ n = 4 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : n > 2) (w₂ : n ≤ 4) : n = 3 ∨ n = 4 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (w₁ : 2 < n) (w₂ : 4 ≥ n) : n = 3 ∨ n = 4 := by
  interval_cases n
  · left; rfl
  · right; rfl

example (n : ℕ) (h1 : 4 < n) (h2 : n ≤ 6) : n < 20 := by
  interval_cases n
  · guard_target =ₛ 5 < 20; norm_num
  · guard_target =ₛ 6 < 20; norm_num

example (n : ℕ) (w₁ : n % 3 < 1) : n % 3 = 0 := by
  interval_cases h : n % 3
  · guard_hyp h : n % 3 = 0
    rfl

example (n : ℕ) (w₁ : n % 3 < 1) : n % 3 = 0 := by
  interval_cases n % 3
  rfl
  -- the Lean 3 version had a different goal state after the `interval_cases`
  -- the `n % 3` was not substituted, instead there was a hypothesis `h : n % 3 = 0` provided
  -- so the proof was:
  -- assumption

example (n : ℕ) (h1 : 4 ≤ n) (h2 : n < 10) : n < 20 := by
  interval_cases using h1, h2
  all_goals { norm_num }

-- example (n : ℕ+) (w₂ : n < 1) : False := by interval_cases n

-- example (n : ℕ+) (w₂ : n < 2) : n = 1 := by interval_cases n

-- example (n : ℕ+) (h1 : 4 ≤ n) (h2 : n < 5) : n = 4 := by interval_cases n

-- example (n : ℕ+) (w₁ : 2 < n) (w₂ : 4 ≥ n) : n = 3 ∨ n = 4 := by
--   interval_cases n,
--   { guard_target' (3 : ℕ+) = 3 ∨ (3 : ℕ+) = 4, left; rfl },
--   { guard_target' (4 : ℕ+) = 3 ∨ (4 : ℕ+) = 4, right; rfl },

-- example (n : ℕ+) (w₁ : 1 < n) (w₂ : n < 4) : n = 2 ∨ n = 3 := by
--   { interval_cases n, { left; rfl }, { right; rfl }, }

-- example (n : ℕ+) (w₂ : n < 3) : n = 1 ∨ n = 2 := by
--   { interval_cases n, { left; rfl }, { right; rfl }, }

-- example (n : ℕ+) (w₂ : n < 4) : n = 1 ∨ n = 2 ∨ n = 3 := by
--   { interval_cases n, { left; rfl }, { right, left; rfl }, { right, right; rfl }, }

example (z : ℤ) (h1 : z ≥ -3) (h2 : z < 2) : z < 20 := by
  interval_cases using h1, h2
  all_goals { norm_num }

example (z : ℤ) (h1 : z ≥ -3) (h2 : z < 2) : z < 20 := by
  interval_cases z
  · guard_target =ₛ (-3 : ℤ) < 20
    norm_num
  · guard_target =ₛ (-2 : ℤ) < 20
    norm_num
  · guard_target =ₛ (-1 : ℤ) < 20
    norm_num
  · guard_target =ₛ (0 : ℤ) < 20
    norm_num
  · guard_target =ₛ (1 : ℤ) < 20
    norm_num

example (n : ℕ) : n % 2 = 0 ∨ n % 2 = 1 := by
  set r := n % 2 with hr
  have h2 : r < 2 := by
    exact Nat.mod_lt _ (by decide)
  interval_cases hrv : r -- Porting note: old syntax was `interval_cases r with hrv`
  · left; exact hrv.symm.trans hrv
               --^ hover says `hrv : r = 0` and jumps to `hrv :` above
  · right; exact hrv.symm.trans hrv
               --^ hover says `hrv : r = 1` and jumps to `hrv :` above

/- https://leanprover.zulipchat.com/#narrow/stream/113488-general/topic/interval_cases.20bug -/
example {x : ℕ} (hx2 : x < 2) (h : False) : False := by
  have : x ≤ 1
  -- `interval_cases` deliberately not focussed,
  -- this is testing that the `interval_cases` only acts on `have` side goal, not on both
  interval_cases x
  · exact zero_le_one
  · rfl -- done for free in the mathlib3 version
  exact h

/-
In Lean 3 this one didn't work! It reported:
  `deep recursion was detected at 'expression equality test'`
-/
example (n : ℕ) (w₁ : n > 1000000) (w₁ : n < 1000002) : n < 2000000 := by
  interval_cases n
  norm_num

section

variable (d : ℕ)

example (h : d ≤ 0) : d = 0 := by
  interval_cases d
  rfl

end
```
