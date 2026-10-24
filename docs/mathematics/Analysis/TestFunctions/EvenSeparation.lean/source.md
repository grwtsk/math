# Complete source: GRWTSK.Analysis.TestFunctions.EvenSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53159b59a2f060d91e5c83a29746931dbceee1ee` · SHA-256 `c95246623b3af45f53741f16c08be3a07f250c533606b51ace523248e7432db1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.TestFunctions.Separation
import Mathlib.MeasureTheory.Group.Integral

/-!
# Even smooth tests for an even continuous residual

Reflection symmetrization preserves compact interior support and doubles the
pairing with an even residual. This is only a symmetry step: requiring a test
to be a second derivative minus one quarter of a profile is a further constraint.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.BranchEvenSmoothTest

open Set MeasureTheory
open scoped ContDiff
open BranchSmoothTestSeparation

/-- A separating smooth test can be chosen even on a reflection-invariant open set. -/
theorem exists_even_smooth_test_positive_pairing {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (heven : Function.Even f) (hs : IsOpen s)
    (hneg : ∀ t ∈ s, -t ∈ s) {x : ℝ} (hx : x ∈ s) (hfx : f x ≠ 0) :
    ∃ g : ℝ → ℝ, Function.Even g ∧ HasCompactSupport g ∧ tsupport g ⊆ s ∧
      ContDiff ℝ ∞ g ∧ Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  obtain ⟨g, hc, hsupport, hsmooth, hi, hp⟩ :=
    exists_smooth_test_positive_pairing hf hs hx hfx
  have hcneg : HasCompactSupport (fun t ↦ g (-t)) :=
    hc.comp_homeomorph (Homeomorph.neg ℝ)
  have hsneg : tsupport (fun t ↦ g (-t)) ⊆ s := by
    intro t ht
    have htneg : -t ∈ tsupport g :=
      tsupport_comp_subset_preimage g continuous_neg ht
    simpa only [neg_neg] using hneg (-t) (hsupport htneg)
  have hsymcont := hf.mul (hsmooth.continuous.add (hsmooth.continuous.comp continuous_neg))
  have hisym : Integrable (fun t ↦ f t * (g t + g (-t))) :=
    hsymcont.integrable_of_hasCompactSupport ((hc.add hcneg).mul_left)
  have hnegcont := hf.mul (hsmooth.continuous.comp continuous_neg)
  have hineg : Integrable (fun t ↦ f t * g (-t)) :=
    hnegcont.integrable_of_hasCompactSupport hcneg.mul_left
  have hpair : (∫ t, f t * g (-t)) = ∫ t, f t * g t := by
    calc
      (∫ t, f t * g (-t)) = ∫ t, f (-t) * g (-t) := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun t ↦ by simp only [heven t])
      _ = ∫ t, f t * g t := integral_neg_eq_self (fun t ↦ f t * g t) volume
  refine ⟨fun t ↦ g t + g (-t), ?_, hc.add hcneg, ?_,
    hsmooth.add (hsmooth.comp contDiff_id.neg), hisym, ?_⟩
  · intro t
    simp only [neg_neg, add_comm]
  · exact (tsupport_add g (fun t ↦ g (-t))).trans (union_subset hsupport hsneg)
  · have hsum : (∫ t, f t * (g t + g (-t))) =
        (∫ t, f t * g t) + ∫ t, f t * g (-t) := by
      simp_rw [mul_add]
      exact integral_add hi hineg
    rw [hsum, hpair]
    linarith

/-- Failure of interior C² supplies an even smooth separator for an even residual. -/
theorem exists_even_smooth_test_of_not_contDiffOn_two {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (heven : Function.Even f) (hs : IsOpen s)
    (hneg : ∀ t ∈ s, -t ∈ s) (h : ¬ ContDiffOn ℝ 2 f s) :
    ∃ g : ℝ → ℝ, Function.Even g ∧ HasCompactSupport g ∧ tsupport g ⊆ s ∧
      ContDiff ℝ ∞ g ∧ Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  obtain ⟨x, hx, hn⟩ := exists_nonzero_of_not_contDiffOn_two h
  exact exists_even_smooth_test_positive_pairing hf heven hs hneg hx hn

/-- Even smooth tests already determine an even continuous residual pointwise. -/
theorem eq_zero_on_of_even_smooth_test_pairings_zero {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (heven : Function.Even f) (hs : IsOpen s)
    (hneg : ∀ t ∈ s, -t ∈ s)
    (hzero : ∀ g : ℝ → ℝ, Function.Even g → HasCompactSupport g → tsupport g ⊆ s →
      ContDiff ℝ ∞ g → (∫ t, f t * g t) = 0) : ∀ x ∈ s, f x = 0 := by
  intro x hx
  by_contra hn
  obtain ⟨g, he, hc, hsupport, hsmooth, _hi, hp⟩ :=
    exists_even_smooth_test_positive_pairing hf heven hs hneg hx hn
  rw [hzero g he hc hsupport hsmooth] at hp
  exact lt_irrefl 0 hp

end GRWTSK.RiemannHypothesis.BranchEvenSmoothTest
```
