/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUniformShortWindowCoercivity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
# Improved uniform prime-free Weil window: actual gamma-kernel lower barrier

MSC2020: 11M26 (primary), 11M41, 33B15.

The ORIGINAL parity kernel has the explicit pointwise lower bound
  parityKernel a r >= 1/(2r) - 3/4
for both physical parities a<=1 and 0<r<=1/4. Unlike the earlier
5/(16r) comparison, this retains the first-order exponential correction.
The resulting full-source WRITTEN argument in the companion obtains
Q_chi,A(f) >= (1/16)*energy f for EVERY primitive character (with the
separate conductor-one zeta source and BOTH signed poles), every smooth
complex source supported [-A,A], and 0<A<=1/3500.
This improves the prior 0<A<=2^(-22) uniform window by >1000-fold,
while using a smaller coercivity constant. The complete gamma interval
integration, zeta pole budget, and source positivity proof remain
WRITTEN mathematics, NOT Lean declarations of this module.

The Lean candidates prove the source kernel pointwise inequality,
the literal elementary logarithmic cutoff, the exact gamma constant
lower bound, prime-inventory emptiness, and the precise return to the
unchanged primitive nonprincipal arithmetic expression.
No prime power is dropped except by the proved strict source cutoff.
Conductor one is NOT instantiated in the primitive nonprincipal theorem.

SOURCE_PROOF_CANDIDATE: elaboration, full dependency build,
fresh kernel replay, transitive axiom audit, numerical certification,
independent analytical review NOT_RUN. Novelty UNASSESSED.
No sorry/admit/new research axiom, spectral surrogate, RH or GRH claim.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ImprovedShortWindow

open OddRootProjection SourcePrimeCorrelation LowSchur ShortWindow CharacterWindow

/-- The original physical gamma kernel, with its first-order exponential
correction kept until the final lower comparison. -/
theorem parityKernel_lower_small
    (a : ℕ) (ha : a ≤ 1) {r : ℝ}
    (hr : 0 < r) (hrupper : r ≤ 1 / 4) :
    (1 - (3 / 2 : ℝ) * r) / (2 * r) ≤ parityKernel a r := by
  let b : ℝ := (a : ℝ) + 1 / 2
  have haR : (a : ℝ) ≤ 1 := by exact_mod_cast ha
  have hb : b ≤ 3 / 2 := by dsimp [b]; linarith
  have hnr : 0 ≤ 1 - (3 / 2 : ℝ) * r := by linarith
  have hnum : 1 - (3 / 2 : ℝ) * r ≤ Real.exp (-b * r) := by
    have hexp := Real.add_one_le_exp (-b * r)
    have hmul : b * r ≤ (3 / 2 : ℝ) * r :=
      mul_le_mul_of_nonneg_right hb hr.le
    linarith
  have hdenpos : 0 < 1 - Real.exp (-2 * r) := by
    have h := Real.exp_lt_exp.mpr
      (show -2 * r < (0 : ℝ) by linarith)
    simpa only [Real.exp_zero] using (sub_pos.mpr h)
  have hdenle : 1 - Real.exp (-2 * r) ≤ 2 * r := by
    have h := Real.add_one_le_exp (-2 * r)
    linarith
  change (1 - (3 / 2 : ℝ) * r) / (2 * r) ≤
    Real.exp (-b * r) / (1 - Real.exp (-2 * r))
  apply (div_le_div_iff₀ (by positivity : (0 : ℝ) < 2 * r) hdenpos).2
  calc
    (1 - (3 / 2 : ℝ) * r) * (1 - Real.exp (-2 * r)) ≤
        (1 - (3 / 2 : ℝ) * r) * (2 * r) :=
      mul_le_mul_of_nonneg_left hdenle hnr
    _ ≤ Real.exp (-b * r) * (2 * r) :=
      mul_le_mul_of_nonneg_right hnum (by positivity)

/-- Integral-friendly form of the lower barrier on the same ORIGINAL
kernel, with no displaced parity, pole, or source-energy term. -/
theorem parityKernel_ge_inverse_minus_three_quarters
    (a : ℕ) (ha : a ≤ 1) {r : ℝ}
    (hr : 0 < r) (hrupper : r ≤ 1 / 4) :
    1 / (2 * r) - (3 / 4 : ℝ) ≤ parityKernel a r := by
  have heq : 1 / (2 * r) - (3 / 4 : ℝ) =
      (1 - (3 / 2 : ℝ) * r) / (2 * r) := by
    field_simp [ne_of_gt hr]
    ring
  rw [heq]
  exact parityKernel_lower_small a ha hr hrupper

/-- The exact prior GammaData lower bound yields a uniform constant
across all primitive conductors and both physical parities. -/
theorem gammaConstant_global_floor
    (q a : ℕ) (hq : 0 < q) (ha : a ≤ 1) :
    -(11 / 2 : ℝ) ≤ gammaConstant q a := by
  have h := gammaConstant_lower_sharp q hq a ha
  have hqR : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  have hlog : 0 ≤ Real.log (q : ℝ) := Real.log_nonneg hqR
  linarith

/-- Explicit rational support cutoff. The strict log inequality follows
from pinned Real.exp_one_lt_d9; exp(6) < (11/4)^6 < 875/2. -/
theorem shortWindow_log_floor {A : ℝ}
    (hA : 0 < A) (hsmall : A ≤ 1 / 3500) :
    6 < Real.log (1 / (8 * A)) := by
  have he1 : Real.exp 1 < (11 / 4 : ℝ) :=
    Real.exp_one_lt_d9.trans (by norm_num)
  have he6 : Real.exp (6 : ℝ) < (875 / 2 : ℝ) := by
    calc
      Real.exp (6 : ℝ) = (Real.exp (1 : ℝ)) ^ 6 := by
        convert (Real.exp_nat_mul (1 : ℝ) 6) using 1 <;> norm_num
      _ < (11 / 4 : ℝ) ^ 6 := by gcongr
      _ < (875 / 2 : ℝ) := by norm_num
  have hden : 0 < 8 * A := by positivity
  have hratio : (875 / 2 : ℝ) ≤ 1 / (8 * A) := by
    apply (le_div_iff₀ hden).2
    nlinarith [hsmall]
  exact (Real.lt_log_iff_exp_lt (by positivity)).2
    (lt_of_lt_of_le he6 hratio)

/-- On this explicit support range the ORIGINAL finite integer prime-power
inventory is EMPTY. The cutoff is not rounded, and both parities agree. -/
theorem primeInventory_empty_shortWindow
    (A : ℝ) (hsmall : A ≤ 1 / 3500) :
    activePrimePowers A = ∅ := by
  have hlog : 2 * A ≤ Real.log 2 := by
    have hlogTwo := Real.log_two_gt_d9
    linarith
  have hexp : Real.exp (2 * A) ≤ (2 : ℝ) := by
    calc
      Real.exp (2 * A) ≤ Real.exp (Real.log 2) :=
        Real.exp_le_exp.mpr hlog
      _ = 2 := Real.exp_log (by norm_num)
  exact activePrimePowers_empty_of_exp_le_two A hexp

/-- Direct source return to the unchanged primitive nonprincipal
arithmetic form on this ACTUAL all-prime-power-free window.
No gamma integrability or sign is manufactured by the equality. -/
theorem primitiveArithmeticValue_eq_gamma_shortWindow
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (A : ℝ) (hsmall : A ≤ 1 / 3500) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity χ) f r) := by
  unfold primitiveArithmeticValue
  have hzero :
      twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) = 0 :=
    twistedPrime_zero_of_exp_le_two A
      (by
        have hlog : 2 * A ≤ Real.log 2 := by
          have hh := Real.log_two_gt_d9
          linarith
        calc
          Real.exp (2 * A) ≤ Real.exp (Real.log 2) :=
            Real.exp_le_exp.mpr hlog
          _ = 2 := Real.exp_log (by norm_num))
      χ (fun n => correlation f (Real.log (n : ℝ)))
  rw [hzero]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.ImprovedShortWindow
