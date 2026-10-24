# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AnalyticPolePatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f599b2e76fac8bec239b74e4f1c2f7a5ae11951f` · SHA-256 `48532210a136675b7dc7bc113c73607a0cc159b6fc73e69a5f6fbb61794d5c82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MirrorPatchDescent
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.AnalyticPolePatch

open CriticalStripHeightDescent

noncomputable section

/-- A real, concrete analytic input to the mean-value producer, not a zeta surrogate. -/
def affinePatch : SampleVariationPatch (fun z : ℂ => 2 + z)
    (Metric.closedBall (0 : ℂ) (1 / 2 : ℝ)) := by
  refine SampleVariationPatch.ofDerivativeEnclosure
    (V := Set.univ) 0 2 2 0 1 (1 / 2)
    (by norm_num) (by norm_num) (by norm_num) convex_univ
    (by trivial) (by intro z hz; trivial) ?_ ?_ ?_ ?_ ?_ (by norm_num)
  · intro z _
    exact differentiableAt_const.add differentiableAt_id
  · intro z _
    have hd : HasDerivAt (fun z : ℂ => 2 + z) 1 z := by
      simpa using (hasDerivAt_const z (2 : ℂ)).add (hasDerivAt_id z)
    rw [hd.deriv]
    norm_num
  · intro z hz
    have hdist : dist z (0 : ℂ) ≤ (1 / 2 : ℝ) := hz
    simpa only [dist_eq_norm] using hdist
  · norm_num
  · norm_num

example {z : ℂ} (hz : z ∈ Metric.closedBall (0 : ℂ) (1 / 2 : ℝ)) :
    (2 : ℂ) + z ≠ 0 := affinePatch.nonzero hz

example {F : ℂ → ℂ} {c a : ℂ} {b δ : ℝ}
    (hb : b ≤ ‖a‖) (hδ : ‖F c - a‖ ≤ δ) : b - δ ≤ ‖F c‖ :=
  sample_lower_of_enclosure hb hδ

example {P F : ℂ → ℂ} {U : Set ℂ} (p : SampleVariationPatch P U)
    {δ : ℝ} (he : ∀ z ∈ U, ‖F z - P z‖ ≤ δ)
    (hm : p.error + δ < p.lower) {z : ℂ} (hz : z ∈ U) : F z ≠ 0 :=
  p.source_nonzero he hm hz

example {c a₀ a₁ a₂ z : ℂ} {r : ℝ} (hr : 0 ≤ r) (hz : ‖z - c‖ ≤ r) :
    ‖quadraticLocalModel c a₀ a₁ a₂ z - a₀‖ ≤ ‖a₁‖ * r + ‖a₂‖ * r ^ 2 :=
  quadraticLocalModel_variation hr hz

/-- No passing patch for the zero function can cover its actual zero. -/
example : ¬ Nonempty (SampleVariationPatch (fun _ : ℂ => 0) ({0} : Set ℂ)) := by
  rintro ⟨patch⟩
  exact patch.nonzero (z := 0) (by simp) rfl

example : Differentiable ℂ poleNormalizedZeta := differentiable_poleNormalizedZeta
example : poleNormalizedZeta 1 = 1 := poleNormalizedZeta_one
example : poleNormalizedZeta ≠ (fun z : ℂ => (z - 1) * riemannZeta z) :=
  poleNormalizedZeta_ne_raw_product

example {z : ℂ} (hz : z ≠ 1) :
    poleNormalizedZeta z = 0 ↔ riemannZeta z = 0 := poleNormalizedZeta_eq_zero_iff hz

example : ∃ r : ℝ, 0 < r ∧ ∀ z ∈ Metric.ball (1 : ℂ) r, z ≠ 1 →
    (1 / 2 : ℝ) ≤ ‖z - 1‖ * ‖riemannZeta z‖ :=
  exists_punctured_zeta_pole_lower_bound

example {U : Set ℂ} (c : FiniteVariationCover poleNormalizedZeta U) : NoTargetZero U :=
  noTargetZero_of_poleNormalized_cover c

example {N : ℕ} (h : WindowRH N)
    (c : ∀ m : ℕ, FiniteVariationCover poleNormalizedZeta (rightAwayShell N m)) :
    WindowRH (N + 1) := window_succ_of_poleNormalized_covers h c

end

end GRWTSK.RiemannHypothesis.Checks.AnalyticPolePatch
```
