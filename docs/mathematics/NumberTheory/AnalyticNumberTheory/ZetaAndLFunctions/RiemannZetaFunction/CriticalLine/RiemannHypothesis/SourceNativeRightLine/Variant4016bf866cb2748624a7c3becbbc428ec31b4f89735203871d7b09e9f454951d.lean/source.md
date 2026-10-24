# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNativeRightLine.Variant4016bf866cb2748624a7c3becbbc428ec31b4f89735203871d7b09e9f454951d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1abcc3276f503d586b5e7effa466d1079d38282` · SHA-256 `4016bf866cb2748624a7c3becbbc428ec31b4f89735203871d7b09e9f454951d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNativeMellin

/-!
# Decay on the actual initial Mellin line

The radius and source normalization stay literal. This is an analytic transform
bound, not a Mellin inversion or a signed arithmetic bound.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/

namespace FormalResearch.RiemannHypothesis.SourceNativeRightLine

open MeasureTheory
open SourcePairing SourceNativeMellin
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform

noncomputable section

private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

/-- Positive-real-part bilateral decay retains the exact A^(17/2) scale. -/
theorem bilateral_right_decay (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : 0 ≤ z.re) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      408576 * Real.exp (A * z.re) / (A ^ 4 * Real.sqrt A * ‖z‖ ^ 3) := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ = Real.exp (A * z.re) := by
    rw [Complex.norm_exp]
    simp
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A * z.re) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (A ^ (17 / 2 : ℝ) * ‖z‖ ^ 9)) *
        (Real.exp (A * z.re) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A * z.re) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
        _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
            ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
          norm_sub_le _ _
        _ ≤ _ := by
          simp only [norm_mul]
          gcongr
          · exact hepos.le
          · simpa only [neg_mul] using hn
    _ = _ := by
      rw [source_scale A hApos]
      field_simp
      ring

/-- The literal normalization is bounded below by its positive constant term. -/
theorem normalization_floor (A : ℝ) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
  unfold sourceNormalization
  have h1 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h2 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  norm_num at *
  linarith

/-- Actual native transform decay on the positive side of the shifted Mellin plane. -/
theorem nativeMellin_right_decay (A : ℝ) (hA : 1 ≤ A) (s : ℂ)
    (hsre : 0 ≤ (s - 1 / 2).re) (hs : 1 ≤ ‖s - 1 / 2‖) :
    ‖nativeMellinTransform A s‖ ≤
      408576 ^ 2 * Real.exp (2 * A * (s - 1 / 2).re) /
        ((4096 / 109395 : ℝ) * A ^ 9 * ‖s - 1 / 2‖ ^ 6) := by
  have hp : 0 < A := by linarith
  have hzpos : 0 < ‖s - 1 / 2‖ := by linarith
  have hz0 : s - 1 / 2 ≠ 0 := norm_pos_iff.mp hzpos
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  have hq := bilateral_right_decay A hA (s - 1 / 2) hsre hs
  have hb : ‖bilateralTransform A (s - 1 / 2)‖ ^ 2 ≤
      (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 :=
    pow_le_pow_left₀ (norm_nonneg _) hq 2
  rw [nativeMellin_eq_dividedTransform A hA s hz0,
    ← actual_transform A hp (s - 1 / 2) hz0]
  simp only [norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]
  calc
    _ ≤ (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 / sourceNormalization A := by
      gcongr
    _ ≤ (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 / (4096 / 109395 : ℝ) :=
      div_le_div_of_nonneg_left (sq_nonneg _) (by norm_num) (normalization_floor A)
    _ = _ := by
      have he : Real.exp (2 * A * (s - 1 / 2).re) =
          Real.exp (A * (s - 1 / 2).re) ^ 2 := by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      rw [he]
      have hsqrt : (Real.sqrt A) ^ 2 = A := Real.sq_sqrt hp.le
      simp only [div_pow, mul_pow, hsqrt]
      ring

/-- The actual fixed c = 2 line has the source's literal height-six decay. -/
theorem nativeMellin_two_line_decay (A : ℝ) (hA : 1 ≤ A) (t : ℝ) (ht : 1 ≤ |t|) :
    ‖nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))‖ ≤
      (204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) * Real.exp (3 * A) /
        (A ^ 9 * |t| ^ 6) := by
  let s : ℂ := 2 + Complex.I * (t : ℂ)
  have him : (s - 1 / 2).im = t := by simp [s]
  have hre : (s - 1 / 2).re = (3 / 2 : ℝ) := by norm_num [s]
  have hnorm : |t| ≤ ‖s - 1 / 2‖ := by
    rw [← him]
    exact Complex.abs_im_le_norm _
  have hnorm1 : 1 ≤ ‖s - 1 / 2‖ := le_trans ht hnorm
  have hb := nativeMellin_right_decay A hA s (by rw [hre]; norm_num) hnorm1
  rw [hre] at hb
  have he : 2 * A * (3 / 2 : ℝ) = 3 * A := by ring
  rw [he] at hb
  calc
    _ ≤ 408576 ^ 2 * Real.exp (3 * A) /
        ((4096 / 109395 : ℝ) * A ^ 9 * ‖s - 1 / 2‖ ^ 6) := hb
    _ ≤ 408576 ^ 2 * Real.exp (3 * A) /
        ((4096 / 109395 : ℝ) * A ^ 9 * |t| ^ 6) := by
      gcongr
    _ ≤ _ := by
      have heq : 408576 ^ 2 * Real.exp (3 * A) /
          ((4096 / 109395 : ℝ) * A ^ 9 * |t| ^ 6) =
          (204288 ^ 2 * 4 / (4096 / 109395 : ℝ)) * Real.exp (3 * A) /
            (A ^ 9 * |t| ^ 6) := by ring
      rw [heq]
      gcongr
      norm_num

end
end FormalResearch.RiemannHypothesis.SourceNativeRightLine
```
