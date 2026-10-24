# Complete source: GRWTSK.Topology.GeneralTopology.Lemmas.Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ace82b8ec65e0dedff15fb47fe8933f7f112d140` · SHA-256 `0a6471a6bd547ef561267d4ff8fe6410f88e0bac032b2b41993d347ed5af4aed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistsPosLtSubsetBall.Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistsPosLtSubsetBall.Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/ProperSpace/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/

import Mathlib.Topology.Order.Compact
import Mathlib.Topology.MetricSpace.ProperSpace
import Mathlib.Topology.Order.IntermediateValue
import Mathlib.Topology.Order.LocalExtr

/-!
# Proper spaces

This file contains some more involved results about `ProperSpace`s.

## Main definitions and results

* `exists_pos_lt_subset_ball`
* `exists_lt_subset_ball`
* `Metric.exists_isLocalMin_mem_ball`
-/


namespace GRWTSK.Topology.GeneralTopology.ExistsPosLtSubsetBall.Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d

open Set Metric

variable {α : Type*} {β : Type*} [PseudoMetricSpace α] [ProperSpace α] {x : α} {r : ℝ} {s : Set α}

/-- If a nonempty ball in a proper space includes a closed set `s`, then there exists a nonempty
ball with the same center and a strictly smaller radius that includes `s`. -/
theorem exists_pos_lt_subset_ball (hr : 0 < r) (hs : IsClosed s) (h : s ⊆ ball x r) :
    ∃ r' ∈ Ioo 0 r, s ⊆ ball x r' := by
  rcases eq_empty_or_nonempty s with (rfl | hne)
  · exact ⟨r / 2, ⟨half_pos hr, half_lt_self hr⟩, empty_subset _⟩
  have : IsCompact s :=
    (isCompact_closedBall x r).of_isClosed_subset hs (h.trans ball_subset_closedBall)
  obtain ⟨y, hys, hy⟩ : ∃ y ∈ s, s ⊆ closedBall x (dist y x) :=
    this.exists_isMaxOn (β := α) (α := ℝ) hne (continuous_id.dist continuous_const).continuousOn
  have hyr : dist y x < r := h hys
  rcases exists_between hyr with ⟨r', hyr', hrr'⟩
  exact ⟨r', ⟨dist_nonneg.trans_lt hyr', hrr'⟩, hy.trans <| closedBall_subset_ball hyr'⟩

/-- If a ball in a proper space includes a closed set `s`, then there exists a ball with the same
center and a strictly smaller radius that includes `s`. -/
theorem exists_lt_subset_ball (hs : IsClosed s) (h : s ⊆ ball x r) : ∃ r' < r, s ⊆ ball x r' := by
  rcases le_or_lt r 0 with hr | hr
  · rw [ball_eq_empty.2 hr, subset_empty_iff] at h
    subst s
    exact (exists_lt r).imp fun r' hr' => ⟨hr', empty_subset _⟩
  · exact (exists_pos_lt_subset_ball hr hs h).imp fun r' hr' => ⟨hr'.1.2, hr'.2⟩

theorem Metric.exists_isLocalMin_mem_ball [TopologicalSpace β]
    [ConditionallyCompleteLinearOrder β] [OrderTopology β] {f : α → β} {a z : α} {r : ℝ}
    (hf : ContinuousOn f (closedBall a r)) (hz : z ∈ closedBall a r)
    (hf1 : ∀ z' ∈ sphere a r, f z < f z') : ∃ z ∈ ball a r, IsLocalMin f z := by
  simp_rw [← closedBall_diff_ball] at hf1
  exact (isCompact_closedBall a r).exists_isLocalMin_mem_open ball_subset_closedBall hf hz hf1
    isOpen_ball
```
