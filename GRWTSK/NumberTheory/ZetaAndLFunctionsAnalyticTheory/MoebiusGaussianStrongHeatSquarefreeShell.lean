/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSignedEvolution
import Mathlib.Data.Nat.Squarefree
import Mathlib.Tactic

/-!
# Actual squarefree birth shells force a positive strong-heat radius

The arithmetic source is the literal Mathlib moebius at the original
positive integer n; all squareful zeros and signed response pairs remain
unchanged. Heat is the previous LOG-FREQUENCY multiplier
  a_s(n) = mu(n)*exp(-s*(log n)^2)
with artificial heat time s>=1 independent of physical u and terminal T.

A TRUE finite shell of ORIGINAL indices is selected by:
  squarefree(n), T-6 <= log n <= T-4, n in endpointIndex T.

For T>=7 and every physical u in [T-2,T], each shell n satisfies
  |mu(n)|=1,
  sourceHeatRadius(s,n)>=1/2,
  pickupResponse(n,u)>=4*exp(-T/2).
This uses Mathlib's moebius/squarefree identity and the existing
original causal response, not a random or asymptotic squarefree model.

Its actual positive radius wave and energy therefore satisfy:
  radiusWave(eta_s,T,u) >=2*card(shell T)*exp(-T/2);
  sourceHeatRadiusEnergy(s,T) >=8*card(shell T)^2*exp(-T).

These are FINITE and valid without any external squarefree-density
asymptotic. A separately proved shell COUNT c*exp(T) would force
an exponential radius-energy lower bound. That count is not invented
or asserted by this source module. A classical number-theory theorem
provides it in ordinary mathematics, but a compatible pinned Lean
proof remains a distinct verification obligation.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeShell

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHeatSignedEvolution

/-- The ORIGINAL integer source shell. Its log interval is fixed
relative to the actual terminal physical observation horizon T.
No squareful zero is identified with a missing physical record. -/
def squarefreeHeatShell (T : ℝ) : Finset ℕ := by
  classical
  exact (endpointIndex T).filter
    (fun n => Squarefree n ∧ T - 6 ≤ logFrequency n ∧
      logFrequency n ≤ T - 4)

theorem mem_squarefreeHeatShell (T : ℝ) (n : ℕ) :
    n ∈ squarefreeHeatShell T ↔
      n ∈ endpointIndex T ∧ Squarefree n ∧
        T - 6 ≤ logFrequency n ∧
        logFrequency n ≤ T - 4 := by
  simp [squarefreeHeatShell, and_assoc]

theorem squarefreeHeatShell_subset (T : ℝ) :
    squarefreeHeatShell T ⊆ endpointIndex T := by
  intro n hn
  exact ((mem_squarefreeHeatShell T n).mp hn).1

/-- Pinned Mathlib's actual original coefficient identity, not a
Boolean, empirical or reduced residue approximation. -/
theorem original_moebius_abs_one_of_squarefree
    (n : ℕ) (hn : Squarefree n) :
    |moebiusReal n| = 1 := by
  unfold moebiusReal
  exact_mod_cast ArithmeticFunction.abs_moebius_eq_one_of_squarefree hn

/-- Elementary numerical consequence of exp(1)>=2. -/
private theorem exp_negative_one_le_half :
    Real.exp (-1) ≤ (1 / 2 : ℝ) := by
  have he : (2 : ℝ) ≤ Real.exp 1 := by
    nlinarith [Real.add_one_le_exp (1 : ℝ)]
  have hn : Real.exp (-1) = 1 / Real.exp 1 := by
    rw [Real.exp_neg]
    simp [one_div]
  rw [hn]
  apply (div_le_iff₀ (Real.exp_pos (1 : ℝ))).mpr
  nlinarith

/-- Actual heat-error magnitude on a genuine squarefree shell index.
Because T>=7, the integer frequency log n is at least one.
All original signs survive through their absolute value in eta_s. -/
theorem squarefreeShell_heatRadius_ge_half
    {s T : ℝ} (hs : 1 ≤ s) (hT : 7 ≤ T)
    {n : ℕ} (hn : n ∈ squarefreeHeatShell T) :
    (1 / 2 : ℝ) ≤ sourceHeatRadius s n := by
  have hh := (mem_squarefreeHeatShell T n).mp hn
  have hmu : |moebiusReal n| = 1 :=
    original_moebius_abs_one_of_squarefree n hh.2.1
  have hlog : (1 : ℝ) ≤ logFrequency n := by
    linarith [hh.2.2.1]
  have hpow : (1 : ℝ) ≤ (logFrequency n) ^ 2 :=
    (sq_le_sq₀ (by norm_num : (0 : ℝ) ≤ 1)
      (by linarith : 0 ≤ logFrequency n)).mpr hlog
  have hproduct : (1 : ℝ) ≤ s * (logFrequency n) ^ 2 := by
    calc
      (1 : ℝ) = 1 * 1 := by ring
      _ ≤ 1 * (logFrequency n) ^ 2 := by nlinarith
      _ ≤ s * (logFrequency n) ^ 2 :=
        mul_le_mul_of_nonneg_right hs (sq_nonneg _)
  have hExp :
      Real.exp (-(s * (logFrequency n) ^ 2)) ≤
        Real.exp (-1) :=
    Real.exp_le_exp.mpr (by linarith)
  calc
    (1 / 2 : ℝ) ≤
        1 - Real.exp (-(s * (logFrequency n) ^ 2)) := by
      linarith [exp_negative_one_le_half]
    _ = sourceHeatRadius s n := by
      simp [sourceHeatRadius, logHeatMultiplier, hmu]

/-- e²-e>=2, using only the elementary exp(1)>=2 inequality. -/
private theorem exp_two_sub_exp_one_ge_two :
    (2 : ℝ) ≤ Real.exp 2 - Real.exp 1 := by
  have he : (2 : ℝ) ≤ Real.exp 1 := by
    nlinarith [Real.add_one_le_exp (1 : ℝ)]
  have he2 : Real.exp 2 = (Real.exp 1) ^ 2 := by
    calc
      Real.exp (2 : ℝ) = Real.exp (1 + 1) := by norm_num
      _ = Real.exp 1 * Real.exp 1 := Real.exp_add 1 1
      _ = (Real.exp 1) ^ 2 := by ring
  rw [he2]
  nlinarith [sq_nonneg (Real.exp 1 - 2)]

/-- Every squarefree original source in the chosen birth shell is
already active on the whole terminal TWO physical time units.
Its response has a TRUE, not fitted, square-root lower bound. -/
theorem squarefreeShell_pickupResponse_ge
    {T u : ℝ} (hu : T - 2 ≤ u)
    {n : ℕ} (hn : n ∈ squarefreeHeatShell T) :
    4 * Real.exp (-T / 2) ≤ pickupResponse n u := by
  have hh := (mem_squarefreeHeatShell T n).mp hn
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hh.1).1
  have hlog : Real.log (n : ℝ) ≤ T - 4 := by
    simpa only [logFrequency] using hh.2.2.2
  have hborn : Real.log (n : ℝ) ≤ u := by linarith
  have hrecip :
      Real.exp 2 * Real.exp (-T / 2) ≤
        (Real.sqrt (n : ℝ))⁻¹ := by
    rw [← pickup_exp_negative_log_half hn1]
    calc
      Real.exp 2 * Real.exp (-T / 2) =
          Real.exp (-T / 2 + 2) := by rw [Real.exp_add]; ring
      _ ≤ Real.exp (-Real.log (n : ℝ) / 2) :=
        Real.exp_le_exp.mpr (by linarith)
  have hclock :
      Real.exp (-u / 2) ≤
        Real.exp 1 * Real.exp (-T / 2) := by
    calc
      Real.exp (-u / 2) ≤ Real.exp (-T / 2 + 1) :=
        Real.exp_le_exp.mpr (by linarith)
      _ = Real.exp 1 * Real.exp (-T / 2) := by
        rw [Real.exp_add]
        ring
  have hterm :
      2 * Real.exp (-T / 2) ≤
        (Real.exp 2 - Real.exp 1) *
          Real.exp (-T / 2) := by
    exact mul_le_mul_of_nonneg_right
      exp_two_sub_exp_one_ge_two (Real.exp_pos _).le
  simp only [pickupResponse, if_pos hborn]
  linarith

/-- Both actual source factors have nonnegative values, but no
signed information is thrown away except in the EXPLICIT positive
reconstruction error radius. -/
theorem squarefreeShell_product_ge
    {s T u : ℝ} (hs : 1 ≤ s) (hT : 7 ≤ T)
    (hu : T - 2 ≤ u)
    {n : ℕ} (hn : n ∈ squarefreeHeatShell T) :
    2 * Real.exp (-T / 2) ≤
      sourceHeatRadius s n * pickupResponse n u := by
  have hEta := squarefreeShell_heatRadius_ge_half hs hT hn
  have hR := squarefreeShell_pickupResponse_ge hu hn
  have hnonR : 0 ≤ pickupResponse n u := by
    have hh := (mem_squarefreeHeatShell T n).mp hn
    exact response_nonneg (Finset.mem_Icc.mp hh.1).1 u
  calc
    2 * Real.exp (-T / 2) =
        (1 / 2 : ℝ) * (4 * Real.exp (-T / 2)) := by ring
    _ ≤ (1 / 2 : ℝ) * pickupResponse n u :=
      mul_le_mul_of_nonneg_left hR (by norm_num)
    _ ≤ sourceHeatRadius s n * pickupResponse n u :=
      mul_le_mul_of_nonneg_right hEta hnonR

/-- The squarefree-shell CARDINALITY directly forces a lower bound
on the original POSITIVE radius waveform on terminal times.
It does not invoke a density asymptotic and it does not claim the
signed errorWave is also large. -/
theorem radiusWave_ge_squarefreeShell
    {s T u : ℝ} (hs : 1 ≤ s) (hT : 7 ≤ T)
    (hu : T - 2 ≤ u) :
    ((squarefreeHeatShell T).card : ℝ) *
        (2 * Real.exp (-T / 2)) ≤
      radiusWave (sourceHeatRadius s) T u := by
  have hs0 : 0 ≤ s := (by norm_num : (0 : ℝ) ≤ 1).trans hs
  have hsubset := squarefreeHeatShell_subset T
  have hsum :
      (∑ n ∈ squarefreeHeatShell T,
        sourceHeatRadius s n * pickupResponse n u) ≤
      radiusWave (sourceHeatRadius s) T u := by
    unfold radiusWave
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset
      (fun n hnT hnnot =>
        mul_nonneg
          (sourceHeatRadius_nonneg hs0 n)
          (response_nonneg (Finset.mem_Icc.mp hnT).1 u))
  calc
    ((squarefreeHeatShell T).card : ℝ) *
        (2 * Real.exp (-T / 2)) =
      ∑ _n ∈ squarefreeHeatShell T,
        (2 * Real.exp (-T / 2)) := by
          simp [Finset.sum_const, nsmul_eq_mul]
    _ ≤ ∑ n ∈ squarefreeHeatShell T,
        sourceHeatRadius s n * pickupResponse n u := by
          apply Finset.sum_le_sum
          intro n hn
          exact squarefreeShell_product_ge hs hT hu hn
    _ ≤ radiusWave (sourceHeatRadius s) T u := hsum

/-- An ACTUAL finite original squarefree-shell count yields a
square-energy lower bound over the last two physical-time units.
This is the true radiusEnergy from the previous source, with its
complete positive response sum squared BEFORE integration. -/
theorem sourceHeatRadiusEnergy_ge_squarefreeShell
    {s T : ℝ} (hs : 1 ≤ s) (hT : 7 ≤ T) :
    2 * (((squarefreeHeatShell T).card : ℝ) *
      (2 * Real.exp (-T / 2))) ^ 2 ≤
      sourceHeatRadiusEnergy s T := by
  let K : ℝ := ((squarefreeHeatShell T).card : ℝ) *
    (2 * Real.exp (-T / 2))
  let R : ℝ → ℝ := radiusWave (sourceHeatRadius s) T
  have hc : Continuous R :=
    radiusWave_continuous (sourceHeatRadius s) T
  have hK : 0 ≤ K := by
    dsimp [K]
    positivity
  have hs0 : 0 ≤ s := (by norm_num : (0 : ℝ) ≤ 1).trans hs
  have hcert := sourceHeat_errorCertificate hs0 T
  have hRnon (u : ℝ) : 0 ≤ R u :=
    radiusWave_nonneg sourceHeatPhase (sourceHeatCoeff s)
      (sourceHeatRadius s) T u hcert
  have hmono :
      (∫ u in T - 2..T, K ^ 2) ≤
      (∫ u in T - 2..T, R u ^ 2) := by
    apply intervalIntegral.integral_mono_on
      (by linarith : T - 2 ≤ T)
      (continuous_const.intervalIntegrable _ _)
      ((hc.pow 2).intervalIntegrable _ _)
    intro u hu
    have hlower : K ≤ R u :=
      radiusWave_ge_squarefreeShell hs hT hu.1
    exact (sq_le_sq₀ hK (hRnon u)).mpr hlower
  have hrestriction :
      (∫ u in T - 2..T, R u ^ 2) ≤
        (∫ u in (0 : ℝ)..T, R u ^ 2) := by
    exact intervalIntegral.integral_mono_interval
      (by linarith : 0 ≤ T - 2)
      (by linarith : T - 2 ≤ T)
      le_rfl
      (Filter.Eventually.of_forall (fun u => sq_nonneg (R u)))
      ((hc.pow 2).intervalIntegrable 0 T)
  calc
    2 * (((squarefreeHeatShell T).card : ℝ) *
        (2 * Real.exp (-T / 2))) ^ 2 =
      ∫ _u in T - 2..T, K ^ 2 := by
        rw [intervalIntegral.integral_const]
        simp only [smul_eq_mul]
        dsimp [K]
        ring
    _ ≤ ∫ u in T - 2..T, R u ^ 2 := hmono
    _ ≤ ∫ u in (0 : ℝ)..T, R u ^ 2 := hrestriction
    _ = sourceHeatRadiusEnergy s T := rfl

end GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeShell
