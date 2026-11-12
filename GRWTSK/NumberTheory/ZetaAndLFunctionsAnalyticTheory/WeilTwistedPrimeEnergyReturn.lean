/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import Mathlib.Tactic

/-!
# Exact phase-twisted translation energy in the original prime-power source

MSC2020: 11M26 (primary), 11M41, 42A82.
For every L2 complex source and arbitrary complex phase z, expand the
actual Lebesgue translation difference f(t+r)-z*f(t). This yields an
EXACT equality for each antilinear-first correlation, including z=0.
The native twistedPrime is consequently an exact finite signed
mass-minus-translation-energy ledger, with ORIGINAL prime weights,
character phases, active inventory and cutoff.

Consumer: actual primitiveArithmeticValue with unchanged gamma constant,
physical gamma integral and prime terms. Conductor-one zeta retains both
pole orientations separately: this module cannot apply the primitive
nonprincipal theorem to chi=1. The mathematical companion establishes
a sharp all-shift finite-path bound in WRITTEN form; that bound is not
a Lean declaration here.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh
kernel replay, transitive axiom audit, independent mathematical review
and certified numerical computation NOT_RUN. Novelty UNASSESSED.
No research axiom or RH/GRH assertion.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn

open GRWTSK.NumberTheory.WeilQuadraticForm
open SourcePrimeCorrelation OddRootProjection CharacterWindow LowSchur

/-- Whole-line phase-twisted translation energy. The ramified value z=0
is allowed; no unit-phase assumption is needed. -/
def twistedShiftEnergy (f : ℝ → ℂ) (r : ℝ) (z : ℂ) : ℝ :=
  energy (fun t => f (t + r) - z * f t)

private theorem norm_sub_twisted_sq (u v z : ℂ) :
    ‖v - z * u‖ ^ 2 =
      ‖v‖ ^ 2 + ‖z‖ ^ 2 * ‖u‖ ^ 2 -
        2 * (conj z * (conj u * v)).re := by
  simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
    Complex.sub_re, Complex.sub_im, Complex.mul_re,
    Complex.conj_re, Complex.conj_im]
  ring

/-- Exact unrounded identity for the original signed complex correlation.
No assumption about the norm, argument or nonvanishing of z. -/
theorem twistedShiftEnergy_eq_correlation (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) (r : ℝ) (z : ℂ) :
    twistedShiftEnergy f r z =
      (1 + ‖z‖ ^ 2) * energy f -
        2 * (conj z * correlation f r).re := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hc := integrable_correlation_integrand hf r
  have hcross : Integrable
      (fun t : ℝ => (conj z * (conj (f t) * f (t + r))).re) :=
    (hc.const_mul (conj z)).re
  have hp (t : ℝ) :
      ‖f (t + r) - z * f t‖ ^ 2 =
        ‖f (t + r)‖ ^ 2 + ‖z‖ ^ 2 * ‖f t‖ ^ 2 -
          2 * (conj z * (conj (f t) * f (t + r))).re :=
    norm_sub_twisted_sq (f t) (f (t + r)) z
  have hi : Integrable (fun t : ℝ => ‖f (t + r) - z * f t‖ ^ 2) := by
    have hfun :
        (fun t : ℝ => ‖f (t + r) - z * f t‖ ^ 2) =
        (fun t => ‖f (t + r)‖ ^ 2 + ‖z‖ ^ 2 * ‖f t‖ ^ 2 -
          2 * (conj z * (conj (f t) * f (t + r))).re) := by
      funext t
      exact hp t
    rw [hfun]
    exact (hshift.add (hsq.const_mul _)).sub (hcross.const_mul 2)
  have hcross_eq :
      (∫ t : ℝ, (conj z * (conj (f t) * f (t + r))).re) =
        (conj z * correlation f r).re := by
    unfold correlation
    rw [← integral_re (hc.const_mul (conj z)), integral_const_mul]
  have hshift_eq :
      (∫ t : ℝ, ‖f (t + r)‖ ^ 2) = energy f := by
    simpa only [energy] using
      (integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r)
  calc
    twistedShiftEnergy f r z =
        ∫ t : ℝ, (‖f (t + r)‖ ^ 2 + ‖z‖ ^ 2 * ‖f t‖ ^ 2 -
          2 * (conj z * (conj (f t) * f (t + r))).re) := by
      unfold twistedShiftEnergy energy
      exact integral_congr_ae (Filter.Eventually.of_forall hp)
    _ = (1 + ‖z‖ ^ 2) * energy f -
          2 * (conj z * correlation f r).re := by
      rw [integral_sub (hshift.add (hsq.const_mul _)) (hcross.const_mul 2),
        integral_add hshift (hsq.const_mul _), integral_const_mul,
        integral_const_mul, hshift_eq, hcross_eq]
      unfold energy
      ring

/-- At a ramified character value zero, the twisted translation energy
is exactly the unshifted source mass. The prime ledger cancels it. -/
theorem twistedShiftEnergy_zero_phase (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) (r : ℝ) :
    twistedShiftEnergy f r 0 = energy f := by
  rw [twistedShiftEnergy_eq_correlation f hf r 0]
  simp

/-- Exact finite phase ledger for the ORIGINAL Dirichlet prime response.
This is an equality, not a sign certificate: the mass is retained. -/
theorem twistedPrime_eq_shift_ledger {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (T : ℝ)
    (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    twistedPrime T χ (fun n => correlation f (Real.log (n : ℝ))) =
      ∑ n ∈ activePrimePowers T, primeWeight n *
        ((1 + ‖χ n‖ ^ 2) * energy f -
          twistedShiftEnergy f (Real.log (n : ℝ)) (χ n)) := by
  unfold twistedPrime
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have h := twistedShiftEnergy_eq_correlation f hf (Real.log (n : ℝ)) (χ n)
  rw [h]
  ring

/-- Return the phase ledger to the existing primitive nonprincipal arithmetic
value with unchanged gamma correction. Conductor-one poles are separate. -/
theorem primitiveArithmeticValue_eq_twisted_shift_ledger {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    primitiveArithmeticValue χ hprimitive hnonprincipal T f =
      gammaConstant q (gammaParity χ) * energy f +
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
      ∑ n ∈ activePrimePowers T, primeWeight n *
        ((1 + ‖χ n‖ ^ 2) * energy f -
          twistedShiftEnergy f (Real.log (n : ℝ)) (χ n)) := by
  unfold primitiveArithmeticValue
  rw [twistedPrime_eq_shift_ledger χ T f hf]

end GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn
