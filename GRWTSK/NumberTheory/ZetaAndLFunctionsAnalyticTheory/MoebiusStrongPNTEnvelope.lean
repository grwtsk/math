/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongPacketEnergyReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Non-RH Mertens/PNT quantitative source envelope for dense strong pairs

The only arithmetic hypothesis is an ACTUAL Mertens prefix tail:
  for all n>=K: |M(n)| <= delta*n.
Classical M(n)=o(n), a consequence of the proved prime number
theorem, supplies it for every delta>0, but the PNT theorem is NOT
yet imported at the pinned toolchain; the premise remains explicit.

The earlier exact original Mertens-Abel sampled-source lemma and
the independently paid sampling/interpolation drift give
  |wholePickup(u)| <= 2K+1+4 delta exp(u/2)    (u>=0).
Integrating the square of the ACTUAL waveform gives
  pickupEnergy(T)
    <= 2(2K+1)^2 T + 32 delta^2 (exp T - 1).
This is the source's exact cumulative positive energy, not a
geometric surrogate.

The genuine signed energy-matched strong packet then obeys
  Strong_epsilon(T) <= above energy
        + (32/epsilon^2)exp(epsilon T)
        + N^2 sqrt(q_N*pickupDiagonal T).

For fixed 0<epsilon<1 and every delta>0 with a suitable genuine
Mertens prefix cutoff K, the bound yields
  Strong_epsilon(T) = o(exp T) as T->infinity,
because the K head, signed Putnam short gaps, and weak packet are
o(exp T), whereas delta can be arbitrarily small.

The rate-one little-o improvement is classical-PNT-level, not
the every-positive-rate estimate needed for RH. The external
arithmetic supplier and all native compilation/audit facets remain
separate, and no RH conclusion is claimed.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongPNTEnvelope

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Explicit scalar uniform head price for the original early
Mertens prefixes, including the exact sampling drift of size <=1. -/
def originalMertensHead (K : ℕ) : ℝ := 2 * (K : ℝ) + 1

/-- Pointwise squared original-waveform estimate from actual
Mertens prefix control; no separate Gram upper is supplied. -/
theorem wholePickup_sq_le_Mertens_envelope
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u ^ 2 ≤
      2 * (originalMertensHead K) ^ 2 +
      32 * δ ^ 2 * Real.exp u := by
  have hp := wholePickup_abs_le_Mertens_head_tail K δ hδ hM hu
  have hsmall : Real.exp (-u / 2) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  let A : ℝ := originalMertensHead K
  let B : ℝ := 4 * δ * Real.sqrt (Real.exp u)
  have hA : 0 ≤ A := by dsimp [A, originalMertensHead]; positivity
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have habs : |wholePickup u| ≤ A + B := by
    dsimp [A, B, originalMertensHead]
    linarith
  have hsq : B ^ 2 = 16 * δ ^ 2 * Real.exp u := by
    dsimp [B]
    rw [mul_pow, mul_pow, Real.sq_sqrt (Real.exp_pos u).le]
    ring
  have hmain : wholePickup u ^ 2 ≤ (A + B)^2 := by
    nlinarith [sq_abs (wholePickup u)]
  nlinarith [sq_nonneg (A - B)]

/-- Integrated source energy, paying the exact exponential integral:
NO factor T multiplies the expensive delta^2*exp(T) term. -/
theorem pickupEnergy_le_of_actualMertensTail
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * (originalMertensHead K)^2 * T +
      32 * δ ^ 2 * (Real.exp T - 1) := by
  let A : ℝ := 2 * (originalMertensHead K)^2
  let B : ℝ := 32 * δ^2
  have hupper : Continuous (fun u : ℝ => A + B * Real.exp u) := by
    fun_prop
  have hset :
      (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
        ∫ u in Icc (0 : ℝ) T, A + B * Real.exp u := by
    apply setIntegral_mono_on
      (wholePickup_continuous.pow 2).integrableOn_Icc
      hupper.integrableOn_Icc measurableSet_Icc
    intro u hu
    exact wholePickup_sq_le_Mertens_envelope K δ hδ hM hu.1
  have hintA :
      IntervalIntegrable (fun _ : ℝ => A) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hintB :
      IntervalIntegrable (fun u : ℝ => B * Real.exp u) volume 0 T :=
    (continuous_const.mul Real.continuous_exp).intervalIntegrable 0 T
  have heval :
      (∫ u in (0 : ℝ)..T, A + B * Real.exp u) =
        A * T + B * (Real.exp T - 1) := by
    rw [intervalIntegral.integral_add hintA hintB,
      intervalIntegral.integral_const,
      intervalIntegral.integral_const_mul,
      integral_exp]
    simp
    ring
  rw [integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hT] at hset
  rw [pickupEnergy]
  exact hset.trans_eq (by
    simpa only [A, B, originalMertensHead] using heval)

/-- Actual original energy-matched dense signed strong pair
estimate, using only the already-proved literal Mertens-Abel
calculus, the SOURCE Mertens tail, integrated square energy and
unconditional short-gap/weak-overlap terms. -/
theorem originalStrongCross_le_classicalPNT_budget
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {ε T : ℝ} (hε : 0 < ε) (hT : 0 ≤ T) :
    originalEnergyStrongCross (rateGapHeight ε T) T ≤
      2 * (originalMertensHead K)^2 * T +
      32 * δ ^ 2 * (Real.exp T - 1) +
      (32 / ε ^ 2) * Real.exp (ε * T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have hstrong := originalEnergyStrongCross_le_energy_rate_gap hT hε
  have henergy := pickupEnergy_le_of_actualMertensTail K δ hδ hM hT
  linarith


/-- ACTUAL original strong-overlap signed Gram packet, controlled
IN ABSOLUTE VALUE by a genuine Mertens-prefix tail from classical
PNT, without RH. For each fixed epsilon in (0,1), a PNT supplier
at arbitrarily small delta yields |Strong|=o(exp T).
The PNT-to-Mertens theorem is NOT kernel-ported here: its exact
prefix tail remains an explicit arithmetic premise. -/
theorem originalStrongCross_abs_le_classicalPNT_budget
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {ε T : ℝ} (hε : 0 < ε) (hT : 0 ≤ T) :
    |originalEnergyStrongCross (rateGapHeight ε T) T| ≤
      2 * (originalMertensHead K)^2 * T +
      32 * δ ^ 2 * (Real.exp T - 1) +
      2 * T^2 +
      (32 / ε ^ 2) * Real.exp (ε * T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have hstrong := originalEnergyStrongCross_abs_le_energy_rate hε hT
  have henergy := pickupEnergy_le_of_actualMertensTail K δ hδ hM hT
  linarith

end GRWTSK.NumberTheory.Moebius.StrongPNTEnvelope
