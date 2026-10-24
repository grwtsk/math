# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9` · SHA-256 `24bfb40a8b8c626a6948a073e36eeaa914a92ef99b78b1b79bbca558e6118422`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ClosedDiskCauchy
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds

set_option autoImplicit false

/-!
# Actual zeta magnitude and whole-disk curvature from the sourced Mellin identity

The source identity, its convergent integral bound and Cauchy's estimate supply
all analytic inequalities here. No assumed curvature, zero or value enclosure is
introduced. The horizontal and pole margins and the outer-to-inner gap persist.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ZetaDiskCauchyBounds

open Metric Set
open CriticalStripHeightDescent
open GRWTSK.Analysis.Complex.ClosedDiskCauchy

/-- De-normalize the established actual source only away from the pole. -/
theorem zeta_eq_fractional {z : ℂ} (hz : 0 < z.re) (hz1 : z ≠ 1) :
    riemannZeta z = z / (z - 1) - z * fractionalMellin z := by
  have hsource := poleNormalized_eq_fractional hz
  rw [poleNormalizedZeta_of_ne hz1] at hsource
  apply mul_left_cancel₀ (sub_ne_zero.mpr hz1)
  rw [hsource]
  unfold fractionalPoleModel
  field_simp [sub_ne_zero.mpr hz1] <;> ring

/-- The pointwise majorant retains both convergence and pole-separation factors. -/
theorem norm_zeta_le {z : ℂ} {σ δ B : ℝ}
    (hσ : 0 < σ) (hδ : 0 < δ) (hz : σ ≤ z.re)
    (hpole : δ ≤ ‖z - 1‖) (hB : ‖z‖ ≤ B) :
    ‖riemannZeta z‖ ≤ B / δ + B / σ := by
  have hz1 : z ≠ 1 := by
    intro he
    have hh := hpole
    rw [he, sub_self, norm_zero] at hh
    linarith
  rw [zeta_eq_fractional (hσ.trans_le hz) hz1]
  calc
    _ ≤ ‖z / (z - 1)‖ + ‖z * fractionalMellin z‖ := norm_sub_le _ _
    _ = ‖z‖ / ‖z - 1‖ + ‖z‖ * ‖fractionalMellin z‖ := by rw [norm_div, norm_mul]
    _ ≤ B / δ + B / σ := by
      apply add_le_add
      · exact (div_le_div_of_nonneg_left (norm_nonneg z) hδ hpole).trans
          (div_le_div_of_nonneg_right hB hδ.le)
      · calc
          _ ≤ ‖z‖ * (1 / σ) := mul_le_mul_of_nonneg_left
            (fractionalMellin_norm_le hσ hz) (norm_nonneg z)
          _ ≤ B * (1 / σ) := mul_le_mul_of_nonneg_right hB (by positivity)
          _ = B / σ := by ring

/-- Three scalar checks control the entire closed outer disk, not a finite grid. -/
theorem disk_bounds {c z : ℂ} {S σ δ B : ℝ}
    (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ)
    (hB : ‖c‖ + S ≤ B) (hz : z ∈ closedBall c S) :
    σ ≤ z.re ∧ δ ≤ ‖z - 1‖ ∧ ‖z‖ ≤ B ∧ z ≠ 1 := by
  have hd : ‖z - c‖ ≤ S := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hre : |z.re - c.re| ≤ S := by
    simpa only [Complex.sub_re] using (Complex.abs_re_le_norm (z - c)).trans hd
  have hl : σ ≤ z.re := by linarith [(abs_le.mp hre).1]
  have hr : z.re ≤ 1 - δ := by linarith [(abs_le.mp hre).2]
  have hp : δ ≤ ‖z - 1‖ := by
    have hn := Complex.abs_re_le_norm (z - 1)
    have ha : -(z.re - 1) ≤ |z.re - 1| := neg_le_abs _
    simp only [Complex.sub_re, Complex.one_re] at hn
    linarith
  have hb : ‖z‖ ≤ B := calc
    _ = ‖(z - c) + c‖ := by congr 1; ring
    _ ≤ ‖z - c‖ + ‖c‖ := norm_add_le _ _
    _ ≤ B := by linarith
  refine ⟨hl, hp, hb, ?_⟩
  intro he
  have hh := hp
  rw [he, sub_self, norm_zero] at hh
  linarith

/-- A uniform zeta bound derived from the already sourced fractional Mellin estimate. -/
theorem norm_zeta_le_on_disk {c : ℂ} {S σ δ B : ℝ}
    (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ)
    (hB : ‖c‖ + S ≤ B) :
    ∀ z ∈ closedBall c S, ‖riemannZeta z‖ ≤ B / δ + B / σ := by
  intro z hz
  obtain ⟨hl, hp, hb, _⟩ := disk_bounds hσ hδ hleft hright hB hz
  exact norm_zeta_le hσ hδ hl hp hb

/-- The required SECOND derivative on every inner point, not only at the center. -/
theorem norm_secondDeriv_zeta_le_on_inner {c : ℂ} {R S σ δ B : ℝ}
    (hRS : R < S) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ)
    (hB : ‖c‖ + S ≤ B) :
    ∀ z ∈ closedBall c R,
      ‖deriv (deriv riemannZeta) z‖ ≤ 2 * (B / δ + B / σ) / (S - R) ^ 2 := by
  intro z hz
  apply norm_secondDeriv_le_on_inner hRS
    (fun w hw => differentiableAt_riemannZeta (disk_bounds hσ hδ hleft hright hB hw).2.2.2)
    (norm_zeta_le_on_disk hσ hδ hleft hright hB) hz

end GRWTSK.RiemannHypothesis.ZetaDiskCauchyBounds
```
