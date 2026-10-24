# Complete source: GRWTSK.Analysis.Real.Variantb45665e90f5081ac32a4f883ae3acd7f584a0a96e50310455d26c1a08015ebf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `164e70c2f8b3391eaafaa9ce48d20b57e99537fd` · SHA-256 `06ebcd9fa409cf8d64b436a70f98ca7ceae7d89477d724b607757ae1d8a03708`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RatSqrtLeRealSqrt.Variantffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.RatSqrtLeRealSqrt.Variantffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"ffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Rat/NatSqrt/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.Rat.NatSqrt.Defs

/-!
# Rational approximations to square roots of naturals

Comparisons between rational approximations to the square root of a natural number
and the real square root.
-/


namespace GRWTSK.Analysis.RatSqrtLeRealSqrt.Variantffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524

public section

namespace Nat

theorem ratSqrt_le_realSqrt (x : ℕ) {prec : ℕ} (h : 0 < prec) : ratSqrt x prec ≤ √x := by
  have := ratSqrt_sq_le (x := x) h
  have : (x.ratSqrt prec ^ 2 : ℝ) ≤ ↑x := by norm_cast
  have := Real.sqrt_monotone this
  rwa [Real.sqrt_sq] at this
  simpa only [Rat.cast_nonneg] using ratSqrt_nonneg _ _

theorem realSqrt_lt_ratSqrt_add_inv_prec (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    √x < ratSqrt x prec + 1 / prec := by
  have := lt_ratSqrt_add_inv_prec_sq (x := x) h
  have : (x : ℝ) < ↑((x.ratSqrt prec + 1 / prec) ^ 2 : ℚ) := by norm_cast
  have := Real.sqrt_lt_sqrt (by simp) this
  rw [Rat.cast_pow, Real.sqrt_sq] at this
  · push_cast at this
    exact this
  · push_cast
    exact add_nonneg (by simpa using ratSqrt_nonneg _ _) (by simp)

theorem realSqrt_mem_Ico (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    √x ∈ Set.Ico (ratSqrt x prec : ℝ) (ratSqrt x prec + 1 / prec : ℝ) := by
  grind [ratSqrt_le_realSqrt, realSqrt_lt_ratSqrt_add_inv_prec]

#adaptation_note
/--
nightly-2025-09-11
We're investigating changing the `grind` heuristics for selecting patterns.
Under one heuristic, the next proof would fail if we just passed `realSqrt_lt_ratSqrt_add_inv_prec`
to `grind` in the next proof.
So for robustness I'm explicitly setting the pattern here.
-/
local grind_pattern realSqrt_lt_ratSqrt_add_inv_prec => (x.ratSqrt prec : ℝ)

theorem ratSqrt_mem_Ioc (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    (ratSqrt x prec : ℝ) ∈ Set.Ioc (√x - 1 / prec) √x := by
  grind [ratSqrt_le_realSqrt]

end Nat
```
