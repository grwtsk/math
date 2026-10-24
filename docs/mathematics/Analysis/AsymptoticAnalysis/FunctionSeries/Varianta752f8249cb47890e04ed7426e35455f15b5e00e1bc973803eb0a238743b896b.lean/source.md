# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.FunctionSeries.Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c78cfb496b71353217bfcd6f9859ae4807370dc9` · SHA-256 `04427925a748cacc7b7b285ef3752002ff7267b82da7201e0f0206ea69fcc465`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.TendstoUniformlyOnTsum.Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.TendstoUniformlyOnTsum.Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/NormedSpace/FunctionSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-!
# Continuity of series of functions

We show that series of functions are continuous when each individual function in the series is and
additionally suitable uniform summable bounds are satisfied, in `continuous_tsum`.

For smoothness of series of functions, see the file `Analysis.Calculus.SmoothSeries`.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.TendstoUniformlyOnTsum.Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a

open Set Metric TopologicalSpace Function Filter

open scoped Topology NNReal

variable {α β F : Type*} [NormedAddCommGroup F] [CompleteSpace F] {u : α → ℝ}

/-- An infinite sum of functions with summable sup norm is the uniform limit of its partial sums.
Version relative to a set, with general index set. -/
theorem tendstoUniformlyOn_tsum {f : α → β → F} (hu : Summable u) {s : Set β}
    (hfu : ∀ n x, x ∈ s → ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun t : Finset α => fun x => ∑ n ∈ t, f n x) (fun x => ∑' n, f n x) atTop
      s := by
  refine tendstoUniformlyOn_iff.2 fun ε εpos => ?_
  filter_upwards [(tendsto_order.1 (tendsto_tsum_compl_atTop_zero u)).2 _ εpos] with t ht x hx
  have A : Summable fun n => ‖f n x‖ :=
    .of_nonneg_of_le (fun _ ↦ norm_nonneg _) (fun n => hfu n x hx) hu
  rw [dist_eq_norm, ← A.of_norm.sum_add_tsum_subtype_compl t, add_sub_cancel_left]
  apply lt_of_le_of_lt _ ht
  apply (norm_tsum_le_tsum_norm (A.subtype _)).trans
  exact (A.subtype _).tsum_le_tsum (fun n => hfu _ _ hx) (hu.subtype _)

/-- An infinite sum of functions with summable sup norm is the uniform limit of its partial sums.
Version relative to a set, with index set `ℕ`. -/
theorem tendstoUniformlyOn_tsum_nat {f : ℕ → β → F} {u : ℕ → ℝ} (hu : Summable u) {s : Set β}
    (hfu : ∀ n x, x ∈ s → ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun N => fun x => ∑ n ∈ Finset.range N, f n x) (fun x => ∑' n, f n x) atTop
      s :=
  fun v hv => tendsto_finset_range.eventually (tendstoUniformlyOn_tsum hu hfu v hv)

/-- An infinite sum of functions with eventually summable sup norm is the uniform limit of its
partial sums. Version relative to a set, with general index set. -/
theorem tendstoUniformlyOn_tsum_of_cofinite_eventually {ι : Type*} {f : ι → β → F} {u : ι → ℝ}
    (hu : Summable u) {s : Set β} (hfu : ∀ᶠ n in cofinite, ∀ x ∈ s, ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun t x => ∑ n ∈ t, f n x) (fun x => ∑' n, f n x) atTop s := by
  classical
  refine tendstoUniformlyOn_iff.2 fun ε εpos => ?_
  have := (tendsto_order.1 (tendsto_tsum_compl_atTop_zero u)).2 _ εpos
  simp only [not_forall, Classical.not_imp, not_le, gt_iff_lt,
    eventually_atTop, ge_iff_le, Finset.le_eq_subset] at *
  obtain ⟨t, ht⟩ := this
  rw [eventually_iff_exists_mem] at hfu
  obtain ⟨N, hN, HN⟩ := hfu
  refine ⟨hN.toFinset ∪ t, fun n hn x hx => ?_⟩
  have A : Summable fun n => ‖f n x‖ := by
    apply Summable.add_compl (s := hN.toFinset) Summable.of_finite
    apply Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _) _ (hu.subtype _)
    simp only [comp_apply, Subtype.forall, Set.mem_compl_iff, Finset.mem_coe]
    aesop
  rw [dist_eq_norm, ← A.of_norm.sum_add_tsum_subtype_compl n, add_sub_cancel_left]
  apply lt_of_le_of_lt _ (ht n (Finset.union_subset_right hn))
  apply (norm_tsum_le_tsum_norm (A.subtype _)).trans
  apply (A.subtype _).tsum_le_tsum _ (hu.subtype _)
  simp only [comp_apply, Subtype.forall, imp_false]
  apply fun i hi => HN i ?_ x hx
  have :  i ∉ hN.toFinset := fun hg ↦ hi (Finset.union_subset_left hn hg)
  aesop

theorem tendstoUniformlyOn_tsum_nat_eventually {α F : Type*} [NormedAddCommGroup F]
    [CompleteSpace F] {f : ℕ → α → F} {u : ℕ → ℝ} (hu : Summable u) {s : Set α}
    (hfu : ∀ᶠ n in atTop, ∀ x ∈ s, ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun N x => ∑ n ∈ Finset.range N, f n x)
       (fun x => ∑' n, f n x) atTop s :=
  fun v hv ↦ tendsto_finset_range.eventually <|
    tendstoUniformlyOn_tsum_of_cofinite_eventually hu (Nat.cofinite_eq_atTop ▸ hfu) v hv

/-- An infinite sum of functions with summable sup norm is the uniform limit of its partial sums.
Version with general index set. -/
theorem tendstoUniformly_tsum {f : α → β → F} (hu : Summable u) (hfu : ∀ n x, ‖f n x‖ ≤ u n) :
    TendstoUniformly (fun t : Finset α => fun x => ∑ n ∈ t, f n x)
      (fun x => ∑' n, f n x) atTop := by
  rw [← tendstoUniformlyOn_univ]; exact tendstoUniformlyOn_tsum hu fun n x _ => hfu n x

/-- An infinite sum of functions with summable sup norm is the uniform limit of its partial sums.
Version with index set `ℕ`. -/
theorem tendstoUniformly_tsum_nat {f : ℕ → β → F} {u : ℕ → ℝ} (hu : Summable u)
    (hfu : ∀ n x, ‖f n x‖ ≤ u n) :
    TendstoUniformly (fun N => fun x => ∑ n ∈ Finset.range N, f n x) (fun x => ∑' n, f n x)
      atTop :=
  fun v hv => tendsto_finset_range.eventually (tendstoUniformly_tsum hu hfu v hv)

/-- An infinite sum of functions with eventually summable sup norm is the uniform limit of its
partial sums. Version with general index set. -/
theorem tendstoUniformly_tsum_of_cofinite_eventually {ι : Type*} {f : ι → β → F} {u : ι → ℝ}
    (hu : Summable u) (hfu : ∀ᶠ (n : ι) in cofinite, ∀ x : β, ‖f n x‖ ≤ u n) :
    TendstoUniformly (fun t x => ∑ n ∈ t, f n x) (fun x => ∑' n, f n x) atTop := by
  rw [← tendstoUniformlyOn_univ]
  apply tendstoUniformlyOn_tsum_of_cofinite_eventually hu
  simpa using hfu

/-- An infinite sum of functions with summable sup norm is continuous on a set if each individual
function is. -/
theorem continuousOn_tsum [TopologicalSpace β] {f : α → β → F} {s : Set β}
    (hf : ∀ i, ContinuousOn (f i) s) (hu : Summable u) (hfu : ∀ n x, x ∈ s → ‖f n x‖ ≤ u n) :
    ContinuousOn (fun x => ∑' n, f n x) s := by
  classical
    refine (tendstoUniformlyOn_tsum hu hfu).continuousOn (Eventually.of_forall ?_)
    intro t
    exact continuousOn_finset_sum _ fun i _ => hf i

/-- An infinite sum of functions with summable sup norm is continuous if each individual
function is. -/
theorem continuous_tsum [TopologicalSpace β] {f : α → β → F} (hf : ∀ i, Continuous (f i))
    (hu : Summable u) (hfu : ∀ n x, ‖f n x‖ ≤ u n) : Continuous fun x => ∑' n, f n x := by
  simp_rw [continuous_iff_continuousOn_univ] at hf ⊢
  exact continuousOn_tsum hf hu fun n x _ => hfu n x
```
