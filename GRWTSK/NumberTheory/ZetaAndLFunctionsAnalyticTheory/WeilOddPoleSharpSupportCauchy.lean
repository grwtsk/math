/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleFourierFunctionalReturn
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-!
# Sharp support Cauchy return for the literal negative zeta pole

## Consumer and source fidelity

The prior OddLiteralCofinalMassFloor defined
\`HasSharpOddPoleBudget T f\` as an independent premise:
  (∫ f(t)*sinh(t/2) dt)^2 <= (sinh T-T) * ∫ f(t)^2 dt.
The source has a NEGATIVE rank-one zeta pole -2*(∫ f sinh)^2.
Previous whole-domain, fixed-support cofinal, and high-sector scalar
lower theorems depended on this explicit estimate. This file
discharges that premise on its correct real Lebesgue L² carrier.

Use the EXISTING supported sinh vector
  OddPoleFourierFunctionalReturn.poleWindow T t
   = 1_[-T,T](t)*sinh(t/2).
This is not theta-weighted, not periodic, and not a new arithmetic
Weil form. Its pointwise oddness and L² membership have already
been supplied by the preceding source.

## Complete written mathematical argument

For T>=0, the real hyperbolic double-angle identities give
  sinh(t/2)^2 = (cosh t - 1)/2.
An antiderivative is (sinh t - t)/2, and the endpoint difference is
  ∫_{-T}^T sinh(t/2)^2 dt = sinh T - T.
This is exactly the physical Lebesgue squared norm of the supported
pole vector, with NO unknown normalization.

For every f∈L²(R,dt) that vanishes almost everywhere outside
[-T,T], the original source pole moment equals
  ell(f) = ∫_R poleWindow(T,t)*f(t) dt.
Hölder with exponents 2,2 on this same physical measure, followed
by |∫ h|<=∫|h|, proves
  ell(f)^2 <= ||poleWindow(T)||_2² * ||f||_2²
           = (sinh T-T)*||f||_2².
Pointwise oddness is not needed for this bound. The original
odd-Weil consumers retain their stronger oddness and gamma-domain
hypotheses explicitly.

The bound is sharp on the whole odd L² support class:
f=poleWindow(T,.) achieves equality. For a smooth compact
test inside the window it need not attain equality, and this
result does not assert a sharp constant for a narrower gamma
form domain.

Hostile boundaries:
- Removing the compact-support premise is invalid because sinh(t/2)
  has infinite squared Lebesgue norm on the whole line.
- The zeta pole retains its NEGATIVE source sign -2*ell(f)^2.
- The scalar constant sinh T-T can be exponentially large; its
  source-exact existence does not imply a nonnegative all-window
  Weil stage.
- This source proves no low-block signed Schur inequality, no
  completed-zero comparison and no Dirichlet character sector sign.

The consumer theorems below remove \`HasSharpOddPoleBudget\`
from the original full-domain scalar floor, fixed-support cofinal
floor, and high-complement Cauchy coercivity. They change NO
prime-power von Mangoldt coefficients, gamma kernel, or pole
orientation of the original definitions.

Primary analytic source: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20).
Standard real analysis: L² Hölder and elementary hyperbolic
integration. Local sources: WeilOddLiteralCofinalMassFloor,
WeilOddHighPoleSectorReturn, WeilOddPoleFourierFunctionalReturn.
AI-assisted manual mathematical source; novelty unassessed.
Lean elaboration, fresh kernel, axiom audit and independent
mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleSharpSupportCauchy

open GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleFourierFunctionalReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinalMassFloor
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighPoleSectorReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
open GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapEnergy

/-- The exact hyperbolic identity appropriate for the ORIGINAL sinh(t/2)
pole weight. The factor two is not interchangeable with a Fourier norm. -/
private theorem sinh_half_sq (t : ℝ) :
    (Real.sinh (t / 2)) ^ 2 = (Real.cosh t - 1) / 2 := by
  have hc := Real.cosh_two_mul (t / 2)
  have hd := Real.cosh_sq_sub_sinh_sq (t / 2)
  rw [show 2 * (t / 2) = t by ring] at hc
  nlinarith

/-- Exact physical Lebesgue L² mass of the ORIGINAL source sinh vector
on a symmetric support interval. -/
theorem poleWindow_sq_integral (T : ℝ) (hT : 0 ≤ T) :
    (∫ t : ℝ, (poleWindow T t) ^ 2) = Real.sinh T - T := by
  have hshape :
      (fun t : ℝ => (poleWindow T t) ^ 2) =
        (Icc (-T) T).indicator (fun t : ℝ => (Real.sinh (t/2)) ^ 2) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [poleWindow, ht]
  let F : ℝ → ℝ := fun t => (Real.sinh t - t) / 2
  have hderiv (t : ℝ) :
      HasDerivAt F (Real.sinh (t/2)^2) t := by
    have h : HasDerivAt (fun x : ℝ => (Real.sinh x - x)/2)
        ((Real.cosh t - 1)/2) t :=
      ((Real.hasDerivAt_sinh t).sub (hasDerivAt_id t)).div_const 2
    simpa only [F, sinh_half_sq t] using h
  have hcont : Continuous (fun t : ℝ => Real.sinh (t/2)^2) := by fun_prop
  rw [hshape, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hderiv t) (hcont.intervalIntegrable _ _)]
  dsimp [F]
  rw [Real.sinh_neg]
  ring

/-- Direct L² proof of the sharp pole budget: the only assumptions are
the physical L² domain and the actual finite support. No unknown
geometric positivity or Weil spectral sign is consumed. -/
theorem sharpOddPoleBudget_of_memLp (T : ℝ) (hT : 0 ≤ T)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    HasSharpOddPoleBudget T g := by
  let S : ℝ := ∫ t : ℝ, (poleWindow T t)^2
  let M : ℝ := ∫ t : ℝ, (g t)^2
  have hS : 0 ≤ S := integral_nonneg fun t => sq_nonneg (poleWindow T t)
  have hM : 0 ≤ M := integral_nonneg fun t => sq_nonneg (g t)
  have hnorm :
      |oddPoleMoment g| ≤
        ∫ t : ℝ, ‖poleWindow T t‖ * ‖g t‖ := by
    rw [← poleWindow_pair_eq_moment T hgs]
    have h := norm_integral_le_integral_norm
      (fun t : ℝ => poleWindow T t * g t)
    simpa only [Real.norm_eq_abs, norm_mul] using h
  have hholder :
      (∫ t : ℝ, ‖poleWindow T t‖ * ‖g t‖) ≤
        Real.sqrt S * Real.sqrt M := by
    have h := integral_mul_norm_le_Lp_mul_Lq
      (p := (2 : ℝ)) (q := (2 : ℝ))
      Real.HolderConjugate.two_two (poleWindow_memLp T) hg
    simpa [S, M, Real.sqrt_eq_rpow, Real.rpow_natCast,
      Real.norm_eq_abs, sq_abs] using h
  have habs : |oddPoleMoment g| ≤ Real.sqrt S * Real.sqrt M :=
    hnorm.trans hholder
  have hright : 0 ≤ Real.sqrt S * Real.sqrt M :=
    mul_nonneg (Real.sqrt_nonneg S) (Real.sqrt_nonneg M)
  have hsq : |oddPoleMoment g|^2 ≤
      (Real.sqrt S * Real.sqrt M)^2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr habs)
      (add_nonneg (abs_nonneg (oddPoleMoment g)) hright)]
  rw [sq_abs, mul_pow, Real.sq_sqrt hS, Real.sq_sqrt hM] at hsq
  have hSval : S = Real.sinh T - T := poleWindow_sq_integral T hT
  unfold HasSharpOddPoleBudget
  change (oddPoleMoment g)^2 ≤ (Real.sinh T - T) * M
  rw [← hSval]
  nlinarith [hsq]

/-- The original whole-domain scalar floor, now without the earlier
external HasSharpOddPoleBudget premise. Its value may remain negative. -/
theorem literal_scalar_floor_of_memLp (T β : ℝ) (hT : 0 ≤ T)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    (gammaConstant 1 0 - β - primeMass T -
      2 * (Real.sinh T - T)) * physicalMass g ≤
        shiftedOddWeilEnergy T β g := by
  exact full_domain_scalar_floor T β g hg.integrable_sq
    (sharpOddPoleBudget_of_memLp T hT hg hgs)

/-- For each fixed compact test, the exact cofinal source return carries
a PAID scalar bound, including the unchanged original prime window. -/
theorem cofinal_scalar_floor_of_memLp
    (T : ℝ) (hT : 0 ≤ T) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (j : ℕ) (hj : T ≤ (j : ℝ)+1) :
    (gammaConstant 1 0 - primeMass T -
      2 * (Real.sinh T - T) + (1/2 : ℝ)^j) * physicalMass g ≤
      shiftedOddWeilEnergy ((j : ℝ)+1) (-((1/2 : ℝ)^j)) g := by
  exact cofinal_scalar_floor T g hg.integrable_sq hgs
    (sharpOddPoleBudget_of_memLp T hT hg hgs) j hj

/-- Full pole-inclusive HIGH-SINE coercivity using the original
gamma-minus-prime source cutoff and a PROVED support Cauchy price.
The low signed arithmetic block and mixed Schur residual remain
separate and have not been shown nonnegative. -/
theorem high_sector_coercive_of_memLp (T β : ℝ) (hT : 0 < T)
    {N : ℕ} (hcut : highCutoff T β 4 (sharpPoleCoreFloor T) ≤ N)
    {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    (∫ t : ℝ, ‖g t‖^2) ≤ shiftedOddWeilEnergy T β g := by
  exact high_sector_coercive_of_support_cauchy
    T β hT hcut hg hgm hgo hgs hhead henergy
    (sharpOddPoleBudget_of_memLp T hT.le hg hgs)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleSharpSupportCauchy
