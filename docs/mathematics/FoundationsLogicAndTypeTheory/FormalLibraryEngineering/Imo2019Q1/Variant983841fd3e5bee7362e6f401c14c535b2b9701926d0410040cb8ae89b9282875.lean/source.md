# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q1.Variant983841fd3e5bee7362e6f401c14c535b2b9701926d0410040cb8ae89b9282875

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20dbcaaa0d50bedaf31528447e17b972f621acb7` · SHA-256 `0a960cdd0f924720c5bd3a28a4b0ae08b147a5a1dcc73cfc19ad3986c2a122c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q1.Variantb0f90779a77746a44dadcc4cf77d9bc4316eca1751169f26a164d2dd7b8e8537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0f90779a77746a44dadcc4cf77d9bc4316eca1751169f26a164d2dd7b8e8537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imo2019Q1.Variantb0f90779a77746a44dadcc4cf77d9bc4316eca1751169f26a164d2dd7b8e8537","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b0f90779a77746a44dadcc4cf77d9bc4316eca1751169f26a164d2dd7b8e8537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo2019Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
module

public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.Ring

/-!
# IMO 2019 Q1

Determine all functions `f : ℤ → ℤ` such that, for all integers `a` and `b`,
`f(2a) + 2f(b) = f(f(a+b))`.

The desired theorem is that either:
  - `f = fun _ ↦ 0`
  - `∃ c, f = fun x ↦ 2 * x + c`

Note that there is a much more compact proof of this fact in Isabelle/HOL
  - http://downthetypehole.de/paste/4YbGgqb4
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q1.Variantb0f90779a77746a44dadcc4cf77d9bc4316eca1751169f26a164d2dd7b8e8537

public theorem imo2019_q1 (f : ℤ → ℤ) :
    (∀ a b : ℤ, f (2 * a) + 2 * f b = f (f (a + b))) ↔ f = 0 ∨ ∃ c, f = fun x => 2 * x + c := by
  constructor; swap
  -- easy way: f(x)=0 and f(x)=2x+c work.
  · rintro (rfl | ⟨c, rfl⟩) <;> intros <;> norm_num; ring
  -- hard way.
  intro hf
  -- functional equation
  -- Using `h` for `(0, b)` and `(-1, b + 1)`, we get `f (b + 1) = f b + m`
  obtain ⟨m, H⟩ : ∃ m, ∀ b, f (b + 1) = f b + m := by
    refine ⟨(f 0 - f (-2)) / 2, fun b => ?_⟩
    refine sub_eq_iff_eq_add'.1 (Int.eq_ediv_of_mul_eq_right two_ne_zero ?_)
    have h1 : f 0 + 2 * f b = f (f b) := by simpa using hf 0 b
    have h2 : f (-2) + 2 * f (b + 1) = f (f b) := by simpa using hf (-1) (b + 1)
    linarith
  -- Hence, `f` is an affine map, `f b = f 0 + m * b`
  obtain ⟨c, H⟩ : ∃ c, ∀ b, f b = c + m * b := by
    refine ⟨f 0, fun b => ?_⟩
    induction b with
    | zero => simp
    | succ b ihb => simp [H, ihb, mul_add, add_assoc]
    | pred b ihb =>
      rw [← sub_eq_of_eq_add (H _)]
      simp [ihb]; ring
  -- Now use `hf 0 0` and `hf 0 1` to show that `m ∈ {0, 2}`
  have H3 : 2 * c = m * c := by simpa [H, mul_add] using hf 0 0
  obtain rfl | rfl : 2 = m ∨ m = 0 := by simpa [H, mul_add, H3] using hf 0 1
  · right; use c; ext b; simp [H, add_comm]
  · left; ext b; simpa [H, two_ne_zero] using H3
```
