# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.RamareCorrectedRemainder.Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9` · SHA-256 `8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Gershon Bialer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import MathExtras.NumberTheory.PrimeCounting.MertensFirstLogEnvelope

/-!
# The corrected Ramaré first-Mertens remainder

Ramaré--Zúñiga Alterman use the combination

`q(x) = r(x) - R(x) / x`,

where `r(x) = sum_{n <= x} Lambda(n)/n - log x + gamma` and
`R(x) = psi(x) - x`.  The endpoint terms in Abel summation cancel in this
combination.  Consequently

`q(x) - q(A) = integral_A^x R(t)/t^2 dt`.

This file proves that exact identity and reusable transports for the three
pointwise envelopes used in the corrected 2024 Ramaré argument.  It has no
numerical or analytic axiom of its own.
-/

noncomputable section

namespace MathExtras.RamareMertens2025

open MeasureTheory
open MathExtras.MertensFirstSharp

/-- The corrected first-Mertens remainder `r(x)`. -/
noncomputable def firstMertensRemainder (x : Real) : Real :=
  firstMertensError x + Real.eulerMascheroniConstant

/-- The Chebyshev remainder `R(x) = psi(x) - x`. -/
noncomputable def chebyshevRemainder (x : Real) : Real :=
  psiError x

/-- The cancellation-friendly combination `r(x) - R(x)/x`. -/
noncomputable def correctedRemainder (x : Real) : Real :=
  firstMertensRemainder x - chebyshevRemainder x / x

/-- Exact Abel transport for the corrected remainder.  Unlike a triangle
bound for `r` itself, this retains the cancellation of both endpoint
Chebyshev errors. -/
theorem correctedRemainder_sub_anchor {A : Nat} {x : Real}
    (hA : 1 <= A) (hAx : (A : Real) <= x) :
    correctedRemainder x - correctedRemainder A =
      ∫ t in (A : Real)..x, chebyshevRemainder t / t ^ 2 := by
  unfold correctedRemainder firstMertensRemainder chebyshevRemainder
  have h := MathExtras.MertensFirstSharp.firstMertensError_sub_anchor hA hAx
  ring_nf at h ⊢
  linarith

/-- Transport an integral majorant to the corrected remainder. -/
theorem correctedRemainder_drift_abs_le_of_integral
    {A : Nat} {x B : Real} (hA : 1 <= A) (hAx : (A : Real) <= x)
    (hB : (∫ t in (A : Real)..x,
      |chebyshevRemainder t / t ^ 2|) <= B) :
    |correctedRemainder x - correctedRemainder A| <= B := by
  rw [correctedRemainder_sub_anchor hA hAx]
  exact (intervalIntegral.abs_integral_le_integral_abs hAx).trans hB

/-- If `|R(t)| <= c sqrt(t)`, then the corrected remainder moves by at most
`2c/sqrt(A)`. -/
theorem correctedRemainder_drift_abs_le_sqrt
    {A : Nat} {x c : Real} (hA : 1 <= A) (hAx : (A : Real) <= x)
    (hc : 0 <= c)
    (henv : ∀ t, (A : Real) <= t -> t <= x ->
      |chebyshevRemainder t| <= c * Real.sqrt t) :
    |correctedRemainder x - correctedRemainder A| <=
      2 * c / Real.sqrt A := by
  have hApos : (0 : Real) < A := by positivity
  have herr := MathExtras.MertensFirstSharp.intervalIntegrable_psiError_div_sq
    hA hAx
  have hmaj : IntervalIntegrable
      (fun t : Real => c / (Real.sqrt t * t)) volume A x := by
    refine ContinuousOn.intervalIntegrable ?_
    intro t ht
    rw [Set.uIcc_of_le hAx] at ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hs0 : Real.sqrt t ≠ 0 := (Real.sqrt_pos.mpr htpos).ne'
    have ht0 : t ≠ 0 := htpos.ne'
    have hden : Real.sqrt t * t ≠ 0 := mul_ne_zero hs0 ht0
    exact ContinuousAt.continuousWithinAt (by fun_prop)
  have hpoint : ∀ t ∈ Set.Icc (A : Real) x,
      |chebyshevRemainder t / t ^ 2| <=
        c / (Real.sqrt t * t) := by
    intro t ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hspos : 0 < Real.sqrt t := Real.sqrt_pos.mpr htpos
    have hs2 : Real.sqrt t * Real.sqrt t = t :=
      Real.mul_self_sqrt htpos.le
    have he := henv t ht.1 ht.2
    calc
      |chebyshevRemainder t / t ^ 2| =
          |chebyshevRemainder t| / t ^ 2 := by
            rw [abs_div, abs_of_pos (sq_pos_of_pos htpos)]
      _ <= (c * Real.sqrt t) / t ^ 2 :=
        div_le_div_of_nonneg_right he (sq_pos_of_pos htpos).le
      _ = c / (Real.sqrt t * t) := by
        field_simp [hspos.ne', htpos.ne']
        nlinarith
  apply correctedRemainder_drift_abs_le_of_integral hA hAx
  calc
    (∫ t in (A : Real)..x, |chebyshevRemainder t / t ^ 2|) <=
        ∫ t in (A : Real)..x, c / (Real.sqrt t * t) :=
      intervalIntegral.integral_mono_on hAx herr.abs hmaj hpoint
    _ = c * (∫ t in (A : Real)..x, 1 / (Real.sqrt t * t)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ <= c * (2 / Real.sqrt A) :=
      mul_le_mul_of_nonneg_left
        (MathExtras.MertensFirstSharp.integral_inv_sqrt_mul_le hApos hAx) hc
    _ = 2 * c / Real.sqrt A := by ring

/-- If `|R(t)| <= a*t + b*sqrt(t)`, Abel transport of the corrected
remainder costs only the integral terms. -/
theorem correctedRemainder_drift_abs_le_linear_sqrt
    {A : Nat} {x a b : Real} (hA : 1 <= A) (hAx : (A : Real) <= x)
    (_ha : 0 <= a) (hb : 0 <= b)
    (henv : ∀ t, (A : Real) <= t -> t <= x ->
      |chebyshevRemainder t| <= a * t + b * Real.sqrt t) :
    |correctedRemainder x - correctedRemainder A| <=
      a * (Real.log x - Real.log A) + 2 * b / Real.sqrt A := by
  have hApos : (0 : Real) < A := by positivity
  have hxpos : 0 < x := lt_of_lt_of_le hApos hAx
  have herr := MathExtras.MertensFirstSharp.intervalIntegrable_psiError_div_sq
    hA hAx
  have hlin : IntervalIntegrable (fun t : Real => a / t) volume A x := by
    refine ContinuousOn.intervalIntegrable ?_
    intro t ht
    rw [Set.uIcc_of_le hAx] at ht
    have ht0 : t ≠ 0 := (lt_of_lt_of_le hApos ht.1).ne'
    exact ContinuousAt.continuousWithinAt (by fun_prop)
  have hsqrt : IntervalIntegrable
      (fun t : Real => b / (Real.sqrt t * t)) volume A x := by
    refine ContinuousOn.intervalIntegrable ?_
    intro t ht
    rw [Set.uIcc_of_le hAx] at ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hs0 : Real.sqrt t ≠ 0 := (Real.sqrt_pos.mpr htpos).ne'
    have ht0 : t ≠ 0 := htpos.ne'
    have hden : Real.sqrt t * t ≠ 0 := mul_ne_zero hs0 ht0
    exact ContinuousAt.continuousWithinAt (by fun_prop)
  have hmaj := hlin.add hsqrt
  have hpoint : ∀ t ∈ Set.Icc (A : Real) x,
      |chebyshevRemainder t / t ^ 2| <=
        a / t + b / (Real.sqrt t * t) := by
    intro t ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hspos : 0 < Real.sqrt t := Real.sqrt_pos.mpr htpos
    have hs2 : Real.sqrt t * Real.sqrt t = t :=
      Real.mul_self_sqrt htpos.le
    have he := henv t ht.1 ht.2
    calc
      |chebyshevRemainder t / t ^ 2| =
          |chebyshevRemainder t| / t ^ 2 := by
            rw [abs_div, abs_of_pos (sq_pos_of_pos htpos)]
      _ <= (a * t + b * Real.sqrt t) / t ^ 2 :=
        div_le_div_of_nonneg_right he (sq_pos_of_pos htpos).le
      _ = a / t + b / (Real.sqrt t * t) := by
        field_simp [hspos.ne', htpos.ne']
        nlinarith
  apply correctedRemainder_drift_abs_le_of_integral hA hAx
  calc
    (∫ t in (A : Real)..x, |chebyshevRemainder t / t ^ 2|) <=
        ∫ t in (A : Real)..x,
          (a / t + b / (Real.sqrt t * t)) :=
      intervalIntegral.integral_mono_on hAx herr.abs hmaj hpoint
    _ = a * (Real.log x - Real.log A) +
        b * (∫ t in (A : Real)..x, 1 / (Real.sqrt t * t)) := by
      rw [intervalIntegral.integral_add hlin hsqrt]
      congr 1
      · calc
          (∫ t in (A : Real)..x, a / t) =
              a * (∫ t in (A : Real)..x, t⁻¹) := by
                rw [← intervalIntegral.integral_const_mul]
                apply intervalIntegral.integral_congr
                intro t _
                ring
          _ = a * (Real.log x - Real.log A) := by
                rw [integral_inv_of_pos hApos hxpos,
                  Real.log_div hxpos.ne' hApos.ne']
      · rw [← intervalIntegral.integral_const_mul]
        apply intervalIntegral.integral_congr
        intro t _
        ring
    _ <= a * (Real.log x - Real.log A) + b * (2 / Real.sqrt A) := by
      exact add_le_add le_rfl (mul_le_mul_of_nonneg_left
        (MathExtras.MertensFirstSharp.integral_inv_sqrt_mul_le hApos hAx) hb)
    _ = a * (Real.log x - Real.log A) + 2 * b / Real.sqrt A := by ring

/-- A `c*x/log(x)^3` effective-PNT envelope has a convergent corrected-
remainder tail. -/
theorem correctedRemainder_drift_abs_le_log_cube
    {A : Nat} {x c : Real} (hA : 2 <= A) (hAx : (A : Real) <= x)
    (hc : 0 <= c)
    (henv : ∀ t, (A : Real) <= t -> t <= x ->
      |chebyshevRemainder t| <= c * t / Real.log t ^ 3) :
    |correctedRemainder x - correctedRemainder A| <=
      c / (2 * Real.log A ^ 2) := by
  have hA1 : (1 : Real) < A := by exact_mod_cast hA
  have hApos : (0 : Real) < A := by linarith
  have herr := MathExtras.MertensFirstSharp.intervalIntegrable_psiError_div_sq
    (by omega : 1 <= A) hAx
  have hmaj : IntervalIntegrable
      (fun t : Real => c / (t * Real.log t ^ 3)) volume A x := by
    refine ContinuousOn.intervalIntegrable ?_
    intro t ht
    rw [Set.uIcc_of_le hAx] at ht
    have ht1 : 1 < t := lt_of_lt_of_le hA1 ht.1
    have ht0 : t ≠ 0 := by linarith
    have hl0 : Real.log t ≠ 0 := (Real.log_pos ht1).ne'
    have hden : t * Real.log t ^ 3 ≠ 0 :=
      mul_ne_zero ht0 (pow_ne_zero 3 hl0)
    exact ContinuousAt.continuousWithinAt (by fun_prop)
  have hpoint : ∀ t ∈ Set.Icc (A : Real) x,
      |chebyshevRemainder t / t ^ 2| <=
        c / (t * Real.log t ^ 3) := by
    intro t ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have he := henv t ht.1 ht.2
    calc
      |chebyshevRemainder t / t ^ 2| =
          |chebyshevRemainder t| / t ^ 2 := by
            rw [abs_div, abs_of_pos (sq_pos_of_pos htpos)]
      _ <= (c * t / Real.log t ^ 3) / t ^ 2 :=
        div_le_div_of_nonneg_right he (sq_pos_of_pos htpos).le
      _ = c / (t * Real.log t ^ 3) := by field_simp
  apply correctedRemainder_drift_abs_le_of_integral (by omega) hAx
  calc
    (∫ t in (A : Real)..x, |chebyshevRemainder t / t ^ 2|) <=
        ∫ t in (A : Real)..x, c / (t * Real.log t ^ 3) :=
      intervalIntegral.integral_mono_on hAx herr.abs hmaj hpoint
    _ = c * (∫ t in (A : Real)..x, 1 / (t * Real.log t ^ 3)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ <= c * (1 / (2 * Real.log A ^ 2)) :=
      mul_le_mul_of_nonneg_left
        (MathExtras.MertensFirstSharp.integral_one_div_mul_log_cube_le hA1 hAx) hc
    _ = c / (2 * Real.log A ^ 2) := by ring

#print axioms correctedRemainder_sub_anchor
#print axioms correctedRemainder_drift_abs_le_sqrt
#print axioms correctedRemainder_drift_abs_le_linear_sqrt
#print axioms correctedRemainder_drift_abs_le_log_cube

end MathExtras.RamareMertens2025
```
