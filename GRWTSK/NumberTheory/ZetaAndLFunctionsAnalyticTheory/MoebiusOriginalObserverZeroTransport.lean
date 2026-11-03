/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceReciprocalControl
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalFarZeroForcedSpikes
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUniversalWaveformReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Source-preserving Möbius observer transport of a hypothetical zero witness

This mathematical result connects the EXISTING exact
original signed cross to actual generic real-coefficient
waveforms and the published physical two-bit observer.
The exact ORIGINAL, ordered, off-diagonal source remains
  pickupCross(T_J), T_J=J log 2, J>=1.
There is NO new random or projected coefficient in the
underlying arithmetic claim.

If zeta had an actual zero rho with beta=Re(rho)>1/2,
the prior independent original Laplace source shows the
true nonnegative cumulative pickupEnergy cannot have any
rate eta<2beta-1. Since pickupEnergy=pickupDiagonal+
pickupCross and the diagonal is polynomial, the same
hypothetical zero forces arbitrarily large POSITIVE
pickupCross/e^(eta*T_J) along the true dyadic grid.

A representation with ANY observed signed cross X_J and
ACTUAL source-minus-observation defect D_J inherits
exactly this witness when
  pickupCross(T_J)=X_J + D_J
and |D_J|<=C*exp(eta*T_J).
No uniform error means NO such transfer. The case X=0
has D=pickupCross, which illustrates why source identity
alone is insufficient. Also X_T(-mu)=X_T(mu) because the
Gram is quadratic, so equality of a signed cross does not
prove coefficient-level recovery.

Two actual repository instantiations are supplied:
- UniversalWaveformReturn.arbitraryOrderedCross with
  its COMPLETE signed mixed/error/error defect.
- PhysicalBitGramReturn.observedPacket for either
  the IDEAL exact encodedStream (defect identically zero)
  or arbitrary indexed streams with a VISIBLE signed
  readout-defect budget. The ideal bit stream is a
  lossless REPRESENTATION, not physical measurement or RH.

A third source, GeneralizedFiberObserver, has a five-term
exact source decomposition but no universal smallness of
the matched, rough and two mixed packets; it cannot be
silently placed in the exact-encoding branch.
All source proof bodies are UNCOMPILED. The old three
independent ordinary complex Laplace gates and one
elementary dyadic-energy gate remain explicit. RH OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
open GRWTSK.NumberTheory.Moebius.UniversalWaveformReturn
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver

/-- At the single ORIGINAL fixed grid, an arbitrary real
observer can return only the same complete signed cross
plus a separate real error. No positivity hypothesis is
made about the observed source or its mixed error terms. -/
def OriginalSignedObserverLedger
    (observed defect : ℕ → ℝ) : Prop :=
  ∀ J : ℕ, 1 ≤ J →
    pickupCross (dyadicTime J) = observed J + defect J

/-- A rate-bounded full signed observation defect, not a
termwise assumption that would discard the two mixed
orientations or any original squareful zero values. -/
def OriginalSignedObserverErrorAt
    (defect : ℕ → ℝ) (eta : ℝ) : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧
    ∀ J : ℕ, 1 ≤ J →
      |defect J| ≤ D*Real.exp (eta*dyadicTime J)

/-- MAIN cross-source theorem. Given a HYPOTHETICAL actual
offcritical zero, every honest signed observer with an
exponentially payable EXACT source defect must exhibit
arbitrarily large positive original-grid readouts.
This is the physical meaning of the Laplace obstruction,
not a claim that any offcritical zero exists. -/
theorem hypothetical_zero_forces_observed_signed_cross_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2*rho.re-1)
    (observed defect : ℕ → ℝ)
    (hLedger : OriginalSignedObserverLedger observed defect)
    (hError : OriginalSignedObserverErrorAt defect eta)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (eta*dyadicTime J) < observed J := by
  obtain ⟨D,hD,hDefect⟩ := hError
  by_contra hNo
  have hObserved : ∀ J : ℕ, 1 ≤ J →
      observed J ≤ K*Real.exp (eta*dyadicTime J) := by
    intro J hJ
    exact le_of_not_gt (fun gt => hNo ⟨J,hJ,gt⟩)
  let C : ℝ := max K 0 + D + 4/eta^2
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        C*Real.exp (eta*dyadicTime J) := by
    intro J hJ
    let T : ℝ := dyadicTime J
    have hT : 0 ≤ T := dyadicTime_nonneg J
    have hDupper : defect J ≤ D*Real.exp (eta*T) :=
      le_of_abs_le (hDefect J hJ)
    have hObs : observed J ≤ K*Real.exp (eta*T) :=
      hObserved J hJ
    have hCross := hLedger J hJ
    have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hpow : T^2 ≤
        (2/eta^2)*Real.exp (eta*T) := by
      simpa using (pow_le_factorial_mul_exp heta hT 2)
    have hDiag :
        pickupDiagonal T ≤ (4/eta^2)*Real.exp (eta*T) := by
      calc
        pickupDiagonal T ≤ 2*T^2 := hd
        _ ≤ 2*((2/eta^2)*Real.exp (eta*T)) :=
          mul_le_mul_of_nonneg_left hpow (by norm_num)
        _ = (4/eta^2)*Real.exp (eta*T) := by ring
    have hK :
        K*Real.exp (eta*T) ≤ (max K 0)*Real.exp (eta*T) :=
      mul_le_mul_of_nonneg_right (le_max_left _ _)
        (Real.exp_pos _).le
    change pickupEnergy T ≤ C*Real.exp (eta*T)
    rw [hEnergy,hCross]
    dsimp [C]
    linarith [hDiag,hDupper,hObs,hK]
  have hContinuum := hCeiling eta heta C hC hGrid
  have hEnergyBound :
      ∃ E : ℝ, 0 ≤ E ∧ ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤ E*Real.exp (eta*T) :=
    ⟨Real.exp (eta*Real.log 2)*C,
      mul_nonneg (Real.exp_pos _).le hC,hContinuum⟩
  exact (offcritical_zero_forces_no_energy_rate
    hRight hHolo hIdentity
    rho hhalf hone hzeta eta heta hsmall) hEnergyBound

/-- Concrete specialization for ANY real observed integer
coefficient sequence, reusing the COMPLETE original mixed
source-minus-observed ordered Gram defect defined in
UniversalWaveformReturn. It makes no "independent-bit"
or unsigned source assumption. -/
theorem hypothetical_zero_forces_universal_coefficient_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2*rho.re-1)
    (coeff : ℕ → ℝ)
    (hError : OriginalSignedObserverErrorAt
      (fun J => orderedCrossDefect
        moebiusReal coeff pickupResponseGram (dyadicTime J)) eta)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (eta*dyadicTime J) <
        arbitraryOrderedCross coeff pickupResponseGram (dyadicTime J) := by
  refine hypothetical_zero_forces_observed_signed_cross_spikes
    hRight hHolo hIdentity hCeiling
    rho hhalf hone hzeta eta heta hsmall
    (fun J => arbitraryOrderedCross coeff pickupResponseGram (dyadicTime J))
    (fun J => orderedCrossDefect moebiusReal coeff
      pickupResponseGram (dyadicTime J))
    ?_ hError K
  intro J hJ
  exact pickupCross_eq_observed_add_full_defect
    coeff (dyadicTime J)

/-- Ideal PHYSICAL two-bit encoding is an EXACT real
representation of the original Möbius coefficients.
No measured device has been assumed, and the exact
zero signed defect is preserved without a budget gate. -/
theorem hypothetical_zero_forces_ideal_physical_bit_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2*rho.re-1)
    (p : Parameters) (chart : ℝ) (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (eta*dyadicTime J) <
        observedPacket p chart (dyadicTime J) (encodedStream p) := by
  refine hypothetical_zero_forces_observed_signed_cross_spikes
    hRight hHolo hIdentity hCeiling
    rho hhalf hone hzeta eta heta hsmall
    (fun J => observedPacket p chart (dyadicTime J) (encodedStream p))
    (fun _ => 0)
    ?_ ⟨0, by norm_num, by
      intro J hJ
      simp⟩ K
  intro J hJ
  rw [observedPacket_encoded_eq_pickupCross]
  ring

/-- For a REAL imperfect indexed physical-bit stream the
signed readout defect must be carried in full. A bounded
defect transfers the same forced positive witness; without
the bound it transfers NOTHING about growth. -/
theorem hypothetical_zero_forces_imperfect_physical_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2*rho.re-1)
    (p : Parameters) (chart : ℝ)
    (stream : ℕ → PhysicalStream)
    (hError : OriginalSignedObserverErrorAt
      (fun J => signedReadoutDefect p chart (dyadicTime J)
        (stream J)) eta)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (eta*dyadicTime J) <
        observedPacket p chart (dyadicTime J) (stream J) := by
  refine hypothetical_zero_forces_observed_signed_cross_spikes
    hRight hHolo hIdentity hCeiling
    rho hhalf hone hzeta eta heta hsmall
    (fun J => observedPacket p chart (dyadicTime J) (stream J))
    (fun J => signedReadoutDefect p chart (dyadicTime J) (stream J))
    ?_ hError K
  intro J hJ
  exact pickupCross_eq_observed_add_defect
    p chart (dyadicTime J) (stream J)

end GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport
