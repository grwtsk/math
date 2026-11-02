/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceZeroBarrier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Hypothetical offcritical zeta zeros FORCE positive original FAR spikes

This is a quantitative NONCIRCULAR necessary condition:
For any genuine rho with 1/2<Re(rho)<1 and zeta(rho)=0,
for EVERY 0<eta<2*Re(rho)-1 and EVERY real K,
there are arbitrarily large ORIGINAL fixed dyadic indices J
with
  farReducedOrLongCross(B_J,empty,J)
                  > K*exp(eta*dyadicTime J).
In fact the limsup normalized source is +infinity,
uniformly for admissible prime banks because all THREE
other real signed source packets are independently
absolutely payable at EVERY positive exponential rate.

The proof does not hypothesize actual offcritical zeros;
it gives consequences IF one existed, not RH.

The exact ORIGINAL source is unchanged:
 pickupEnergy=pickupDiagonal+pickupCross
 pickupCross=collarIncidentCross+
             shortRatioCross+reducedCloseCross+
             farReducedOrLongCross.
All original signed Mobius coefficients, physical causal
Gram, both ordered orientations, true lowIndices and the
single fixed J log2 grid are preserved.

The initial Laplace-zero obstruction is in the preceding
file, with three explicit RH-INDEPENDENT unported standard
complex-analysis gates. Here the only additional PROPS
are the three EXISTING independently elementary quantitative
packet-price targets and an elementary monotone-energy
dyadic ceiling lemma. The latter does not use any RH
or unproved Mobius cancellation estimate.

No every-positive-rate FAR theorem is asserted unconditionally.
Lean compilation remains deferred. RH OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer

/-- Purely REAL/MEASURE theory, not an arithmetic premise:
from the uniform energy inequality at the fixed dyadic
T_J=J log2 and nondecreasing integral of wholePickup^2,
choose J=max(1,ceil(T/log2)).
Then T<=T_J<=T+log2 and E(T)<=E(T_J).
The original bounded grid gap charges ONLY a factor 2^eta.
The source calculus formalization is still an unproved
Lean Prop, with ordinary proof given in the review. -/
def DyadicOriginalEnergyCeilingTarget : Prop :=
  ∀ eta : ℝ, 0 < eta →
    ∀ D : ℝ, 0 ≤ D →
      (∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          D * Real.exp (eta * dyadicTime J)) →
      ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤
          (Real.exp (eta * Real.log 2) * D) *
            Real.exp (eta * T)


/-- UNIFORM in the entire admissible true-prime family: the
THREE previously paid packets and genuine diagonal together
cost at most D_eta*exp(eta*T_J), with D_eta independent of
every selected bank and dyadic J. This is an elementary
consequence of existing separate absolute prices, NOT a
Möbius signed cancellation supplier. -/
theorem original_far_uniform_energy_payment
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (eta : ℝ) (heta : 0 < eta) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ (B : ℕ → PrimeBand), AdmissibleBankFamily B →
      ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          farReducedOrLongCross (B J) ∅ J +
            D * Real.exp (eta * dyadicTime J) := by
  obtain ⟨I,hI,hIBound⟩ := hIncident eta heta
  obtain ⟨S,hS,hSBound⟩ := hShort eta heta
  obtain ⟨Q,hQ,hQBound⟩ := hClose eta heta
  let D : ℝ := I + S + Q + 4 / eta ^ 2
  have hD : 0 ≤ D := by dsimp [D]; positivity
  refine ⟨D,hD,?_⟩
  intro B hBank J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hi := hIBound B hBank J hJ ∅
  have hs := hSBound (B J) ∅ J (fun _ _ => True) hJ
  have hq := hQBound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤
      S * Real.exp (eta*T) at hs
  change |reducedCloseCross (B J) ∅ J| ≤
      Q * Real.exp (eta*T) at hq
  have hIUpper := le_of_abs_le hi
  have hSUpper := le_of_abs_le hs
  have hQUpper := le_of_abs_le hq
  have hDiag : pickupDiagonal T ≤
      (4 / eta^2) * Real.exp (eta*T) := by
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hpow :
        T^2 ≤ (2 / eta^2) * Real.exp (eta*T) := by
      simpa using (pow_le_factorial_mul_exp heta hT 2)
    calc
      pickupDiagonal T ≤ 2*T^2 := hd
      _ ≤ 2*((2/eta^2)*Real.exp (eta*T)) :=
        mul_le_mul_of_nonneg_left hpow (by norm_num)
      _ = (4/eta^2)*Real.exp (eta*T) := by ring
  have hSource := pickupCross_eq_paid_add_far (B J) J
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  change pickupEnergy T ≤
    farReducedOrLongCross (B J) ∅ J + D*Real.exp (eta*T)
  rw [hEnergy,hSource]
  dsimp [D]
  linarith [hDiag,hIUpper,hSUpper,hQUpper]

/-- True ORIGINAL complete source transfer at ONE FIXED rate.
The three proper source packets are independently ABSOLUTELY
paid; they have nothing to do with the hypothetical zero.

The nonnegative ORIGINAL pickupDiagonal costs at most 2*T^2;
the elementary bound exp(eta*T)>=(eta*T)^2/2 gives
  2*T^2<=(4/eta^2)*exp(eta*T).
No masking, reweighting or sign model enters. -/
theorem original_energy_grid_upper_of_far_rate
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (eta : ℝ) (heta : 0 < eta)
    (B : ℕ → PrimeBand) (hBank : AdmissibleBankFamily B)
    (C : ℝ) (hC : 0 ≤ C)
    (hFar : ∀ J : ℕ, 1 ≤ J →
      farReducedOrLongCross (B J) ∅ J ≤
        C * Real.exp (eta * dyadicTime J)) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          D * Real.exp (eta * dyadicTime J) := by
  obtain ⟨I, hI, hIncidentBound⟩ := hIncident eta heta
  obtain ⟨S, hS, hShortBound⟩ := hShort eta heta
  obtain ⟨Q, hQ, hCloseBound⟩ := hClose eta heta
  let D : ℝ := C + I + S + Q + 4 / eta ^ 2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D,hD,?_⟩
  intro J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hFB := hFar J hJ
  have hIB := hIncidentBound B hBank J hJ ∅
  have hSB := hShortBound (B J) ∅ J (fun _ _ => True) hJ
  have hQB := hCloseBound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤
      S * Real.exp (eta * T) at hSB
  change |reducedCloseCross (B J) ∅ J| ≤
      Q * Real.exp (eta * T) at hQB
  have hIupper := le_of_abs_le hIB
  have hSupper := le_of_abs_le hSB
  have hQupper := le_of_abs_le hQB
  have hDiag : pickupDiagonal T ≤
      (4 / eta ^ 2) * Real.exp (eta * T) := by
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hpow :
        T ^ 2 ≤ (2 / eta ^ 2) * Real.exp (eta * T) := by
      simpa using (pow_le_factorial_mul_exp heta hT 2)
    calc
      pickupDiagonal T ≤ 2 * T ^ 2 := hd
      _ ≤ 2 * ((2 / eta ^ 2) * Real.exp (eta*T)) :=
        mul_le_mul_of_nonneg_left hpow (by norm_num)
      _ = (4 / eta ^ 2) * Real.exp (eta*T) := by ring
  have hSource := pickupCross_eq_paid_add_far (B J) J
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  change pickupEnergy T ≤ D * Real.exp (eta*T)
  rw [hEnergy, hSource]
  dsimp [D]
  linarith [hDiag,hIupper,hSupper,hQupper,hFB]

/-- OFFCRITICAL ZERO -> arbitrarily large POSITIVE original
signed FAR excesses, not merely a failure of absolute bounds.
For any K, some actual original dyadic J has ratio above K.
The three previously paid packets are independent of K and
have uniform source/bank bounds at eta>0.

Only the standard true Laplace analytic continuation and
the elementary dyadic ceiling remain exposed Lean gates.
No signed original FAR upper bound is ever a premise. -/
theorem hypothetical_zero_forces_original_far_positive_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (rho : ℂ)
    (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hetaBeta : eta < 2 * rho.re - 1)
    (B : ℕ → PrimeBand)
    (hBank : AdmissibleBankFamily B)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K * Real.exp (eta * dyadicTime J) <
        farReducedOrLongCross (B J) ∅ J := by
  by_contra hNo
  have hFarK : ∀ J : ℕ, 1 ≤ J →
      farReducedOrLongCross (B J) ∅ J ≤
        K * Real.exp (eta * dyadicTime J) := by
    intro J hJ
    exact le_of_not_gt
      (fun hgt => hNo ⟨J,hJ,hgt⟩)
  let C : ℝ := max K 0
  have hC : 0 ≤ C := le_max_right _ _
  have hFar : ∀ J : ℕ, 1 ≤ J →
      farReducedOrLongCross (B J) ∅ J ≤
        C * Real.exp (eta * dyadicTime J) := by
    intro J hJ
    calc
      farReducedOrLongCross (B J) ∅ J ≤
          K * Real.exp (eta * dyadicTime J) :=
        hFarK J hJ
      _ ≤ C * Real.exp (eta * dyadicTime J) :=
        mul_le_mul_of_nonneg_right (le_max_left _ _)
          (Real.exp_pos _).le
  obtain ⟨D,hD,hGrid⟩ :=
    original_energy_grid_upper_of_far_rate
      hIncident hShort hClose eta heta B hBank C hC hFar
  have hContinuum := hCeiling eta heta D hD hGrid
  have hTotalNonneg :
      0 ≤ Real.exp (eta * Real.log 2) * D :=
    mul_nonneg (Real.exp_pos _).le hD
  have hEnergyBound :
      ∃ E : ℝ, 0 ≤ E ∧
        ∀ T : ℝ, 0 ≤ T →
          pickupEnergy T ≤ E * Real.exp (eta*T) :=
    ⟨Real.exp (eta*Real.log 2)*D,hTotalNonneg,hContinuum⟩
  exact (offcritical_zero_forces_no_energy_rate
    hRight hHolo hIdentity rho hhalf hone hzeta
    eta heta hetaBeta) hEnergyBound


/-- Sharper quantitative consequence of an offcritical zero:
the SAME dyadic J can be chosen simultaneously for EVERY
admissible bank family, not merely a different J per bank.
Uniformity follows from the literal ORIGINAL packet prices;
the analytic obstruction comes only from the true source
Laplace transform and the hypothetical zeta zero. -/
theorem hypothetical_zero_forces_simultaneous_bank_far_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (rho : ℂ)
    (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hetaBeta : eta < 2 * rho.re - 1)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      ∀ (B : ℕ → PrimeBand), AdmissibleBankFamily B →
        K * Real.exp (eta * dyadicTime J) <
          farReducedOrLongCross (B J) ∅ J := by
  obtain ⟨D,hD,hUniform⟩ :=
    original_far_uniform_energy_payment hIncident hShort hClose
      eta heta
  by_contra hNo
  have hGrid :
      ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          (max (K+D) 0) * Real.exp (eta*dyadicTime J) := by
    intro J hJ
    have hNatural :
        pickupEnergy (dyadicTime J) ≤
          (K+D) * Real.exp (eta*dyadicTime J) := by
      by_contra hBad
      have hBig :
          (K+D) * Real.exp (eta*dyadicTime J) <
            pickupEnergy (dyadicTime J) := lt_of_not_ge hBad
      have hAll : ∀ (B : ℕ → PrimeBand),
          AdmissibleBankFamily B →
          K * Real.exp (eta * dyadicTime J) <
            farReducedOrLongCross (B J) ∅ J := by
        intro B hB
        have hCharge := hUniform B hB J hJ
        linarith
      exact hNo ⟨J,hJ,hAll⟩
    exact hNatural.trans
      (mul_le_mul_of_nonneg_right (le_max_left _ _)
        (Real.exp_pos _).le)
  have hC : 0 ≤ max (K+D) 0 := le_max_right _ _
  have hContinuum := hCeiling eta heta (max (K+D) 0) hC hGrid
  have hBound :
      ∃ E : ℝ, 0 ≤ E ∧ ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤ E * Real.exp (eta*T) :=
    ⟨Real.exp (eta*Real.log 2) * max (K+D) 0,
      mul_nonneg (Real.exp_pos _).le hC, hContinuum⟩
  exact (offcritical_zero_forces_no_energy_rate
    hRight hHolo hIdentity rho hhalf hone hzeta
    eta heta hetaBeta) hBound


end GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
