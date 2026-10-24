/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.EndpointBernoulliResidual

set_option autoImplicit false

/-!
# Entire endpoint-corrected finite model for the existing pole-normalized source

The old source is reused. Cancel the pole SYMBOLICALLY before defining the finite
model. Multiplying a totalized quotient by s-1 at s=1 would instead give zero.
Every positive base, Bernoulli correction and derivative is retained. The residual
comes from the maintained actual-zeta identity, with the pole handled separately.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.PoleNormalizedEndpointJet

open scoped BigOperators
open CriticalStripHeightDescent
open GRWTSK.Analysis.ComplexAnalysis

noncomputable section

/-- The regular part of the old endpoint coefficient; no s-dependent denominator. -/
def regular (N p : ℕ) (s : ℂ) : ℂ :=
  -1 / 2 + ∑ j ∈ Finset.range p,
    (EndpointCorrectedJet.weight N (j + 1) : ℂ) * PochhammerJet.value (2 * (j + 1) - 1) s

def regularSlope (N p : ℕ) (s : ℂ) : ℂ :=
  ∑ j ∈ Finset.range p,
    (EndpointCorrectedJet.weight N (j + 1) : ℂ) * PochhammerJet.slope (2 * (j + 1) - 1) s

def coefficient (N p : ℕ) (s : ℂ) : ℂ := N + (s - 1) * regular N p s

def coefficientSlope (N p : ℕ) (s : ℂ) : ℂ :=
  regular N p s + (s - 1) * regularSlope N p s

/-- Entire for a positive cutoff, including the exact removable value at one. -/
def model (N p : ℕ) (s : ℂ) : ℂ :=
  (s - 1) * finiteDirichletPowerSum N s + (N : ℂ) ^ (-s) * coefficient N p s

def slope (N p : ℕ) (s : ℂ) : ℂ :=
  finiteDirichletPowerSum N s + (s - 1) * EndpointCorrectedJet.dirichletSlope N s +
    (N : ℂ) ^ (-s) * (coefficientSlope N p s - (Real.log (N : ℝ) : ℂ) * coefficient N p s)

theorem regular_succ (N p : ℕ) (s : ℂ) :
    regular N (p + 1) s = regular N p s +
      (EndpointCorrectedJet.weight N (p + 1) : ℂ) * PochhammerJet.value (2 * (p + 1) - 1) s := by
  simp only [regular, Finset.sum_range_succ]
  ring

theorem regularSlope_succ (N p : ℕ) (s : ℂ) :
    regularSlope N (p + 1) s = regularSlope N p s +
      (EndpointCorrectedJet.weight N (p + 1) : ℂ) * PochhammerJet.slope (2 * (p + 1) - 1) s := by
  simp only [regularSlope, Finset.sum_range_succ]

theorem hasDerivAt_regular (N p : ℕ) (s : ℂ) :
    HasDerivAt (regular N p) (regularSlope N p s) s := by
  have hd := HasDerivAt.fun_sum (u := Finset.range p) (fun j _ =>
    (PochhammerJet.hasDerivAt_value (2 * (j + 1) - 1) s).const_mul
      (EndpointCorrectedJet.weight N (j + 1) : ℂ))
  simpa only [regular, regularSlope] using hd.const_add (-1 / 2 : ℂ)

theorem hasDerivAt_coefficient (N p : ℕ) (s : ℂ) :
    HasDerivAt (coefficient N p) (coefficientSlope N p s) s := by
  have hd := (((hasDerivAt_id s).sub_const 1).mul (hasDerivAt_regular N p s)).const_add (N : ℂ)
  simpa only [coefficient, coefficientSlope, one_mul] using hd

/-- No nonpole hypothesis: the actual finite derivative exists AT one too. -/
theorem hasDerivAt_model {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (s : ℂ) :
    HasDerivAt (model N p) (slope N p s) s := by
  have hsum : HasDerivAt (finiteDirichletPowerSum N) (EndpointCorrectedJet.dirichletSlope N s) s :=
    HasDerivAt.fun_sum (fun k hk =>
      EndpointCorrectedJet.hasDerivAt_inverse_power (Finset.mem_Icc.mp hk).1 s)
  have hd := (((hasDerivAt_id s).sub_const 1).mul hsum).add
    ((EndpointCorrectedJet.hasDerivAt_inverse_power hN s).mul (hasDerivAt_coefficient N p s))
  convert hd using 1
  · rfl
  · dsimp only [slope]
    ring

theorem differentiable_model {N : ℕ} (hN : 1 ≤ N) (p : ℕ) :
    Differentiable ℂ (model N p) := fun s => (hasDerivAt_model hN p s).differentiableAt

theorem deriv_model {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (s : ℂ) :
    deriv (model N p) s = slope N p s := (hasDerivAt_model hN p s).deriv

/-- This comparison is nonpole-only, unlike the definition of model. -/
theorem model_eq_mul_previous {N : ℕ} (p : ℕ) {s : ℂ} (hs : s ≠ 1) :
    model N p s = (s - 1) * EndpointCorrectedJet.model N p s := by
  unfold model coefficient regular EndpointCorrectedJet.model EndpointCorrectedJet.coefficient
  field_simp [sub_ne_zero.mpr hs]
  ring

@[simp] theorem model_one {N : ℕ} (hN : 1 ≤ N) (p : ℕ) : model N p 1 = 1 := by
  have hN0 : (N : ℂ) ≠ 0 := by exact_mod_cast (show N ≠ 0 by omega)
  simp [model, coefficient, Complex.cpow_neg_one, hN0]

/-- The removable value is NOT the old totalized quotient multiplied by zero. -/
theorem model_one_ne_raw_product {N : ℕ} (hN : 1 ≤ N) (p : ℕ) :
    model N p 1 ≠ ((1 : ℂ) - 1) * EndpointCorrectedJet.model N p 1 := by
  simp [model_one hN]

/-- At the pole the derivative is still a nontrivial finite expression. -/
theorem slope_one {N : ℕ} (hN : 1 ≤ N) (p : ℕ) :
    slope N p 1 = finiteDirichletPowerSum N 1 +
      (N : ℂ)⁻¹ * regular N p 1 - (Real.log (N : ℝ) : ℂ) := by
  have hN0 : (N : ℂ) ≠ 0 := by exact_mod_cast (show N ≠ 0 by omega)
  simp only [slope, coefficientSlope, coefficient, sub_self, zero_mul, add_zero,
    zero_add, Complex.cpow_neg_one]
  field_simp [hN0]
  ring

/-- The ACTUAL source residual extends through one because both normalized
functions take their correct removable value. No zeta value at its pole is used. -/
theorem source_residual {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s - model N (p + 1) s =
      (s - 1) * PeriodicBernoulliMellin.remainder (2 * (p + 1)) (N : ℝ) s := by
  by_cases hs1 : s = 1
  · subst s
    simp [model_one hN]
  · rw [poleNormalizedZeta_of_ne hs1, model_eq_mul_previous (p + 1) hs1,
      ← mul_sub, EndpointBernoulliResidual.source_residual_succ hN p hs hs1]

/-- Multiplication by the exact pole factor scales the error; it does not erase
an error away from one. The m-th Bernoulli majorant is inherited unchanged. -/
theorem source_error {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} {B : ℝ}
    (hs : 0 < s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - model N (p + 1) s‖ ≤
      ‖s - 1‖ * ((∏ j ∈ Finset.range (2 * (p + 1)), (B + (j : ℝ))) /
        ((2 * (p + 1)).factorial : ℝ) *
        ((GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli.majorant (2 * (p + 1)) : ℝ) /
          (((2 * (p + 1) - 1 : ℕ) : ℝ) * (N : ℝ) ^ (2 * (p + 1) - 1)))) := by
  rw [source_residual hN p hs, norm_mul]
  exact mul_le_mul_of_nonneg_left
    (PeriodicBernoulliMellin.remainder_norm_le_nat (by omega)
      (by exact_mod_cast hN) hs.le hB) (norm_nonneg _)

/-- A uniform normalized-source remainder transports to the derivative even on
a disk containing one. The finite model AND the actual source are entire. -/
theorem derivative_error_of_uniform_source {N : ℕ} (hN : 1 ≤ N) (p : ℕ)
    {c : ℂ} {S E : ℝ} (hS : 0 < S)
    (he : ∀ z ∈ Metric.sphere c S, ‖poleNormalizedZeta z - model N p z‖ ≤ E) :
    ‖deriv poleNormalizedZeta c - slope N p c‖ ≤ E / S := by
  have h := ClosedDiskCauchy.derivative_error_at_center hS
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z _ => differentiable_model hN p z) he
  rwa [deriv_model hN p c] at h

end
end GRWTSK.RiemannHypothesis.PoleNormalizedEndpointJet
