-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.CauchySeqOfDistLeOfSummable.Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.CauchySeqOfDistLeOfSummable.Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"ded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/InfiniteSum/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-!
# Infinite sum in the reals

This file provides lemmas about Cauchy sequences in terms of infinite sums and infinite sums valued
in the reals.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.CauchySeqOfDistLeOfSummable.Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057

open Filter Finset NNReal Topology

variable {α β : Type*} [PseudoMetricSpace α] {f : ℕ → α} {a : α}

/-- If the distance between consecutive points of a sequence is estimated by a summable series,
then the original sequence is a Cauchy sequence. -/
theorem cauchySeq_of_dist_le_of_summable (d : ℕ → ℝ) (hf : ∀ n, dist (f n) (f n.succ) ≤ d n)
    (hd : Summable d) : CauchySeq f := by
  lift d to ℕ → ℝ≥0 using fun n ↦ dist_nonneg.trans (hf n)
  apply cauchySeq_of_edist_le_of_summable d (α := α) (f := f)
  · exact_mod_cast hf
  · exact_mod_cast hd

theorem cauchySeq_of_summable_dist (h : Summable fun n ↦ dist (f n) (f n.succ)) : CauchySeq f :=
  cauchySeq_of_dist_le_of_summable _ (fun _ ↦ le_rfl) h

theorem dist_le_tsum_of_dist_le_of_tendsto (d : ℕ → ℝ) (hf : ∀ n, dist (f n) (f n.succ) ≤ d n)
    (hd : Summable d) {a : α} (ha : Tendsto f atTop (𝓝 a)) (n : ℕ) :
    dist (f n) a ≤ ∑' m, d (n + m) := by
  refine le_of_tendsto (tendsto_const_nhds.dist ha) (eventually_atTop.2 ⟨n, fun m hnm ↦ ?_⟩)
  refine le_trans (dist_le_Ico_sum_of_dist_le hnm fun _ _ ↦ hf _) ?_
  rw [sum_Ico_eq_sum_range]
  refine Summable.sum_le_tsum (range _) (fun _ _ ↦ le_trans dist_nonneg (hf _)) ?_
  exact hd.comp_injective (add_right_injective n)

theorem dist_le_tsum_of_dist_le_of_tendsto₀ (d : ℕ → ℝ) (hf : ∀ n, dist (f n) (f n.succ) ≤ d n)
    (hd : Summable d) (ha : Tendsto f atTop (𝓝 a)) : dist (f 0) a ≤ tsum d := by
  simpa only [zero_add] using dist_le_tsum_of_dist_le_of_tendsto d hf hd ha 0

theorem dist_le_tsum_dist_of_tendsto (h : Summable fun n ↦ dist (f n) (f n.succ))
    (ha : Tendsto f atTop (𝓝 a)) (n) : dist (f n) a ≤ ∑' m, dist (f (n + m)) (f (n + m).succ) :=
  show dist (f n) a ≤ ∑' m, (fun x ↦ dist (f x) (f x.succ)) (n + m) from
    dist_le_tsum_of_dist_le_of_tendsto (fun n ↦ dist (f n) (f n.succ)) (fun _ ↦ le_rfl) h ha n

theorem dist_le_tsum_dist_of_tendsto₀ (h : Summable fun n ↦ dist (f n) (f n.succ))
    (ha : Tendsto f atTop (𝓝 a)) : dist (f 0) a ≤ ∑' n, dist (f n) (f n.succ) := by
  simpa only [zero_add] using dist_le_tsum_dist_of_tendsto h ha 0

section summable

theorem not_summable_iff_tendsto_nat_atTop_of_nonneg {f : ℕ → ℝ} (hf : ∀ n, 0 ≤ f n) :
    ¬Summable f ↔ Tendsto (fun n : ℕ => ∑ i ∈ Finset.range n, f i) atTop atTop := by
  lift f to ℕ → ℝ≥0 using hf
  simpa using mod_cast NNReal.not_summable_iff_tendsto_nat_atTop

theorem summable_iff_not_tendsto_nat_atTop_of_nonneg {f : ℕ → ℝ} (hf : ∀ n, 0 ≤ f n) :
    Summable f ↔ ¬Tendsto (fun n : ℕ => ∑ i ∈ Finset.range n, f i) atTop atTop := by
  rw [← not_iff_not, Classical.not_not, not_summable_iff_tendsto_nat_atTop_of_nonneg hf]

theorem summable_sigma_of_nonneg {α} {β : α → Type*} {f : (Σ x, β x) → ℝ} (hf : ∀ x, 0 ≤ f x) :
    Summable f ↔ (∀ x, Summable fun y => f ⟨x, y⟩) ∧ Summable fun x => ∑' y, f ⟨x, y⟩ := by
  lift f to (Σx, β x) → ℝ≥0 using hf
  simpa using mod_cast NNReal.summable_sigma

lemma summable_partition {α β : Type*} {f : β → ℝ} (hf : 0 ≤ f) {s : α  → Set β}
    (hs : ∀ i, ∃! j, i ∈ s j) : Summable f ↔
      (∀ j, Summable fun i : s j ↦ f i) ∧ Summable fun j ↦ ∑' i : s j, f i := by
  simpa only [← (Set.sigmaEquiv s hs).summable_iff] using summable_sigma_of_nonneg (fun _ ↦ hf _)

theorem summable_prod_of_nonneg {α β} {f : (α × β) → ℝ} (hf : 0 ≤ f) :
    Summable f ↔ (∀ x, Summable fun y ↦ f (x, y)) ∧ Summable fun x ↦ ∑' y, f (x, y) :=
  (Equiv.sigmaEquivProd _ _).summable_iff.symm.trans <| summable_sigma_of_nonneg fun _ ↦ hf _

theorem summable_of_sum_le {ι : Type*} {f : ι → ℝ} {c : ℝ} (hf : 0 ≤ f)
    (h : ∀ u : Finset ι, ∑ x ∈ u, f x ≤ c) : Summable f :=
  ⟨⨆ u : Finset ι, ∑ x ∈ u, f x,
    tendsto_atTop_ciSup (Finset.sum_mono_set_of_nonneg hf) ⟨c, fun _ ⟨u, hu⟩ => hu ▸ h u⟩⟩

theorem summable_of_sum_range_le {f : ℕ → ℝ} {c : ℝ} (hf : ∀ n, 0 ≤ f n)
    (h : ∀ n, ∑ i ∈ Finset.range n, f i ≤ c) : Summable f := by
  refine (summable_iff_not_tendsto_nat_atTop_of_nonneg hf).2 fun H => ?_
  rcases exists_lt_of_tendsto_atTop H 0 c with ⟨n, -, hn⟩
  exact lt_irrefl _ (hn.trans_le (h n))

theorem Real.tsum_le_of_sum_range_le {f : ℕ → ℝ} {c : ℝ} (hf : ∀ n, 0 ≤ f n)
    (h : ∀ n, ∑ i ∈ Finset.range n, f i ≤ c) : ∑' n, f n ≤ c :=
  (summable_of_sum_range_le hf h).tsum_le_of_sum_range_le h

/-- If a sequence `f` with non-negative terms is dominated by a sequence `g` with summable
series and at least one term of `f` is strictly smaller than the corresponding term in `g`,
then the series of `f` is strictly smaller than the series of `g`. -/
protected theorem Summable.tsum_lt_tsum_of_nonneg {i : ℕ} {f g : ℕ → ℝ} (h0 : ∀ b : ℕ, 0 ≤ f b)
    (h : ∀ b : ℕ, f b ≤ g b) (hi : f i < g i) (hg : Summable g) : ∑' n, f n < ∑' n, g n :=
  Summable.tsum_lt_tsum h hi (.of_nonneg_of_le h0 h hg) hg

@[deprecated (since := "2025-04-12")] alias tsum_lt_tsum_of_nonneg :=
  Summable.tsum_lt_tsum_of_nonneg

end summable
