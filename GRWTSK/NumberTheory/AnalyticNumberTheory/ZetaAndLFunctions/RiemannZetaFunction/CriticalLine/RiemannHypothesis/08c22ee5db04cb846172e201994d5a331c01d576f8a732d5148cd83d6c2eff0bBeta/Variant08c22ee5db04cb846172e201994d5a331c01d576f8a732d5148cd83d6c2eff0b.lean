import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set

noncomputable section

private theorem betaIntegral_nat_factorials (a b : ℕ) :
    Complex.betaIntegral ((a : ℂ) + 1) ((b : ℂ) + 1) =
      (a.factorial : ℂ) * (b.factorial : ℂ) / ((a + b + 1).factorial : ℂ) := by
  have h := Complex.Gamma_mul_Gamma_eq_betaIntegral
    (s := (a : ℂ) + 1) (t := (b : ℂ) + 1) (by simp; positivity) (by simp; positivity)
  have hsum : (a : ℂ) + 1 + ((b : ℂ) + 1) = ((a + b + 1 : ℕ) : ℂ) + 1 := by
    push_cast
    ring
  rw [hsum, Complex.Gamma_nat_eq_factorial, Complex.Gamma_nat_eq_factorial,
    Complex.Gamma_nat_eq_factorial] at h
  apply (eq_div_iff (by exact_mod_cast Nat.factorial_ne_zero (a + b + 1))).mpr
  simpa only [mul_comm] using h.symm

/-- Natural polynomial specialization of Mathlib's scaled complex beta integral. -/
theorem integral_pow_mul_sub_pow_nat (a b : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b) =
      u ^ (a + b + 1) * (a.factorial : ℝ) * (b.factorial : ℝ) /
        ((a + b + 1).factorial : ℝ) := by
  rcases hu.eq_or_lt with rfl | hu
  · simp
  have h := Complex.betaIntegral_scaled ((a : ℂ) + 1) ((b : ℂ) + 1) hu
  have hexp : (a : ℂ) + 1 + ((b : ℂ) + 1) - 1 = ((a + b + 1 : ℕ) : ℂ) := by
    push_cast
    ring
  rw [hexp, betaIntegral_nat_factorials] at h
  simp only [add_sub_cancel_right, Complex.cpow_natCast] at h
  have hcast :
      (∫ t in (0 : ℝ)..u, (t : ℂ) ^ a * ((u : ℂ) - t) ^ b) =
        ((∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b : ℝ) : ℂ) := by
    simp only [← Complex.ofReal_sub, ← Complex.ofReal_pow, ← Complex.ofReal_mul,
      intervalIntegral.integral_ofReal]
  rw [hcast] at h
  apply Complex.ofReal_injective
  push_cast
  exact h.trans (by ring)

/-- Exact finite beta convolution paying the even tail order and basis normalization. -/
theorem beta_evenBasis_tailKernel_mul (m q : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (4 : ℝ) ^ (q + 1) *
      (∫ t in Icc (0 : ℝ) u,
        ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
      evenBasis (m + q + 1) u := by
  rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hu]
  have hfun : (fun t : ℝ =>
      ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
        fun t : ℝ => ((2 : ℝ) ^ (2 * m) /
          (((2 * q + 1).factorial : ℝ) * ((2 * m).factorial : ℝ))) *
            (t ^ (2 * m) * (u - t) ^ (2 * q + 1)) := by
    funext t
    unfold evenBasis
    rw [mul_pow]
    ring
  rw [hfun, intervalIntegral.integral_const_mul,
    integral_pow_mul_sub_pow_nat (2 * m) (2 * q + 1) u hu]
  have hn : 2 * m + (2 * q + 1) + 1 = 2 * (m + q + 1) := by omega
  rw [hn]
  have hpow : (4 : ℝ) ^ (q + 1) * (2 : ℝ) ^ (2 * m) =
      (2 : ℝ) ^ (2 * (m + q + 1)) := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, ← pow_mul, ← pow_add]
    congr 1
    omega
  unfold evenBasis
  rw [mul_pow]
  field_simp
  rw [← hpow]
  ring

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift

#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.beta_evenBasis_tailKernel_mul
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.beta_evenBasis_tailKernel_mul
