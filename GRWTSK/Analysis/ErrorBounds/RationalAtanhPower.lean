/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalAtanhLog
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinRangeReduction

set_option autoImplicit false

/-!
# Atanh logarithms and checked rounded exponentials for the same inverse power

The external positive base and complex parameter determine the exponent. The
logarithm error is added once, after the true-exponential ray comparison. Every
seed and square still needs the inherited exact trace check. This theorem does
not construct the prototype's 81 exponential traces or a complete zeta jet.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalAtanhPower

open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)

/-- Exponent formed from the literal parameter and the computed REAL log center. -/
def exponent (s : Coordinates) (t : ℚ) (k n₂ nr bits : ℕ) : Coordinates :=
  mul (sub zero s) (RationalAtanhLog.enclosure t k n₂ nr bits).mid

def output (s : Coordinates) (t : ℚ) (k n₂ nr bits : ℕ)
    (B : ℚ) (squarings terms : ℕ) (tr : RationalExpTrace.Trace) : Ball :=
  ⟨RationalExpTrace.valueAt tr squarings,
    up bits (outwardPropagation bits
      (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
      (RationalExpTrace.radiusAt tr) squarings +
      magnitude s * (RationalAtanhLog.enclosure t k n₂ nr bits).rad)⟩

/-- Exact original inverse power, not exp at the approximate logarithm. -/
theorem inverse_power_sound {s : Coordinates} {t B : ℚ} {k n₂ nr bits squarings terms : ℕ}
    {tr : RationalExpTrace.Trace} (hs : 0 ≤ s.1)
    (hl : RationalAtanhLog.validScale t k = true)
    (he : RationalExpTrace.check (exponent s t k n₂ nr bits) B squarings terms tr = true) :
    Holds (output s t k n₂ nr bits B squarings terms tr) ((t : ℂ) ^ (-toComplex s)) := by
  let ell := RationalAtanhLog.enclosure t k n₂ nr bits
  have hc := RationalAtanhLog.enclosure_center hl n₂ nr bits
  have hcm : toComplex ell.mid = ((ell.mid.1 : ℝ) : ℂ) := by
    apply Complex.ext
    · rfl
    · change (ell.mid.2 : ℝ) = 0
      exact_mod_cast hc.2
  have hlog : |Real.log (t : ℝ) - (ell.mid.1 : ℝ)| ≤ (ell.rad : ℝ) := by
    have hh := RationalAtanhLog.enclosure_sound hl n₂ nr bits
    change ‖(Real.log (t : ℝ) : ℂ) - toComplex ell.mid‖ ≤ (ell.rad : ℝ) at hh
    simpa only [hcm, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hh
  have ht : (1 : ℝ) ≤ t := by exact_mod_cast (RationalAtanhLog.scale_bounds hl).1
  have hnonneg : (0 : ℝ) ≤ ell.mid.1 := by exact_mod_cast hc.1
  have hray := GRWTSK.Analysis.ComplexAnalysis.IntervalMellinRangeReduction.norm_exp_ray_sub_le
    (a := -toComplex s) (by change -(s.1 : ℝ) ≤ 0; exact_mod_cast (neg_nonpos.mpr hs))
    (Real.log_nonneg ht) hnonneg
  have hinput : ‖Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) -
      Complex.exp (-toComplex s * toComplex ell.mid)‖ ≤ (magnitude s : ℝ) * (ell.rad : ℝ) := by
    rw [hcm]
    apply hray.trans
    rw [norm_neg]
    exact mul_le_mul (norm_le_magnitude s) hlog (abs_nonneg _)
      (by exact_mod_cast magnitude_nonneg s)
  have hexp := checked_exp_outward_error bits he
  have hw : toComplex (exponent s t k n₂ nr bits) = -toComplex s * toComplex ell.mid := by
    simp only [exponent, toComplex_mul, toComplex_sub, toComplex_zero, zero_sub, ell]
  rw [hw] at hexp
  have hpow : (t : ℂ) ^ (-toComplex s) =
      Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) := by
    have ht0 : (0 : ℝ) < t := zero_lt_one.trans_le ht
    have htc : (t : ℂ) ≠ 0 := by exact_mod_cast ht0.ne'
    have hcast : (t : ℂ) = ((t : ℝ) : ℂ) := by norm_cast
    rw [Complex.cpow_def_of_ne_zero htc, hcast, ← Complex.ofReal_log ht0.le, mul_comm]
  unfold Holds output
  rw [hpow]
  calc
    _ ≤ ‖Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) -
        Complex.exp (-toComplex s * toComplex ell.mid)‖ +
        ‖Complex.exp (-toComplex s * toComplex ell.mid) -
          toComplex (RationalExpTrace.valueAt tr squarings)‖ := by
      simpa only [dist_eq_norm] using dist_triangle
        (Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)))
        (Complex.exp (-toComplex s * toComplex ell.mid))
        (toComplex (RationalExpTrace.valueAt tr squarings))
    _ ≤ (magnitude s : ℝ) * (ell.rad : ℝ) +
        (outwardPropagation bits (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
          (RationalExpTrace.radiusAt tr) squarings : ℝ) := add_le_add hinput hexp
    _ ≤ _ := by
      have hu := le_up bits (outwardPropagation bits
        (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
        (RationalExpTrace.radiusAt tr) squarings + magnitude s * ell.rad)
      have hq : magnitude s * ell.rad + outwardPropagation bits
          (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
          (RationalExpTrace.radiusAt tr) squarings ≤
          up bits (outwardPropagation bits
            (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
            (RationalExpTrace.radiusAt tr) squarings + magnitude s * ell.rad) := by
        linarith [hu]
      exact_mod_cast hq

end GRWTSK.Analysis.ErrorBounds.RationalAtanhPower
