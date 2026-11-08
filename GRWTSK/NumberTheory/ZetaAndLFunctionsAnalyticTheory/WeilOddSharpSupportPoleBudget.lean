/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@ab2e39631abee15661f9136f6499a97b02ff1cf4.
Canonical workflow source: grwtsk/noeaaeue@
92fc4cbb1d0e36e8847eac733e9a0344b588ed59.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleFourierFunctionalReturn
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Tactic

/-!
# The sharp physical-support budget for the literal odd zeta pole

## Exact source obligation

`OddLiteralCofinalMassFloor.HasSharpOddPoleBudget T g` is the explicit
physical-Lebesgue estimate

`oddPoleMoment(g)^2 <= (sinh T - T) * physicalMass(g)`.

The preceding source deliberately retained this estimate as a premise.  The
mathematical proof is ordinary Cauchy--Schwarz on the symmetric support
interval, but the exact source vector, its normalization, and its squared
mass still have to be returned to the declarations consumed by the Weil
form.

This module proves the missing return for every real odd `L2(dt)` test
supported almost everywhere in `[-T,T]`, with `T > 0`.  It reuses the
literal support-truncated vector

`OddPoleFourierFunctionalReturn.poleWindow T
  = 1_[-T,T](t) sinh(t/2)`,

the source-normalized sine Parseval theorem and the exact bilinear Parseval
pairing.  Its physical mass is evaluated directly:

`integral_[-T,T] sinh(t/2)^2 dt = sinh T - T`.

The infinite Cauchy--Schwarz inequality is obtained by taking limits of the
finite exact inequality.  No theta-weighted norm, periodic norm, positive
reference operator or fitted pole vector is substituted.

## Consumers and limits

The theorem removes the freestanding pole-budget premise from:

* the whole-domain scalar floor on one supported odd test;
* its fixed-test cofinal propagation;
* the support-Cauchy high-sector coercivity theorem.

The scalar price grows like `sinh T`.  It is sharp using only physical mass
and support, because the supported pole vector itself is odd and saturates
Cauchy--Schwarz.  Consequently this result does not prove a nonnegative
growing-window stage, a paid low Schur matrix, a cofinal family, RH, or any
Dirichlet-character sector.

Primary source normalization: Connes--Consani--Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, (3.19)--(3.20).  Fourier Parseval and
Cauchy--Schwarz are standard.  No theorem-level novelty claim is made.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSharpSupportPoleBudget

open OddRootProjection OddSineParseval OddModeDependentTail
open OddPoleFourierFunctionalReturn OddHighPoleSectorReturn
open OddLiteralCofinalMassFloor OddLiteralWindow OddWrapEnergy
open LowSchur

/-- Exact physical squared norm of the support-truncated source pole vector. -/
theorem poleWindow_physicalMass (T : ℝ) (hT : 0 ≤ T) :
    physicalMass (poleWindow T) = Real.sinh T - T := by
  unfold physicalMass
  have hshape :
      (fun t : ℝ => (poleWindow T t)^2) =
        (Icc (-T) T).indicator (fun t : ℝ => (Real.sinh (t/2))^2) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [poleWindow, ht]
  rw [hshape, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]
  let F := fun t : ℝ => (Real.sinh t - t) / 2
  have hderiv (t : ℝ) :
      HasDerivAt F ((Real.sinh (t/2))^2) t := by
    have hbase :=
      ((Real.hasDerivAt_sinh t).sub (hasDerivAt_id t)).div_const 2
    apply hbase.congr_deriv
    have hdouble := Real.cosh_two_mul (t/2)
    have hsquare := Real.cosh_sq (t/2)
    rw [show 2 * (t/2) = t by ring] at hdouble
    nlinarith
  have hcontinuous :
      Continuous (fun t : ℝ => (Real.sinh (t/2))^2) := by
    fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hderiv t) (hcontinuous.intervalIntegrable _ _)]
  dsimp [F]
  rw [Real.sinh_neg]
  ring

/-- The supported pole vector itself has pole moment equal to its physical
mass.  This records the sharpness direction without any arithmetic form
claim. -/
theorem poleWindow_oddPoleMoment (T : ℝ) (hT : 0 ≤ T) :
    oddPoleMoment (poleWindow T) = Real.sinh T - T := by
  calc
    oddPoleMoment (poleWindow T) =
        ∫ t : ℝ, poleWindow T t * poleWindow T t :=
      (poleWindow_pair_eq_moment T (poleWindow_support T)).symm
    _ = physicalMass (poleWindow T) := by
      unfold physicalMass
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by ring)
    _ = Real.sinh T - T := poleWindow_physicalMass T hT

/-- Cauchy--Schwarz is attained by the actual supported source pole vector;
support and physical mass alone cannot improve its coefficient. -/
theorem poleWindow_saturates_sharp_budget (T : ℝ) (hT : 0 ≤ T) :
    (oddPoleMoment (poleWindow T))^2 =
      (Real.sinh T - T) * physicalMass (poleWindow T) := by
  rw [poleWindow_oddPoleMoment T hT, poleWindow_physicalMass T hT]
  ring

/-- Infinite real Cauchy--Schwarz, obtained from exact finite sums and both
square-series limits. -/
private theorem sq_tsum_mul_le_tsum_sq_mul_tsum_sq
    (a b : ℕ → ℝ)
    (ha : Summable (fun n => (a n)^2))
    (hb : Summable (fun n => (b n)^2))
    (hab : Summable (fun n => a n * b n)) :
    (∑' n, a n * b n)^2 ≤
      (∑' n, (a n)^2) * (∑' n, (b n)^2) := by
  have hfinite (K : ℕ) :
      (∑ n ∈ Finset.range K, a n * b n)^2 ≤
        (∑ n ∈ Finset.range K, (a n)^2) *
          (∑ n ∈ Finset.range K, (b n)^2) :=
    Finset.sum_mul_sq_le_sq_mul_sq (Finset.range K) a b
  have hleft : Tendsto
      (fun K : ℕ => (∑ n ∈ Finset.range K, a n * b n)^2)
      atTop (𝓝 ((∑' n, a n * b n)^2)) :=
    (hab.hasSum.tendsto_sum_nat).pow 2
  have hright : Tendsto
      (fun K : ℕ =>
        (∑ n ∈ Finset.range K, (a n)^2) *
          (∑ n ∈ Finset.range K, (b n)^2))
      atTop
      (𝓝 ((∑' n, (a n)^2) * (∑' n, (b n)^2))) :=
    (ha.hasSum.tendsto_sum_nat).mul (hb.hasSum.tendsto_sum_nat)
  exact le_of_tendsto_of_tendsto' hleft hright hfinite

/-- The sharp support/Cauchy premise is a theorem on the actual odd physical
carrier.  No positivity of the arithmetic Weil form is assumed. -/
theorem hasSharpOddPoleBudget_of_source
    (T : ℝ) (hT : 0 < T) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    HasSharpOddPoleBudget T g := by
  let a : ℕ → ℝ := fun n => sineCoefficient T (poleWindow T) (n+1)
  let b : ℕ → ℝ := fun n => sineCoefficient T g (n+1)
  have haSum : HasSum (fun n : ℕ => (a n)^2)
      (physicalMass (poleWindow T)) := by
    simpa only [a, physicalMass, Real.norm_eq_abs, sq_abs] using
      hasSum_source_sineCoefficient_sq_ae T hT (poleWindow_memLp T)
        (Filter.Eventually.of_forall (poleWindow_odd T))
        (poleWindow_support T)
  have hbSum : HasSum (fun n : ℕ => (b n)^2) (physicalMass g) := by
    simpa only [b, physicalMass, Real.norm_eq_abs, sq_abs] using
      hasSum_source_sineCoefficient_sq_ae T hT hg
        (Filter.Eventually.of_forall hgo) hgs
  have habSum : HasSum (fun n : ℕ => a n * b n) (oddPoleMoment g) := by
    have h := highSine_pair_hasSum T hT
      (N := 0) (poleWindow_memLp T) hg
      (poleWindow_odd T) hgo (poleWindow_support T) hgs
      (fun n hn => (Nat.not_lt_zero n hn).elim)
    rw [poleWindow_pair_eq_moment T hgs] at h
    simpa only [a, b, zero_add] using h
  have hcs := sq_tsum_mul_le_tsum_sq_mul_tsum_sq
    a b haSum.summable hbSum.summable habSum.summable
  rw [habSum.tsum_eq, haSum.tsum_eq, hbSum.tsum_eq,
    poleWindow_physicalMass T hT.le] at hcs
  exact hcs

/-- Unconditional source-returned scalar floor for a supported odd physical
test.  The coefficient can be negative and is not a growing-window sign. -/
theorem full_domain_scalar_floor_of_supported_odd
    (T β : ℝ) (hT : 0 < T) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    (gammaConstant 1 0 - β - primeMass T -
        2 * (Real.sinh T - T)) * physicalMass g ≤
      shiftedOddWeilEnergy T β g :=
  full_domain_scalar_floor T β g hg.integrable_sq
    (hasSharpOddPoleBudget_of_source T hT hg hgo hgs)

/-- The sharp fixed-support scalar floor propagates to every larger dyadic
window for the same test, without becoming a universal `StageLower`. -/
theorem cofinal_scalar_floor_of_supported_odd
    (T : ℝ) (hT : 0 < T) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (j : ℕ) (hj : T ≤ (j : ℝ) + 1) :
    (gammaConstant 1 0 - primeMass T -
      2 * (Real.sinh T - T) + (1 / 2 : ℝ)^j) *
        physicalMass g ≤
      shiftedOddWeilEnergy ((j : ℝ) + 1)
        (-((1 / 2 : ℝ)^j)) g :=
  cofinal_scalar_floor T g hg.integrable_sq hgs
    (hasSharpOddPoleBudget_of_source T hT hg hgo hgs) j hj

/-- The support-Cauchy high-sector route no longer needs a separately supplied
`HasSharpOddPoleBudget`.  It remains a high-complement theorem only. -/
theorem high_sector_coercive_of_source_support
    (T β : ℝ) (hT : 0 < T) {N : ℕ}
    (hcut : highCutoff T β 4 (sharpPoleCoreFloor T) ≤ N)
    {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    (∫ t : ℝ, ‖g t‖^2) ≤ shiftedOddWeilEnergy T β g :=
  high_sector_coercive_of_support_cauchy T β hT hcut
    hg hgm hgo hgs hhead henergy
    (hasSharpOddPoleBudget_of_source T hT hg hgo hgs)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSharpSupportPoleBudget
