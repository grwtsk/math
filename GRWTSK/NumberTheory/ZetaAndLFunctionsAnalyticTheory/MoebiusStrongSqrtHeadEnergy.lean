/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensOptimalHead
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongPacketEnergyReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

/-!
# Square-root-head PNT/Mertens energy transfer for the ORIGINAL strong packet

The new source-specific Abel head uses 2*sqrt(K) rather than K.
Together with the ALREADY PROVED actual logarithmic sampling
interpolation error, this improves the finite original pickup bound:

  |wholePickup(u)| <= 4 sqrt(K)+1+4 delta exp(u/2)

under the exact Mertens tail |M(n)|<=delta*n for all n>=K.
The external PNT theorem is NOT assumed present in Lean.

The ORIGINAL physical-time square energy now obeys

  pickupEnergy(T) <= 2(4 sqrt(K)+1)^2*T
                      +32 delta^2*(exp T-1).

This is stronger than the previously published K^2-head bound and
is suited to choosing the K cutoff AS A FUNCTION OF THE OUTER T,
as required by a zero-free-region Mertens envelope. Once K,delta
are fixed at an outer T, the inequality is valid for every inner
physical time u in [0,T], so there is no unsafe exchange of
"for each u choose K(u)" with a single time-integral bound.

The COMPLETE ORIGINAL strong signed Mobius packet is consumed,
retaining the diagonal and all previously signed gap/weak costs.
No RH conclusion or imported KV theorem is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongSqrtHeadEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel
open GRWTSK.NumberTheory.Moebius.StrongMertensOptimalHead
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Improved finite real scalar head, sourced from the ACTUAL
Mertens-Abel weights and exact sampling drift. -/
def sqrtMertensHead (K : ℕ) : ℝ :=
  4 * Real.sqrt (K : ℝ) + 1

theorem sqrtMertensHead_nonneg (K : ℕ) :
    0 ≤ sqrtMertensHead K := by
  unfold sqrtMertensHead
  positivity

/-- The actual ORIGINAL pickup sampled at floor(exp u) is
controlled by the same Mertens tail, including n=1. -/
theorem sampledPickup_abs_le_sqrtHead
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    |sampledPickup u| ≤
      4 * Real.sqrt (K : ℝ) +
        4 * δ * Real.sqrt (Real.exp u) := by
  let N : ℕ := ⌊Real.exp u⌋₊
  have hN : 1 ≤ N := floor_exp_ge_one hu
  have hb := wholePickup_log_nat_abs_le_sqrtHead K δ hδ hM N hN
  have hfloor : (N : ℝ) ≤ Real.exp u :=
    Nat.floor_le (Real.exp_pos u).le
  have hsqrt := Real.sqrt_le_sqrt hfloor
  have hmul := mul_le_mul_of_nonneg_left hsqrt
    (by positivity : 0 ≤ 4 * δ)
  change |wholePickup (Real.log (N : ℝ))| ≤ _
  linarith

/-- The SAME original continuous physical-time waveform, rather
than a new geometric or Laplace regularization. -/
theorem wholePickup_abs_le_sqrtHead
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤
      sqrtMertensHead K +
        4 * δ * Real.sqrt (Real.exp u) := by
  have hsample := sampledPickup_abs_le_sqrtHead K δ hδ hM hu
  have hdrift := sampling_difference_abs_le hu
  have hsmall : Real.exp (-u / 2) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have htriangle :
      |wholePickup u| ≤
        |wholePickup u - sampledPickup u| + |sampledPickup u| := by
    convert abs_add_le (wholePickup u - sampledPickup u) (sampledPickup u)
      using 1 <;> ring
  dsimp [sqrtMertensHead]
  linarith

/-- Actual squared physical-time pickup with improved sqrt(K)
finite head, no arbitrary energy budget asserted. -/
theorem wholePickup_sq_le_sqrtHead
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u ^ 2 ≤
      2 * (sqrtMertensHead K)^2 +
        32 * δ^2 * Real.exp u := by
  have h := wholePickup_abs_le_sqrtHead K δ hδ hM hu
  let A : ℝ := sqrtMertensHead K
  let B : ℝ := 4 * δ * Real.sqrt (Real.exp u)
  have hA : 0 ≤ A := sqrtMertensHead_nonneg K
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hBsq : B^2 = 16 * δ^2 * Real.exp u := by
    dsimp [B]
    rw [mul_pow, mul_pow, Real.sq_sqrt (Real.exp_pos u).le]
    ring
  have hmain : wholePickup u ^ 2 ≤ (A + B)^2 := by
    nlinarith [sq_abs (wholePickup u)]
  nlinarith [sq_nonneg (A-B)]

/-- The new source-true finite PNT/Mertens return from the actual
physical-time integral; the expensive tail retains exp(T)-1,
not T*exp(T). -/
theorem pickupEnergy_le_sqrtHead
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * (sqrtMertensHead K)^2 * T +
        32 * δ^2 * (Real.exp T - 1) := by
  let A : ℝ := 2 * (sqrtMertensHead K)^2
  let B : ℝ := 32 * δ^2
  have hupper : Continuous (fun u : ℝ => A + B * Real.exp u) := by
    fun_prop
  have hset :
      (∫ u in Icc (0 : ℝ) T, wholePickup u^2) ≤
        ∫ u in Icc (0 : ℝ) T, A + B * Real.exp u := by
    apply setIntegral_mono_on
      (wholePickup_continuous.pow 2).integrableOn_Icc
      hupper.integrableOn_Icc measurableSet_Icc
    intro u hu
    exact wholePickup_sq_le_sqrtHead K δ hδ hM hu.1
  have hIntA :
      IntervalIntegrable (fun _ : ℝ => A) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hIntB :
      IntervalIntegrable (fun u : ℝ => B * Real.exp u) volume 0 T :=
    (continuous_const.mul Real.continuous_exp).intervalIntegrable 0 T
  have heval :
      (∫ u in (0 : ℝ)..T, A + B * Real.exp u) =
        A * T + B * (Real.exp T - 1) := by
    rw [intervalIntegral.integral_add hIntA hIntB,
      intervalIntegral.integral_const,
      intervalIntegral.integral_const_mul,
      integral_exp]
    simp
    ring
  rw [integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hT] at hset
  rw [pickupEnergy]
  exact hset.trans_eq (by
    simpa only [A, B, sqrtMertensHead] using heval)

/-- The actual dense original signed strong-overlap packet,
both signs, improved to sqrt(K) for an explicitly supplied
arithmetic Mertens tail; the Putnam and weak prices are unchanged. -/
theorem strongCross_abs_le_sqrtHead_Mertens
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {ε T : ℝ} (hε : 0 < ε) (hT : 0 ≤ T) :
    |originalEnergyStrongCross (rateGapHeight ε T) T| ≤
      2 * (sqrtMertensHead K)^2 * T +
      32 * δ^2 * (Real.exp T - 1) +
      2 * T^2 +
      (32 / ε^2) * Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have he := originalEnergyStrongCross_abs_le_energy_rate hε hT
  have hm := pickupEnergy_le_sqrtHead K δ hδ hM hT
  linarith

end GRWTSK.NumberTheory.Moebius.StrongSqrtHeadEnergy
