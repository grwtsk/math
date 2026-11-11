/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierCollisionBound
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Tactic

/-!
# Derivative-controlled decay of the literal complex Fourier integral

MSC2020: 42A38, 28A25; consumers 11M26, 11M41.

The transform remains the literal Lebesgue integral with kernel exp(I*z*t).
For compact smooth f supported in [-A,A], integration of the derivative of
f(t)*exp(I*z*t) gives the factor -I*z. Iteration supplies every derivative
order. Multiplication by norm(z)^k is used first, so z=0 is never divided out.
Combining orders zero and k gives the everywhere valid decay cost
2^k*(integral norm(f) + integral norm(deriv^[k] f)).

`decayWeight` is only a positive majorant, not a replacement Fourier transform
or signed Weil form. Its square is exactly the exponential/polynomial weight
in RP-OC-01. `WeilCorrelationDecay` is the source-return consumer.
Smooth order is scoped infinity, not analytic top. All derivative integrals
used by the estimates are proved integrable on the stated domain.

This is classical integration by parts, locally adapted to the mandate's
normalization. No novelty claim; novelty UNASSESSED. Source comparison and
individual declaration records are adjacent in FourierDerivativeDecay.provenance.
SOURCE_PROOF_CANDIDATE: elaboration, fresh kernel replay, transitive axiom audit,
and independent analytical review NOT_RUN. Coordination: grwtsk/math#1801.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ContDiff ComplexConjugate

namespace GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

open GRWTSK.MeasureAndIntegration.FourierCollisionBound

/-- Explicit derivative cost, used only with the integrability hypotheses below. -/
def derivativeL1Cost (f : ℝ → ℂ) (k : ℕ) : ℝ :=
  (2 : ℝ) ^ k * ((∫ t : ℝ, ‖f t‖) + ∫ t : ℝ, ‖(deriv^[k] f) t‖)

/-- Positive Fourier majorant; this is not the signed reflected pairing. -/
def decayWeight (A : ℝ) (k : ℕ) (z : ℂ) : ℝ :=
  Real.exp (A * |z.im|) / (1 + ‖z‖) ^ k

theorem derivativeL1Cost_nonneg (f : ℝ → ℂ) (k : ℕ) :
    0 ≤ derivativeL1Cost f k := by
  unfold derivativeL1Cost
  exact mul_nonneg (by positivity)
    (add_nonneg (integral_nonneg (fun _ => norm_nonneg _))
      (integral_nonneg (fun _ => norm_nonneg _)))

theorem decayWeight_pos (A : ℝ) (k : ℕ) (z : ℂ) : 0 < decayWeight A k z := by
  unfold decayWeight
  positivity

theorem decayWeight_conj (A : ℝ) (k : ℕ) (z : ℂ) :
    decayWeight A k (conj z) = decayWeight A k z := by
  simp [decayWeight]

/-- Exactly the weight requested in the divisor moment, not an ordinate projection. -/
theorem decayWeight_sq (A : ℝ) (k : ℕ) (z : ℂ) :
    decayWeight A k z ^ 2 =
      Real.exp (2 * A * |z.im|) / (1 + ‖z‖) ^ (2 * k) := by
  unfold decayWeight
  rw [div_pow, ← pow_mul]
  have he : Real.exp (A * |z.im|) ^ 2 = Real.exp (2 * A * |z.im|) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he, Nat.mul_comm k 2]

/-- Closed support gives the pointwise bound used by the existing Fourier supplier. -/
theorem supported_of_tsupport {f : ℝ → ℂ} {A : ℝ}
    (hs : tsupport f ⊆ Icc (-A) A) : ∀ t, A < |t| → f t = 0 := by
  intro t ht
  by_contra hn
  have hm : t ∈ tsupport f := subset_closure hn
  exact (not_le_of_gt ht) (abs_le.mpr (hs hm))

/-- Differentiating does not enlarge the original closed support. -/
theorem tsupport_iterated_deriv_subset (f : ℝ → ℂ) (k : ℕ) :
    tsupport (deriv^[k] f) ⊆ tsupport f := by
  induction k generalizing f with
  | zero => exact Subset.rfl
  | succ k ih =>
      rw [Function.iterate_succ_apply]
      exact (ih (deriv f)).trans tsupport_deriv_subset

private theorem compactSupport_iterated_deriv {f : ℝ → ℂ}
    (hc : HasCompactSupport f) (k : ℕ) : HasCompactSupport (deriv^[k] f) := by
  induction k generalizing f with
  | zero => exact hc
  | succ k ih =>
      rw [Function.iterate_succ_apply]
      exact ih hc.deriv

/-- No derivative norm in the decay cost is an undefined integral on this domain. -/
theorem integrable_iterated_deriv {f : ℝ → ℂ}
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f) (k : ℕ) :
    Integrable (deriv^[k] f) volume :=
  (ContDiff.iterate_deriv k hf).continuous.integrable_of_hasCompactSupport
    (compactSupport_iterated_deriv hc k)

private theorem kernel_hasDerivAt (z : ℂ) (t : ℝ) :
    HasDerivAt (fun x : ℝ => Complex.exp (Complex.I * z * (x : ℂ)))
      (Complex.exp (Complex.I * z * (t : ℂ)) * (Complex.I * z)) t := by
  have hcast : HasDerivAt (fun x : ℝ => (x : ℂ)) 1 t := by
    simpa using (Complex.ofRealCLM.hasDerivAt (x := t))
  simpa only [mul_one] using (hcast.const_mul (Complex.I * z)).cexp

/-- Integration by parts with proved integrability of the function and its derivative.
The plus-sign transform convention gives the multiplier -I*z. -/
theorem fourier_integral_deriv (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-A) A) (z : ℂ) :
    (∫ t : ℝ, deriv f t * Complex.exp (Complex.I * z * (t : ℂ))) =
      (-(Complex.I * z)) *
        ∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ)) := by
  have h0 := integrable_fourier_integrand f A
    (hf.continuous.integrable_of_hasCompactSupport hc) (supported_of_tsupport hs) z
  have h1 := integrable_fourier_integrand (deriv f) A
    ((hf.continuous_deriv le_rfl).integrable_of_hasCompactSupport hc.deriv)
    (supported_of_tsupport (tsupport_deriv_subset.trans hs)) z
  have hd (t : ℝ) :
      HasDerivAt (fun x : ℝ => f x * Complex.exp (Complex.I * z * (x : ℂ)))
        (deriv f t * Complex.exp (Complex.I * z * (t : ℂ)) +
          (Complex.I * z) * (f t * Complex.exp (Complex.I * z * (t : ℂ)))) t := by
    convert ((hf.differentiable one_ne_zero t).hasDerivAt.mul
      (kernel_hasDerivAt z t)) using 1 <;> ring
  have hzero := integral_eq_zero_of_hasDerivAt_of_integrable hd
    (h1.add (h0.const_mul (Complex.I * z))) h0
  rw [integral_add h1 (h0.const_mul (Complex.I * z)), integral_const_mul] at hzero
  calc
    _ = -((Complex.I * z) *
        ∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) :=
      eq_neg_iff_add_eq_zero.mpr hzero
    _ = _ := by ring

/-- Every derivative order for the literal complex-frequency integral. -/
theorem fourier_integral_iterated_deriv (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (z : ℂ) :
    (∫ t : ℝ, (deriv^[k] f) t * Complex.exp (Complex.I * z * (t : ℂ))) =
      (-(Complex.I * z)) ^ k *
        ∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ)) := by
  induction k generalizing f with
  | zero => simp
  | succ k ih =>
      rw [Function.iterate_succ_apply]
      rw [ih (deriv f) (contDiff_infty_iff_deriv.mp hf).2 hc.deriv
        (tsupport_deriv_subset.trans hs)]
      rw [fourier_integral_deriv f A (hf.of_le (by simp)) hc hs z, pow_succ]
      ring

/-- The polynomially weighted bound does not divide by z and includes z=0. -/
theorem norm_fourier_integral_mul_pow_le (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (z : ℂ) :
    ‖z‖ ^ k * ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
      Real.exp (A * |z.im|) * ∫ t : ℝ, ‖(deriv^[k] f) t‖ := by
  have h := norm_fourier_integral_le (deriv^[k] f) A
    (integrable_iterated_deriv hf hc k)
    (supported_of_tsupport ((tsupport_iterated_deriv_subset f k).trans hs)) z
  rw [fourier_integral_iterated_deriv f A hf hc hs k z] at h
  simpa only [norm_mul, norm_pow, norm_neg, Complex.norm_I, one_mul] using h

/-- Combining order zero and order k yields an all-frequency bound. -/
theorem norm_fourier_integral_mul_one_add_pow_le (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (z : ℂ) :
    (1 + ‖z‖) ^ k * ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
      Real.exp (A * |z.im|) * derivativeL1Cost f k := by
  have h0 := norm_fourier_integral_le f A
    (hf.continuous.integrable_of_hasCompactSupport hc) (supported_of_tsupport hs) z
  have hk := norm_fourier_integral_mul_pow_le f A hf hc hs k z
  have hJ0 : 0 ≤ ∫ t : ℝ, ‖f t‖ := integral_nonneg (fun _ => norm_nonneg _)
  have hJk : 0 ≤ ∫ t : ℝ, ‖(deriv^[k] f) t‖ :=
    integral_nonneg (fun _ => norm_nonneg _)
  unfold derivativeL1Cost
  by_cases hz : ‖z‖ ≤ 1
  · have hp : (1 + ‖z‖) ^ k ≤ (2 : ℝ) ^ k := by
      gcongr
      linarith
    calc
      _ ≤ (2 : ℝ) ^ k * ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ :=
        mul_le_mul_of_nonneg_right hp (norm_nonneg _)
      _ ≤ (2 : ℝ) ^ k * (Real.exp (A * |z.im|) * ∫ t : ℝ, ‖f t‖) :=
        mul_le_mul_of_nonneg_left h0 (by positivity)
      _ = Real.exp (A * |z.im|) * ((2 : ℝ) ^ k * ∫ t : ℝ, ‖f t‖) := by ring
      _ ≤ _ := by gcongr; exact le_add_of_nonneg_right hJk
  · have hp : (1 + ‖z‖) ^ k ≤ (2 * ‖z‖) ^ k := by
      gcongr
      linarith [le_of_not_ge hz]
    calc
      _ ≤ (2 * ‖z‖) ^ k * ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ :=
        mul_le_mul_of_nonneg_right hp (norm_nonneg _)
      _ = (2 : ℝ) ^ k *
          (‖z‖ ^ k * ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖) := by
        rw [mul_pow]
        ring
      _ ≤ (2 : ℝ) ^ k *
          (Real.exp (A * |z.im|) * ∫ t : ℝ, ‖(deriv^[k] f) t‖) :=
        mul_le_mul_of_nonneg_left hk (by positivity)
      _ = Real.exp (A * |z.im|) *
          ((2 : ℝ) ^ k * ∫ t : ℝ, ‖(deriv^[k] f) t‖) := by ring
      _ ≤ _ := by gcongr; exact le_add_of_nonneg_left hJ0

/-- Full complex decay with an explicit derivative cost and a positive denominator. -/
theorem norm_fourier_integral_le_decay (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (z : ℂ) :
    ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
      derivativeL1Cost f k * decayWeight A k z := by
  have hden : 0 < (1 + ‖z‖) ^ k := by positivity
  calc
    _ ≤ (Real.exp (A * |z.im|) * derivativeL1Cost f k) / (1 + ‖z‖) ^ k := by
      apply (le_div_iff₀ hden).mpr
      simpa only [mul_comm] using
        norm_fourier_integral_mul_one_add_pow_le f A hf hc hs k z
    _ = _ := by unfold decayWeight; ring

end GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
