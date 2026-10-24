# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinSumExpandTest.Variant229c86ce0dd4a0e4ff94bae74e0c9013350eaba4a8534ca722dbe37329a86f2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c70dcc452df700590cee0238614024f91b609115` · SHA-256 `d1fb3ce1a268f4ed33c3a212201a1067ad9a5db3089363250365363ef93b2590`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TestMatrix.Variant6c31fe5d47a32bf51da0c5892e333e1d371ccfad66777831d5dae8bb1e37c884","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c31fe5d47a32bf51da0c5892e333e1d371ccfad66777831d5dae8bb1e37c884","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TestMatrix.Variant6c31fe5d47a32bf51da0c5892e333e1d371ccfad66777831d5dae8bb1e37c884","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6c31fe5d47a32bf51da0c5892e333e1d371ccfad66777831d5dae8bb1e37c884","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/FinSumExpandTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.FinSumExpand
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
# Tests for finsum_expand tactics

- `finsum_expand` - expands Finset sums to explicit additions
- `finsum_expand!` - also simplifies dite, abs, computed bounds, matrix indexing

Supports intervals, explicit sets, and Fin sums.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TestMatrix.Variant6c31fe5d47a32bf51da0c5892e333e1d371ccfad66777831d5dae8bb1e37c884

namespace FinSumExpand.Test

/-! ### Explicit finsets -/

example (f : ℕ → ℝ) : ∑ k ∈ ({1, 3, 7} : Finset ℕ), f k = f 1 + f 3 + f 7 := by finsum_expand

/-! ### Interval types (all 6 variants) -/

example (f : ℕ → ℝ) : ∑ k ∈ Finset.Icc 1 3, f k = f 1 + f 2 + f 3 := by finsum_expand  -- Icc
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Ico 1 4, f k = f 1 + f 2 + f 3 := by finsum_expand  -- Ico
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Ioc 1 3, f k = f 2 + f 3 := by finsum_expand        -- Ioc
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Ioo 1 4, f k = f 2 + f 3 := by finsum_expand        -- Ioo
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Iic 2, f k = f 0 + f 1 + f 2 := by finsum_expand    -- Iic
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Iio 3, f k = f 0 + f 1 + f 2 := by finsum_expand    -- Iio

/-! ### Edge cases -/

example (f : ℕ → ℝ) : ∑ k ∈ Finset.Icc 5 5, f k = f 5 := by finsum_expand  -- single element
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Ico 5 5, f k = 0 := by finsum_expand    -- empty

/-! ### Fin sums -/

example (f : Fin 3 → ℝ) : ∑ i : Fin 3, f i = f 0 + f 1 + f 2 := by finsum_expand
example (a b c : ℝ) : ∑ i : Fin 3, (![a, b, c] : Fin 3 → ℝ) i = a + b + c := by finsum_expand

/-! ### finsum_expand! features -/

-- dite conditions
example (f : ℕ → ℝ) : ∑ x ∈ Finset.Icc 1 2, (if _ : x ≤ 2 then f x else 0) = f 1 + f 2 := by
  finsum_expand!

-- absolute values
example : ∑ k ∈ Finset.Icc 1 2, |(k : ℤ)| = 1 + 2 := by finsum_expand!

-- non-literal Fin dimension
example (f : Fin (2 + 1) → ℝ) : ∑ i : Fin (2 + 1), f i = f 0 + f 1 + f 2 := by finsum_expand!

-- computed interval bounds
example (f : ℕ → ℝ) : ∑ k ∈ Finset.Icc 3 (2 * 2), f k = f 3 + f 4 := by finsum_expand!

/-! ### Matrix column sums -/

open Matrix in
def testMatrix : Fin 3 → Fin 3 → ℚ := ![![1, 2, 3], ![-4, 5, 6], ![7, -8, 9]]

example : ∑ i : Fin 3, |testMatrix i 0| = 1 + 4 + 7 := by finsum_expand!

/-! ### Nested sums (2D matrix) -/

example : ∑ i : Fin 2, ∑ j : Fin 2, ![![(1 : ℚ), 2], ![3, 4]] i j = 1 + 2 + 3 + 4 := by
  finsum_expand!

/-! ### Nested vecCons after lambda reduction -/

example : ∑ i : Fin 3, (Matrix.vecCons (10 : ℚ)
    (fun j => Matrix.vecCons (20 : ℚ) (fun _ => 30) j) : Fin 3 → ℚ) i = 10 + 20 + 30 := by
  finsum_expand!

/-! ### Large index access (performance test) -/

example : ![0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19] 19 = 19 := by
  simp only [VecUtil.vecConsFinMk]

end FinSumExpand.Test
```
