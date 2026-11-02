/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareEnergyIntegration
import Mathlib

/-!
# Quantitative classical Mertens input against the ACTUAL sharp Abel envelope

The arithmetic proposition ClassicalMertensLogPowerInput is the one
ALREADY DEFINED in MoebiusCausalMertensSquareBridge. It says for each
natural A>=1 an independent constant C_A controls the ORIGINAL
ArithmeticFunction.moebius summatory M(n) at the exact integer n:
   |M(n)| <= C_A*n/(1+log n)^A.

The classical Vinogradov-Korobov/Walfisz quantitative theorem is
known in ordinary mathematics, but its Lean implementation is NOT
present in the pinned local source. This file therefore makes it an
EXPLICIT THEOREM PARAMETER, not an axiom or an unverified proof.

The source response r_k(u)=CCC.pickupResponse k u is nonnegative
and antitone for positive integer k. The *exact* response drops
d_k(u)=r_k(u)-r_(k+1)(u) satisfy, provided r_(N+1)(u)=0,
   sum_(k<=N) d_k(u) = r_1(u) <= 2,
   sum_(k<=N) k*d_k(u) = sum_(n<=N) r_n(u) <=4*sqrt(N).

Splitting a Mertens prefix at k=exp(u/4) and retaining the original
squareful zeros gives the explicit actual-waveform estimate
   A_(floor(exp u))(u)
     <=2 exp(u/4)+4^(A+1)*C_A*exp(u/2)/(1+u)^A.
Future un-born response drops are exactly zero: the larger original
horizon inventory floor(exp T) has the SAME wave A at any 0<=u<=T.

Therefore the sharper PREVIOUSLY PROVED original energy inequality
pickupEnergy(T)<=integral_0^T A_(floor(exp T))(u)^2du gives a genuine
source-typed, time-integrated conditional classical Mertens bound.
The only mathematical premise beyond the earlier finite source is
ClassicalMertensLogPowerInput. Its own Lean proof and the elementary
final rate-one integral asymptotics are tracked separately.

No new source coefficient, RH-sized Mertens bound, all-positive-rate
RH theorem, fitted Euler factor, or hypothesis of independent signs.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

/-- True arithmetic Mertens input at the ORIGINAL positive integer label.
The source C_A is independent of N,u,T; it is NOT manufactured by a
finite numerical experiment. -/
theorem originalPrefix_logPower_of_classical
    (hClassical : ClassicalMertensLogPowerInput)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ n : ℕ, 1 ≤ n →
        |finiteMertensPrefix n| ≤
          C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A := by
  obtain ⟨C, hC, hbound⟩ := hClassical A hA
  exact ⟨C, hC, hbound⟩

/-- A finite arithmetic weighted-drop envelope. Crucially, every
original finite summand has its exact index and nonnegative
responseDrop. This never assumes the weighted sum is uniformly small. -/
def logarithmicDropBudget (A N : ℕ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N,
    (((k + 1 : ℕ) : ℝ) /
      (1 + Real.log (((k + 1 : ℕ) : ℝ))) ^ A) *
      responseDrop k u

/-- Classical Mertens information is attached to the actual already
constructed sharp ABSOLUTE Mertens Abel waveform, without replacing
the original response by another kernel. -/
theorem absMertensDropWave_le_logarithmicDropBudget
    (A N : ℕ) (C u : ℝ) (hC : 0 ≤ C)
    (hM : ∀ n : ℕ, 1 ≤ n →
        |finiteMertensPrefix n| ≤
          C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A) :
    absMertensDropWave N u ≤ C * logarithmicDropBudget A N u := by
  unfold absMertensDropWave logarithmicDropBudget
  calc
    (∑ k ∈ Finset.range N,
      |finiteMertensPrefix (k + 1)| * responseDrop k u)
      ≤ ∑ k ∈ Finset.range N,
          (C * (((k + 1 : ℕ) : ℝ) /
            (1 + Real.log (((k + 1 : ℕ) : ℝ))) ^ A)) *
              responseDrop k u := by
        apply Finset.sum_le_sum
        intro k hk
        exact mul_le_mul_of_nonneg_right (hM (k + 1) (by omega))
          (responseDrop_nonneg k u)
    _ = C * (∑ k ∈ Finset.range N,
          (((k + 1 : ℕ) : ℝ) /
            (1 + Real.log (((k + 1 : ℕ) : ℝ))) ^ A) *
              responseDrop k u) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k hk
        ring

/-- Actual source r_n is bounded by its positive reciprocal-square-root
birth amplitude. This is true at the birth boundary and all u,
including the pre-birth zero response. -/
theorem pickupResponse_le_two_inv_sqrt
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  rw [pickupResponse_eq_positivePart n hn u]
  have hi : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ := by positivity
  have he : 0 ≤ Real.exp (-u / 2) := by positivity
  have hmax :
      max ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) 0 ≤
        (Real.sqrt (n : ℝ))⁻¹ :=
    max_le (sub_le_self _ he) hi
  exact mul_le_mul_of_nonneg_left hmax (by norm_num)

/-- Elementary exact reciprocal-square-root telescoping inequality:
the denominator difference is controlled without any integral test
or asymptotic lemma. -/
private theorem invsqrt_succ_le_two_sqrt_drop (n : ℕ) :
    (Real.sqrt (((n + 1 : ℕ) : ℝ)))⁻¹ ≤
      2 * (Real.sqrt (((n + 1 : ℕ) : ℝ)) -
        Real.sqrt (n : ℝ)) := by
  let a : ℝ := Real.sqrt (((n + 1 : ℕ) : ℝ))
  let b : ℝ := Real.sqrt (n : ℝ)
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 ≤ b := by dsimp [b]; positivity
  have hle : b ≤ a := by
    dsimp [a, b]
    apply Real.sqrt_le_sqrt
    exact_mod_cast Nat.le_succ n
  have hsqA : a ^ 2 = ((n + 1 : ℕ) : ℝ) := by
    dsimp [a]
    exact Real.sq_sqrt (by positivity)
  have hsqB : b ^ 2 = (n : ℝ) := by
    dsimp [b]
    exact Real.sq_sqrt (by positivity)
  have hsq : a ^ 2 - b ^ 2 = 1 := by
    rw [hsqA, hsqB]
    push_cast
    ring
  have hprod : 1 ≤ 2 * a * (a - b) := by
    have hfirst : 0 ≤ a - b := sub_nonneg.mpr hle
    have hsecond : 0 ≤ 2 * a - (a + b) := by linarith
    have hnonneg := mul_nonneg hfirst hsecond
    nlinarith
  have hratio : 1 / a ≤ 2 * (a - b) :=
    (div_le_iff₀ ha).2 (by nlinarith)
  change a⁻¹ ≤ 2 * (a - b)
  simpa only [one_div] using hratio

/-- A universal finite reciprocal-square-root sum bound. This
unconditional integer inequality is used only on original positive
source indices; no assertion about Mertens cancellation enters. -/
theorem invsqrt_range_sum_le_two_sqrt (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹) ≤
        2 * Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ]
      calc
        (∑ k ∈ Finset.range N,
          (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹) +
          (Real.sqrt (((N + 1 : ℕ) : ℝ)))⁻¹
          ≤ 2 * Real.sqrt (N : ℝ) +
              2 * (Real.sqrt (((N + 1 : ℕ) : ℝ)) -
                Real.sqrt (N : ℝ)) :=
            add_le_add ih (invsqrt_succ_le_two_sqrt_drop N)
        _ = 2 * Real.sqrt (((N + 1 : ℕ) : ℝ)) := by ring

/-- The first moment of the ACTUAL causal response-drop population,
including the endpoint face, is a finite telescope of the original
individual responses. -/
def weightedDropMoment (N : ℕ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N, ((k + 1 : ℕ) : ℝ) * responseDrop k u

theorem weightedDropMoment_eq_response_sum_sub_terminal
    (N : ℕ) (u : ℝ) :
    weightedDropMoment N u =
      (∑ k ∈ Finset.range N, pickupResponse (k + 1) u) -
        (N : ℝ) * pickupResponse (N + 1) u := by
  induction N with
  | zero => simp [weightedDropMoment]
  | succ N ih =>
      calc
        weightedDropMoment (N + 1) u =
          weightedDropMoment N u +
            (((N + 1 : ℕ) : ℝ)) * responseDrop N u := by
            simp [weightedDropMoment, Finset.sum_range_succ]
        _ = (∑ k ∈ Finset.range N, pickupResponse (k + 1) u) -
             (N : ℝ) * pickupResponse (N + 1) u +
               (((N + 1 : ℕ) : ℝ)) * responseDrop N u := by
             rw [ih]
        _ = (∑ k ∈ Finset.range (N + 1), pickupResponse (k + 1) u) -
             (((N + 1 : ℕ) : ℝ)) * pickupResponse (N + 2) u := by
             rw [Finset.sum_range_succ]
             simp only [responseDrop, Nat.cast_add, Nat.cast_one]
             ring

/-- An ACTUAL terminal future zero bounds the FULL first moment by
4*sqrt N. This quantitative causal input is arithmetic-independent,
not a one-sided estimate on original signed pair correlations. -/
theorem weightedDropMoment_le_four_sqrt
    (N : ℕ) (u : ℝ)
    (hterminal : pickupResponse (N + 1) u = 0) :
    weightedDropMoment N u ≤ 4 * Real.sqrt (N : ℝ) := by
  rw [weightedDropMoment_eq_response_sum_sub_terminal,
    hterminal, mul_zero, sub_zero]
  calc
    (∑ k ∈ Finset.range N, pickupResponse (k + 1) u) ≤
      ∑ k ∈ Finset.range N,
        2 * (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹ := by
      apply Finset.sum_le_sum
      intro k hk
      exact pickupResponse_le_two_inv_sqrt (k + 1) (by omega) u
    _ = 2 * (∑ k ∈ Finset.range N,
          (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹) := by rw [Finset.mul_sum]
    _ ≤ 4 * Real.sqrt (N : ℝ) := by
      have hh := invsqrt_range_sum_le_two_sqrt N
      linarith

/-- The response-drop total is the true first response, not a
fitted positive Gram. This is valid for every finite original N
whose next index has not yet been born. -/
theorem responseDrop_sum_le_two
    (N : ℕ) (u : ℝ)
    (hterminal : pickupResponse (N + 1) u = 0) :
    (∑ k ∈ Finset.range N, responseDrop k u) ≤ 2 := by
  rw [responseDrop_sum, hterminal, sub_zero]
  have h := pickupResponse_le_two_inv_sqrt 1 (by norm_num) u
  simpa using h

/-- At a REAL physical time u>=0, split each ORIGINAL Mertens prefix
at the true real parameter H=exp(u/4). Below H the elementary bound
|M(n)|<=n is sufficient. Above H the quantitative classical input
saves a factor (1+u)^(-A). This is an EXACT inequality on each
original integer, with one C for every n, not a pointwise re-fit. -/
theorem original_prefix_early_late_logBound
    (A n : ℕ) (C u : ℝ)
    (hn : 1 ≤ n) (hC : 0 ≤ C) (hu : 0 ≤ u)
    (hM : |finiteMertensPrefix n| ≤
      C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A) :
    |finiteMertensPrefix n| ≤
      Real.exp (u / 4) +
        ((4 : ℝ) ^ A * C * (n : ℝ)) / (1 + u) ^ A := by
  have hnreal : (0 : ℝ) < n := by exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlognn : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  have huOne : 0 < 1 + u := by linarith
  have hdenn : 0 < (1 + Real.log (n : ℝ)) ^ A := by positivity
  have hdenu : 0 < (1 + u) ^ A := pow_pos huOne _
  have hgain : 0 ≤ ((4 : ℝ) ^ A * C * (n : ℝ)) / (1 + u) ^ A := by
    positivity
  by_cases hsmall : (n : ℝ) ≤ Real.exp (u / 4)
  · have htrivial : |finiteMertensPrefix n| ≤ (n : ℝ) := by
      rw [finiteMertensPrefix_eq_source]
      exact mertensPrefix_abs_le (by positivity)
    linarith
  · have hlarge : Real.exp (u / 4) < (n : ℝ) := lt_of_not_ge hsmall
    have hlog : u / 4 < Real.log (n : ℝ) :=
      (Real.lt_log_iff_exp_lt hnreal).2 hlarge
    have hdenorder : 1 + u ≤ 4 * (1 + Real.log (n : ℝ)) := by
      linarith
    have hpow :
        (1 + u) ^ A ≤ (4 : ℝ) ^ A *
          (1 + Real.log (n : ℝ)) ^ A := by
      calc
        (1 + u) ^ A ≤ (4 * (1 + Real.log (n : ℝ))) ^ A := by
          gcongr <;> linarith [hdenorder]
        _ = _ := by rw [mul_pow]
    have hfrac :
        C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A ≤
          ((4 : ℝ) ^ A * C * (n : ℝ)) / (1 + u) ^ A := by
      apply (div_le_div_iff₀ hdenn hdenu).2
      calc
        (C * (n : ℝ)) * (1 + u) ^ A ≤
          (C * (n : ℝ)) * ((4 : ℝ) ^ A *
            (1 + Real.log (n : ℝ)) ^ A) :=
            mul_le_mul_of_nonneg_left hpow (mul_nonneg hC hnreal.le)
        _ = ((4 : ℝ) ^ A * C * (n : ℝ)) *
            (1 + Real.log (n : ℝ)) ^ A := by ring
    linarith

/-- Explicit quantitative transfer to the sharp ORIGINAL positive
Abel envelope. The Cauchy/Mertens-square majorant is NOT used;
the exponent loss from Cauchy is therefore absent here. -/
theorem absMertensDropWave_le_logPower_split
    (A N : ℕ) (C u : ℝ)
    (hC : 0 ≤ C) (hu : 0 ≤ u)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |finiteMertensPrefix n| ≤
        C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A)
    (hterminal : pickupResponse (N + 1) u = 0) :
    absMertensDropWave N u ≤
      2 * Real.exp (u / 4) +
        ((4 : ℝ) ^ (A + 1) * C * Real.sqrt (N : ℝ)) /
          (1 + u) ^ A := by
  let H : ℝ := Real.exp (u / 4)
  let B : ℝ := ((4 : ℝ) ^ A * C) / (1 + u) ^ A
  have hH : 0 ≤ H := (Real.exp_pos _).le
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hterm (k : ℕ) :
      |finiteMertensPrefix (k + 1)| ≤ H + B * (k + 1 : ℝ) := by
    have hx := original_prefix_early_late_logBound A (k + 1) C u
      (by omega) hC hu (hM (k + 1) (by omega))
    dsimp [H, B]
    convert hx using 1 <;> ring
  have hsum :
      absMertensDropWave N u ≤
        H * (∑ k ∈ Finset.range N, responseDrop k u) +
          B * weightedDropMoment N u := by
    unfold absMertensDropWave
    calc
      (∑ k ∈ Finset.range N,
        |finiteMertensPrefix (k + 1)| * responseDrop k u) ≤
          ∑ k ∈ Finset.range N,
            (H + B * (k + 1 : ℝ)) * responseDrop k u := by
          apply Finset.sum_le_sum
          intro k hk
          exact mul_le_mul_of_nonneg_right (hterm k)
            (responseDrop_nonneg k u)
      _ = H * (∑ k ∈ Finset.range N, responseDrop k u) +
          B * weightedDropMoment N u := by
        unfold weightedDropMoment
        calc
          (∑ k ∈ Finset.range N,
            (H + B * (k + 1 : ℝ)) * responseDrop k u) =
            ∑ k ∈ Finset.range N,
              (H * responseDrop k u +
                B * ((k + 1 : ℝ) * responseDrop k u)) := by
                  apply Finset.sum_congr rfl
                  intro k hk
                  ring
          _ = (∑ k ∈ Finset.range N, H * responseDrop k u) +
              ∑ k ∈ Finset.range N,
                B * ((k + 1 : ℝ) * responseDrop k u) := by
                  rw [Finset.sum_add_distrib]
          _ = H * (∑ k ∈ Finset.range N, responseDrop k u) +
              B * (∑ k ∈ Finset.range N,
                (k + 1 : ℝ) * responseDrop k u) := by
                  rw [Finset.mul_sum, Finset.mul_sum]
  have hsumDrops := responseDrop_sum_le_two N u hterminal
  have hweighted := weightedDropMoment_le_four_sqrt N u hterminal
  have hup :
      H * (∑ k ∈ Finset.range N, responseDrop k u) +
        B * weightedDropMoment N u ≤
          H * 2 + B * (4 * Real.sqrt (N : ℝ)) :=
    add_le_add (mul_le_mul_of_nonneg_left hsumDrops hH)
      (mul_le_mul_of_nonneg_left hweighted hB)
  calc
    absMertensDropWave N u ≤
        H * (∑ k ∈ Finset.range N, responseDrop k u) +
          B * weightedDropMoment N u := hsum
    _ ≤ H * 2 + B * (4 * Real.sqrt (N : ℝ)) := hup
    _ = 2 * Real.exp (u / 4) +
          ((4 : ℝ) ^ (A + 1) * C * Real.sqrt (N : ℝ)) /
            (1 + u) ^ A := by
        dsimp [H, B]
        rw [pow_succ]
        ring

/-- Source-exact birth: every drop beyond the original dynamic
cutoff floor(exp u) is identically ZERO, including the k+1 first
unborn integer. This is not an asymptotic tail approximation. -/
theorem responseDrop_zero_of_future
    (u : ℝ) (k : ℕ) (hk : ⌊Real.exp u⌋₊ ≤ k) :
    responseDrop k u = 0 := by
  have h1 : ⌊Real.exp u⌋₊ < k + 1 := by omega
  have h2 : ⌊Real.exp u⌋₊ < k + 2 := by omega
  unfold responseDrop
  rw [pickupResponse_zero_of_floor_lt (k + 1) u h1,
      pickupResponse_zero_of_floor_lt (k + 2) u h2]
  ring

/-- The old horizon T and every earlier u read precisely the same
original positive Abel envelope as the smaller DYNAMIC inventory.
All extra responses are genuinely unborn, not thrown away. -/
theorem absMertensDropWave_horizon_eq_dynamic
    (T u : ℝ) (hu : u ≤ T) :
    absMertensDropWave ⌊Real.exp T⌋₊ u =
      absMertensDropWave ⌊Real.exp u⌋₊ u := by
  classical
  have hfloor :
      ⌊Real.exp u⌋₊ ≤ ⌊Real.exp T⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr hu)
  have hsubset :
      Finset.range ⌊Real.exp u⌋₊ ⊆
        Finset.range ⌊Real.exp T⌋₊ :=
    Finset.range_mono hfloor
  unfold absMertensDropWave
  symm
  apply Finset.sum_subset hsubset
  intro k hk hnot
  have hlarge : ⌊Real.exp u⌋₊ ≤ k := by
    have hn : ¬ k < ⌊Real.exp u⌋₊ := by
      simpa only [Finset.mem_range] using hnot
    omega
  rw [responseDrop_zero_of_future u k hlarge]
  ring

/-- A strictly SOURCE-BOUND quantitative profile. The denominator
uses max(u,0) to be positive on all real arguments, so it is globally
continuous; on the ACTUAL physical interval u>=0 it is exactly
the ordinary classical log-power denominator (1+u)^A. -/
def logPowerTimeProfile (A : ℕ) (C u : ℝ) : ℝ :=
  2 * Real.exp (u / 4) +
    ((4 : ℝ) ^ (A + 1) * C * Real.exp (u / 2)) /
      (1 + max u 0) ^ A

theorem logPowerTimeProfile_continuous (A : ℕ) (C : ℝ) :
    Continuous (logPowerTimeProfile A C) := by
  have hden :
      Continuous (fun u : ℝ => (1 + max u 0) ^ A) :=
    (continuous_const.add (continuous_id.max continuous_const)).pow A
  have hnonzero : ∀ u : ℝ, (1 + max u 0) ^ A ≠ 0 := by
    intro u
    have hm : 0 ≤ max u 0 := le_max_right u 0
    exact pow_ne_zero A (by linarith)
  have hnum :
      Continuous (fun u : ℝ =>
        (4 : ℝ) ^ (A + 1) * C * Real.exp (u / 2)) := by
    fun_prop
  have hfirst :
      Continuous (fun u : ℝ => 2 * Real.exp (u / 4)) := by
    fun_prop
  exact hfirst.add (hnum.div hden hnonzero)

theorem logPowerTimeProfile_nonneg
    (A : ℕ) (C u : ℝ) (hC : 0 ≤ C) :
    0 ≤ logPowerTimeProfile A C u := by
  have hm : 0 ≤ max u 0 := le_max_right u 0
  unfold logPowerTimeProfile
  positivity

/-- THE ACTUAL CLASSICAL QUANTITATIVE MERTENS HYPOTHESIS is explicitly
passed as a source theorem parameter. On every prior physical time,
the original sharp Abel envelope reads the exact source M(k), and it
satisfies the fully explicit rate-one pointwise profile above.
There is ONE C_A independent of the source horizon and observation. -/
theorem classicalMertens_to_original_sharp_pointwise
    (hClassical : ClassicalMertensLogPowerInput)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T u : ℝ, 0 ≤ u → u ≤ T →
        absMertensDropWave ⌊Real.exp T⌋₊ u ≤
          logPowerTimeProfile A C u := by
  obtain ⟨C, hC, hM⟩ :=
    originalPrefix_logPower_of_classical hClassical A hA
  refine ⟨C, hC, ?_⟩
  intro T u hu huT
  rw [absMertensDropWave_horizon_eq_dynamic T u huT]
  have hterminal := original_terminal_response_zero u u le_rfl
  have hbase := absMertensDropWave_le_logPower_split
    A ⌊Real.exp u⌋₊ C u hC hu hM hterminal
  have hfloor : ((⌊Real.exp u⌋₊ : ℕ) : ℝ) ≤ Real.exp u :=
    Nat.floor_le (Real.exp_pos u).le
  have hroot :
      Real.sqrt ((⌊Real.exp u⌋₊ : ℕ) : ℝ) ≤
        Real.exp (u / 2) := by
    calc
      Real.sqrt ((⌊Real.exp u⌋₊ : ℕ) : ℝ) ≤
          Real.sqrt (Real.exp u) := Real.sqrt_le_sqrt hfloor
      _ = Real.exp (u / 2) := (Real.exp_half u).symm
  have hden : 0 ≤ (1 + u) ^ A := by positivity
  have hfactor :
      0 ≤ ((4 : ℝ) ^ (A + 1) * C) / (1 + u) ^ A := by
    positivity
  have hmajor :
      ((4 : ℝ) ^ (A + 1) * C *
         Real.sqrt ((⌊Real.exp u⌋₊ : ℕ) : ℝ)) / (1 + u) ^ A ≤
      ((4 : ℝ) ^ (A + 1) * C * Real.exp (u / 2)) /
        (1 + u) ^ A := by
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left hroot (by positivity))
      hden
  simpa only [logPowerTimeProfile, max_eq_left hu] using
    le_trans hbase (add_le_add_left hmajor _)

/-- The first actually relevant GLOBAL consumer of the arithmetic
input, measured against the SHARPER original absolute-prefix
integral instead of the weaker Cauchy Mertens-square budget.
No additional analytic supplier: the profile is continuous and
the finite horizon-source identification was paid in the predecessor. -/
theorem classicalMertens_to_sharp_original_energy_envelope
    (hClassical : ClassicalMertensLogPowerInput)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤
          ∫ u in (0 : ℝ)..T,
            logPowerTimeProfile A C u ^ 2 := by
  obtain ⟨C, hC, hpoint⟩ :=
    classicalMertens_to_original_sharp_pointwise hClassical A hA
  refine ⟨C, hC, ?_⟩
  intro T hT
  have hleft :
      IntervalIntegrable
        (fun u : ℝ =>
          absMertensDropWave ⌊Real.exp T⌋₊ u ^ 2)
        volume 0 T :=
    ((absMertensDropWave_continuous _).pow 2).intervalIntegrable 0 T
  have hright :
      IntervalIntegrable (fun u : ℝ =>
        logPowerTimeProfile A C u ^ 2) volume 0 T :=
    ((logPowerTimeProfile_continuous A C).pow 2).intervalIntegrable 0 T
  calc
    pickupEnergy T ≤
        ∫ u in (0 : ℝ)..T,
          absMertensDropWave ⌊Real.exp T⌋₊ u ^ 2 :=
      pickupEnergy_le_integral_absMertensDrops T hT
    _ ≤ ∫ u in (0 : ℝ)..T,
          logPowerTimeProfile A C u ^ 2 := by
      apply intervalIntegral.integral_mono_on hT hleft hright
      intro u hu
      have hle := hpoint T u hu.1 hu.2
      have hnonnegL := absMertensDropWave_nonneg ⌊Real.exp T⌋₊ u
      have hnonnegR := logPowerTimeProfile_nonneg A C u hC
      exact (sq_le_sq₀ hnonnegL hnonnegR).mpr hle

/-- Explicit final scalar-analysis task, logically separate from
classical arithmetic and from the kernel integration just proved.
Its all-T bound is elementary by splitting [0,T] at T/2.
The rate-one log savings, but NOT an exponent <1, follow.
This declaration is a FORMALIZATION TARGET, not a proof or axiom. -/
def TimeProfileRateOneIntegralTarget : Prop :=
  ∀ A : ℕ, 1 ≤ A →
    ∀ C : ℝ, 0 ≤ C →
      ∃ K : ℝ, 0 ≤ K ∧ ∀ T : ℝ, 0 ≤ T →
        (∫ u in (0 : ℝ)..T,
          logPowerTimeProfile A C u ^ 2) ≤
        K * Real.exp T / (1 + T) ^ (2 * A)

/-- The ORIGINAL target follows from the classical arithmetic bound
and a separately stated elementary profile integration target.
Unlike a declaration of RH, neither hypothesis is hidden: the latter
is the only remaining calculus conversion to a concrete
global rate-one logarithmic energy estimate. -/
theorem originalRateOneLogPower_of_classical_and_integral
    (hClassical : ClassicalMertensLogPowerInput)
    (hIntegral : TimeProfileRateOneIntegralTarget) :
    OriginalBalancedPNTLogPowerTarget := by
  intro β hβ
  obtain ⟨C, hC, henergy⟩ :=
    classicalMertens_to_sharp_original_energy_envelope
      hClassical β hβ
  obtain ⟨K, hK, hprofile⟩ := hIntegral β hβ C hC
  refine ⟨K, hK, ?_⟩
  intro T hT
  have hsmall : 0 ≤ (1 + T) ^ β := by positivity
  have hden : 0 < (1 + T) ^ (2 * β) := by positivity
  have hstrong : pickupCross T ≤
      K * Real.exp T / (1 + T) ^ (2 * β) := by
    have hh := (henergy T hT).trans (hprofile T hT)
    have hsplit := pickupEnergy_eq_diagonal_add_cross hT
    have hdiagonal := pickupDiagonal_nonneg hT
    linarith
  have hbase : 1 ≤ 1 + T := by linarith
  have hp : (1 + T) ^ β ≤ (1 + T) ^ (2 * β) := by
    gcongr
    omega
  have hKexp : 0 ≤ K * Real.exp T := mul_nonneg hK (Real.exp_pos _).le
  exact hstrong.trans
    ((div_le_div_of_nonneg_left hKexp (pow_pos (by linarith) _)
      hp))

end GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel
