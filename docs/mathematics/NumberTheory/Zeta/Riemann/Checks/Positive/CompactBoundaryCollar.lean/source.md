# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CompactBoundaryCollar

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028251550b3f4750694e5affee3728ab3915cc9c` · SHA-256 `c07e32520fe88a3c8cf190cfd0d167fa1cb05fb59372ad41aee7131517278560`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AnalyticPolePatch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripBoundaryCollar

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.CompactBoundaryCollar

open CriticalStripHeightDescent

example {F : ℂ → ℂ} {c : ℂ} (hcont : ContinuousAt F c) (hne : F c ≠ 0) :
    ∃ r : ℝ, 0 < r ∧ Nonempty (SampleVariationPatch F (Metric.ball c r)) :=
  exists_variationPatch_of_continuousAt_ne_zero hcont hne

example {F : ℂ → ℂ} {K : Set ℂ} (hK : IsCompact K)
    (hcont : ∀ c ∈ K, ContinuousAt F c) :
    Nonempty (FiniteVariationCover F K) ↔ ∀ c ∈ K, F c ≠ 0 :=
  finiteVariationCover_iff_nonzero_of_compact hK hcont

example {F : ℂ → ℂ} {U V : Set ℂ} (cover : FiniteVariationCover F U)
    (hVU : V ⊆ U) : FiniteVariationCover F V := cover.restrict hVU

/-- A real zero cannot pass the cover's strict source margin. -/
example : ¬ Nonempty (FiniteVariationCover (fun z : ℂ => z) ({0} : Set ℂ)) :=
  no_finiteVariationCover_of_zero (by simp) rfl

/-- Vacuous coverage is permitted only for an actually empty target. -/
example : Nonempty (FiniteVariationCover (fun _ : ℂ => (0 : ℂ)) (∅ : Set ℂ)) :=
  exists_finiteVariationCover_of_compact isCompact_empty (by simp) (by simp)

example {F : ℂ → ℂ} {K : Set ℂ} (hK : IsCompact K) (hneK : K.Nonempty)
    (hF : Continuous F) (hne : ∀ z ∈ K, F z ≠ 0) :
    ∃ r b : ℝ, 0 < r ∧ 0 < b ∧
      ∀ z ∈ Metric.thickening r K, b ≤ ‖F z‖ :=
  exists_thickening_norm_lower_of_compact hK hneK hF hne

example {z : ℂ} (hz : 1 ≤ z.re) : poleNormalizedZeta z ≠ 0 :=
  poleNormalizedZeta_ne_zero_of_one_le_re hz

example (N : ℕ) : IsCompact (rightBoundarySegment N) :=
  rightBoundarySegment_isCompact N

example (N : ℕ) : (rightBoundarySegment N).Nonempty :=
  rightBoundarySegment_nonempty N

example (N : ℕ) (δ : ℝ) : IsCompact (rightClosedBand N δ) :=
  rightClosedBand_isCompact N δ

example (N : ℕ) : Nonempty (RightBoundaryCollar N) := exists_rightBoundaryCollar N

example {N : ℕ} (collar : RightBoundaryCollar N) {z : ℂ}
    (hz : NontrivialZetaZero z) (him : |z.im| ≤ (N : ℝ)) :
    collar.width < z.re ∧ z.re < 1 - collar.width :=
  collar.target_real_bounds hz him

example (N : ℕ) (collar : RightBoundaryCollar (N + 1)) :
    ShellRH N ↔ ∀ m : ℕ, NoTargetZero (rightInteriorShell N m collar.width) :=
  shellRH_iff_interior_exclusion N collar

example {N : ℕ} (hN : WindowRH N) (collar : RightBoundaryCollar (N + 1))
    (covers : ∀ m : ℕ,
      FiniteVariationCover poleNormalizedZeta (rightInteriorShell N m collar.width)) :
    WindowRH (N + 1) := window_succ_of_interior_covers hN collar covers

example : ∀ N : ℕ, (0 : ℝ) < 1 / ((N : ℝ) + 1) := by
  intro N
  positivity

example : ¬ (∃ δ : ℝ, 0 < δ ∧ ∀ N : ℕ, δ ≤ 1 / ((N : ℝ) + 1)) :=
  reciprocal_widths_no_uniform_positive_lower

end GRWTSK.RiemannHypothesis.Checks.CompactBoundaryCollar
```
