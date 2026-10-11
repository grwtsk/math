/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# CCC complex Laplace integral of one actual causal pickup response

The response is the native real arithmetic atom, with its original logarithmic
arrival gate. Integrability precedes all integral subtraction. No signed Möbius
sum interchange, pickup growth, transform continuation, or RH theorem is supplied.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceAtom

open MeasureTheory Set
open ArithmeticPickupSource ArithmeticPickupEnergy

noncomputable section

def laplaceResponse (n : ℕ) (z : ℂ) (t : ℝ) : ℂ :=
  Complex.exp (-z * (t : ℂ)) * (response n t : ℂ)

def atomInverseHalf (n : ℕ) : ℝ := (n : ℝ) ^ (-(1 / 2 : ℝ))

def ungatedLaplaceResponse (n : ℕ) (z : ℂ) (t : ℝ) : ℂ :=
  2 * (atomInverseHalf n : ℂ) * Complex.exp (-z * (t : ℂ)) -
    2 * Complex.exp (-(z + 1 / 2) * (t : ℂ))

theorem weighted_kernel_identity (n : ℕ) (z : ℂ) (t : ℝ) :
    Complex.exp (-z * (t : ℂ)) * (responseKernel n t : ℂ) =
      ungatedLaplaceResponse n z t := by
  have exponential : Complex.exp (-z * (t : ℂ)) *
      Complex.exp (-(t : ℂ) / 2) = Complex.exp (-(z + 1 / 2) * (t : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  unfold responseKernel ungatedLaplaceResponse atomInverseHalf
  push_cast
  calc
    _ = 2 * (↑((n : ℝ) ^ (-(1 / 2 : ℝ)) : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ)) -
        2 * (Complex.exp (-z * (t : ℂ)) * Complex.exp (-(t : ℂ) / 2)) := by ring
    _ = _ := by rw [exponential]

/-- The touching atom is zero, so replacing its closed gate by `Ioi` is exact. -/
theorem laplace_response_indicator {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    laplaceResponse n z =
      (Ioi (Real.log (n : ℝ))).indicator (ungatedLaplaceResponse n z) := by
  funext t
  unfold laplaceResponse
  rcases lt_trichotomy t (Real.log (n : ℝ)) with before | touching | after
  · rw [response_of_not_arrived (not_le.mpr before)]
    simp [Set.indicator, Set.mem_Ioi, not_lt.mpr before.le]
  · subst t
    rw [response_touching_atom_zero hn]
    simp
  · rw [response_of_arrived after.le]
    simp only [Set.indicator, Set.mem_Ioi, if_pos after]
    exact weighted_kernel_identity n z t

theorem ungated_laplace_response_integrable (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (ungatedLaplaceResponse n z) (Ioi (Real.log (n : ℝ))) := by
  have hzneg : (-z).re < 0 := by simpa using neg_neg_of_pos hz
  have hshift : (-(z + 1 / 2)).re < 0 := by
    simp only [Complex.neg_re, Complex.add_re]
    norm_num
    linarith
  exact ((integrableOn_exp_mul_complex_Ioi hzneg (Real.log (n : ℝ))).const_mul
    (2 * (atomInverseHalf n : ℂ))).sub
    ((integrableOn_exp_mul_complex_Ioi hshift (Real.log (n : ℝ))).const_mul 2)

/-- Integrability retains the actual arrival indicator, before any subtraction. -/
theorem laplace_response_integrable {n : ℕ} (hn : 1 ≤ n)
    {z : ℂ} (hz : 0 < z.re) : IntegrableOn (laplaceResponse n z) (Ioi 0) := by
  rw [laplace_response_indicator hn]
  exact ((ungated_laplace_response_integrable n hz).integrable_indicator
    measurableSet_Ioi).integrableOn

/-- Exact two-exponential formula, with the true causal lower endpoint. -/
theorem laplace_response_integral {n : ℕ} (hn : 1 ≤ n) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, laplaceResponse n z t) =
      2 * (atomInverseHalf n : ℂ) *
        Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) / z -
      2 * Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) / (z + 1 / 2) := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  have hzneg : (-z).re < 0 := by simpa using neg_neg_of_pos hz
  have hshift : (-(z + 1 / 2)).re < 0 := by
    simp only [Complex.neg_re, Complex.add_re]
    norm_num
    linarith
  have first := (integrableOn_exp_mul_complex_Ioi hzneg (Real.log (n : ℝ))).const_mul
    (2 * (atomInverseHalf n : ℂ))
  have second := (integrableOn_exp_mul_complex_Ioi hshift (Real.log (n : ℝ))).const_mul
    (2 : ℂ)
  have inclusion : Ioi (Real.log (n : ℝ)) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact lt_of_le_of_lt logNonnegative ht
  rw [laplace_response_indicator hn, setIntegral_indicator measurableSet_Ioi,
    inter_eq_right.mpr inclusion]
  unfold ungatedLaplaceResponse
  rw [integral_sub first second, integral_const_mul, integral_const_mul,
    integral_exp_mul_complex_Ioi hzneg, integral_exp_mul_complex_Ioi hshift]
  simp only [neg_div, div_neg, neg_neg]
  ring

/-- The actual inverse-half weight uses the real logarithm of the positive atom. -/
theorem atom_inverse_half_eq_exp {n : ℕ} (hn : 1 ≤ n) :
    (atomInverseHalf n : ℂ) = Complex.exp (-(Real.log (n : ℝ) : ℂ) / 2) := by
  have nPositive : (0 : ℝ) < n :=
    Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have half := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log nPositive] at half
  have complexHalf := congrArg (fun x : ℝ ↦ (x : ℂ)) half
  simpa [atomInverseHalf] using complexHalf

/-- Exact principal complex-power form of the same native gated atom integral. -/
theorem laplace_response_integral_cpow {n : ℕ} (hn : 1 ≤ n)
    {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, laplaceResponse n z t) =
      (n : ℂ) ^ (-(z + 1 / 2)) / (z * (z + 1 / 2)) := by
  have nNonzero : (n : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one hn))
  have shiftedExp : Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) =
      (atomInverseHalf n : ℂ) * Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) := by
    rw [atom_inverse_half_eq_exp hn, ← Complex.exp_add]
    congr 1
    ring
  have powerEq : (n : ℂ) ^ (-(z + 1 / 2)) =
      Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [Complex.cpow_def_of_ne_zero nNonzero, ← Complex.natCast_log]
    congr 1
    ring
  have zNonzero : z ≠ 0 := by
    intro zero
    simp [zero] at hz
  have shiftedNonzero : z + 1 / 2 ≠ 0 := by
    intro zero
    have realPart := congrArg Complex.re zero
    norm_num at realPart
    linarith
  have algebra (a b c : ℂ) (hb : b ≠ 0) (hc : c ≠ 0)
      (gap : 2 * c - 2 * b = 1) :
      2 * a / b - 2 * a / c = a / (b * c) := by
    field_simp [hb, hc]
    linear_combination a * gap
  rw [laplace_response_integral hn hz, powerEq, shiftedExp]
  simpa only [mul_assoc] using algebra
    ((atomInverseHalf n : ℂ) * Complex.exp (-z * (Real.log (n : ℝ) : ℂ)))
    z (z + 1 / 2) zNonzero shiftedNonzero (by ring)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceAtom
