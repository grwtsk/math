/- Copyright (c) 2026 grwtsk contributors. MIT.
Original mathematical attribution: grwtsk contributors.
Lean source assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatIntegratedLocalStability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianRelativePolarityPNT
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Original signed Gaussian energy: all-log absolute PNT stability with stronger heat

ORIGINAL arithmetic source unchanged: mu(n) over all positive integers,
all squareful zeros, actual causal pickupResponse birth at log(n), every
ordered real Gram term and physical T. The artificial Gaussian log heat
does not replace the arithmetic coefficient or smooth physical time.

For every fixed k in Nat, the MUCH MORE ACTIVE than old exp(-2T)
schedule
  s_k(T)=exp(-T)*(1+T)^k
has actual complete positive reconstruction R_s(T) satisfying
  R_s(T)<=16*T^4*exp(-T)*(1+T)^(2*k)   for T>=0
using the ALREADY EXISTING causal local integral, not an index count.

The exact signed-wave identity and continuous L2 Cauchy-Schwarz give
  |pickupEnergy(T)-sourceHeatEnergy(s,T)|
    <=2*sqrt(pickupEnergy(T)*R_s(T))+R_s(T).
This standard arithmetic-INDEPENDENT original-source integral step
is an explicit unported PINNED Lean Prop below, not an axiom or
hidden signed cancellation estimate.

The existing ordinary classical PNT source supplier (also unported)
  OriginalBalancedPNTLogPowerTarget
bounds the original pickupEnergy by
  2*T^2+C_A*exp(T)/(1+T)^A for EVERY integer A>=1.
Choose A=2*(k+B+3). Elementary scalar sqrt and exponential-series
absorption then give, for every k,B in Nat, some finite K:
  |pickupEnergy(T)-sourceHeatEnergy(s_k(T),T)|
    <=K/(1+T)^B for ALL T>=0.
The elementary scalar absorption is an explicit *real-only* Lean Prop,
not an arithmetic/RH hypothesis.

This is an unconditional ORDINARY-mathematical all-log-power ABSOLUTE
signed-energy stability for a whole family of amplified exp(-T)
Gaussian heat schedules. It is NOT an all-positive exponential rate
upper for either energy, and does not prove RH.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianPolynomialHeatPNTStability

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatIntegratedLocalStability
open GRWTSK.NumberTheory.Moebius.GaussianRelativePolarityPNT
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

/-- Artificial heat parameter, polynomially amplified exp(-T).
For all T>=0 and k>=0, this is nonnegative and differs from
the ACTUAL physical time T. -/
def polynomialNearIdentityHeat (k : ℕ) (T : ℝ) : ℝ :=
  Real.exp (-T) * (1+T)^k

theorem polynomialNearIdentityHeat_nonneg
    (k : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ polynomialNearIdentityHeat k T := by
  unfold polynomialNearIdentityHeat
  positivity

/-- From the EXISTING exact source local horizon estimate:
  R_s(T)<=16*s²*T^4*(exp(T)-1).
Putting s=exp(-T)*(1+T)^k gives a better full source
error allowance than the earlier global 16*T^5 term. -/
theorem polynomialNearIdentityHeat_radius_le
    (k : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (polynomialNearIdentityHeat k T) T ≤
      16*T^4*Real.exp (-T)*(1+T)^(2*k) := by
  let s : ℝ := polynomialNearIdentityHeat k T
  have hs : 0 ≤ s := polynomialNearIdentityHeat_nonneg k T hT
  have hOld := sourceHeatRadiusEnergy_le_local_integral hs hT
  have hcap : Real.exp T-1 ≤ Real.exp T := by linarith
  have hfac : 0 ≤ 16*s^2*T^4 := by positivity
  have hExp : (Real.exp (-T))^2*Real.exp T =
      Real.exp (-T) := by
    rw [pow_two, ←Real.exp_add, ←Real.exp_add]
    congr 1
    ring
  have hPow : ((1+T)^k)^2 = (1+T)^(2*k) := by
    rw [←pow_mul]
    congr 1
    omega
  calc
    sourceHeatRadiusEnergy s T ≤
        16*s^2*T^4*(Real.exp T-1) := hOld
    _ ≤ 16*s^2*T^4*Real.exp T :=
      mul_le_mul_of_nonneg_left hcap hfac
    _ = 16*T^4*Real.exp (-T)*(1+T)^(2*k) := by
      dsimp [s, polynomialNearIdentityHeat]
      calc
        16*(Real.exp (-T)*(1+T)^k)^2*T^4*Real.exp T =
          16*T^4*((Real.exp (-T))^2*Real.exp T)*(((1+T)^k)^2) := by ring
        _ = 16*T^4*Real.exp (-T)*(1+T)^(2*k) := by
          rw [hExp,hPow]
          ring

/-- The exact physical waveform equality
  wholePickup(u) = sourceHeatWave(s,T,u)+sourceHeatErrorWave(s,T,u)
for 0<=u<=T, plus Cauchy-Schwarz and pointwise
abs(sourceHeatErrorWave)<=radiusWave, implies the
precise reverse-triangle energy-square inequality.
The L2 interval API is NOT YET ported to PINNED Lean;
no arithmetic cancellation is hidden here. -/
def OriginalGaussianL2SquareDifferenceTarget : Prop :=
  ∀ s T : ℝ, 0 ≤ s → 0 ≤ T →
    0 ≤ pickupEnergy T ∧
    0 ≤ sourceHeatRadiusEnergy s T ∧
    |pickupEnergy T - sourceHeatEnergy s T| ≤
      2*Real.sqrt (pickupEnergy T*sourceHeatRadiusEnergy s T) +
        sourceHeatRadiusEnergy s T

/-- Entirely arithmetic-free positive scalar comparison.
For A=2*(k+B+3), T>=0, C>=0, the RHS is summably
small to order (1+T)^(-B):
using sqrt(a+b)<=sqrt(a)+sqrt(b), the three terms are
  8 sqrt(2) T^3 exp(-T/2)(1+T)^k,
  8 sqrt(C) T^2 (1+T)^(k-A/2),
  16 T^4 exp(-T)(1+T)^(2k).
Second term <=8sqrt(C)/(1+T)^B.
First and last are exponentially dominated by every
inverse power by the standard factorial series for exp.
This purely real-calculus Lean proof is UNPORTED, not RH. -/
def GaussianPolynomialHeatScalarAbsorptionTarget : Prop :=
  ∀ k B : ℕ, ∀ C : ℝ, 0 ≤ C →
    ∃ K : ℝ, 0 ≤ K ∧ ∀ T : ℝ, 0 ≤ T →
      2*Real.sqrt
        ((2*T^2 + C*Real.exp T/(1+T)^(2*(k+B+3))) *
          (16*T^4*Real.exp (-T)*(1+T)^(2*k))) +
        16*T^4*Real.exp (-T)*(1+T)^(2*k) ≤
          K/(1+T)^B

/-- The TRUE original signed physical energy has its
classical all-log-power positive allowance from
OriginalBalancedPNTLogPowerTarget; no newly assumed RH. -/
theorem original_energy_le_of_classical_PNT
    (hPNT : OriginalBalancedPNTLogPowerTarget)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T →
      pickupEnergy T ≤
        2*T^2+C*Real.exp T/(1+T)^A := by
  obtain ⟨C,hC,hCross⟩ := hPNT A hA
  refine ⟨C,hC,?_⟩
  intro T hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).2
  have hsource := pickupEnergy_eq_diagonal_add_cross hT
  have hcross := hCross T hT
  linarith

/-- MAIN SOURCE CANDIDATE: classical unconditional PNT (as an
explicit unported Lean Prop) and independent physical L2
Cauchy make the difference of the ORIGINAL signed Gaussian
square energies rapidly vanishing for EVERY polynomially
amplified exp(-T) smoothing schedule.
At fixed k,B, one constant K pays ALL real T>=0.
Neither energy separately has an RH all-rate bound. -/
theorem all_log_power_absolute_signed_energy_stability
    (hPNT : OriginalBalancedPNTLogPowerTarget)
    (hL2 : OriginalGaussianL2SquareDifferenceTarget)
    (hScalar : GaussianPolynomialHeatScalarAbsorptionTarget)
    (k B : ℕ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ T : ℝ, 0 ≤ T →
      |pickupEnergy T -
        sourceHeatEnergy (polynomialNearIdentityHeat k T) T| ≤
          K/(1+T)^B := by
  let A : ℕ := 2*(k+B+3)
  have hA : 1 ≤ A := by dsimp [A]; omega
  obtain ⟨C,hC,hOriginal⟩ :=
    original_energy_le_of_classical_PNT hPNT A hA
  obtain ⟨K,hK,hPay⟩ := hScalar k B C hC
  refine ⟨K,hK,?_⟩
  intro T hT
  let s : ℝ := polynomialNearIdentityHeat k T
  let R : ℝ := 16*T^4*Real.exp (-T)*(1+T)^(2*k)
  let E : ℝ := 2*T^2+C*Real.exp T/(1+T)^A
  obtain ⟨hEpos,hRpos,hCauchy⟩ :=
    hL2 s T (polynomialNearIdentityHeat_nonneg k T hT) hT
  have hE : pickupEnergy T ≤ E := hOriginal T hT
  have hR : sourceHeatRadiusEnergy s T ≤ R := by
    simpa [s,R] using polynomialNearIdentityHeat_radius_le k T hT
  have hE0 : 0 ≤ E := by dsimp [E]; positivity
  have hR0 : 0 ≤ R := by dsimp [R]; positivity
  have hmul :
      pickupEnergy T*sourceHeatRadiusEnergy s T ≤ E*R := by
    calc
      pickupEnergy T*sourceHeatRadiusEnergy s T ≤
          E*sourceHeatRadiusEnergy s T :=
        mul_le_mul_of_nonneg_right hE hRpos
      _ ≤ E*R := mul_le_mul_of_nonneg_left hR hE0
  have hsqr := Real.sqrt_le_sqrt hmul
  have hbound :
      |pickupEnergy T-sourceHeatEnergy s T| ≤
        2*Real.sqrt (E*R)+R := by
    linarith [hCauchy,hsqr,hR]
  have hpayment := hPay T hT
  have hAeq : A = 2*(k+B+3) := rfl
  change |pickupEnergy T-sourceHeatEnergy s T| ≤
    K/(1+T)^B
  exact hbound.trans (by
    simpa [E,R,hAeq] using hpayment)

end GRWTSK.NumberTheory.Moebius.GaussianPolynomialHeatPNTStability
