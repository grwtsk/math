# Complete source: GRWTSK.Analysis.MeasureTheory.SupplierWeakMertens.Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f2181af98b4b4d12847e2e6f33ba5d764a007b0` · SHA-256 `bb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
# A weak Mertens premise supplies the original signed meter

This module proves the squared reset estimate for the actual closed arithmetic
recording, then returns the explicit weak Mertens premise to both original
polarity sectors with the fixed constants `K₀ = 0`, `D = 2 * sqrt C`, `p = 1`,
and `R = 1`. The arithmetic premise is conditional; it is not asserted here.
All scales and reading times are real. The prescribed source, kernel, reset,
integer cutoff, and essential-supremum meter are unchanged.

Human research direction: grwtsk contributors. Lean implementation and adapter
proof: OpenAI Codex. Mathlib interval integration and change of variables retain
upstream attribution.
-/

set_option autoImplicit false

noncomputable section

namespace FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens

open MeasureTheory Set Filter
open OriginalSignedSupplier
open GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence

/-- The energy uses the independently prescribed closed Möbius recording. -/
def recordingEnergy (x : ℝ) : ℝ := arithmeticRecording x ^ 2 / x ^ 2

/-- The weak Mertens input is a named ordinary proposition, not an axiom. -/
def WeakMertensBound (C : ℝ) : Prop :=
  ∀ X : ℝ, 1 ≤ X → (∫ x in (1 : ℝ)..X, recordingEnergy x) ≤ C * Real.log X

theorem recordingEnergy_nonneg (x : ℝ) : 0 ≤ recordingEnergy x := by
  exact div_nonneg (sq_nonneg _) (sq_nonneg _)

theorem pickupDensity_sq_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun u : ℝ => pickupDensity u ^ 2) volume a b := by
  apply Real.continuous_exp.intervalIntegrable a b |>.mono_fun'
    (pickupDensity_measurable.pow_const 2).aestronglyMeasurable
  exact ae_of_all _ fun u => by
    have hb := pickupDensity_abs_le u
    have hs : |pickupDensity u| ^ 2 ≤ Real.exp (u / 2) ^ 2 :=
      pow_le_pow_left₀ (abs_nonneg _) hb 2
    have he : Real.exp (u / 2) ^ 2 = Real.exp u := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    simpa only [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg (pickupDensity u)),
      sq_abs, he] using hs

theorem pickupDensity_sq_eq_energy (u : ℝ) :
    pickupDensity u ^ 2 = recordingEnergy (Real.exp u) * Real.exp u := by
  have he : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  simp only [pickupDensity, mul_pow, he, Real.exp_neg, recordingEnergy]
  field_simp

/-- The substitution is valid for the actual step recording; no continuity of
the arithmetic integrand is assumed. -/
theorem pickupDensity_sq_integral_eq (a b : ℝ) :
    (∫ u in a..b, pickupDensity u ^ 2) =
      ∫ x in Real.exp a..Real.exp b, recordingEnergy x := by
  calc
    _ = ∫ u in a..b, (recordingEnergy ∘ Real.exp) u * Real.exp u :=
      intervalIntegral.integral_congr (fun u _ => pickupDensity_sq_eq_energy u)
    _ = _ := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
      Real.continuous_exp.continuousOn (fun u _ => Real.hasDerivAt_exp u)
      (fun u _ => (Real.exp_pos u).le)

theorem recordingEnergy_intervalIntegrable {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    IntervalIntegrable recordingEnergy volume a b := by
  have hclock : IntervalIntegrable
      (fun u => (recordingEnergy ∘ Real.exp) u * Real.exp u) volume
      (Real.log a) (Real.log b) := by
    convert pickupDensity_sq_intervalIntegrable (Real.log a) (Real.log b) using 1
    ext u
    exact (pickupDensity_sq_eq_energy u).symm
  have hx := (intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
      (a := Real.log a) (b := Real.log b) (g := recordingEnergy)
      Real.continuous_exp.continuousOn (fun u _ => Real.hasDerivAt_exp u)
      (fun u _ => (Real.exp_pos u).le)).mp hclock
  simpa only [Real.exp_log ha, Real.exp_log hb] using hx

/-- An elementary variance proof of interval Cauchy--Schwarz, retaining the
entire squared integrand. -/
theorem integral_sq_le_length_mul_integral_sq {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b) (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun u => f u ^ 2) volume a b) :
    |∫ u in a..b, f u| ^ 2 ≤ (b - a) * (∫ u in a..b, f u ^ 2) := by
  rcases eq_or_lt_of_le hab with rfl | hab
  · simp
  have hL : 0 < b - a := sub_pos.mpr hab
  let y : ℝ := ∫ u in a..b, f u
  let c : ℝ := y / (b - a)
  have hvar : 0 ≤ ∫ u in a..b, (f u - c) ^ 2 :=
    intervalIntegral.integral_nonneg_of_forall hab.le (fun _ => sq_nonneg _)
  have hv : (∫ u in a..b, (f u - c) ^ 2) =
      (∫ u in a..b, f u ^ 2) - 2 * c * y + (b - a) * c ^ 2 := by
    calc
      _ = ∫ u in a..b, (f u ^ 2 - (2 * c) * f u) + c ^ 2 :=
        intervalIntegral.integral_congr (fun _ _ => by ring)
      _ = _ := by
        rw [intervalIntegral.integral_add (hf2.sub (hf.const_mul _))
          (continuous_const.intervalIntegrable a b),
          intervalIntegral.integral_sub hf2 (hf.const_mul _),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
        rfl
  have hid : (b - a) * ((∫ u in a..b, f u ^ 2) - 2 * c * y + (b - a) * c ^ 2) =
      (b - a) * (∫ u in a..b, f u ^ 2) - y ^ 2 := by
    dsimp [c]
    field_simp
    ring
  have hn := mul_nonneg hL.le hvar
  rw [hv, hid] at hn
  simpa only [sq_abs, y] using (sub_nonneg.mp hn)

theorem centeredPickup_eq_reset_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    centeredPickup A t = ∫ u in (2 * Real.log A)..t, pickupDensity u := by
  have ha : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  rw [centeredPickup, pickup_eq_integral (ha.trans ht), pickup_eq_integral ha]
  have hi := intervalIntegral.integral_add_adjacent_intervals
    (pickupDensity_intervalIntegrable 0 (2 * Real.log A))
    (pickupDensity_intervalIntegrable (2 * Real.log A) t)
  linarith

/-- The exact squared pickup estimate, including the prescribed moving reset
and the original spatial energy interval. -/
theorem centeredPickup_sq_le_energy {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    |centeredPickup A t| ^ 2 ≤ (t - 2 * Real.log A) *
      (∫ x in A ^ 2..Real.exp t, recordingEnergy x) := by
  have hApos : 0 < A := by linarith
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    calc
      _ = Real.exp (Real.log A + Real.log A) := by congr 1; ring
      _ = A * A := by rw [Real.exp_add, Real.exp_log hApos]
      _ = _ := by ring
  rw [centeredPickup_eq_reset_integral hA ht.1]
  have hs := integral_sq_le_length_mul_integral_sq ht.1
    (pickupDensity_intervalIntegrable (2 * Real.log A) t)
    (pickupDensity_sq_intervalIntegrable (2 * Real.log A) t)
  rwa [pickupDensity_sq_integral_eq, he] at hs

/-- Weak Mertens controls the absolute pickup on the full original window;
therefore both signed polarities are covered, including negative excursions. -/
theorem centeredPickup_abs_le_of_weakMertens {C A t : ℝ}
    (hC : 0 ≤ C) (hM : WeakMertensBound C) (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    |centeredPickup A t| ≤ 2 * Real.sqrt C * A := by
  have ha : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have ht0 : 0 ≤ t := ha.trans ht.1
  have hApos : 0 < A := by linarith
  have hAsq : 1 ≤ A ^ 2 := by nlinarith
  have hxe : A ^ 2 ≤ Real.exp t := by
    have he : Real.exp (2 * Real.log A) = A ^ 2 := by
      calc
        _ = Real.exp (Real.log A + Real.log A) := by congr 1; ring
        _ = A * A := by rw [Real.exp_add, Real.exp_log hApos]
        _ = _ := by ring
    rw [← he]
    exact Real.exp_le_exp.mpr ht.1
  have hmono : (∫ x in A ^ 2..Real.exp t, recordingEnergy x) ≤
      ∫ x in (1 : ℝ)..Real.exp t, recordingEnergy x :=
    intervalIntegral.integral_mono_interval hAsq hxe le_rfl
      (ae_of_all _ recordingEnergy_nonneg)
      (recordingEnergy_intervalIntegrable (by norm_num) (Real.exp_pos t))
  have henergy : (∫ x in A ^ 2..Real.exp t, recordingEnergy x) ≤ C * t := by
    have hi := hM (Real.exp t) (Real.one_le_exp_iff.mpr ht0)
    rw [Real.log_exp] at hi
    exact hmono.trans hi
  have hsq := (centeredPickup_sq_le_energy hA ht).trans
    (mul_le_mul_of_nonneg_left henergy (sub_nonneg.mpr ht.1))
  have hct : 0 ≤ C * t := mul_nonneg hC ht0
  have hlen : t - 2 * Real.log A ≤ t := by linarith
  have hsq' : |centeredPickup A t| ^ 2 ≤ C * t ^ 2 := by
    exact hsq.trans (by nlinarith [mul_le_mul_of_nonneg_right hlen hct])
  have htA : C * t ^ 2 ≤ 4 * C * A ^ 2 := by
    have hp := mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ ht0 ht.2 2) hC
    nlinarith
  have hc : Real.sqrt C ^ 2 = C := Real.sq_sqrt hC
  have hbound : 0 ≤ 2 * Real.sqrt C * A := by positivity
  nlinarith [hsq'.trans htA]

/-- The exact original signed meter has the stated uniform linear allowance. -/
theorem signedMeter_le_of_weakMertens {C A : ℝ} (hC : 0 ≤ C)
    (hM : WeakMertensBound C) (hA : 1 ≤ A) :
    signedMeter A ≤ (2 * Real.sqrt C * A : EReal) := by
  have hL : 0 ≤ 2 * Real.sqrt C * A := by positivity
  apply (signedMeter_le_iff A _ hL).mpr
  constructor
  · exact ae_of_all _ fun t ht => (le_abs_self _).trans
      (centeredPickup_abs_le_of_weakMertens hC hM hA ht.1)
  · exact ae_of_all _ fun t ht => (neg_le_abs _).trans
      (centeredPickup_abs_le_of_weakMertens hC hM hA ht.1)

/-- The separate sufficient result returns to the boxed all-real supplier with
the fixed constants `0, 2 * sqrt C, 1, 1`. No arithmetic premise is hidden. -/
theorem supplierEstimate_of_weakMertens {C : ℝ} (hC : 0 ≤ C)
    (hM : WeakMertensBound C) : SupplierEstimate := by
  refine ⟨0, 2 * Real.sqrt C, 1, 1, by norm_num, by positivity, by norm_num,
    by norm_num, ?_⟩
  intro A hA
  have he : 0 ≤ positiveEnvelope (2 * A) :=
    runningPositiveMaximum_nonneg pickup_continuous (2 * A)
  have hbudget : 2 * Real.sqrt C * A ≤ supplierAllowance 0 (2 * Real.sqrt C) 1 A := by
    simp only [supplierAllowance, zero_div, add_zero, Real.rpow_one]
    have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
      mul_nonneg (by positivity) he
    linarith
  exact (signedMeter_le_of_weakMertens hC hM hA).trans
    (EReal.coe_le_coe_iff.mpr hbudget)

end FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens
```
