/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceZeroBarrier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusReciprocalZetaPerronBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Original physical weighted energy -> ACTUAL reciprocal-zeta control

This is the converse SOURCE bridge to the existing
ReciprocalZetaPerronBridge:
actual weighted square integrability of the UNCHANGED
P(T)=wholePickup(T) implies exact holomorphy and
quantitative polynomial reciprocal control on a
genuinely zero-free right half-plane.

Let W_sigma=int_0^infinity exp(-sigma*T)*P(T)^2dT.
For sigma>0, if W_sigma is finite, weighted Cauchy-Schwarz
and the exact ORIGINAL Laplace-Dirichlet identity give
  R(s) = s*(s-1/2)*L_P(s-1/2)
for all Re(s)>(1+sigma)/2, including s=1 where
R(s)=(s-1)/Z1(s) vanishes. Here L_P is the SAME
wholePickup Laplace transform from OriginalLaplaceZeroBarrier,
and Z1 is the true pinned entire pole-removed zeta.

On the same half-plane:
  |R(s)| <= |s|*|s-1/2| *
        sqrt(W_sigma)/sqrt(2 Re(s)-1-sigma),
and zeta(s)!=0 for s!=1. This bound is polynomial,
NOT subpower at all tiny positive exponents. It cannot
silently supply old RegularizedReciprocalSubpower.

If the original PickupWeightedEnergyAll were independently
proved, the half-plane Re(s)>1/2 would be zero-free.
That source premise is RH-strength and remains OPEN.

The three separate analytic imports from the preceding
module and the standard weighted Cauchy norm calculation
are EXPLICIT unproved PINNED Lean Props. All proof bodies
below are source candidates; no global RH is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalLaplaceReciprocalControl

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- The true ORIGINAL positive weighted physical square mass.
It is a real integral, not a heuristic or statistical variance. -/
def actualWeightedPickupSquare (sigma : ℝ) : ℝ :=
  ∫ T in Ici (0 : ℝ),
    Real.exp (-sigma*T)*wholePickup T^2

/-- Pure Cauchy-Schwarz with one actual original L2 input.
The RHS is EXACTLY the normed Laplace-domain bound:
  ||LP(w)|| <= sqrt(W_sigma)/sqrt(2 Re(w)-sigma).
This is a separate RH-INDEPENDENT unported Mathlib
integration theorem, not an arithmetic cancellation gate. -/
def WeightedOriginalLaplaceCauchyTarget : Prop :=
  ∀ sigma : ℝ, 0 < sigma →
    IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2)
      (Ici 0) →
    ∀ w : ℂ, sigma/2 < w.re →
      ‖originalWholePickupLaplace w‖ ≤
        Real.sqrt (actualWeightedPickupSquare sigma) /
          Real.sqrt (2*w.re-sigma)

/-- A genuine weighted-energy certificate protects the TRUE
pole-removed zeta denominator Z1 throughout the open right
half-plane Re(s)>(1+sigma)/2. The original PRODUCT identity
is evaluated before any division; no theorem about unknown
zeros is postulated as an input. -/
theorem weighted_original_energy_Z1_ne_zero
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (sigma : ℝ) (hsigma : 0 < sigma)
    (hEnergy : IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2) (Ici 0))
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
  let w : ℂ := s-(1/2 : ℂ)
  have hw : sigma/2 < w.re := by
    dsimp [w]
    simp only [Complex.sub_re, Complex.ofReal_re]
    linarith
  have hid := hIdentity hRight hHolo sigma hsigma hEnergy w hw
  have hplus : w+(1/2 : ℂ)=s := by
    dsimp [w]
    ring
  have hminus : w-(1/2 : ℂ)=s-1 := by
    dsimp [w]
    ring
  have hmain :
      (s-(1/2 : ℂ))*s *
        ZetaAsymptotics.riemannZeta₁ s *
          originalWholePickupLaplace (s-(1/2 : ℂ)) =
            s-1 := by
    simpa only [hplus,hminus] using hid
  by_cases hsOne : s=1
  · subst s
    simp
  · intro hz
    have hzero : s-1=0 := by
      calc
        s-1 = (s-(1/2 : ℂ))*s *
             ZetaAsymptotics.riemannZeta₁ s *
             originalWholePickupLaplace (s-(1/2 : ℂ)) := hmain.symm
        _ = 0 := by simp [hz]
    exact hsOne (sub_eq_zero.mp hzero)

/-- A quantitative EXACT source identity, now at ANY point
in the weighted-energy half-plane. This is not a contour
deformation and it includes s=1 with R(1)=0. -/
theorem weighted_original_energy_reciprocal_identity
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (sigma : ℝ) (hsigma : 0 < sigma)
    (hEnergy : IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2) (Ici 0))
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    regularizedReciprocalZeta s =
      (s-(1/2 : ℂ))*s*
        originalWholePickupLaplace (s-(1/2 : ℂ)) := by
  let w : ℂ := s-(1/2 : ℂ)
  have hw : sigma/2 < w.re := by
    dsimp [w]
    simp only [Complex.sub_re, Complex.ofReal_re]
    linarith
  have hp := hIdentity hRight hHolo sigma hsigma hEnergy w hw
  have hplus : w+(1/2 : ℂ)=s := by
    dsimp [w]
    ring
  have hminus : w-(1/2 : ℂ)=s-1 := by
    dsimp [w]
    ring
  have hmain :
      (s-(1/2 : ℂ))*s*
        ZetaAsymptotics.riemannZeta₁ s*
          originalWholePickupLaplace (s-(1/2 : ℂ)) = s-1 := by
    simpa only [hplus,hminus] using hp
  have hnz := weighted_original_energy_Z1_ne_zero
    hRight hHolo hIdentity sigma hsigma hEnergy s hs
  unfold regularizedReciprocalZeta
  apply (div_eq_iff hnz).2
  calc
    s-1 = (s-(1/2 : ℂ))*s*
        ZetaAsymptotics.riemannZeta₁ s*
          originalWholePickupLaplace (s-(1/2 : ℂ)) := hmain.symm
    _ = ((s-(1/2 : ℂ))*s*
          originalWholePickupLaplace (s-(1/2 : ℂ)))*
            ZetaAsymptotics.riemannZeta₁ s := by ring

/-- This is a completely concrete actual zeta half-plane
consequence. It assumes ONLY ORIGINAL weighted L2 energy
and independent elementary analytic Laplace suppliers;
no RH-equivalent zero-free region appears in the hypotheses. -/
theorem weighted_original_energy_excludes_zeta_zero
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (sigma : ℝ) (hsigma : 0 < sigma)
    (hEnergy : IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2) (Ici 0))
    (s : ℂ) (hs : (1+sigma)/2 < s.re) (hsOne : s ≠ 1) :
    _root_.riemannZeta s ≠ 0 := by
  have hZ := weighted_original_energy_Z1_ne_zero
    hRight hHolo hIdentity sigma hsigma hEnergy s hs
  intro hz
  exact hZ (actual_zeta_zero_implies_Z1_zero s hsOne hz)

/-- A genuinely measured square energy yields a polynomial
ACTUAL reciprocal bound in a TRUE zero-free half-plane.
The bound keeps the absolute imaginary heights in |s|²:
it is NOT the earlier subpower Perron growth supplier. -/
theorem weighted_original_energy_reciprocal_norm
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCauchy : WeightedOriginalLaplaceCauchyTarget)
    (sigma : ℝ) (hsigma : 0 < sigma)
    (hEnergy : IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2) (Ici 0))
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt (actualWeightedPickupSquare sigma)/
         Real.sqrt (2*s.re-1-sigma)) := by
  have heq := weighted_original_energy_reciprocal_identity
    hRight hHolo hIdentity sigma hsigma hEnergy s hs
  let w : ℂ := s-(1/2 : ℂ)
  have hw : sigma/2 < w.re := by
    dsimp [w]
    simp only [Complex.sub_re, Complex.ofReal_re]
    linarith
  have hb := hCauchy sigma hsigma hEnergy w hw
  have hcoeff : 0 ≤ ‖s-(1/2 : ℂ)‖*‖s‖ := by positivity
  rw [heq]
  rw [norm_mul, norm_mul]
  calc
    ‖s-(1/2 : ℂ)‖*‖s‖*
      ‖originalWholePickupLaplace (s-(1/2 : ℂ))‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt (actualWeightedPickupSquare sigma)/
          Real.sqrt (2*w.re-sigma)) :=
          mul_le_mul_of_nonneg_left hb hcoeff
    _ = _ := by
      dsimp [w]
      simp only [Complex.sub_re, Complex.ofReal_re]
      ring

/-- A strong source-level consequence: IF the ORIGINAL
PickupWeightedEnergyAll were independently proved, its
actual physical energy would forbid every zeta zero to the
right of the critical line. This does NOT prove the input. -/
theorem all_weighted_original_energy_implies_zeta_right_half
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hAll : PickupWeightedEnergyAll) :
    ZetaZeroFreeRightOf (1/2 : ℝ) := by
  intro s hs hsOne
  let sigma : ℝ := s.re-1/2
  have hsig : 0 < sigma := by dsimp [sigma]; linarith
  have hhalf : (1+sigma)/2 < s.re := by
    dsimp [sigma]
    linarith
  exact weighted_original_energy_excludes_zeta_zero
    hRight hHolo hIdentity sigma hsig
    (hAll sigma hsig) s hhalf hsOne

end GRWTSK.NumberTheory.Moebius.OriginalLaplaceReciprocalControl
