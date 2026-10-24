# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinSumExpand.Variant7028b1ec34f955d5f2b2a3c6b1f3cba78e42ae7b1fb11ea2e88812f92fd8ce78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `819a3bd6dffeda67e634985db4d02e49cb45025e` · SHA-256 `1c4fd44400600d0f255e3a94e5f4244b912be9f17ddf697a47aeeea90e2b115b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VecUtil.Variantb2529d8cf6fce5ad7effe20a561648ee382bad5f37702de0abe38e325a81cc7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2529d8cf6fce5ad7effe20a561648ee382bad5f37702de0abe38e325a81cc7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VecUtil.Variantb2529d8cf6fce5ad7effe20a561648ee382bad5f37702de0abe38e325a81cc7b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b2529d8cf6fce5ad7effe20a561648ee382bad5f37702de0abe38e325a81cc7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/FinSumExpand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.VecUtil
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.Simproc.FinsetInterval
import Mathlib.Data.Fin.Tuple.Reflection
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# finsum_expand: Expand Finset sums to explicit additions

## Tactics

* `finsum_expand` - expand `∑ k ∈ Finset.Icc 1 3, f k` → `f 1 + f 2 + f 3`
* `finsum_expand!` - + computed bounds (`2*2`), non-literal Fin, dite, abs, matrix indexing

## Supported

- Intervals: `Icc`, `Ico`, `Ioc`, `Ioo`, `Iic`, `Iio`
- Explicit finsets: `{a, b, c}`
- Fin sums: `∑ i : Fin n, f i` (literal n via `Fin.sum_univ_ofNat`, else `Fin.sum_univ_succ`)

Shared utilities in `LeanCert.Tactic.VecUtil`. Debug: `set_option trace.VecUtil.debug true`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VecUtil.Variantb2529d8cf6fce5ad7effe20a561648ee382bad5f37702de0abe38e325a81cc7b

/-- Expand finite sums: `∑ k ∈ Finset.Icc 1 3, f k` → `f 1 + f 2 + f 3`.
    Supports intervals (`Icc`, `Ico`, etc.), explicit finsets, and `∑ i : Fin n, f i`.
    See `finsum_expand!` for computed bounds, dite, abs, matrix indexing. -/
macro "finsum_expand" : tactic =>
  `(tactic| (
    -- Step 0: Expand Fin sums using Mathlib's simproc (works for literal n)
    try simp only [Fin.sum_univ_ofNat]
    -- Step 1: Use Mathlib's simprocs to compute Finset intervals to explicit sets
    try simp only [Finset.Icc_ofNat_ofNat, Finset.Ico_ofNat_ofNat,
                   Finset.Ioc_ofNat_ofNat, Finset.Ioo_ofNat_ofNat,
                   Finset.Iic_ofNat, Finset.Iio_ofNat]
    -- Step 2: Repeatedly peel off elements until singleton or empty
    -- Note: ∑ k ∈ ∅, f k = 0 definitionally, so rfl handles empty sums
    repeat (first
      | rfl
      | simp only [Finset.sum_singleton]
      | (rw [Finset.sum_insert (by native_decide)]; try simp only [add_assoc]))
  ))

/-- `finsum_expand` + computed bounds (`Nat.reduceAdd/Mul/Sub`), non-literal Fin
    (`Fin.sum_univ_succ`), dite, matrix indexing (`VecUtil.vecConsFinMk`), abs. -/
macro "finsum_expand!" : tactic =>
  `(tactic| (
    -- Step 0: Normalize arithmetic in interval bounds
    -- E.g., Finset.Icc 3 (2 * 2) → Finset.Icc 3 4
    try simp only [Nat.reduceAdd, Nat.reduceMul, Nat.reduceSub]
    -- Now run standard finsum_expand with literal bounds
    finsum_expand
    -- Fallback for non-literal Fin n (e.g., Fin (2 + 1))
    -- Repeatedly expand using Fin.sum_univ_succ until we hit Fin 0
    repeat rw [Fin.sum_univ_succ]
    -- Simplify Fin expressions and handle empty Fin 0 sum
    try simp only [Fin.sum_univ_zero, Fin.succ_zero_eq_one, add_zero,
                   Fin.castSucc_zero, Fin.zero_eta, add_assoc]
    -- Normalize nested Fin.succ
    try simp only [Fin.succ_one_eq_two]
    -- Vector/matrix indexing + dite + abs with fixed-point iteration
    -- Must use vec_index_simp_with_dite (not vec_index_simp_core) so abs lemmas are
    -- in the same simp call, allowing simp to descend into |vecCons ...| and reduce
    vec_index_simp_with_dite
  ))
```
