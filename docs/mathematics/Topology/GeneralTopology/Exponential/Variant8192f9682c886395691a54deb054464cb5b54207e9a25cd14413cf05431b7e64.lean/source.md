# Complete source: GRWTSK.Topology.GeneralTopology.Exponential.Variant8192f9682c886395691a54deb054464cb5b54207e9a25cd14413cf05431b7e64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22b4f53408e7e6c6ea4d325c5ad66570679e9c28` · SHA-256 `f282047ca02902d0279393573d30f79bf19fd38c2259cd3e5223a250fcb57d3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NumDerangementsTendstoInvE.Variant91c378defa40eb149e06c3658924d7f784fb24f7a874d0df47da6f09fd3aec18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91c378defa40eb149e06c3658924d7f784fb24f7a874d0df47da6f09fd3aec18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NumDerangementsTendstoInvE.Variant91c378defa40eb149e06c3658924d7f784fb24f7a874d0df47da6f09fd3aec18","mathematical_subject":"Topology.GeneralTopology","original_sha256":"91c378defa40eb149e06c3658924d7f784fb24f7a874d0df47da6f09fd3aec18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Derangements/Exponential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Henry Swanson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henry Swanson, Patrick Massot
-/
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Combinatorics.Derangements.Finite
import Mathlib.Data.Nat.Cast.Field

/-!
# Derangement exponential series

This file proves that the probability of a permutation on n elements being a derangement is 1/e.
The specific lemma is `numDerangements_tendsto_inv_e`.
-/



namespace GRWTSK.Topology.GeneralTopology.NumDerangementsTendstoInvE.Variant91c378defa40eb149e06c3658924d7f784fb24f7a874d0df47da6f09fd3aec18

open Filter NormedSpace

open scoped Topology

theorem numDerangements_tendsto_inv_e :
    Tendsto (fun n => (numDerangements n : ℝ) / n.factorial) atTop (𝓝 (Real.exp (-1))) := by
  -- we show that d(n)/n! is the partial sum of exp(-1), but offset by 1.
  -- this isn't entirely obvious, since we have to ensure that asc_factorial and
  -- factorial interact in the right way, e.g., that k ≤ n always
  let s : ℕ → ℝ := fun n => ∑ k ∈ Finset.range n, (-1 : ℝ) ^ k / k.factorial
  suffices ∀ n : ℕ, (numDerangements n : ℝ) / n.factorial = s (n + 1) by
    simp_rw [this]
    -- shift the function by 1, and then use the fact that the partial sums
    -- converge to the infinite sum
    rw [tendsto_add_atTop_iff_nat
      (f := fun n => ∑ k ∈ Finset.range n, (-1 : ℝ) ^ k / k.factorial) 1]
    apply HasSum.tendsto_sum_nat
    -- there's no specific lemma for ℝ that ∑ x^k/k! sums to exp(x), but it's
    -- true in more general fields, so use that lemma
    rw [Real.exp_eq_exp_ℝ]
    exact expSeries_div_hasSum_exp ℝ (-1 : ℝ)
  intro n
  rw [← Int.cast_natCast, numDerangements_sum]
  push_cast
  rw [Finset.sum_div]
  -- get down to individual terms
  refine Finset.sum_congr (refl _) ?_
  intro k hk
  have h_le : k ≤ n := Finset.mem_range_succ_iff.mp hk
  rw [Nat.ascFactorial_eq_div, add_tsub_cancel_of_le h_le]
  push_cast [Nat.factorial_dvd_factorial h_le]
  field_simp [Nat.factorial_ne_zero]
  ring
```
