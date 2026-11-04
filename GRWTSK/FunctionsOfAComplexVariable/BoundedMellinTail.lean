/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import GRWTSK.FunctionsOfAComplexVariable.MultiplicativeResidual

/-!
# Explicit bounds for a bounded Mellin remainder

For A > 0, sigma = Re(s) > 0, and |b(x)| <= B on x > A,

  |integral_A^infinity b(x) x^(-s-1) dx| <= B A^(-sigma) / sigma.

This is an actual improper-integral estimate, not a zero-free assumption.
The proof integrates the positive majorant B x^(-sigma-1). A separate
integrability theorem prevents using a totalized integral as analytic evidence.
The uniform estimate retains A, the lower real-part bound, |s| and B.

For the FIRST Euler integral model s/(s-1) - s*tail(b,1,s), the independently
chosen rational approximation (s-1)/s has residual at most |s-1|/Re(s).
This supplies a strict certificate on the parabolic region t^2 < 2*sigma-1.
The model is deliberately not defined to be Mathlib's riemannZeta: identifying
its fractional-part kernel with that source requires the classical Euler
summation identity, kept explicit in EulerCoreApproximation.

Primary argument: integrate an absolute majorant, then use an exact field
identity. Hostile boundary: the estimate ceases to be integrable at sigma=0;
the parabolic condition does not cover arbitrarily high ordinates. No universal
RH/GRH certificate is obtained. DLMF 25.11.5 (Euler summation; Apostol, 1976,
p. 269) is the analytic source for the later source comparison, not a Lean axiom.
Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
AI-assisted formalization. Compilation, kernel checking, transitive axiom audit,
and independent review: NOT_RUN. No novelty claim.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory Filter

namespace GRWTSK.Analysis.MellinRemainder

/-- The integration variable is real; the exponent and kernel are complex. -/
def tail (b : ℝ → ℂ) (A : ℝ) (s : ℂ) : ℂ :=
  ∫ x : ℝ in Ioi A, b x * (x : ℂ) ^ (-s - 1)

lemma kernel_norm_bound {b : ℝ → ℂ} {A B : ℝ} {s : ℂ}
    (hA : 0 < A) (hb : ∀ x ∈ Ioi A, ‖b x‖ ≤ B)
    {x : ℝ} (hx : x ∈ Ioi A) :
    ‖b x * (x : ℂ) ^ (-s - 1)‖ ≤ B * x ^ (-s.re - 1) := by
  rw [norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hA.trans hx)]
  simp only [Complex.sub_re, Complex.neg_re, Complex.one_re]
  exact mul_le_mul_of_nonneg_right (hb x hx)
    (Real.rpow_nonneg (hA.trans hx).le _)

/-- The finite majorant really is integrable on the infinite interval. -/
theorem kernel_integrable {b : ℝ → ℂ} {A B : ℝ} {s : ℂ}
    (hA : 0 < A) (hs : 0 < s.re)
    (hm : AEStronglyMeasurable (fun x : ℝ => b x * (x : ℂ) ^ (-s - 1))
      (volume.restrict (Ioi A)))
    (hb : ∀ x ∈ Ioi A, ‖b x‖ ≤ B) :
    IntegrableOn (fun x : ℝ => b x * (x : ℂ) ^ (-s - 1)) (Ioi A) := by
  have majorant : IntegrableOn (fun x : ℝ => B * x ^ (-s.re - 1)) (Ioi A) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -s.re - 1 < -1) hA).const_mul B
  apply majorant.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  exact kernel_norm_bound hA hb hx

/-- No tail size is inferred merely from the existence of an integral. -/
theorem tail_norm_le {b : ℝ → ℂ} {A B : ℝ} {s : ℂ}
    (hA : 0 < A) (hs : 0 < s.re)
    (hb : ∀ x ∈ Ioi A, ‖b x‖ ≤ B) :
    ‖tail b A s‖ ≤ B * A ^ (-s.re) / s.re := by
  have exponent : -s.re - 1 < -1 := by linarith
  calc
    ‖tail b A s‖ ≤ ∫ x : ℝ in Ioi A, B * x ^ (-s.re - 1) := by
      apply norm_integral_le_of_norm_le
        ((integrableOn_Ioi_rpow_of_lt exponent hA).const_mul B)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      exact kernel_norm_bound hA hb hx
    _ = B * A ^ (-s.re) / s.re := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt exponent hA]
      rw [show -s.re - 1 + 1 = -s.re by ring]
      simp only [neg_div_neg_eq]
      ring

/-- A uniform estimate on any region with these explicit three bounds. -/
theorem scaled_tail_uniform {b : ℝ → ℂ} {A B α T : ℝ} {s : ℂ}
    (hA : 1 ≤ A) (hB : 0 ≤ B) (hα : 0 < α)
    (hσ : α ≤ s.re) (hT : ‖s‖ ≤ T)
    (hb : ∀ x ∈ Ioi A, ‖b x‖ ≤ B) :
    ‖s * tail b A s‖ ≤ (T * B / α) * A ^ (-α) := by
  have hApos : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hs : 0 < s.re := hα.trans_le hσ
  have hTnonneg : 0 ≤ T := (norm_nonneg s).trans hT
  have coefficient : ‖s‖ * B / s.re ≤ T * B / α := by
    gcongr
  have power : A ^ (-s.re) ≤ A ^ (-α) :=
    Real.rpow_le_rpow_of_exponent_le hA (neg_le_neg hσ)
  calc
    ‖s * tail b A s‖ ≤ ‖s‖ * (B * A ^ (-s.re) / s.re) := by
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (tail_norm_le hApos hs hb) (norm_nonneg s)
    _ = (‖s‖ * B / s.re) * A ^ (-s.re) := by ring
    _ ≤ (T * B / α) * A ^ (-α) :=
      mul_le_mul coefficient power (Real.rpow_nonneg hApos.le _) (by positivity)

/-- First Euler model; an integral representation is not silently a source identity. -/
def firstEuler (b : ℝ → ℂ) (s : ℂ) : ℂ :=
  s / (s - 1) - s * tail b 1 s

/-- This approximation divides only by s, never by the function being certified. -/
def firstReciprocal (s : ℂ) : ℂ := (s - 1) / s

theorem first_residual_identity (b : ℝ → ℂ) {s : ℂ}
    (hs : s ≠ 0) (hp : s ≠ 1) :
    firstEuler b s * firstReciprocal s - 1 = -(s - 1) * tail b 1 s := by
  unfold firstEuler firstReciprocal
  field_simp [hs, sub_ne_zero.mpr hp] <;> ring

/-- The actual rational approximant has a quantitative, noncircular error bound. -/
theorem first_residual_bound {b : ℝ → ℂ} {s : ℂ}
    (hs : 0 < s.re) (hp : s ≠ 1)
    (hb : ∀ x ∈ Ioi (1 : ℝ), ‖b x‖ ≤ 1) :
    ‖firstEuler b s * firstReciprocal s - 1‖ ≤ ‖s - 1‖ / s.re := by
  have hs0 : s ≠ 0 := by
    intro h
    simp [h] at hs
  rw [first_residual_identity b hs0 hp, norm_mul, norm_neg]
  have htail : ‖tail b 1 s‖ ≤ 1 / s.re := by
    simpa using tail_norm_le (b := b) (A := 1) (B := 1) zero_lt_one hs hb
  calc
    ‖s - 1‖ * ‖tail b 1 s‖ ≤ ‖s - 1‖ * (1 / s.re) :=
      mul_le_mul_of_nonneg_left htail (norm_nonneg _)
    _ = ‖s - 1‖ / s.re := by ring

/-- The explicitly checked gap, not decreasing truncation error, excludes zeros. -/
theorem firstEuler_nonzero {b : ℝ → ℂ} {s : ℂ}
    (hs : 0 < s.re) (hp : s ≠ 1)
    (hb : ∀ x ∈ Ioi (1 : ℝ), ‖b x‖ ≤ 1)
    (gap : ‖s - 1‖ < s.re) : firstEuler b s ≠ 0 := by
  apply GRWTSK.Analysis.Division.nonzero_of_unit_residual
    (u := firstReciprocal s) (q := ‖s - 1‖ / s.re)
  · exact first_residual_bound hs hp hb
  · exact (div_lt_one hs).mpr gap

end GRWTSK.Analysis.MellinRemainder
