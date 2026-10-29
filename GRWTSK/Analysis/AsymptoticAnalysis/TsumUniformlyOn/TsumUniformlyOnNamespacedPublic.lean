-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.HasSumUniformlyOnOfNormLeSummable.Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.HasSumUniformlyOnOfNormLeSummable.Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/InfiniteSum/TsumUniformlyOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.Calculus.IteratedDeriv.Defs
public import Mathlib.Analysis.Calculus.UniformLimitsDeriv
public import Mathlib.Analysis.Normed.Group.FunctionSeries
public import Mathlib.Topology.Algebra.InfiniteSum.UniformOn

/-!
# Differentiability of sum of functions

We prove some `HasSumUniformlyOn` versions of theorems from
`Mathlib.Analysis.NormedSpace.FunctionSeries`.

Alongside this we prove `derivWithin_tsum` which states that the derivative of a series of functions
is the sum of the derivatives, under suitable conditions we also prove an `iteratedDerivWithin`
version.

-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.HasSumUniformlyOnOfNormLeSummable.Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4

public section

open Set TopologicalSpace Filter

open scoped Topology NNReal

section UniformlyOn

variable {α β F : Type*} [NormedAddCommGroup F] [CompleteSpace F] {u : α → ℝ}

theorem HasSumUniformlyOn.of_norm_le_summable {f : α → β → F} (hu : Summable u) {s : Set β}
    (hfu : ∀ n x, x ∈ s → ‖f n x‖ ≤ u n) : HasSumUniformlyOn f (fun x ↦ ∑' n, f n x) s := by
  simp [hasSumUniformlyOn_iff_tendstoUniformlyOn, tendstoUniformlyOn_tsum hu hfu]

theorem HasSumUniformlyOn.of_norm_le_summable_eventually {ι : Type*} {f : ι → β → F} {u : ι → ℝ}
    (hu : Summable u) {s : Set β} (hfu : ∀ᶠ n in cofinite, ∀ x ∈ s, ‖f n x‖ ≤ u n) :
    HasSumUniformlyOn f (fun x ↦ ∑' n, f n x) s := by
  simp [hasSumUniformlyOn_iff_tendstoUniformlyOn,
    tendstoUniformlyOn_tsum_of_cofinite_eventually hu hfu]

lemma SummableLocallyUniformlyOn.of_locally_bounded_eventually [TopologicalSpace β]
    [LocallyCompactSpace β] {f : α → β → F} {s : Set β} (hs : IsOpen s)
    (hu : ∀ K ⊆ s, IsCompact K → ∃ u : α → ℝ, Summable u ∧
    ∀ᶠ n in cofinite, ∀ k ∈ K, ‖f n k‖ ≤ u n) : SummableLocallyUniformlyOn f s := by
  apply HasSumLocallyUniformlyOn.summableLocallyUniformlyOn (g := fun x ↦ ∑' n, f n x)
  rw [hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn,
    tendstoLocallyUniformlyOn_iff_forall_isCompact hs]
  intro K hK hKc
  obtain ⟨u, hu1, hu2⟩ := hu K hK hKc
  exact tendstoUniformlyOn_tsum_of_cofinite_eventually hu1 hu2

lemma SummableLocallyUniformlyOn_of_locally_bounded [TopologicalSpace β] [LocallyCompactSpace β]
    {f : α → β → F} {s : Set β} (hs : IsOpen s)
    (hu : ∀ K ⊆ s, IsCompact K → ∃ u : α → ℝ, Summable u ∧ ∀ n, ∀ k ∈ K, ‖f n k‖ ≤ u n) :
    SummableLocallyUniformlyOn f s := by
  apply SummableLocallyUniformlyOn.of_locally_bounded_eventually hs
  intro K hK hKc
  obtain ⟨u, hu1, hu2⟩ := hu K hK hKc
  exact ⟨u, hu1, by filter_upwards using hu2⟩

end UniformlyOn

variable {ι 𝕜 F : Type*} [NontriviallyNormedField 𝕜] [IsRCLikeNormedField 𝕜]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] {s : Set 𝕜}

/-- The `derivWithin` of a sum whose derivative is absolutely and uniformly convergent sum on an
open set `s` is the sum of the derivatives of sequence of functions on the open set `s` -/
theorem derivWithin_tsum {f : ι → 𝕜 → F} (hs : IsOpen s) {x : 𝕜} (hx : x ∈ s)
    (hf : ∀ y ∈ s, Summable fun n ↦ f n y)
    (h : SummableLocallyUniformlyOn (fun n ↦ (derivWithin (fun z ↦ f n z) s)) s)
    (hf2 : ∀ n r, r ∈ s → DifferentiableAt 𝕜 (f n) r) :
    derivWithin (fun z ↦ ∑' n, f n z) s x = ∑' n, derivWithin (f n) s x := by
  apply HasDerivWithinAt.derivWithin ?_ (hs.uniqueDiffWithinAt hx)
  apply HasDerivAt.hasDerivWithinAt
  apply hasDerivAt_of_tendstoLocallyUniformlyOn hs _ _ (fun y hy ↦ (hf y hy).hasSum) hx
    (f' := fun n : Finset ι ↦ fun a ↦ ∑ i ∈ n, derivWithin (fun z ↦ f i z) s a)
  · obtain ⟨g, hg⟩ := h
    apply (hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn.mp hg).congr_right
    exact fun _ hb ↦ (hg.tsum_eqOn hb).symm
  · filter_upwards with t r hr using HasDerivAt.fun_sum
      (fun q hq ↦ ((hf2 q r hr).differentiableWithinAt.hasDerivWithinAt.hasDerivAt)
      (hs.mem_nhds hr))

/-- If a sequence of functions `fₙ` is such that `∑ fₙ (z)` is summable for each `z` in an
open set `s`, and for each `1 ≤ k ≤ m`, the series of `k`-th iterated derivatives
`∑ (iteratedDerivWithin k fₙ s) (z)`
is summable locally uniformly on `s`, and each `fₙ` is `m`-times differentiable, then the `m`-th
iterated derivative of the sum is the sum of the `m`-th iterated derivatives. -/
theorem iteratedDerivWithin_tsum {f : ι → 𝕜 → F} (m : ℕ) (hs : IsOpen s)
    {x : 𝕜} (hx : x ∈ s) (hsum : ∀ t ∈ s, Summable (fun n : ι ↦ f n t))
    (h : ∀ k, 1 ≤ k → k ≤ m → SummableLocallyUniformlyOn
      (fun n ↦ (iteratedDerivWithin k (fun z ↦ f n z) s)) s)
    (hf2 : ∀ n k r, k ≤ m → r ∈ s →
      DifferentiableAt 𝕜 (iteratedDerivWithin k (fun z ↦ f n z) s) r) :
    iteratedDerivWithin m (fun z ↦ ∑' n, f n z) s x = ∑' n, iteratedDerivWithin m (f n) s x := by
  induction m generalizing x with
  | zero => simp
  | succ m hm =>
    simp_rw [iteratedDerivWithin_succ]
    rw [← derivWithin_tsum hs hx _ _ (fun n r hr ↦ hf2 n m r (by lia) hr)]
    · exact derivWithin_congr (fun t ht ↦ hm ht (fun k hk1 hkm ↦ h k hk1 (by lia))
          (fun k r e hr he ↦ hf2 k r e (by lia) he)) (hm hx (fun k hk1 hkm ↦ h k hk1 (by lia))
          (fun k r e hr he ↦ hf2 k r e (by lia) he))
    · intro r hr
      by_cases hm2 : m = 0
      · simp [hm2, hsum r hr]
      · exact ((h m (by lia) (by lia)).summable hr).congr (fun _ ↦ by simp)
    · exact SummableLocallyUniformlyOn_congr
        (fun _ _ ht ↦ by rw [iteratedDerivWithin_succ]) (h (m + 1) (by lia) (by lia))
