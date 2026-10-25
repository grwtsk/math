# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `146ba0f12ba6ddc102dc70c6c2ed242ba784d262` · SHA-256 `b2d9a3bcc9269db74af0794f80f46616cc4541e0661ccead2342686d0dd098ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BirkhoffSum.Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BirkhoffSum.Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/BirkhoffSum/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Dynamics.FixedPoints.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Birkhoff sums

In this file we define `birkhoffSum f g n x` to be the sum `∑ k ∈ Finset.range n, g (f^[k] x)`.
This sum (more precisely, the corresponding average `n⁻¹ • birkhoffSum f g n x`)
appears in various ergodic theorems
saying that these averages converge to the "space average" `⨍ x, g x ∂μ` in some sense.

See also `birkhoffAverage` defined in `Dynamics/BirkhoffSum/Average`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BirkhoffSum.Variant26e79c72e8b74df5a754d73dc9dabcefb71bb7c69d49a57b290ef4aec2a19510

open Finset Function

section AddCommMonoid

variable {α M : Type*} [AddCommMonoid M]

/-- The sum of values of `g` on the first `n` points of the orbit of `x` under `f`. -/
def birkhoffSum (f : α → α) (g : α → M) (n : ℕ) (x : α) : M := ∑ k ∈ range n, g (f^[k] x)

theorem birkhoffSum_zero (f : α → α) (g : α → M) (x : α) : birkhoffSum f g 0 x = 0 :=
  sum_range_zero _

@[simp]
theorem birkhoffSum_zero' (f : α → α) (g : α → M) : birkhoffSum f g 0 = 0 :=
  funext <| birkhoffSum_zero _ _

theorem birkhoffSum_one (f : α → α) (g : α → M) (x : α) : birkhoffSum f g 1 x = g x :=
  sum_range_one _

@[simp]
theorem birkhoffSum_one' (f : α → α) (g : α → M) : birkhoffSum f g 1 = g :=
  funext <| birkhoffSum_one f g

theorem birkhoffSum_succ (f : α → α) (g : α → M) (n : ℕ) (x : α) :
    birkhoffSum f g (n + 1) x = birkhoffSum f g n x + g (f^[n] x) :=
  sum_range_succ _ _

theorem birkhoffSum_succ' (f : α → α) (g : α → M) (n : ℕ) (x : α) :
    birkhoffSum f g (n + 1) x = g x + birkhoffSum f g n (f x) :=
  (sum_range_succ' _ _).trans (add_comm _ _)

theorem birkhoffSum_add (f : α → α) (g : α → M) (m n : ℕ) (x : α) :
    birkhoffSum f g (m + n) x = birkhoffSum f g m x + birkhoffSum f g n (f^[m] x) := by
  simp_rw [birkhoffSum, sum_range_add, add_comm m, iterate_add_apply]

theorem Function.IsFixedPt.birkhoffSum_eq {f : α → α} {x : α} (h : IsFixedPt f x) (g : α → M)
    (n : ℕ) : birkhoffSum f g n x = n • g x := by
  simp [birkhoffSum, (h.iterate _).eq]

theorem map_birkhoffSum {F N : Type*} [AddCommMonoid N] [FunLike F M N] [AddMonoidHomClass F M N]
    (g' : F) (f : α → α) (g : α → M) (n : ℕ) (x : α) :
    g' (birkhoffSum f g n x) = birkhoffSum f (g' ∘ g) n x :=
  map_sum g' _ _

end AddCommMonoid

section AddCommGroup

variable {α G : Type*} [AddCommGroup G]

/-- Birkhoff sum is "almost invariant" under `f`:
the difference between `birkhoffSum f g n (f x)` and `birkhoffSum f g n x`
is equal to `g (f^[n] x) - g x`. -/
theorem birkhoffSum_apply_sub_birkhoffSum (f : α → α) (g : α → G) (n : ℕ) (x : α) :
    birkhoffSum f g n (f x) - birkhoffSum f g n x = g (f^[n] x) - g x := by
  rw [← sub_eq_iff_eq_add.2 (birkhoffSum_succ f g n x),
    ← sub_eq_iff_eq_add.2 (birkhoffSum_succ' f g n x),
    ← sub_add, ← sub_add, sub_add_comm]

end AddCommGroup
```
