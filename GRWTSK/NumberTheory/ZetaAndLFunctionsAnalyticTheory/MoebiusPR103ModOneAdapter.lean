/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongFixedPowerCalculusClosure
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Exact modulus-one adapter for the external PR103 Dirichlet theorem

The external theorem `Candidate.bound` is a family statement for every
positive modulus and every complex Dirichlet character.  The local PR103
causal sources previously exposed only its Riemann-zeta specialization as the
proposition `ExternalPR103ZetaNonvanishing`.

Pinned Mathlib already proves that the L-function of every Dirichlet character
modulo one is exactly the Riemann zeta function.  This module records the
external family theorem with the same quantifiers and pole exclusion as
`Candidate.bound`, proves the lossless modulus-one specialization, and routes
the existing PR103 energy, endpoint, complete strong-packet, weighted-energy,
and exact-abscissa consumers through that adapter.

The external theorem itself is not imported or replayed here.  The standard
zero-free-to-Mertens contour bridge also remains a visible input.  This source
adds no axiom and proves neither the all-positive-rate endpoint estimate nor
RH.
-/

namespace GRWTSK.NumberTheory.Moebius.PR103ModOneAdapter

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerCalculusClosure

/-- A zero-free half-plane statement for the complete family of complex
Dirichlet L-functions, retaining the principal-character pole exclusion in
exactly the form used by the external PR103 theorem. -/
def DirichletFamilyZeroFreeRightOf (theta : ℝ) : Prop :=
  ∀ {q : ℕ} [NeZero q]
      (chi : DirichletCharacter ℂ q) {s : ℂ},
    theta < s.re →
    ¬ (chi = 1 ∧ s = 1) →
    DirichletCharacter.LFunction chi s ≠ 0

/-- For the principal character modulo one, the external pole condition is
exactly the usual exclusion `s ≠ 1`. -/
theorem principal_modOne_pole_condition (s : ℂ) :
    (¬ ((1 : DirichletCharacter ℂ 1) = 1 ∧ s = 1)) ↔ s ≠ 1 := by
  simp

/-- Pinned Mathlib's exact modulus-one identity, specialized pointwise. -/
theorem principal_modOne_LFunction_eq_riemannZeta (s : ℂ) :
    DirichletCharacter.LFunction
        (1 : DirichletCharacter ℂ 1) s =
      _root_.riemannZeta s := by
  simpa using congrFun
    (DirichletCharacter.LFunction_modOne_eq
      (chi := (1 : DirichletCharacter ℂ 1))) s

/-- A family zero-free theorem specializes to the Riemann zeta function with
no change of boundary and no additional exceptional point. -/
theorem zetaZeroFreeRightOf_of_dirichletFamily
    {theta : ℝ} (hfamily : DirichletFamilyZeroFreeRightOf theta) :
    ZetaZeroFreeRightOf theta := by
  intro s hs hsone
  have hL :
      DirichletCharacter.LFunction
          (1 : DirichletCharacter ℂ 1) s ≠ 0 := by
    exact hfamily (q := 1)
      (1 : DirichletCharacter ℂ 1) (s := s) hs
      ((principal_modOne_pole_condition s).2 hsone)
  simpa only [principal_modOne_LFunction_eq_riemannZeta] using hL

/-- Exact local interface matching the quantifiers and threshold of the
external merged PR103 `Candidate.bound`.  Supplying this proposition means
replaying or importing that external theorem; it is not proved in this file. -/
def ExternalPR103DirichletNonvanishing : Prop :=
  DirichletFamilyZeroFreeRightOf externalPR103Theta

/-- Lossless local adapter from the exact external family theorem to the
previously exposed zeta-only PR103 input. -/
theorem externalPR103ZetaNonvanishing_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing) :
    ExternalPR103ZetaNonvanishing := by
  apply zetaZeroFreeRightOf_of_dirichletFamily
  simpa only [ExternalPR103DirichletNonvanishing] using hdir

/-- Conditional clean PR103 energy rate, now consuming the exact external
family statement rather than a separately supplied zeta specialization. -/
theorem pr103_pickupEnergy_clean_rate_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper pickupEnergy cleanPR103EnergyRate :=
  pr103_pickupEnergy_clean_rate_of_external
    (externalPR103ZetaNonvanishing_of_dirichlet hdir) hbridge

/-- Conditional clean rate for the literal endpoint quadrature. -/
theorem pr103_endpointSum_clean_rate_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper endpointSum cleanPR103EnergyRate :=
  pr103_endpointSum_clean_rate_of_external
    (externalPR103ZetaNonvanishing_of_dirichlet hdir) hbridge

/-- Conditional clean rate for the complete original signed strong packet. -/
theorem pr103_strongPacket_clean_rate_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper
      (fun T =>
        |originalEnergyStrongCross
          (rateGapHeight cleanPR103EnergyRate T) T|)
      cleanPR103EnergyRate :=
  pr103_strongPacket_clean_rate_of_external
    (externalPR103ZetaNonvanishing_of_dirichlet hdir) hbridge

/-- Every damping strictly above the exact PR103 causal-energy boundary is
integrable after the exact family theorem and contour bridge are supplied. -/
theorem pr103_weighted_energy_integrable_above_exact_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge)
    {sigma : ℝ} (hsigma : exactPR103EnergyBoundary < sigma) :
    IntegrableOn
      (fun u => Real.exp (-sigma * u) * wholePickup u ^ 2)
      (Ici 0) :=
  pr103_weighted_energy_integrable_above_exact
    pickupVelocityPowerEnergyTransfer_proved
    (externalPR103ZetaNonvanishing_of_dirichlet hdir)
    hbridge hsigma

/-- The complete strict-above-boundary half-line lies in the actual causal
square-energy convergence set. -/
theorem pr103_exact_Ioi_subset_pickupEnergyConvergenceSet_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    Ioi exactPR103EnergyBoundary ⊆ pickupEnergyConvergenceSet :=
  pr103_exact_Ioi_subset_pickupEnergyConvergenceSet
    pickupVelocityPowerEnergyTransfer_proved
    (externalPR103ZetaNonvanishing_of_dirichlet hdir)
    hbridge

/-- Exact causal-energy abscissa upper bound with the external family theorem
as the only zero-free input. -/
theorem pickupEnergyAbscissa_le_exactPR103_of_dirichlet
    (hdir : ExternalPR103DirichletNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    pickupEnergyAbscissa ≤ exactPR103EnergyBoundary :=
  pickupEnergyAbscissa_le_exactPR103_of_external
    (externalPR103ZetaNonvanishing_of_dirichlet hdir) hbridge

end GRWTSK.NumberTheory.Moebius.PR103ModOneAdapter
