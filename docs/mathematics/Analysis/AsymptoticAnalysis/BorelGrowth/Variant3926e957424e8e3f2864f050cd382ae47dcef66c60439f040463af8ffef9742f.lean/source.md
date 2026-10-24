# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.BorelGrowth.Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24bda5b6e7d28692adcbff7c552b0220cd93a07a` · SHA-256 `5965e0fd9e077050316aab4c8b6748be2fd66764349836aac52cf2e1f3e7bcae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.MonotoneOnEventuallyLeTwoMulPrime.Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.MonotoneOnEventuallyLeTwoMulPrime.Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"f5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/BorelGrowth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
module

public import Mathlib.MeasureTheory.Measure.Haar.OfBasis

import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# The Borel Growth Lemma

This file proves Émile Borel's **Growth Lemma**: if `S : ℝ → ℝ` is monotone on `Set.Ici a` and
satisfies `0 ≤ S a`, then

`∀ᶠ r in volume.cofinite ⊓ atTop, S (r + (S r)⁻¹) ≤ 2 * S r`.

In other words: The inequality `S (r + (S r)⁻¹) ≤ 2 * S r` holds for all sufficiently large `r`
outside an exceptional set `E` of finite Lebesgue measure. In Value Distribution Theory, this
statement is central to the proof of the "Lemma on the Logarithmic Derivatives".

The proof here is simpler than the argument typically found in textbooks and does not make any
regularity assumption on `S`.

## References

- Lemma 2.4 in [Hayman, *Meromorphic functions*][MR164038].

- Lemma 3.7 in Section VI.3 of [Lang, *Introduction to Complex Hyperbolic Spaces*][MR886677]
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.MonotoneOnEventuallyLeTwoMulPrime.Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168

public section

open Filter MeasureTheory Set

/-
Special case of `MonotoneOn.eventually_le_two_mul`. The proof slices the exceptional set `E` into
dyadic pieces

`Eₙ = {r ∈ E | 2 ^ n * S a ≤ S r < 2 ^ (n + 1) * S a}`.

If `x ≤ y` both lie in `Eₙ`, then there are inequalities

`S (x + (S x)⁻¹) > 2 * S x ≥ 2 ^ (n + 1) * S a > S y`.

Monotonicity will then force `y - x < (S x)⁻¹ ≤ (2 ^ n * S a)⁻¹`.  As a consequence, each slice has
diameter at most `(2 ^ n * S a)⁻¹`, so that `volume E` is bounded by
`∑ (2 ^ n * S a)⁻¹ = 2 * (S a)⁻¹ < ∞`.
-/
private theorem MonotoneOn.eventually_le_two_mul' {S : ℝ → ℝ} {a : ℝ}
    (h₁ : MonotoneOn S (Set.Ici a)) (h₂ : 0 < S a) :
    ∀ᶠ r in volume.cofinite ⊓ atTop, S (r + (S r)⁻¹) ≤ 2 * S r := by
  classical
  -- The exceptional set `E` and its dyadic slices `En n`
  set E := {r | a ≤ r ∧ 2 * S r < S (r + (S r)⁻¹)} with hE_def
  set En := fun n ↦ {r ∈ E | 2 ^ n * S a ≤ S r ∧ S r < 2 ^ (n + 1) * S a}
    with hEn_def
  have hS_pos : ∀ r ∈ Ici a, 0 < S r := fun r hr ↦ h₂.trans_le (h₁ self_mem_Ici hr hr)
  -- The slices cover `E`
  have hcov : E ⊆ ⋃ n, En n := by
    intro r hr
    have h₃ : S a ≤ S r := h₁ self_mem_Ici hr.1 hr.1
    have h₄ : ∃ n : ℕ, S r < 2 ^ (n + 1) * S a := by
      obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt (S r / S a) one_lt_two
      exact ⟨n, ((div_lt_iff₀ h₂).1 hn).trans_le
        (mul_le_mul_of_nonneg_right (pow_le_pow_right₀ one_le_two n.le_succ) h₂.le)⟩
    refine mem_iUnion.2 ⟨Nat.find h₄, hr, ?_, Nat.find_spec h₄⟩
    rcases Nat.eq_zero_or_pos (Nat.find h₄) with h₅ | h₅
    · simpa [h₅] using h₃
    · have h₆ := Nat.find_min h₄ (Nat.sub_lt h₅ one_pos)
      rw [show Nat.find h₄ - 1 + 1 = Nat.find h₄ by omega] at h₆
      exact not_lt.1 h₆
  -- Two points of a slice are at distance at most `(2 ^ n * S a)⁻¹`
  have hkey {n : ℕ} {x y : ℝ} (hx : x ∈ En n) (hy : y ∈ En n) : y - x ≤ (2 ^ n * S a)⁻¹ := by
    obtain ⟨⟨h₁x, h₂x⟩, h₃x, -⟩ := hx
    obtain ⟨⟨h₁y, -⟩, -, h₄y⟩ := hy
    -- `y` lies strictly below `x + (S x)⁻¹`…
    have h₆ : y < x + (S x)⁻¹ := by
      by_contra h₆
      have h₇ : S (x + (S x)⁻¹) ≤ S y := by
        apply h₁ _ h₁y (not_lt.1 h₆)
        exact mem_Ici.2 (h₁x.trans (le_add_of_nonneg_right (inv_nonneg.2 (hS_pos x h₁x).le)))
      have h₈ : (2 : ℝ) ^ (n + 1) * S a = 2 * (2 ^ n * S a) := by ring
      linarith
    -- …and `(S x)⁻¹` is at most `(2 ^ n * S a)⁻¹`
    have h₇ : (S x)⁻¹ ≤ ((2 : ℝ) ^ n * S a)⁻¹ := inv_anti₀ (by positivity) h₃x
    linarith
  -- Hence each slice has diameter at most `(2 ^ n * S a)⁻¹`…
  have hdiam (n : ℕ) : Metric.ediam (En n) ≤ ENNReal.ofReal ((2 ^ n * S a)⁻¹) := by
    apply Metric.ediam_le
    intro x hx y hy
    rw [edist_le_ofReal (by positivity)]
    rcases le_total x y with h | h
    · rw [Real.dist_eq, abs_of_nonpos (by linarith), neg_sub]
      exact hkey hx hy
    · rw [Real.dist_eq, abs_of_nonneg (by linarith)]
      exact hkey hy hx
  -- …and `E` has finite volume
  have hvol : volume E < ⊤ := by
    have hsum : Summable fun n ↦ ((2 : ℝ) ^ n * S a)⁻¹ := by
      simp only [mul_inv, ← inv_pow]
      exact (summable_geometric_of_lt_one (r := 2⁻¹) (by norm_num) (by norm_num)).mul_right _
    have h₃ : ∑' n : ℕ, ENNReal.ofReal (((2 : ℝ) ^ n * S a)⁻¹) = ENNReal.ofReal (2 * (S a)⁻¹) := by
      rw [← ENNReal.ofReal_tsum_of_nonneg (f := fun n ↦ ((2 : ℝ) ^ n * S a)⁻¹)
        (fun n ↦ by positivity) hsum]
      congr 1
      simp only [mul_inv, ← inv_pow]
      rw [tsum_mul_right, tsum_geometric_inv_two]
    calc volume E
        ≤ ∑' n, volume (En n) := le_trans (measure_mono hcov) (measure_iUnion_le En)
      _ ≤ ∑' n : ℕ, ENNReal.ofReal (((2 : ℝ) ^ n * S a)⁻¹) :=
          ENNReal.tsum_le_tsum fun n ↦ le_trans (Real.volume_le_diam (En n)) (hdiam n)
      _ = ENNReal.ofReal (2 * (S a)⁻¹) := h₃
      _ < ⊤ := ENNReal.ofReal_lt_top
  -- Conclusion
  have hEc : Eᶜ ∈ volume.cofinite := by
    rw [Measure.mem_cofinite, compl_compl]
    exact hvol
  filter_upwards [mem_inf_of_left hEc, mem_inf_of_right (eventually_ge_atTop a)]
    with r h₃r h₄r
  by_contra h₅
  exact h₃r ⟨h₄r, not_le.1 h₅⟩

/--
**Borel's Growth Lemma**: if `S : ℝ → ℝ` is monotone on `Set.Ici a` and is non-negative at `a`, then
the inequality `S (r + (S r)⁻¹) ≤ 2 * S r` holds for all sufficiently large `r` outside a set of
finite Lebesgue measure.
-/
theorem MonotoneOn.eventually_le_two_mul {S : ℝ → ℝ} {a : ℝ}
    (h₁ : MonotoneOn S (Set.Ici a)) (h₂ : 0 ≤ S a) :
    ∀ᶠ r in volume.cofinite ⊓ atTop, S (r + (S r)⁻¹) ≤ 2 * S r := by
  by_cases hb : ∀ b, a ≤ b → S b = 0
  · have : Set.Ici a ∈ volume.cofinite ⊓ atTop := by
      rw [mem_inf_iff_superset]
      use (Set.Ioo (-a) a)ᶜ, Measure.mem_cofinite.mpr (by simp), (Set.Ici a), (by aesop)
      simp
    filter_upwards [this]
    simp_all
  · push Not at hb
    obtain ⟨b, h₁b, h₂b⟩ := hb
    apply MonotoneOn.eventually_le_two_mul' (a := b)
    · apply h₁.mono (Ici_subset_Ici.2 h₁b)
    · grind [h₁ self_mem_Ici (mem_Ici.mpr h₁b) h₁b]
```
