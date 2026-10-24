/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.PochhammerJet
import GRWTSK.NumberTheory.Zeta.Riemann.FinitePowerZetaJet
import Mathlib.NumberTheory.Bernoulli
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

set_option autoImplicit false

/-!
# The inclusive-cutoff, endpoint-corrected finite zeta model and its exact jet

All Bernoulli coefficients come from upstream bernoulli, with B1 = -1/2.
The finite sum includes N, and the half-endpoint sign is therefore MINUS.
The derivative is proved from the actual finite function, not defined as an
unverified label or computed by finite differences. The source remainder
zeta-model remains a SEPARATE analytic obligation. No EM remainder is proved here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.EndpointCorrectedJet

open scoped BigOperators
open CriticalStripHeightDescent
open GRWTSK.Analysis.ComplexAnalysis

/-- j is positive in every correction sum; the exact base denominator is retained. -/
def weight (N j : ℕ) : ℚ :=
  _root_.bernoulli (2 * j) / ((2 * j).factorial : ℚ) / (N : ℚ) ^ (2 * j - 1)

noncomputable section

/-- A finite, factored endpoint coefficient with the inclusive-cutoff sign. -/
def coefficient (N p : ℕ) (s : ℂ) : ℂ :=
  (N : ℂ) / (s - 1) - 1 / 2 +
    ∑ j ∈ Finset.range p, (weight N (j + 1) : ℂ) * PochhammerJet.value (2 * (j + 1) - 1) s

def coefficientSlope (N p : ℕ) (s : ℂ) : ℂ :=
  -(N : ℂ) / (s - 1) ^ 2 +
    ∑ j ∈ Finset.range p, (weight N (j + 1) : ℂ) * PochhammerJet.slope (2 * (j + 1) - 1) s

def model (N p : ℕ) (s : ℂ) : ℂ :=
  finiteDirichletPowerSum N s + (N : ℂ) ^ (-s) * coefficient N p s

def dirichletSlope (N : ℕ) (s : ℂ) : ℂ :=
  ∑ k ∈ Finset.Icc 1 N, -(Real.log (k : ℝ) : ℂ) * (k : ℂ) ^ (-s)

def slope (N p : ℕ) (s : ℂ) : ℂ :=
  dirichletSlope N s + (N : ℂ) ^ (-s) *
    (coefficientSlope N p s - (Real.log (N : ℝ) : ℂ) * coefficient N p s)

/-- Unit-cell inventory, including the new positive endpoint exactly once. -/
theorem positive_sum_succ (f : ℕ → ℂ) (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 (N + 1), f k) = (∑ k ∈ Finset.Icc 1 N, f k) + f (N + 1) := by
  have hset : Finset.Icc 1 (N + 1) = insert (N + 1) (Finset.Icc 1 N) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  rw [hset, Finset.sum_insert (by simp)]
  exact add_comm _ _

/-- Positive bases have this exact real-log representation, including base one. -/
theorem inverse_power_eq_exp {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    (k : ℂ) ^ (-s) = Complex.exp (-s * (Real.log (k : ℝ) : ℂ)) := by
  have hkR : (0 : ℝ) < k := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkC : (k : ℂ) ≠ 0 := by exact_mod_cast hkR.ne'
  rw [Complex.cpow_def_of_ne_zero hkC]
  have hlog : Complex.log (k : ℂ) = (Real.log (k : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using (Complex.ofReal_log hkR.le).symm
  rw [hlog, mul_comm]

theorem hasDerivAt_inverse_power {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    HasDerivAt (fun z : ℂ => (k : ℂ) ^ (-z))
      (-(Real.log (k : ℝ) : ℂ) * (k : ℂ) ^ (-s)) s := by
  have hd := (((hasDerivAt_id s).neg).mul_const (Real.log (k : ℝ) : ℂ)).cexp
  convert hd using 1
  · ext z
    exact inverse_power_eq_exp hk z
  · rw [inverse_power_eq_exp hk s]
    ring

theorem coefficient_succ (N p : ℕ) (s : ℂ) :
    coefficient N (p + 1) s = coefficient N p s +
      (weight N (p + 1) : ℂ) * PochhammerJet.value (2 * (p + 1) - 1) s := by
  simp only [coefficient, Finset.sum_range_succ]
  ring

theorem coefficientSlope_succ (N p : ℕ) (s : ℂ) :
    coefficientSlope N (p + 1) s = coefficientSlope N p s +
      (weight N (p + 1) : ℂ) * PochhammerJet.slope (2 * (p + 1) - 1) s := by
  simp only [coefficientSlope, Finset.sum_range_succ]
  ring

theorem hasDerivAt_coefficient (N p : ℕ) {s : ℂ} (hs : s ≠ 1) :
    HasDerivAt (coefficient N p) (coefficientSlope N p s) s := by
  have hbase := ((hasDerivAt_const s (N : ℂ)).div
    ((hasDerivAt_id s).sub_const 1) (sub_ne_zero.mpr hs)).sub_const (1 / 2 : ℂ)
  have hsum := HasDerivAt.fun_sum (u := Finset.range p) (fun j _ =>
    (PochhammerJet.hasDerivAt_value (2 * (j + 1) - 1) s).const_mul (weight N (j + 1) : ℂ))
  simpa only [coefficient, coefficientSlope, zero_mul, mul_one, zero_sub]
    using hbase.add hsum

/-- The chain-rule minus and endpoint derivative occur in this actual derivative. -/
theorem hasDerivAt_model {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} (hs : s ≠ 1) :
    HasDerivAt (model N p) (slope N p s) s := by
  have hsum : HasDerivAt (finiteDirichletPowerSum N) (dirichletSlope N s) s := by
    exact HasDerivAt.fun_sum (fun k hk => hasDerivAt_inverse_power (Finset.mem_Icc.mp hk).1 s)
  have h := hsum.add ((hasDerivAt_inverse_power hN s).mul (hasDerivAt_coefficient N p hs))
  convert h using 1
  · rfl
  · dsimp only [slope]
    ring

theorem deriv_model {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} (hs : s ≠ 1) :
    deriv (model N p) s = slope N p s := (hasDerivAt_model hN p hs).deriv

/-- Exact comparison with the previously maintained UNCORRECTED finite model. -/
theorem model_eq_previous_plus_corrections {N : ℕ} (hN : 1 ≤ N) (p : ℕ)
    {s : ℂ} (hs : s ≠ 1) :
    model N p s = FinitePowerZetaJet.model N s + (N : ℂ) ^ (-s) *
      (-1 / 2 + ∑ j ∈ Finset.range p,
        (weight N (j + 1) : ℂ) * PochhammerJet.value (2 * (j + 1) - 1) s) := by
  rw [FinitePowerZetaJet.model_eq_sum_endpoint N hs, ← nat_neg_cpow_mul hN s]
  unfold model coefficient
  simp only [div_eq_mul_inv]
  ring

/-- Converting a correction denominator to a complex power requires a positive base. -/
theorem correction_power_identity {N : ℕ} (hN : 1 ≤ N) (m : ℕ) (s : ℂ) :
    (N : ℂ) ^ (-s) / (N : ℂ) ^ m = (N : ℂ) ^ (-s - (m : ℂ)) := by
  have hN0 : (N : ℂ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one hN))
  rw [Complex.cpow_sub _ _ hN0, Complex.cpow_natCast]

/-- The periodic-Bernoulli remainder is NOT an input asserted by the finite evaluator.
When independently established on this same disk, Cauchy transports it to the jet. -/
theorem derivative_error_of_uniform_source {N p : ℕ} {c : ℂ} {S E : ℝ}
    (hN : 1 ≤ N) (hS : 0 < S)
    (hpole : ∀ z ∈ Metric.closedBall c S, z ≠ 1)
    (hsource : ∀ z ∈ Metric.sphere c S, ‖riemannZeta z - model N p z‖ ≤ E) :
    ‖deriv riemannZeta c - slope N p c‖ ≤ E / S := by
  have he := GRWTSK.Analysis.ComplexAnalysis.ClosedDiskCauchy.derivative_error_at_center hS
    (fun z hz => differentiableAt_riemannZeta (hpole z hz))
    (fun z hz => (hasDerivAt_model hN p (hpole z hz)).differentiableAt) hsource
  rwa [deriv_model hN p (hpole c (Metric.mem_closedBall_self hS.le))] at he

/-- A concrete derivative which would be lost by multiplying the zero value by
an undefined logarithmic sum. -/
theorem first_correction_control :
    coefficient 1 1 0 = -3 / 2 ∧ coefficientSlope 1 1 0 = -11 / 12 := by
  norm_num [coefficient, coefficientSlope, weight, Finset.sum_range_succ,
    PochhammerJet.value_succ, PochhammerJet.value_zero, PochhammerJet.slope]

end
end GRWTSK.RiemannHypothesis.EndpointCorrectedJet
