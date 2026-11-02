/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusReciprocalZetaPerronBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EnergyAbscissa
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set Filter

/-!
# An actual noncircular zeta-zero LOWER bound on ORIGINAL Möbius energy

This is the REVERSE direction of the existing sufficient
zero-free-to-Mertens/Perron rate transfer, not a proof of RH.

The exact unchanged source uses
 P(T)=wholePickup(T)=integral_0^T exp(-u/2)*M(exp u) du
 E(T)=pickupEnergy(T)=integral_0^T P(u)^2 du.
For Re(w)>1/2 the actual Mobius Dirichlet series on Re(s)>1
and absolute double integration give EXACTLY
 L_P(w)=integral_(0,infinity) exp(-w*T)*P(T) dT
       =1/[w*(w+1/2)*zeta(w+1/2)].
With genuine pinned entire Z1(s)=(s-1)*zeta(s),
 w*(w+1/2)*Z1(w+1/2)*L_P(w)=w-1/2.       (L)

If the ORIGINAL weighted physical energy is integrable with
some positive damping sigma, weighted Cauchy-Schwarz makes
the SAME integral L_P(w) holomorphic on Re(w)>sigma/2.
The holomorphic identity theorem continues the PRODUCT
identity (L) to this entire half-plane, without dividing
by Z1 at unknown zeros.

At any hypothetical genuine zeta zero rho with
1/2<Re(rho)<1 and sigma<2*Re(rho)-1,
w=rho-1/2 lies within the holomorphy domain and
Z1(rho)=0, yet rho-1!=0. Equation (L) is impossible.
Therefore the exact existing
  pickupEnergyAbscissa >= 2*Re(rho)-1.
This LOWER obstruction is unconditional ordinary math
and contains NO assumed RH zero-free region or signed
Mertens power saving.

The required analytic steps are THREE explicit
RH-INDEPENDENT unported Lean Prop targets:
 original positive-right-line Laplace/Dirichlet identity;
 holomorphy from actual tilted L2 via Cauchy-Schwarz;
 standard complex identity-theorem continuation.
They are not axioms. Finite algebra and the source-level
obstruction proofs are written below but remain uncompiled.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier

open GRWTSK.RiemannHypothesis.CCC

/-- ORIGINAL actual Laplace transform of the true integrated
Mertens pickup; no model kernel or altered arithmetic. -/
def originalWholePickupLaplace (w : ℂ) : ℂ :=
  ∫ T in Ici (0 : ℝ),
    Complex.exp (-w * (T : ℂ)) * (wholePickup T : ℂ)

/-- Unconditional ordinary mathematics: on Re(w)>1/2 the
original Mobius Dirichlet series is absolutely convergent
and two true interval interchanges give this exact identity.
This is an UNPORTED PINNED LEAN calculus/Dirichlet target,
not a zero-free or RH hypothesis. -/
def OriginalLaplaceRightLineIdentityTarget : Prop :=
  ∀ w : ℂ, (1 / 2 : ℝ) < w.re →
    w * (w + (1 / 2 : ℂ)) *
      ZetaAsymptotics.riemannZeta₁ (w + (1 / 2 : ℂ)) *
        originalWholePickupLaplace w = w - (1 / 2 : ℂ)

/-- Genuine weighted square-integrability of wholePickup
implies the Laplace integral holomorphic on Re(w)>sigma/2.
For any compact strip inside it, choose
 sigma/2<a<Re(w); e^(-a*T)*wholePickup is L2 by
 the original weighted hypothesis and the leftover
 exponential is L2. This is a STANDARD analytic port,
 and assumes no zeta nonvanishing. -/
def WeightedWholePickupLaplaceHolomorphyTarget : Prop :=
  ∀ sigma : ℝ, 0 < sigma →
    IntegrableOn (fun T : ℝ =>
      Real.exp (-sigma * T) * wholePickup T ^ 2) (Ici 0) →
    ∀ w : ℂ, sigma / 2 < w.re →
      DifferentiableAt ℂ originalWholePickupLaplace w

/-- The standard holomorphic identity theorem transports
the ORIGINAL product identity from Re(w)>1/2 onto the
connected larger half-plane Re(w)>sigma/2.
It only requires the two independently elementary
analytic facts above, and Z1 ENTIRE from pinned Mathlib.
It does NOT require zero-freeness and has NO RH-sized
growth or Möbius signed-cancellation assumption. -/
def LaplaceProductIdentityTheoremTarget : Prop :=
  OriginalLaplaceRightLineIdentityTarget →
  WeightedWholePickupLaplaceHolomorphyTarget →
  ∀ sigma : ℝ, 0 < sigma →
    IntegrableOn (fun T : ℝ =>
      Real.exp (-sigma * T) * wholePickup T ^ 2) (Ici 0) →
    ∀ w : ℂ, sigma / 2 < w.re →
      w * (w + (1 / 2 : ℂ)) *
        ZetaAsymptotics.riemannZeta₁ (w + (1 / 2 : ℂ)) *
          originalWholePickupLaplace w =
            w - (1 / 2 : ℂ)

/-- An ACTUAL nontrivial zeta zero away from the pole gives
a zero of the original entire pole-removed Z1. This uses
the pinned exact factorization, not any RH conjecture. -/
theorem actual_zeta_zero_implies_Z1_zero
    (rho : ℂ) (hrho : rho ≠ 1)
    (hzeta : _root_.riemannZeta rho = 0) :
    ZetaAsymptotics.riemannZeta₁ rho = 0 := by
  have hfact := ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hrho
  rw [hzeta] at hfact
  have hmul :
      (rho - 1)⁻¹ * ZetaAsymptotics.riemannZeta₁ rho = 0 :=
    hfact.symm
  have hcoeff : (rho - 1)⁻¹ ≠ 0 :=
    inv_ne_zero (sub_ne_zero.mpr hrho)
  exact (mul_eq_zero.mp hmul).resolve_left hcoeff

/-- At a genuine non-pole zeta zero the continued PRODUCT
identity is ALGEBRAICALLY impossible: its LHS is zero and
its RHS is rho-1!=0. No reciprocal evaluation at a zero
or totalized division is used. -/
theorem zero_rejects_laplace_product
    (rho L : ℂ) (hrho : rho ≠ 1)
    (hZ : ZetaAsymptotics.riemannZeta₁ rho = 0) :
    ¬ ((rho - (1 / 2 : ℂ)) * rho *
      ZetaAsymptotics.riemannZeta₁ rho * L =
        rho - 1) := by
  intro h
  have hsub : rho - 1 = 0 := by
    simpa [hZ] using h.symm
  exact hrho (sub_eq_zero.mp hsub)

/-- This proof-body makes explicit EXACTLY where the
independent ordinary analytic suppliers are consumed.
One damped actual physical L2 norm with rate below
2*Re(rho)-1 would contradict the zeta zero. -/
theorem offcritical_zero_excludes_weighted_energy
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (rho : ℂ)
    (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (sigma : ℝ) (hpos : 0 < sigma)
    (hbelow : sigma < 2 * rho.re - 1) :
    ¬ IntegrableOn
      (fun T : ℝ => Real.exp (-sigma * T) * wholePickup T ^ 2)
      (Ici 0) := by
  intro hEnergy
  have hrho : rho ≠ 1 := by
    intro h
    rw [h] at hone
    norm_num at hone
  have hZ := actual_zeta_zero_implies_Z1_zero rho hrho hzeta
  let w : ℂ := rho - (1 / 2 : ℂ)
  have hw : sigma / 2 < w.re := by
    dsimp [w]
    simp only [Complex.sub_re, Complex.ofReal_re]
    linarith
  have heq := hIdentity hRight hHolo sigma hpos hEnergy w hw
  have hwAdd : (rho - (1 / 2 : ℂ)) + (1 / 2 : ℂ) = rho := by
    ring
  have hwSub : (rho - (1 / 2 : ℂ)) - (1 / 2 : ℂ) = rho - 1 := by
    ring
  have hProduct :
      (rho - (1 / 2 : ℂ)) * rho *
        ZetaAsymptotics.riemannZeta₁ rho *
        originalWholePickupLaplace (rho - (1 / 2 : ℂ)) =
        rho - 1 := by
    dsimp [w] at heq
    simpa only [hwAdd, hwSub] using heq
  exact zero_rejects_laplace_product rho
    (originalWholePickupLaplace (rho - (1 / 2 : ℂ)))
    hrho hZ hProduct

/-- NEW DIRECTION compared with preceding PR103 work:
any hypothetical zero with Re(rho)>1/2 gives a LOWER bound
on the ACTUAL previously defined square-energy abscissa.
In particular the energy abscissa being zero would rule
out ALL off-critical zeros, but no such zero-abscissa
claim is proved or assumed here. -/
theorem original_energy_abscissa_ge_zero_offset
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (rho : ℂ)
    (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0) :
    2 * rho.re - 1 ≤ pickupEnergyAbscissa := by
  by_contra hbad
  have hmargin : pickupEnergyAbscissa < 2 * rho.re - 1 :=
    lt_of_not_ge hbad
  let sigma : ℝ := (pickupEnergyAbscissa + (2 * rho.re - 1)) / 2
  have hpos : 0 < sigma := by
    dsimp [sigma]
    linarith [pickupEnergyAbscissa_nonneg]
  have hab : pickupEnergyAbscissa < sigma := by
    dsimp [sigma]
    linarith
  have hbelow : sigma < 2 * rho.re - 1 := by
    dsimp [sigma]
    linarith
  have hEnergy := pickup_weighted_energy_integrable_above_abscissa hab
  exact (offcritical_zero_excludes_weighted_energy
    hRight hHolo hIdentity rho hhalf hone hzeta
    sigma hpos hbelow) hEnergy

/-- Stronger operational rate form: a hypothetical offcritical
zero forbids ANY cumulative ORIGINAL energy budget whose
growth exponent eta is below 2*Re(rho)-1.
The old integrableOn_sq_tilt_of_energy_exponential
is a PINNED already-written source lemma, not an axiom. -/
theorem offcritical_zero_forces_no_energy_rate
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (rho : ℂ)
    (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hbelow : eta < 2 * rho.re - 1) :
    ¬ ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤ C * Real.exp (eta * T) := by
  rintro ⟨C,hC,hBound⟩
  let sigma : ℝ := (eta + (2 * rho.re - 1)) / 2
  have hpos : 0 < sigma := by
    dsimp [sigma]
    linarith
  have hetaSigma : eta < sigma := by
    dsimp [sigma]
    linarith
  have hSigmaBelow : sigma < 2 * rho.re - 1 := by
    dsimp [sigma]
    linarith
  have hIntegral :
      IntegrableOn
        (fun T : ℝ =>
          Real.exp (-sigma * T) * wholePickup T ^ 2)
        (Ici 0) :=
    integrableOn_sq_tilt_of_energy_exponential
      wholePickup_continuous hpos hetaSigma hBound
  exact (offcritical_zero_excludes_weighted_energy
    hRight hHolo hIdentity rho hhalf hone hzeta
    sigma hpos hSigmaBelow) hIntegral

end GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
