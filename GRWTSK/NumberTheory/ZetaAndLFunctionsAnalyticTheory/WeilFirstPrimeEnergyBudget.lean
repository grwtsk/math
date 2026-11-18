/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimePhaseReadout
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalHalfCorrelation

/-!
# Energy-relative error for the real first-prime channel

When the strict window retains only prime 2, its logarithmic shift is
larger than the test radius. The physical half-correlation bound then
limits the error from ignoring the imaginary part. An error in the actual
real reading enters with the original real character weight. This budget
is for the signed measurement consumed by the source return in grwtsk/math#1819.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

/-- The decoder that drops the imaginary channel has an energy-relative
budget on the original smooth compact tests. The input calibration refers
to the real correlation at the active prime, before weighting. -/
theorem abs_onePrime_realChannel_error_le_energy {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (f : WindowTest A) (reading ε : ℝ)
    (calibrated : |reading - (correlation f.1 (Real.log 2)).re| ≤ ε) :
    |2 * primeWeight 2 * (χ (2 : ℕ)).re * reading - signedWindowValue χ A f.1| ≤
      2 * primeWeight 2 * |(χ (2 : ℕ)).re| * ε +
        primeWeight 2 * |(χ (2 : ℕ)).im| * energy f.1 := by
  have logFour : Real.log 4 = 2 * Real.log 2 := by
    rw [show (4 : ℝ) = 2 * 2 by norm_num, Real.log_mul (by norm_num) (by norm_num)]
    ring
  have radius : A ≤ Real.log 2 := by
    have logLt : Real.log 3 < Real.log 4 :=
      Real.log_lt_log (by norm_num) (by norm_num)
    linarith
  have half : ‖correlation f.1 (Real.log 2)‖ ≤ energy f.1 / 2 :=
    WeilPhysicalHalfCorrelation.norm_correlation_le_half_energy_of_support
      (f.2.1.continuous.memLp_of_hasCompactSupport f.2.2.1) A _ radius
      (fun _ outside => by
        by_contra nonzero
        exact outside (f.2.2.2 (subset_closure nonzero)))
  let c := correlation f.1 (Real.log 2)
  let w := 2 * primeWeight 2
  let a := (χ (2 : ℕ)).re
  let b := (χ (2 : ℕ)).im
  have hw : 0 ≤ w := mul_nonneg (by norm_num) (primeWeight_nonneg _)
  have missing : |c.im| ≤ energy f.1 / 2 := (Complex.abs_im_le_norm c).trans half
  have signed : signedWindowValue χ A f.1 = w * (a * c.re - b * c.im) :=
    signedWindowValue_eq_onePrime χ f.1 lo hi
  rw [signed]
  change |w * a * reading - w * (a * c.re - b * c.im)| ≤
    w * |a| * ε + primeWeight 2 * |b| * energy f.1
  rw [show w * a * reading - w * (a * c.re - b * c.im) =
    w * a * (reading - c.re) + w * b * c.im by ring]
  calc
    _ ≤ |w * a * (reading - c.re)| + |w * b * c.im| := abs_add_le _ _
    _ = w * |a| * |reading - c.re| + w * |b| * |c.im| := by
      simp only [abs_mul, abs_of_nonneg hw]
    _ ≤ w * |a| * ε + w * |b| * (energy f.1 / 2) :=
      add_le_add (mul_le_mul_of_nonneg_left calibrated (mul_nonneg hw (abs_nonneg a)))
        (mul_le_mul_of_nonneg_left missing (mul_nonneg hw (abs_nonneg b)))
    _ = _ := by unfold w; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
