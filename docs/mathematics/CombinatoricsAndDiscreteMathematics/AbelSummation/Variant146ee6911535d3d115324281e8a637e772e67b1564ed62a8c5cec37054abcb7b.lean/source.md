# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AbelSummation.Variant146ee6911535d3d115324281e8a637e772e67b1564ed62a8c5cec37054abcb7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cde0f4249f6ab51d830e5752e026540b2c065b1f` · SHA-256 `9d3d8b3bd93c0303fc814a2c2f76d00558796aa015530db701256c157b5cd3e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/NumberTheory/AbelSummation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Matteo Cipollina. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matteo Cipollina
-/
module

public import Mathlib.NumberTheory.AbelSummation

/-!
# Finite-sum reindexing for Abel summation

Elementary reindexing lemmas for sums over initial intervals, used when passing between
floor sums and range sums.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7

@[expose] public section

open Finset
open scoped BigOperators

variable {𝕜 : Type*} [AddCommGroup 𝕜]

/-- Reindex `∑ k ∈ Icc 1 N, f k` as `∑ n ∈ range N, f (n + 1)`. -/
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7.Finset.sum_Icc_one_eq_sum_range {N : ℕ} (f : ℕ → 𝕜) :
    ∑ k ∈ Icc 1 N, f k = ∑ n ∈ range N, f (n + 1) := by
  classical
  symm
  refine sum_bij (s := range N) (t := Icc 1 N)
    (f := fun n => f (n + 1)) (g := fun k => f k)
    (i := fun n _ => n + 1)
    ?hi ?hinj ?hsurj ?hcongr
  · intro n hn
    have hlt : n < N := mem_range.mp hn
    exact mem_Icc.mpr ⟨Nat.succ_le_succ (Nat.zero_le n), Nat.succ_le_of_lt hlt⟩
  · intro a ha b hb h
    exact Nat.succ_injective h
  · intro k hk
    rcases mem_Icc.mp hk with ⟨hk1, hk2⟩
    refine ⟨k - 1, mem_range.mpr ?_, ?_⟩
    · have hsucc : (k - 1) + 1 = k := Nat.sub_add_cancel hk1
      exact lt_of_lt_of_le (Nat.lt_succ_self _) (by simpa [hsucc] using hk2)
    · simp [Nat.sub_add_cancel hk1]
  · intro n hn
    rfl

/-- If `f 0 = 0`, the term at `0` in `Icc 0 N` is redundant. -/
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7.Finset.sum_Icc_zero_eq_sum_Icc_one {N : ℕ} {f : ℕ → 𝕜} (h0 : f 0 = 0) :
    ∑ k ∈ Icc 0 N, f k = ∑ k ∈ Icc 1 N, f k := by
  classical
  have hdecomp : insert 0 (Icc 1 N) = Icc 0 N := by
    simpa [Nat.succ_eq_add_one] using
      insert_Icc_succ_left_eq_Icc (a := 0) (b := N) (h := Nat.zero_le N)
  have hnotmem : (0 : ℕ) ∉ Icc 1 N := by
    intro h
    exact (not_le.mpr (Nat.lt_succ_self 0)) (mem_Icc.mp h).1
  calc
    ∑ k ∈ Icc 0 N, f k = ∑ k ∈ insert 0 (Icc 1 N), f k := by simp [hdecomp]
    _ = f 0 + ∑ k ∈ Icc 1 N, f k := by simp
    _ = ∑ k ∈ Icc 1 N, f k := by simp [h0]

/-- If `f 0 = 0`, summing over `Icc 0 m` equals summing `f (n + 1)` over `range m`. -/
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7.Finset.sum_Icc_zero_eq_sum_range_succ {m : ℕ} {f : ℕ → 𝕜} (h0 : f 0 = 0) :
    ∑ k ∈ Icc 0 m, f k = ∑ n ∈ range m, f (n + 1) := by
  rw [sum_Icc_zero_eq_sum_Icc_one h0, sum_Icc_one_eq_sum_range]

/-- Floor-summation reindexing for sequences with `c 0 = 0`. -/
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootFinsetSumIccOneEqSumRange.Variant68b267b343cb78ece0a9c987283d2dcaa16dcf1c3ef55b849aa2ef6656a83ef7.sum_Icc_zero_floor_eq_sum_range {c : ℕ → 𝕜} (hc0 : c 0 = 0) (t : ℝ) :
    ∑ k ∈ Icc 0 ⌊t⌋₊, c k = ∑ n ∈ range ⌊t⌋₊, c (n + 1) :=
  Finset.sum_Icc_zero_eq_sum_range_succ (m := ⌊t⌋₊) (f := c) hc0
```
