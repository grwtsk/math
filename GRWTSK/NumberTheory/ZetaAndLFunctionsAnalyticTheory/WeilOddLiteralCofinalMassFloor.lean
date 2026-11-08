/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Original-target compilation and exact-target kernel replay checked.
Selected theorem axiom audits (5 declarations) use only
propext, Classical.choice and Quot.sound. Imported dependency closure
not freshly replayed. Independent analytical review NOT_RUN.
Formal evidence: grwtsk/noeaaeue docs/verification.md.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput
import Mathlib.Tactic

/-!
# Actual whole-domain odd Weil lower floors and their cofinal restrictions

## Target and the first unsupported implication

The real odd zeta target is the existing
  OddLiteralWindow.shiftedOddWeilEnergy T 0 f,
with the ORIGINAL source gammaConstant, oddArchimedeanEnergy,
primeEnergy and negative rank-one sinh pole. The existing
OddLiteralCofinal.nonnegative_of_stageLower requires
  ∀ j, OddLiteralCofinal.StageLower j.
No such universal signed stage witness has been obtained from
cyclotomic holonomy or from the other finite diffusers.

Here we prove a genuine, unconditional **pole-retaining** lower floor
for every real L2 input (with integrable square), without replacing
the source or making a sign assumption:
  (gammaConstant 1 0 - beta - primeMass T)*mass(f)
       - 2*pole(f)^2
     <= shiftedOddWeilEnergy T beta f.

The reason is elementary: parityKernel 0 r >= 0 for r>0 and
the shift-square integral is >=0. The existing source theorem
OddSineForm.abs_primeEnergy_le bounds the literal finite prime
correlations by primeMass(T)*mass(f). The pole is not deleted.

For f supported in [-T,T], the exact Cauchy-Schwarz calculation gives
  pole(f)^2 <= (sinh T - T)*mass(f),          T>=0.
Indeed, sinh(t/2) is square-integrable on this interval and
  integral_{-T}^T sinh(t/2)^2 dt = sinh T - T.
The proof is Cauchy-Schwarz for the physical Lebesgue measure, not
an identity with theta-weighted or periodic Hilbert norms.
The corresponding Lean mass-floor theorem below takes this explicit
Cauchy estimate as a named, separately payable input. The *written*
elementary support estimate is provided here; its native Lean
elaboration is a remaining task. Thus this file does not pretend
to have checked that analytic premise in the kernel.

With that exact pole estimate the resulting scalar floor is
  (gammaConstant 1 0 - beta - primeMass T
                 - 2*(sinh T-T))*mass(f)
     <= shiftedOddWeilEnergy T beta f.

## Cohomological/cofinal interpretation

For any ONE fixed supported input f and a larger window U>=T,
OddLiteralCofinal.shiftedOddWeilEnergy_eq_of_le proves that
the unshifted arithmetic source has exactly the same value on
the larger window. Consequently the fixed-T lower floor
propagates, unchanged, to EVERY cofinal stage j with T<=j+1,
apart from the explicit positive physical shift (1/2)^j mass(f).
This is a real cofinal lower **estimate**, but not the much
stronger required nonnegative StageLower j across ALL tests
supported in the GROWING j-th window.

This distinction is essential: primeMass(T) grows with the window,
and the negative odd pole price behaves like sinh T. The present
floor can be negative and its absolute cost is not a vanishing
cofinal error. Hence it does NOT discharge StageLower j, prove
Weil positivity, RH or Dirichlet GRH.

## Analytical comparison and hostile test

The archimedean term is positive as a *form component*, whereas
the pole is a negative square and the prime correlations can have
either sign. Discarding the pole is false even for smooth compact
odd functions with nonzero sinh moment. Positive diffusion
representations do not remove either charge.

For an input of support [-T,T], Cauchy--Schwarz is sharp in the
ambient odd L2 class (the weight sinh(t/2) is itself odd).
Thus the scalar pole budget cannot be improved using ONLY
support and mass. A stronger Weil sign requires joint gamma,
prime and pole control, not a new choice of positive diffusion.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20). Existing Lean source:
WeilOddLiteralWindow, WeilOddHighComplement, WeilOddSineForm,
WeilOddGammaOutput and WeilOddLiteralCofinal, at their unchanged
literal mathematical definitions. Standard Cauchy--Schwarz/triangle
argument; no theorem-level novelty claim. Independent mathematical
review and Lean checking NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinalMassFloor

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal
open GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaOutput

/-- Actual physical squared Lebesgue mass: no theta weighting. -/
def physicalMass (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, (f t) ^ 2

/-- Actual odd zeta pole moment; it remains NEGATIVE in the source. -/
def oddPoleMoment (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, f t * Real.sinh (t / 2)

/-- The physical gamma jump energy is nonnegative. This requires
no conjectural high-frequency spectral gap. -/
theorem oddArchimedeanEnergy_nonneg (f : ℝ → ℝ) :
    0 ≤ oddArchimedeanEnergy f := by
  unfold oddArchimedeanEnergy
  apply integral_nonneg_of_ae
  have hmem : ∀ᵐ r : ℝ ∂(volume.restrict (Ioi (0 : ℝ))),
      r ∈ Ioi (0 : ℝ) :=
    self_mem_ae_restrict measurableSet_Ioi
  filter_upwards [hmem] with r hr
  have hkernel : 0 ≤ parityKernel 0 r :=
    parityKernel_zero_nonneg hr
  have hshift :
      0 ≤ ∫ t : ℝ, (f (t + r) - f t) ^ 2 :=
    integral_nonneg fun t => sq_nonneg (f (t + r) - f t)
  exact mul_nonneg hkernel hshift

/-- Full-domain, literal, pole-retaining lower bound. The prime budget
is from the existing signed source theorem, not a stochastic surrogate. -/
theorem full_domain_pole_retained_lower
    (T β : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2)) :
    (gammaConstant 1 0 - β - primeMass T) * physicalMass f -
      2 * (oddPoleMoment f) ^ 2 ≤
      shiftedOddWeilEnergy T β f := by
  have hprime := abs_primeEnergy_le T f hf
  have hp :
      primeEnergy T f ≤ primeMass T * physicalMass f :=
    (le_abs_self _).trans hprime
  have hg : 0 ≤ oddArchimedeanEnergy f :=
    oddArchimedeanEnergy_nonneg f
  have hmass :
      (∫ t : ℝ, ‖f t‖ ^ 2) = physicalMass f := by
    simp only [physicalMass, Real.norm_eq_abs, sq_abs]
  unfold shiftedOddWeilEnergy shiftedOddCoreEnergy oddPoleMoment
  rw [hmass]
  dsimp [physicalMass] at hp ⊢
  nlinarith

/-- The complete explicit pole-price formula for support [-T,T].
The independent Cauchy--Schwarz theorem is required as a premise in
Lean; its mathematical proof and exact integral evaluation are stated
in the source header. -/
def HasSharpOddPoleBudget (T : ℝ) (f : ℝ → ℝ) : Prop :=
  (oddPoleMoment f) ^ 2 ≤
    (Real.sinh T - T) * physicalMass f

/-- A scalar, whole-domain form lower bound conditional only on the
standard *explicit* support/Cauchy pole budget, not on RH. -/
theorem full_domain_scalar_floor
    (T β : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2))
    (hpole : HasSharpOddPoleBudget T f) :
    (gammaConstant 1 0 - β - primeMass T -
        2 * (Real.sinh T - T)) * physicalMass f ≤
      shiftedOddWeilEnergy T β f := by
  have hbase := full_domain_pole_retained_lower T β f hf
  unfold HasSharpOddPoleBudget at hpole
  nlinarith

/-- A larger supporting window does NOT add any genuine prime-power
correlation: the literal source is unchanged on a fixed compact input.
The negative pole remains untouched. -/
theorem cofinal_pole_retained_floor
    (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2))
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (j : ℕ) (hj : T ≤ (j : ℝ) + 1) :
    (gammaConstant 1 0 - primeMass T + (1 / 2 : ℝ) ^ j) *
       physicalMass f - 2 * (oddPoleMoment f) ^ 2 ≤
       shiftedOddWeilEnergy ((j : ℝ) + 1) (-((1 / 2 : ℝ) ^ j)) f := by
  have hbase := full_domain_pole_retained_lower T 0 f hf
  have hsource := shiftedOddWeilEnergy_eq_of_le (f := f)
    (T := T) (U := ((j : ℝ) + 1)) 0 hs hj
  have hshift := shiftedOddWeilEnergy_eq_unshifted_sub_mass
    ((j : ℝ) + 1) (-((1 / 2 : ℝ) ^ j)) f
  have hmass :
      (∫ t : ℝ, ‖f t‖ ^ 2) = physicalMass f := by
    simp only [physicalMass, Real.norm_eq_abs, sq_abs]
  rw [hshift, ← hsource, hmass]
  nlinarith

/-- A cofinal scalar floor with a FIXED support-dependent budget.
It is NOT the required StageLower j, whose test support grows with j. -/
theorem cofinal_scalar_floor
    (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2))
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hpole : HasSharpOddPoleBudget T f)
    (j : ℕ) (hj : T ≤ (j : ℝ) + 1) :
    (gammaConstant 1 0 - primeMass T -
      2 * (Real.sinh T - T) + (1 / 2 : ℝ) ^ j) *
       physicalMass f ≤
       shiftedOddWeilEnergy ((j : ℝ) + 1) (-((1 / 2 : ℝ) ^ j)) f := by
  have hbase := cofinal_pole_retained_floor T f hf hs j hj
  unfold HasSharpOddPoleBudget at hpole
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinalMassFloor
