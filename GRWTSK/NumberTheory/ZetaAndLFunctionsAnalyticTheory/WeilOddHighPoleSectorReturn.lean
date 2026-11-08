/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinalMassFloor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleMoment
import Mathlib.Tactic

/-!
# High-frequency positivity of the literal odd Weil form, with its negative pole

## Source-level problem

The original OddLiteralWindow.shiftedOddWeilEnergy is exactly
  Q_T,beta(g) = shiftedOddCoreEnergy T beta g
                - 2 * (integral_R g(t) sinh(t/2) dt)^2.

The existing OddLiteralWindow.HighFloor.of_exactHighCutoff supplies a
quantitative gamma-minus-primes lower estimate for the true CORE on
supported odd functions with all first N source sine coefficients zero.
That high-core theorem is not by itself the sign of the full source:
the original negative rank-one pole must still be paid.

This increment uses that ACTUAL source theorem, rather than inventing
a positive reference operator. Two genuine consumers are exposed:

1. Unconditional full-form high-sector coercivity on the exact
   pole-ANNIHILATING high-sine complement. Here gamma=1, and
   N >= OddHighComplement.highCutoff T beta 4 1 is sufficient.
2. A fully paid high-sector lower sign given a quantitative bound on
   the original pole moment. The first version consumes the standard
   sharp support Cauchy budget; the second consumes the stronger,
   N-dependent Fourier tail budget.

All identities use original Lebesgue L2(dt), zero extension, the
original von Mangoldt activePrimePowers(T), gamma kernel, and the
ACTUAL negative sinh pole. No zeta/Dirichlet target is replaced.

## Mathematical argument for the pole budget (written analytic proof)

For T>0 set s_T(t) = 1_{[-T,T]}(t)*sinh(t/2) and
  phi_n(t) = 1_{[-T,T]}(t)*sin(n*pi*t/T)/sqrt(T),  n>=1.

The phi_n form a complete orthonormal system in the REAL ODD subspace
of L2([-T,T],dt). They are the literal OddRootProjection.zeroExtendedSine.
The actual OddSineParseval source proves the corresponding norm
identity (formal evidence of that existing file remains separate).

The squared norm of the pole vector is EXACT:
   ||s_T||_2^2 = integral_{-T}^T sinh(t/2)^2 dt = sinh T-T.

It follows by Cauchy--Schwarz that for any supported real L2 input,
   |integral_R g(t) sinh(t/2) dt|^2
       <= (sinh T-T)*integral_R g(t)^2 dt.
No oddness is needed for this first bound, though the Weil
consumer tests are odd. This bound is sharp over the odd L2 class:
g=s_T attains equality. The Lean proposition HasSharpOddPoleBudget
in the preceding source currently requires this analytic estimate
as a separate argument. This module does NOT claim Lean elaboration
of the integral Cauchy proof.

There is a sharper HIGH-COMPLEMENT bound. Let
   a_n(T) = integral_R phi_n(t)*sinh(t/2) dt.
Elementary integration of sinh(t/2)*sin(n*pi*t/T), or the source
OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient, gives
   a_n(T) = -2*(-1)^n*(n*pi/T)*sinh(T/2)
            / (sqrt(T)*(1/4+(n*pi/T)^2)).
Hence for every n>=1,
   a_n(T)^2 <= 4*T*sinh(T/2)^2/(pi^2*n^2).

For a real odd g supported in [-T,T], if its first N (N>=1)
literal sine coefficients vanish, Parseval and the
orthogonal projection of s_T yield
   |integral_R g(t)*sinh(t/2) dt|^2
     <= ||g||_2^2 * sum_{n>N} a_n(T)^2
     <= ||g||_2^2 * 4*T*sinh(T/2)^2/(pi^2*N).
The last inequality uses sum_{n>N} 1/n^2 <= 1/N,
by monotone integral comparison. This is a COMPLETE ordinary
Fourier analysis proof, not a result of a Markov kernel or
Frobenius arithmetic positivity. Its dependent Lean realization
from OddSineParseval and OddPoleMoment is still an OPEN lemma;
we retain it explicitly as HasHighPoleTailBudget below.

## Application and exact boundary

At the original source high cutoff, gamma=1 makes
     core(g) >= ||g||_2^2.
If additionally 2*poleTailPrice(T,N)<=1, then
     Q_T,beta(g) >= (1-2*poleTailPrice(T,N))*||g||_2^2 >=0.
Since poleTailPrice(T,N)->0 as N->infinity for each fixed T>0,
an N above both the original highCutoff and
ceil(8*T*sinh(T/2)^2/pi^2) is mathematically sufficient on
the literal high complement. This supplies a concrete POSITIVE
infinite-dimensional HIGH sector at each fixed window.

The formal theorem below correctly exposes the high-tail estimate
as a premise instead of asserting it was Lean-checked. It gives
the original whole-window Q, including every pole, prime and
gamma term, as its conclusion. The pole-null theorem needs no
new analytic premise beyond the existing source high-floor theorem.

Crucial obstruction: NONE of these results controls the retained
LOW N-mode matrix, the mixed low/high Schur residual, and the
source-to-completed-zero criterion. The high cutoff can grow very
rapidly with T; this is not a cofinal nonnegative StageLower(j).
A positive spin/Markov diffuser does not manufacture the missing
low-mode arithmetic sign. Zeta RH and the independent primitive
nonprincipal Dirichlet sectors remain open.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20). Local source identities:
WeilOddLiteralCofinalMassFloor, WeilOddLiteralWindow,
WeilOddExactPeriodization, WeilOddPoleMoment, WeilOddSineParseval.
Standard Fourier/Parseval and Hilbert Cauchy arguments; novelty
unassessed. AI-assisted drafting. Lean compilation and independent
mathematical review have NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddHighPoleSectorReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
open GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapEnergy
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinalMassFloor

/-! ## Unconditional exact-source high-sine sign on the pole-null sector -/

/-- Once the actual high-core cutoff is reached, a high-sine input
annihilating the source pole enjoys a UNIFORM unit-mass lower floor
in the entire original shifted odd Weil form. This makes no assertion
about the low source modes. -/
theorem high_pole_null_coercive (T β : ℝ) (hT : 0 < T) {N : ℕ}
    (hcut : highCutoff T β 4 1 ≤ N)
    {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (hpole : oddPoleMoment g = 0) :
    (∫ t : ℝ, ‖g t‖ ^ 2) ≤ shiftedOddWeilEnergy T β g := by
  have hfloor : HighFloor T β 1 N :=
    HighFloor.of_exactHighCutoff T hT β 1 hcut
  have hcore := hfloor hg hgm hgo hgs hhead henergy
  have heq : shiftedOddWeilEnergy T β g = shiftedOddCoreEnergy T β g := by
    change shiftedOddCoreEnergy T β g - 2 * (oddPoleMoment g)^2 =
      shiftedOddCoreEnergy T β g
    rw [hpole]
    ring
  rw [heq]
  exact hcore

/-! ## The actual high-pole tail, with its Lean analysis bridge exposed -/

/-- Analytically proved explicit upper bound for the squared norm of
the literal sinh-pole vector after removing N source sine modes.
This constant does NOT include the prime mass or gamma contribution. -/
def poleTailPrice (T : ℝ) (N : ℕ) : ℝ :=
  (4 * T * (Real.sinh (T/2))^2) /
    (Real.pi^2 * (N : ℝ))

/-- The precise remaining Lean Fourier/Parseval obligation:
the source pole on the first-N-vanishing odd-sine subspace has
the explicit original L2(dt) operator norm bound.
The written proof above establishes the mathematical inequality;
this definition does not conjure an accepted Lean proof of it. -/
def HasHighPoleTailBudget (T : ℝ) (N : ℕ) (g : ℝ → ℝ) : Prop :=
  (oddPoleMoment g)^2 ≤ poleTailPrice T N * physicalMass g

/-- The original high-core lower bound and the exact pole-tail payment
give a full, pole-inclusive high-sector nonnegativity statement. -/
theorem high_sector_nonneg_of_paid_pole_tail
    (T β : ℝ) (hT : 0 < T) {N : ℕ}
    (hcut : highCutoff T β 4 1 ≤ N)
    (hsmall : 2 * poleTailPrice T N ≤ 1)
    {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (hsharp : HasHighPoleTailBudget T N g) :
    0 ≤ shiftedOddWeilEnergy T β g := by
  have hfloor : HighFloor T β 1 N :=
    HighFloor.of_exactHighCutoff T hT β 1 hcut
  have hcore := hfloor hg hgm hgo hgs hhead henergy
  have hmass : (∫ t : ℝ, ‖g t‖ ^ 2) = physicalMass g := by
    simp only [physicalMass, Real.norm_eq_abs, sq_abs]
  have hmass_nonneg : 0 ≤ ∫ t : ℝ, ‖g t‖ ^ 2 :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hpole :
      (oddPoleMoment g)^2 ≤
        poleTailPrice T N * (∫ t : ℝ, ‖g t‖ ^ 2) := by
    simpa only [HasHighPoleTailBudget, ← hmass] using hsharp
  have hscaled :
      (2 * poleTailPrice T N) * (∫ t : ℝ, ‖g t‖ ^ 2) ≤
        1 * (∫ t : ℝ, ‖g t‖ ^ 2) :=
    mul_le_mul_of_nonneg_right hsmall hmass_nonneg
  change 0 ≤ shiftedOddCoreEnergy T β g -
    2 * (oddPoleMoment g)^2
  nlinarith

/-! ## A simpler fully charged support Cauchy return and dyadic consumer -/

/-- The explicit sharp support price from the preceding source.
Choosing a core floor one unit above 2*(sinh T-T) leaves an actual
unit L2 margin in the signed original form. -/
def sharpPoleCoreFloor (T : ℝ) : ℝ :=
  2 * (Real.sinh T-T) + 1

/-- On the same ORIGINAL odd physical carrier, the sharp support
Cauchy estimate buys a pole-retaining, unit-mass high-sector floor.
The hsharp premise is exactly the still-unformalized standard
support Cauchy inequality, NOT RH or any source positivity axiom. -/
theorem high_sector_coercive_of_support_cauchy
    (T β : ℝ) (hT : 0 < T) {N : ℕ}
    (hcut : highCutoff T β 4 (sharpPoleCoreFloor T) ≤ N)
    {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (hsharp : HasSharpOddPoleBudget T g) :
    (∫ t : ℝ, ‖g t‖ ^ 2) ≤ shiftedOddWeilEnergy T β g := by
  have hfloor : HighFloor T β (sharpPoleCoreFloor T) N :=
    HighFloor.of_exactHighCutoff T hT β (sharpPoleCoreFloor T) hcut
  have hcore := hfloor hg hgm hgo hgs hhead henergy
  have hmass : (∫ t : ℝ, ‖g t‖ ^ 2) = physicalMass g := by
    simp only [physicalMass, Real.norm_eq_abs, sq_abs]
  have hpole :
      (oddPoleMoment g)^2 ≤
        (Real.sinh T-T) * (∫ t : ℝ, ‖g t‖ ^ 2) := by
    simpa only [HasSharpOddPoleBudget, ← hmass] using hsharp
  change (∫ t : ℝ, ‖g t‖ ^ 2) ≤
    shiftedOddCoreEnergy T β g -
      2 * (oddPoleMoment g)^2
  unfold sharpPoleCoreFloor at hcore
  nlinarith

/-- Exact source cutoff for one dyadic stage; it depends on the entire
original full-prime-mass budget, never on a replacement finite graph. -/
def dyadicPoleNullCutoff (j : ℕ) : ℕ :=
  highCutoff ((j : ℝ)+1) (-((1/2 : ℝ)^j)) 4 1

/-- For EVERY dyadic stage, original odd tests supported at that stage
and annihilating the exact pole functional are nonnegative in the
high-sine complement starting at an explicit source-derived cutoff.
This is NOT OddLiteralCofinal.StageLower j for all supported tests. -/
theorem dyadic_high_pole_null_coercive
    (j : ℕ) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ,
      t ∉ Icc (-((j : ℝ)+1)) ((j : ℝ)+1) → g t = 0)
    (hhead : ∀ n < dyadicPoleNullCutoff j,
      sineCoefficient ((j : ℝ)+1) g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (hpole : oddPoleMoment g = 0) :
    (∫ t : ℝ, ‖g t‖ ^ 2) ≤
      shiftedOddWeilEnergy ((j : ℝ)+1)
        (-((1/2 : ℝ)^j)) g := by
  have hT : 0 < (j : ℝ)+1 := by positivity
  exact high_pole_null_coercive
    ((j : ℝ)+1) (-((1/2 : ℝ)^j)) hT
    (show highCutoff ((j : ℝ)+1) (-((1/2 : ℝ)^j)) 4 1 ≤
      dyadicPoleNullCutoff j by
      exact le_refl _)
    hg hgm hgo hgs hhead henergy hpole

end GRWTSK.NumberTheory.WeilQuadraticForm.OddHighPoleSectorReturn
