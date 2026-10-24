# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08eb33646f78b84708a015c37990d673134be3fd` · SHA-256 `3e06cedd18bd1198c8c3f9de0dcec4feb2f0a3354c95e45aebb7859447d83106`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.CauchySeqFinsetIffVanishingNorm.Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.CauchySeqFinsetIffVanishingNorm.Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"b93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/InfiniteSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Heather Macbeth, Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.Instances.NNReal


namespace GRWTSK.Analysis.AsymptoticAnalysis.CauchySeqFinsetIffVanishingNorm.Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12

#align_import analysis.normed.group.infinite_sum from "leanprover-community/mathlib"@"9a59dcb7a2d06bf55da57b9030169219980660cd"

/-!
# Infinite sums in (semi)normed groups

In a complete (semi)normed group,

- `summable_iff_vanishing_norm`: a series `∑' i, f i` is summable if and only if for any `ε > 0`,
  there exists a finite set `s` such that the sum `∑ i in t, f i` over any finite set `t` disjoint
  with `s` has norm less than `ε`;

- `summable_of_norm_bounded`, `summable_of_norm_bounded_eventually`: if `‖f i‖` is bounded above by
  a summable series `∑' i, g i`, then `∑' i, f i` is summable as well; the same is true if the
  inequality hold only off some finite set.

- `tsum_of_norm_bounded`, `HasSum.norm_le_of_bounded`: if `‖f i‖ ≤ g i`, where `∑' i, g i` is a
  summable series, then `‖∑' i, f i‖ ≤ ∑' i, g i`.

## Tags

infinite series, absolute convergence, normed group
-/


open Classical BigOperators Topology NNReal

open Finset Filter Metric

variable {ι α E F : Type*} [SeminormedAddCommGroup E] [SeminormedAddCommGroup F]

theorem cauchySeq_finset_iff_vanishing_norm {f : ι → E} :
    (CauchySeq fun s : Finset ι => ∑ i in s, f i) ↔
      ∀ ε > (0 : ℝ), ∃ s : Finset ι, ∀ t, Disjoint t s → ‖∑ i in t, f i‖ < ε := by
  rw [cauchySeq_finset_iff_vanishing, nhds_basis_ball.forall_iff]
  · simp only [ball_zero_eq, Set.mem_setOf_eq]
  · rintro s t hst ⟨s', hs'⟩
    exact ⟨s', fun t' ht' => hst <| hs' _ ht'⟩
#align cauchy_seq_finset_iff_vanishing_norm cauchySeq_finset_iff_vanishing_norm

theorem summable_iff_vanishing_norm [CompleteSpace E] {f : ι → E} :
    Summable f ↔ ∀ ε > (0 : ℝ), ∃ s : Finset ι, ∀ t, Disjoint t s → ‖∑ i in t, f i‖ < ε := by
  rw [summable_iff_cauchySeq_finset, cauchySeq_finset_iff_vanishing_norm]
#align summable_iff_vanishing_norm summable_iff_vanishing_norm

theorem cauchySeq_finset_of_norm_bounded_eventually {f : ι → E} {g : ι → ℝ} (hg : Summable g)
    (h : ∀ᶠ i in cofinite, ‖f i‖ ≤ g i) : CauchySeq fun s => ∑ i in s, f i := by
  refine' cauchySeq_finset_iff_vanishing_norm.2 fun ε hε => _
  rcases summable_iff_vanishing_norm.1 hg ε hε with ⟨s, hs⟩
  refine' ⟨s ∪ h.toFinset, fun t ht => _⟩
  have : ∀ i ∈ t, ‖f i‖ ≤ g i := by
    intro i hi
    simp only [disjoint_left, mem_union, not_or, h.mem_toFinset, Set.mem_compl_iff,
      Classical.not_not] at ht
    exact (ht hi).2
  calc
    ‖∑ i in t, f i‖ ≤ ∑ i in t, g i := norm_sum_le_of_le _ this
    _ ≤ ‖∑ i in t, g i‖ := (le_abs_self _)
    _ < ε := hs _ (ht.mono_right le_sup_left)
#align cauchy_seq_finset_of_norm_bounded_eventually cauchySeq_finset_of_norm_bounded_eventually

theorem cauchySeq_finset_of_norm_bounded {f : ι → E} (g : ι → ℝ) (hg : Summable g)
    (h : ∀ i, ‖f i‖ ≤ g i) : CauchySeq fun s : Finset ι => ∑ i in s, f i :=
  cauchySeq_finset_of_norm_bounded_eventually hg <| eventually_of_forall h
#align cauchy_seq_finset_of_norm_bounded cauchySeq_finset_of_norm_bounded

/-- A version of the **direct comparison test** for conditionally convergent series.
See `cauchySeq_finset_of_norm_bounded` for the same statement about absolutely convergent ones. -/
theorem cauchySeq_range_of_norm_bounded {f : ℕ → E} (g : ℕ → ℝ)
    (hg : CauchySeq fun n => ∑ i in range n, g i) (hf : ∀ i, ‖f i‖ ≤ g i) :
    CauchySeq fun n => ∑ i in range n, f i := by
  refine' Metric.cauchySeq_iff'.2 fun ε hε => _
  refine' (Metric.cauchySeq_iff'.1 hg ε hε).imp fun N hg n hn => _
  specialize hg n hn
  rw [dist_eq_norm, ← sum_Ico_eq_sub _ hn] at hg ⊢
  calc
    ‖∑ k in Ico N n, f k‖ ≤ ∑ k in _, ‖f k‖ := norm_sum_le _ _
    _ ≤ ∑ k in _, g k := (sum_le_sum fun x _ => hf x)
    _ ≤ ‖∑ k in _, g k‖ := (le_abs_self _)
    _ < ε := hg
#align cauchy_seq_range_of_norm_bounded cauchySeq_range_of_norm_bounded

theorem cauchySeq_finset_of_summable_norm {f : ι → E} (hf : Summable fun a => ‖f a‖) :
    CauchySeq fun s : Finset ι => ∑ a in s, f a :=
  cauchySeq_finset_of_norm_bounded _ hf fun _i => le_rfl
#align cauchy_seq_finset_of_summable_norm cauchySeq_finset_of_summable_norm

/-- If a function `f` is summable in norm, and along some sequence of finsets exhausting the space
its sum is converging to a limit `a`, then this holds along all finsets, i.e., `f` is summable
with sum `a`. -/
theorem hasSum_of_subseq_of_summable {f : ι → E} (hf : Summable fun a => ‖f a‖) {s : α → Finset ι}
    {p : Filter α} [NeBot p] (hs : Tendsto s p atTop) {a : E}
    (ha : Tendsto (fun b => ∑ i in s b, f i) p (𝓝 a)) : HasSum f a :=
  tendsto_nhds_of_cauchySeq_of_subseq (cauchySeq_finset_of_summable_norm hf) hs ha
#align has_sum_of_subseq_of_summable hasSum_of_subseq_of_summable

theorem hasSum_iff_tendsto_nat_of_summable_norm {f : ℕ → E} {a : E} (hf : Summable fun i => ‖f i‖) :
    HasSum f a ↔ Tendsto (fun n : ℕ => ∑ i in range n, f i) atTop (𝓝 a) :=
  ⟨fun h => h.tendsto_sum_nat, fun h => hasSum_of_subseq_of_summable hf tendsto_finset_range h⟩
#align has_sum_iff_tendsto_nat_of_summable_norm hasSum_iff_tendsto_nat_of_summable_norm

/-- The direct comparison test for series:  if the norm of `f` is bounded by a real function `g`
which is summable, then `f` is summable. -/
theorem summable_of_norm_bounded [CompleteSpace E] {f : ι → E} (g : ι → ℝ) (hg : Summable g)
    (h : ∀ i, ‖f i‖ ≤ g i) : Summable f := by
  rw [summable_iff_cauchySeq_finset]
  exact cauchySeq_finset_of_norm_bounded g hg h
#align summable_of_norm_bounded summable_of_norm_bounded

theorem HasSum.norm_le_of_bounded {f : ι → E} {g : ι → ℝ} {a : E} {b : ℝ} (hf : HasSum f a)
    (hg : HasSum g b) (h : ∀ i, ‖f i‖ ≤ g i) : ‖a‖ ≤ b :=
  le_of_tendsto_of_tendsto' hf.norm hg fun _s => norm_sum_le_of_le _ fun i _hi => h i
#align has_sum.norm_le_of_bounded HasSum.norm_le_of_bounded

/-- Quantitative result associated to the direct comparison test for series:  If `∑' i, g i` is
summable, and for all `i`, `‖f i‖ ≤ g i`, then `‖∑' i, f i‖ ≤ ∑' i, g i`. Note that we do not
assume that `∑' i, f i` is summable, and it might not be the case if `α` is not a complete space. -/
theorem tsum_of_norm_bounded {f : ι → E} {g : ι → ℝ} {a : ℝ} (hg : HasSum g a)
    (h : ∀ i, ‖f i‖ ≤ g i) : ‖∑' i : ι, f i‖ ≤ a := by
  by_cases hf : Summable f
  · exact hf.hasSum.norm_le_of_bounded hg h
  · rw [tsum_eq_zero_of_not_summable hf, norm_zero]
    exact ge_of_tendsto' hg fun s => sum_nonneg fun i _hi => (norm_nonneg _).trans (h i)
#align tsum_of_norm_bounded tsum_of_norm_bounded

/-- If `∑' i, ‖f i‖` is summable, then `‖∑' i, f i‖ ≤ (∑' i, ‖f i‖)`. Note that we do not assume
that `∑' i, f i` is summable, and it might not be the case if `α` is not a complete space. -/
theorem norm_tsum_le_tsum_norm {f : ι → E} (hf : Summable fun i => ‖f i‖) :
    ‖∑' i, f i‖ ≤ ∑' i, ‖f i‖ :=
  tsum_of_norm_bounded hf.hasSum fun _i => le_rfl
#align norm_tsum_le_tsum_norm norm_tsum_le_tsum_norm

/-- Quantitative result associated to the direct comparison test for series: If `∑' i, g i` is
summable, and for all `i`, `‖f i‖₊ ≤ g i`, then `‖∑' i, f i‖₊ ≤ ∑' i, g i`. Note that we
do not assume that `∑' i, f i` is summable, and it might not be the case if `α` is not a complete
space. -/
theorem tsum_of_nnnorm_bounded {f : ι → E} {g : ι → ℝ≥0} {a : ℝ≥0} (hg : HasSum g a)
    (h : ∀ i, ‖f i‖₊ ≤ g i) : ‖∑' i : ι, f i‖₊ ≤ a := by
  simp only [← NNReal.coe_le_coe, ← NNReal.hasSum_coe, coe_nnnorm] at *
  exact tsum_of_norm_bounded hg h
#align tsum_of_nnnorm_bounded tsum_of_nnnorm_bounded

/-- If `∑' i, ‖f i‖₊` is summable, then `‖∑' i, f i‖₊ ≤ ∑' i, ‖f i‖₊`. Note that
we do not assume that `∑' i, f i` is summable, and it might not be the case if `α` is not a complete
space. -/
theorem nnnorm_tsum_le {f : ι → E} (hf : Summable fun i => ‖f i‖₊) : ‖∑' i, f i‖₊ ≤ ∑' i, ‖f i‖₊ :=
  tsum_of_nnnorm_bounded hf.hasSum fun _i => le_rfl
#align nnnorm_tsum_le nnnorm_tsum_le

variable [CompleteSpace E]

/-- Variant of the direct comparison test for series:  if the norm of `f` is eventually bounded by a
real function `g` which is summable, then `f` is summable. -/
theorem summable_of_norm_bounded_eventually {f : ι → E} (g : ι → ℝ) (hg : Summable g)
    (h : ∀ᶠ i in cofinite, ‖f i‖ ≤ g i) : Summable f :=
  summable_iff_cauchySeq_finset.2 <| cauchySeq_finset_of_norm_bounded_eventually hg h
#align summable_of_norm_bounded_eventually summable_of_norm_bounded_eventually

theorem summable_of_nnnorm_bounded {f : ι → E} (g : ι → ℝ≥0) (hg : Summable g)
    (h : ∀ i, ‖f i‖₊ ≤ g i) : Summable f :=
  summable_of_norm_bounded (fun i => (g i : ℝ)) (NNReal.summable_coe.2 hg) fun i => by
    exact_mod_cast h i
#align summable_of_nnnorm_bounded summable_of_nnnorm_bounded

theorem summable_of_summable_norm {f : ι → E} (hf : Summable fun a => ‖f a‖) : Summable f :=
  summable_of_norm_bounded _ hf fun _i => le_rfl
#align summable_of_summable_norm summable_of_summable_norm

theorem summable_of_summable_nnnorm {f : ι → E} (hf : Summable fun a => ‖f a‖₊) : Summable f :=
  summable_of_nnnorm_bounded _ hf fun _i => le_rfl
#align summable_of_summable_nnnorm summable_of_summable_nnnorm
```
