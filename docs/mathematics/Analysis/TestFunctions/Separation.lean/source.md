# Complete source: GRWTSK.Analysis.TestFunctions.Separation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `377dff55ada8f679a60abdfd345ef72898dda1b1` · SHA-256 `87549167c6cbb86388f077769bb28629f9801f361e8ec26b7a788f0329ae3b9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# Smooth test separation for a continuous residual

A continuous residual nonzero inside an open real set has a smooth, compactly
supported test with strictly positive pairing. Consequently, vanishing against
all such tests forces pointwise vanishing on the set. Applying the separation
criterion to the native compensated source requires its exact source binding;
this module supplies no native admissible path or uniform arithmetic price.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.BranchSmoothTestSeparation

open Set MeasureTheory
open scoped Topology ContDiff

/-- Failure of interior C² prevents pointwise vanishing throughout that interior. -/
theorem exists_nonzero_of_not_contDiffOn_two {f : ℝ → ℝ} {s : Set ℝ}
    (h : ¬ ContDiffOn ℝ 2 f s) : ∃ x ∈ s, f x ≠ 0 := by
  by_contra hn
  push Not at hn
  apply h
  exact (contDiff_const : ContDiff ℝ 2 (fun _ : ℝ ↦ (0 : ℝ))).contDiffOn.congr
    (fun x hx ↦ hn x hx)

/-- A local smooth test with the sign chosen from the actual nonzero value. -/
theorem exists_smooth_test_positive_pairing {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (hs : IsOpen s) {x : ℝ} (hx : x ∈ s) (hfx : f x ≠ 0) :
    ∃ g : ℝ → ℝ, HasCompactSupport g ∧ tsupport g ⊆ s ∧ ContDiff ℝ ∞ g ∧
      Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  let u : Set ℝ := s ∩ {y | 0 < f y * f x}
  have hu : IsOpen u := hs.inter (isOpen_lt continuous_const (hf.mul continuous_const))
  have hxU : x ∈ u := ⟨hx, mul_self_pos.mpr hfx⟩
  obtain ⟨φ, hφs, hφc, hφsmooth, hφrange, hφx⟩ :=
    exists_contDiff_tsupport_subset (n := (⊤ : ℕ∞)) (hu.mem_nhds hxU)
  let g : ℝ → ℝ := fun t ↦ f x * φ t
  have hgcompact : HasCompactSupport g := hφc.mul_left
  have hgsupport : tsupport g ⊆ s :=
    (tsupport_mul_subset_right.trans hφs).trans inter_subset_left
  have hgsmooth : ContDiff ℝ ∞ g := contDiff_const.mul hφsmooth
  have hFcontinuous : Continuous (fun t ↦ f t * g t) :=
    hf.mul (continuous_const.mul hφsmooth.continuous)
  have hFcompact : HasCompactSupport (fun t ↦ f t * g t) := hgcompact.mul_left
  have hFnonneg : 0 ≤ (fun t ↦ f t * g t) := by
    intro t
    by_cases hz : φ t = 0
    · simp [g, hz]
    · have ht : t ∈ u := hφs (subset_closure hz)
      have hp : 0 ≤ φ t := (hφrange (mem_range_self t)).1
      change 0 ≤ f t * (f x * φ t)
      rw [← mul_assoc]
      exact mul_nonneg ht.2.le hp
  have hFx : (fun t ↦ f t * g t) x ≠ 0 := by
    simpa [g, hφx] using mul_ne_zero hfx hfx
  exact ⟨g, hgcompact, hgsupport, hgsmooth,
    hFcontinuous.integrable_of_hasCompactSupport hFcompact,
    hFcontinuous.integral_pos_of_hasCompactSupport_nonneg_nonzero hFcompact hFnonneg hFx⟩

/-- Vanishing of every supported smooth test pairing implies pointwise vanishing. -/
theorem eq_zero_on_of_smooth_test_pairings_zero {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (hs : IsOpen s)
    (hzero : ∀ g : ℝ → ℝ, HasCompactSupport g → tsupport g ⊆ s →
      ContDiff ℝ ∞ g → (∫ t, f t * g t) = 0) : ∀ x ∈ s, f x = 0 := by
  intro x hx
  by_contra hn
  obtain ⟨g, hc, hsupport, hsmooth, _hi, hp⟩ :=
    exists_smooth_test_positive_pairing hf hs hx hn
  rw [hzero g hc hsupport hsmooth] at hp
  exact lt_irrefl 0 hp

/-- A continuous residual failing C² on an open set has a genuine smooth separator. -/
theorem exists_smooth_test_of_not_contDiffOn_two {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (hs : IsOpen s) (h : ¬ ContDiffOn ℝ 2 f s) :
    ∃ g : ℝ → ℝ, HasCompactSupport g ∧ tsupport g ⊆ s ∧ ContDiff ℝ ∞ g ∧
      Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  obtain ⟨x, hx, hn⟩ := exists_nonzero_of_not_contDiffOn_two h
  exact exists_smooth_test_positive_pairing hf hs hx hn

/-- A point spike is invisible to every Lebesgue integral pairing. -/
def pointSpike (t : ℝ) : ℝ := if t = 0 then 1 else 0

/-- Dropping continuity permits a nonzero point despite all test pairings vanishing. -/
theorem point_spike_pairings_zero :
    (∀ g : ℝ → ℝ, (∫ t, pointSpike t * g t) = 0) ∧ pointSpike 0 ≠ 0 := by
  constructor
  · intro g
    calc
      (∫ t, pointSpike t * g t) = ∫ _t : ℝ, (0 : ℝ) := by
        apply integral_congr_ae
        filter_upwards [volume.ae_ne (0 : ℝ)] with t ht
        simp [pointSpike, ht]
      _ = 0 := by simp
  · norm_num [pointSpike]

end GRWTSK.RiemannHypothesis.BranchSmoothTestSeparation
```
