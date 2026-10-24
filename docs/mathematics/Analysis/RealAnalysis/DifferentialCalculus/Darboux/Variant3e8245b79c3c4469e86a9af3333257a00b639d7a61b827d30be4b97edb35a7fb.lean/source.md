# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Darboux.Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94aabfcb2521e7be366ee24dff442f79c70127a9` · SHA-256 `ef96382f5c55a846a53bcd513cd91fb161660c1a1664be281983b09c7a3bb73f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExistsHasDerivWithinAtEqOfGtOfLt.Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ExistsHasDerivWithinAtEqOfGtOfLt.Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed","mathematical_subject":"Analysis.Calculus","original_sha256":"652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Darboux.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.LocalExtr.Basic

/-!
# Darboux's theorem

In this file we prove that the derivative of a differentiable function on an interval takes all
intermediate values. The proof is based on the
[Wikipedia](https://en.wikipedia.org/wiki/Darboux%27s_theorem_(analysis)) page about this theorem.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExistsHasDerivWithinAtEqOfGtOfLt.Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed

open Filter Set

open scoped Topology

variable {a b : ℝ} {f f' : ℝ → ℝ}

/-- **Darboux's theorem**: if `a ≤ b` and `f' a < m < f' b`, then `f' c = m` for some
`c ∈ (a, b)`. -/
theorem exists_hasDerivWithinAt_eq_of_gt_of_lt (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : f' a < m)
    (hmb : m < f' b) : m ∈ f' '' Ioo a b := by
  rcases hab.eq_or_lt with (rfl | hab')
  · exact (lt_asymm hma hmb).elim
  set g : ℝ → ℝ := fun x => f x - m * x
  have hg : ∀ x ∈ Icc a b, HasDerivWithinAt g (f' x - m) (Icc a b) x := by
    intro x hx
    simpa using (hf x hx).sub ((hasDerivWithinAt_id x _).const_mul m)
  obtain ⟨c, cmem, hc⟩ : ∃ c ∈ Icc a b, IsMinOn g (Icc a b) c :=
    isCompact_Icc.exists_isMinOn (nonempty_Icc.2 <| hab) fun x hx => (hg x hx).continuousWithinAt
  have cmem' : c ∈ Ioo a b := by
    rcases cmem.1.eq_or_lt with (rfl | hac)
    -- Show that `c` can't be equal to `a`
    · refine absurd (sub_nonneg.1 <| nonneg_of_mul_nonneg_right ?_ (sub_pos.2 hab'))
        (not_le_of_lt hma)
      have : b - a ∈ posTangentConeAt (Icc a b) a :=
        sub_mem_posTangentConeAt_of_segment_subset (segment_eq_Icc hab ▸ Subset.rfl)
      simpa only [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply]
        using hc.localize.hasFDerivWithinAt_nonneg (hg a (left_mem_Icc.2 hab)) this
    rcases cmem.2.eq_or_gt with (rfl | hcb)
    -- Show that `c` can't be equal to `b`
    · refine absurd (sub_nonpos.1 <| nonpos_of_mul_nonneg_right ?_ (sub_lt_zero.2 hab'))
        (not_le_of_lt hmb)
      have : a - b ∈ posTangentConeAt (Icc a b) b :=
        sub_mem_posTangentConeAt_of_segment_subset (by rw [segment_symm, segment_eq_Icc hab])
      simpa only [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply]
        using hc.localize.hasFDerivWithinAt_nonneg (hg b (right_mem_Icc.2 hab)) this
    exact ⟨hac, hcb⟩
  use c, cmem'
  rw [← sub_eq_zero]
  have : Icc a b ∈ 𝓝 c := by rwa [← mem_interior_iff_mem_nhds, interior_Icc]
  exact (hc.isLocalMin this).hasDerivAt_eq_zero ((hg c cmem).hasDerivAt this)

/-- **Darboux's theorem**: if `a ≤ b` and `f' b < m < f' a`, then `f' c = m` for some `c ∈ (a, b)`.
-/
theorem exists_hasDerivWithinAt_eq_of_lt_of_gt (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : m < f' a)
    (hmb : f' b < m) : m ∈ f' '' Ioo a b :=
  let ⟨c, cmem, hc⟩ :=
    exists_hasDerivWithinAt_eq_of_gt_of_lt hab (fun x hx => (hf x hx).neg) (neg_lt_neg hma)
      (neg_lt_neg hmb)
  ⟨c, cmem, neg_injective hc⟩

/-- **Darboux's theorem**: the image of a `Set.OrdConnected` set under `f'` is a `Set.OrdConnected`
set, `HasDerivWithinAt` version. -/
theorem Set.OrdConnected.image_hasDerivWithinAt {s : Set ℝ} (hs : OrdConnected s)
    (hf : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) : OrdConnected (f' '' s) := by
  apply ordConnected_of_Ioo
  rintro _ ⟨a, ha, rfl⟩ _ ⟨b, hb, rfl⟩ - m ⟨hma, hmb⟩
  rcases le_total a b with hab | hab
  · have : Icc a b ⊆ s := hs.out ha hb
    rcases exists_hasDerivWithinAt_eq_of_gt_of_lt hab (fun x hx => (hf x <| this hx).mono this) hma
        hmb with
      ⟨c, cmem, hc⟩
    exact ⟨c, this <| Ioo_subset_Icc_self cmem, hc⟩
  · have : Icc b a ⊆ s := hs.out hb ha
    rcases exists_hasDerivWithinAt_eq_of_lt_of_gt hab (fun x hx => (hf x <| this hx).mono this) hmb
        hma with
      ⟨c, cmem, hc⟩
    exact ⟨c, this <| Ioo_subset_Icc_self cmem, hc⟩

/-- **Darboux's theorem**: the image of a `Set.OrdConnected` set under `f'` is a `Set.OrdConnected`
set, `derivWithin` version. -/
theorem Set.OrdConnected.image_derivWithin {s : Set ℝ} (hs : OrdConnected s)
    (hf : DifferentiableOn ℝ f s) : OrdConnected (derivWithin f s '' s) :=
  hs.image_hasDerivWithinAt fun x hx => (hf x hx).hasDerivWithinAt

/-- **Darboux's theorem**: the image of a `Set.OrdConnected` set under `f'` is a `Set.OrdConnected`
set, `deriv` version. -/
theorem Set.OrdConnected.image_deriv {s : Set ℝ} (hs : OrdConnected s)
    (hf : ∀ x ∈ s, DifferentiableAt ℝ f x) : OrdConnected (deriv f '' s) :=
  hs.image_hasDerivWithinAt fun x hx => (hf x hx).hasDerivAt.hasDerivWithinAt

/-- **Darboux's theorem**: the image of a convex set under `f'` is a convex set,
`HasDerivWithinAt` version. -/
theorem Convex.image_hasDerivWithinAt {s : Set ℝ} (hs : Convex ℝ s)
    (hf : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) : Convex ℝ (f' '' s) :=
  (hs.ordConnected.image_hasDerivWithinAt hf).convex

/-- **Darboux's theorem**: the image of a convex set under `f'` is a convex set,
`derivWithin` version. -/
theorem Convex.image_derivWithin {s : Set ℝ} (hs : Convex ℝ s) (hf : DifferentiableOn ℝ f s) :
    Convex ℝ (derivWithin f s '' s) :=
  (hs.ordConnected.image_derivWithin hf).convex

/-- **Darboux's theorem**: the image of a convex set under `f'` is a convex set,
`deriv` version. -/
theorem Convex.image_deriv {s : Set ℝ} (hs : Convex ℝ s) (hf : ∀ x ∈ s, DifferentiableAt ℝ f x) :
    Convex ℝ (deriv f '' s) :=
  (hs.ordConnected.image_deriv hf).convex

/-- **Darboux's theorem**: if `a ≤ b` and `f' a ≤ m ≤ f' b`, then `f' c = m` for some
`c ∈ [a, b]`. -/
theorem exists_hasDerivWithinAt_eq_of_ge_of_le (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : f' a ≤ m)
    (hmb : m ≤ f' b) : m ∈ f' '' Icc a b :=
  (ordConnected_Icc.image_hasDerivWithinAt hf).out (mem_image_of_mem _ (left_mem_Icc.2 hab))
    (mem_image_of_mem _ (right_mem_Icc.2 hab)) ⟨hma, hmb⟩

/-- **Darboux's theorem**: if `a ≤ b` and `f' b ≤ m ≤ f' a`, then `f' c = m` for some
`c ∈ [a, b]`. -/
theorem exists_hasDerivWithinAt_eq_of_le_of_ge (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : f' a ≤ m)
    (hmb : m ≤ f' b) : m ∈ f' '' Icc a b :=
  (ordConnected_Icc.image_hasDerivWithinAt hf).out (mem_image_of_mem _ (left_mem_Icc.2 hab))
    (mem_image_of_mem _ (right_mem_Icc.2 hab)) ⟨hma, hmb⟩

/-- If the derivative of a function is never equal to `m`, then either
it is always greater than `m`, or it is always less than `m`. -/
theorem hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne {s : Set ℝ} (hs : Convex ℝ s)
    (hf : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) {m : ℝ} (hf' : ∀ x ∈ s, f' x ≠ m) :
    (∀ x ∈ s, f' x < m) ∨ ∀ x ∈ s, m < f' x := by
  contrapose! hf'
  rcases hf' with ⟨⟨b, hb, hmb⟩, ⟨a, ha, hma⟩⟩
  exact (hs.ordConnected.image_hasDerivWithinAt hf).out (mem_image_of_mem f' ha)
    (mem_image_of_mem f' hb) ⟨hma, hmb⟩
```
