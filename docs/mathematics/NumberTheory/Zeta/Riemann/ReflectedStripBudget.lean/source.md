# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6` · SHA-256 `56a91a536dd2e50b8fcfcad15efd194694ef94d56e571575f872c732054d2b24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.GammaVerticalBound
import GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative
import GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative

set_option autoImplicit false

/-!
# The full zeta logarithmic derivative on the fixed horizontal strip

The central estimate is reused. On the negative-real-part segment the actual
functional equation retains the Gamma, cotangent, and reflected-zeta terms.
The new Gamma bound is linear in height and is sufficient for the later
T^(-2) contour budget. No quotient, digamma series, source equality or growth
estimate is supplied by the application. The normalized height limit and the
infinite zero-to-prime formula are not proved by these declarations.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ReflectedStripBudget

open Set
open JensenDiskLogDerivative CubicZetaCircleBound JensenCentralLogDerivative
open SeparatedContourHeights LeftLogDerivative HorizontalLogDerivative
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.Analysis.Complex.GammaVerticalBound
open GRWTSK.Analysis.Complex.TrigonometricHeightBounds

noncomputable section

/-- The exact existing central-strip expression, with no changed zero inventory. -/
def centralBudget (N : ℕ) : ℝ :=
  80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1)

theorem centralBudget_nonneg (N : ℕ) : 0 ≤ centralBudget N := by
  have hH := (growthLog_pos N).le
  have hQ := diskCountBudget_nonneg N
  have hJ := localCountBudget_nonneg N
  unfold centralBudget
  positivity

/-- Both reflected zeta regions are covered; neither term is dropped at the seam. -/
theorem norm_reflected_logDeriv_le (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ < 0) (hy : |y| = separatedHeight N) :
    ‖logDeriv riemannZeta (1 - ((σ : ℂ) + (y : ℂ) * Complex.I))‖ ≤
      centralBudget N + mangoldtLineMass := by
  have he : 1 - ((σ : ℂ) + (y : ℂ) * Complex.I) =
      ((1 - σ : ℝ) : ℂ) + ((-y : ℝ) : ℂ) * Complex.I := by push_cast; ring
  rw [he]
  by_cases hc : 1 - σ ≤ 2
  · have hb := norm_logDeriv_central N hN (1 - σ) (-y) ⟨by linarith, hc⟩
      (by simpa only [abs_neg] using hy)
    change ‖logDeriv riemannZeta
      (((1 - σ : ℝ) : ℂ) + ((-y : ℝ) : ℂ) * Complex.I)‖ ≤ centralBudget N at hb
    linarith [mangoldtLineMass_nonneg]
  · have hb := norm_logDeriv_right_halfPlane_le
      (((1 - σ : ℝ) : ℂ) + ((-y : ℝ) : ℂ) * Complex.I)
      (by simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
        Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, zero_mul,
        sub_zero, add_zero]; linarith)
    linarith [centralBudget_nonneg N]

/-- A fixed-strip budget, not a bound uniform in the square-interval geometry. -/
def stripBudget (N : ℕ) : ℝ :=
  centralBudget N + mangoldtLineMass + ‖Complex.log (2 * (Real.pi : ℂ))‖ +
    56 * heightLogBudget (separatedHeight N) + 3 * Real.pi / 2

theorem centralBudget_le_stripBudget (N : ℕ) : centralBudget N ≤ stripBudget N := by
  have hM := mangoldtLineMass_nonneg
  have hG := (heightLogBudget_pos (separatedHeight N)).le
  have hC := norm_nonneg (Complex.log (2 * (Real.pi : ℂ)))
  unfold stripBudget
  nlinarith [Real.pi_pos]

theorem stripBudget_nonneg (N : ℕ) : 0 ≤ stripBudget N :=
  (centralBudget_nonneg N).trans (centralBudget_le_stripBudget N)

/-- Full actual source on [-3,2] at either selected height, with no analytic supplier premise. -/
theorem norm_logDeriv_fixedStrip (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ∈ Icc (-3 : ℝ) 2) (hy : |y| = separatedHeight N) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ stripBudget N := by
  by_cases hnonneg : 0 ≤ σ
  · exact (norm_logDeriv_central N hN σ y ⟨hnonneg, hσ.2⟩ hy).trans
      (centralBudget_le_stripBudget N)
  · have hneg : σ < 0 := lt_of_not_ge hnonneg
    let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
    have hs : s.re < 0 := by simpa [s] using hneg
    have hheight : 1 ≤ |s.im| := by
      simp only [s, Complex.add_im, Complex.ofReal_im, Complex.mul_im,
        Complex.ofReal_re, Complex.I_im, Complex.I_re, mul_one, zero_mul,
        add_zero, zero_add]
      rw [hy]
      linarith [(separatedHeight_bounds N).1, Nat.cast_nonneg (α := ℝ) N]
    have hi : s.im ≠ 0 := by intro he; rw [he, abs_zero] at hheight; norm_num at hheight
    have href := negative_logDeriv_reflection hs (zeta_ne_zero_left_nonreal s hs hi)
    have hg := norm_digamma_le (1 - s) (by
      simp only [s, Complex.sub_re, Complex.one_re, Complex.add_re,
        Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im, Complex.I_re,
        Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
      constructor <;> linarith [hσ.1])
    have hgamma : ‖Complex.digamma (1 - s)‖ ≤ 56 * heightLogBudget (separatedHeight N) := by
      have him : (1 - s).im = -y := by simp [s]
      simpa only [heightLogBudget, him, abs_neg, hy,
        abs_of_pos (separatedHeight_pos N)] using hg
    have hz : ‖logDeriv riemannZeta (1 - s)‖ ≤ centralBudget N + mangoldtLineMass :=
      norm_reflected_logDeriv_le N hN σ y hneg hy
    have hcot := norm_half_pi_cot_le s hheight
    have htri : ‖-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s) +
        logDeriv riemannZeta (1 - s) - ((Real.pi : ℂ) / 2) *
          (Complex.cos ((Real.pi : ℂ) * s / 2) /
            Complex.sin ((Real.pi : ℂ) * s / 2))‖ ≤
        ‖Complex.log (2 * (Real.pi : ℂ))‖ + ‖Complex.digamma (1 - s)‖ +
          ‖logDeriv riemannZeta (1 - s)‖ +
          ‖((Real.pi : ℂ) / 2) * (Complex.cos ((Real.pi : ℂ) * s / 2) /
            Complex.sin ((Real.pi : ℂ) * s / 2))‖ := by
      have h₁ := norm_sub_le
        (-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s) +
          logDeriv riemannZeta (1 - s))
        (((Real.pi : ℂ) / 2) * (Complex.cos ((Real.pi : ℂ) * s / 2) /
          Complex.sin ((Real.pi : ℂ) * s / 2)))
      have h₂ := norm_add_le (-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s))
        (logDeriv riemannZeta (1 - s))
      have h₃ := norm_add_le (-Complex.log (2 * (Real.pi : ℂ))) (Complex.digamma (1 - s))
      rw [norm_neg] at h₃
      linarith
    change ‖logDeriv riemannZeta s‖ ≤ stripBudget N
    rw [← norm_neg, href]
    unfold stripBudget
    linarith

/-- The maintained ray-transfer theorem now receives an actual fixed-strip supplier. -/
theorem norm_logDeriv_horizontal_ray (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ≤ 2) (hy : |y| = separatedHeight N) :
    ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      stripBudget N + 2 * mangoldtLineMass + (2 - σ) / 2 := by
  have hy0 : y ≠ 0 := by
    intro he
    rw [he, abs_zero] at hy
    linarith [separatedHeight_pos N]
  exact norm_horizontal_le_of_strip_bound y (stripBudget N) hy0
    (fun u hu => by simpa only [norm_neg] using norm_logDeriv_fixedStrip N hN u y hu hy) σ hσ

/-- Exact dependence on height; this algebra is not the normalized limit theorem. -/
theorem stripBudget_eq_affine_height (N : ℕ) :
    stripBudget N = centralBudget N +
      (mangoldtLineMass + ‖Complex.log (2 * (Real.pi : ℂ))‖ +
        112 * Real.log envelope + 3 * Real.pi / 2) +
      (56 * Real.pi) * separatedHeight N := by
  rw [stripBudget, heightLogBudget, abs_of_pos (separatedHeight_pos N)]
  ring

end
end GRWTSK.RiemannHypothesis.ReflectedStripBudget
```
