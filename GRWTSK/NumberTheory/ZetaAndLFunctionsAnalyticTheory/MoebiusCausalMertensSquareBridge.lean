/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LogarithmicPickupSeries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusBalancedTwoSidedPNTDense
import Mathlib

/-!
# Source-exact finite-time Abel decomposition of the original Möbius pickup

The original input is the literal GRWTSK.RiemannHypothesis.CCC.moebiusReal
and the ACTUAL causal response pickupResponse, not a new probability model,
elliptic trace, positive replacement kernel, or changed finite inventory.
Its true Mertens prefix is the original signed source sum.

Summation by parts at EVERY positive integer index converts the entire
causal signed amplitude into signed Mertens prefixes times NONNEGATIVE
actual response drops. There is an exact terminal boundary term. At the
horizon cutoff N=floor(exp T), this term is identically zero on [0,T].

Two new unconditional finite consequences:
  |S_N(u)| <= sum_{k=1}^N |M(k)| [r_k(u)-r_{k+1}(u)];
  S_N(u)^2 <= r_1(u) * sum_{k=1}^N M(k)^2
                                     [r_k(u)-r_{k+1}(u)]
when the terminal response vanishes.

The full original pickup-energy majorant obtained by integrating this
pointwise inequality and the classical PNT log-power consequence are
complete ordinary mathematical arguments in the companion review. The
source-level identification with wholePickup, interval interchange and
Mertens log-power estimate are not falsely claimed kernel-checked here.

The resulting unconditional PNT upper savings are at EXPONENTIAL RATE ONE,
NOT all rates epsilon>0 and NOT RH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

/-- Actual original signed Möbius prefix, indexed exactly by 1..N.
It is not a freely supplied or sieve-adjusted arithmetic coefficient. -/
def finiteMertensPrefix (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, moebiusReal (j + 1)

/-- The literal finite original causal response with the exact mu sign,
including all squareful zero values and integer birth times. -/
def finitePickup (N : ℕ) (u : ℝ) : ℝ :=
  ∑ j ∈ Finset.range N,
    moebiusReal (j + 1) * pickupResponse (j + 1) u

/-- Original response drop, without averaging or smoothing in time. -/
def responseDrop (k : ℕ) (u : ℝ) : ℝ :=
  pickupResponse (k + 1) u - pickupResponse (k + 2) u

theorem finiteMertensPrefix_succ (N : ℕ) :
    finiteMertensPrefix (N + 1) =
      finiteMertensPrefix N + moebiusReal (N + 1) := by
  simp [finiteMertensPrefix, Finset.sum_range_succ]

/-- The new finite prefix is EXACTLY the previously maintained original
real Mertens prefix, not a new arithmetic source. -/
theorem finiteMertensPrefix_eq_source (N : ℕ) :
    finiteMertensPrefix N = mertensPrefix (N : ℝ) := by
  induction N with
  | zero =>
      simp [finiteMertensPrefix, mertensPrefix]
  | succ N ih =>
      rw [finiteMertensPrefix_succ, mertensPrefix_nat_succ, ih]

/-- Universal exact discrete Abel formula, proved with the original
range convention and its nonzero terminal boundary; no monotonicity
or source-specific arithmetic assumption is used. -/
theorem finiteAbel (a w : ℕ → ℝ) (N : ℕ) :
    (∑ j ∈ Finset.range N, a (j + 1) * w (j + 1)) =
      (∑ j ∈ Finset.range N, a (j + 1)) * w (N + 1) +
        ∑ k ∈ Finset.range N,
          (∑ j ∈ Finset.range (k + 1), a (j + 1)) *
            (w (k + 1) - w (k + 2)) := by
  induction N with
  | zero =>
      simp
  | succ N ih =>
      rw [Finset.sum_range_succ]
      rw [ih]
      simp only [Finset.sum_range_succ]
      ring

/-- Exactly the ORIGINAL causal Mertens-Abel identity, with the full
endpoint correction retained even when the horizon is not large enough. -/
theorem finitePickup_eq_MertensAbel (N : ℕ) (u : ℝ) :
    finitePickup N u =
      finiteMertensPrefix N * pickupResponse (N + 1) u +
        ∑ k ∈ Finset.range N,
          finiteMertensPrefix (k + 1) * responseDrop k u := by
  simpa only [finitePickup, finiteMertensPrefix, responseDrop] using
    finiteAbel moebiusReal (fun n => pickupResponse n u) N

/-- The pointwise physical-time response drop is truly nonnegative.
This is inherited from the already proved source-specific monotonicity,
not a PSD assertion about arbitrary individual Möbius terms. -/
theorem responseDrop_nonneg (k : ℕ) (u : ℝ) :
    0 ≤ responseDrop k u := by
  unfold responseDrop
  exact sub_nonneg.mpr
    (pickupResponse_antitone_positive (k + 1) (by omega) u)

/-- Every actual response drop is counted ONCE; the terminal face is
visible and is not discarded until the horizon cutoff is checked. -/
theorem responseDrop_sum (N : ℕ) (u : ℝ) :
    (∑ k ∈ Finset.range N, responseDrop k u) =
      pickupResponse 1 u - pickupResponse (N + 1) u := by
  induction N with
  | zero =>
      simp [responseDrop]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      unfold responseDrop
      ring

/-- Exact cancellation of the terminal boundary only after a proof that
this specific future response is zero. -/
theorem finitePickup_eq_MertensDrops
    (N : ℕ) (u : ℝ)
    (hterminal : pickupResponse (N + 1) u = 0) :
    finitePickup N u =
      ∑ k ∈ Finset.range N,
        finiteMertensPrefix (k + 1) * responseDrop k u := by
  rw [finitePickup_eq_MertensAbel, hterminal]
  ring

/-- Unconditional finite ORIGINAL-source signed L1 domination by the
Mertens-prefix magnitudes and the NONNEGATIVE true causal drops.
This retains the correct absolute value only AFTER summing the original
signed coefficients, and never assumes prefix cancellation. -/
theorem finitePickup_abs_le_MertensDropBudget
    (N : ℕ) (u : ℝ)
    (hterminal : pickupResponse (N + 1) u = 0) :
    |finitePickup N u| ≤
      ∑ k ∈ Finset.range N,
        |finiteMertensPrefix (k + 1)| * responseDrop k u := by
  rw [finitePickup_eq_MertensDrops N u hterminal]
  calc
    |∑ k ∈ Finset.range N,
        finiteMertensPrefix (k + 1) * responseDrop k u| ≤
      ∑ k ∈ Finset.range N,
        |finiteMertensPrefix (k + 1) * responseDrop k u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ k ∈ Finset.range N,
          |finiteMertensPrefix (k + 1)| * responseDrop k u := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [abs_mul, abs_of_nonneg (responseDrop_nonneg k u)]

/-- Exact monotonicity of the original prefix-envelope allowance:
any independently proved |M(k)| <= E(k) transfers to a full
pointwise causal response upper bound, with no extra arithmetic term. -/
theorem finitePickup_abs_le_of_prefix_envelope
    (N : ℕ) (u : ℝ) (E : ℕ → ℝ)
    (hterminal : pickupResponse (N + 1) u = 0)
    (hE : ∀ k ∈ Finset.range N,
      |finiteMertensPrefix (k + 1)| ≤ E (k + 1)) :
    |finitePickup N u| ≤
      ∑ k ∈ Finset.range N,
        E (k + 1) * responseDrop k u := by
  calc
    |finitePickup N u| ≤
        ∑ k ∈ Finset.range N,
          |finiteMertensPrefix (k + 1)| * responseDrop k u :=
      finitePickup_abs_le_MertensDropBudget N u hterminal
    _ ≤ ∑ k ∈ Finset.range N,
          E (k + 1) * responseDrop k u := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_right
        (hE k hk) (responseDrop_nonneg k u)

/-- A sharp finite weighted Cauchy-Schwarz inequality on the ORIGINAL
source Mertens prefixes. The signed amplitude is squared as a WHOLE,
not by removing any negative source correlation. -/
theorem finitePickup_square_le_MertensSquareDropBudget
    (N : ℕ) (u : ℝ)
    (hterminal : pickupResponse (N + 1) u = 0) :
    finitePickup N u ^ 2 ≤
      pickupResponse 1 u *
        (∑ k ∈ Finset.range N,
          finiteMertensPrefix (k + 1) ^ 2 * responseDrop k u) := by
  have hcs :
      (∑ k ∈ Finset.range N,
        finiteMertensPrefix (k + 1) * responseDrop k u) ^ 2 ≤
      (∑ k ∈ Finset.range N,
        finiteMertensPrefix (k + 1) ^ 2 * responseDrop k u) *
        (∑ k ∈ Finset.range N, responseDrop k u) := by
    apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
      (Finset.range N)
      (r := fun k => finiteMertensPrefix (k + 1) * responseDrop k u)
      (f := fun k => finiteMertensPrefix (k + 1) ^ 2 * responseDrop k u)
      (g := fun k => responseDrop k u)
    · intro k hk
      exact mul_nonneg (sq_nonneg _) (responseDrop_nonneg k u)
    · intro k hk
      exact responseDrop_nonneg k u
    · intro k hk
      apply le_of_eq
      ring
  rw [responseDrop_sum, hterminal, sub_zero] at hcs
  rw [finitePickup_eq_MertensDrops N u hterminal]
  nlinarith

/-- For the ORIGINAL physical observation horizon, the first omitted
positive integer N+1 is not yet born anywhere before T. -/
theorem original_terminal_response_zero
    (T u : ℝ) (hu : u ≤ T) :
    pickupResponse (⌊Real.exp T⌋₊ + 1) u = 0 := by
  have hfloor :
      Real.exp T <
        ((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ) :=
    Nat.lt_floor_add_one _
  have hexp :
      Real.exp u <
        ((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ) :=
    (Real.exp_le_exp.mpr hu).trans_lt hfloor
  have hpos : (0 : ℝ) <
      ((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ) := by positivity
  have hnot :
      ¬ Real.log (((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ)) ≤ u := by
    intro hlog
    have hle :
        ((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ) ≤ Real.exp u :=
      (Real.log_le_iff_le_exp hpos).mp hlog
    linarith
  simp [pickupResponse, hnot]

/-- The exact original terminal-index pointwise Mertens L1 upper bound,
valid at every 0 <= u <= T, with all zero Möbius terms retained. -/
theorem terminalPickup_abs_le_MertensDrops
    (T u : ℝ) (hu : u ≤ T) :
    |finitePickup ⌊Real.exp T⌋₊ u| ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        |finiteMertensPrefix (k + 1)| * responseDrop k u :=
  finitePickup_abs_le_MertensDropBudget
    ⌊Real.exp T⌋₊ u (original_terminal_response_zero T u hu)

/-- The complete original time-energy Mertens-square conclusion is
defined here as the exact future formalization target, NOT postulated
as an axiom or claimed to be kernel-checked. The paper argument
uses the existing actual wholePickup finite-horizon identity,
integral of the complete signed response square and finite Fubini. -/
def OriginalCausalMertensSquareEnergyTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    pickupEnergy T ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        finiteMertensPrefix (k + 1) ^ 2 *
          (pickupResponseGram T 1 (k + 1) -
            pickupResponseGram T 1 (k + 2))

/-- This is the real arithmetic input from the classical unconditional
Mertens bound, not a hidden Riemann-hypothesis-sized hypothesis.
It is not proved in Lean by this module. -/
def ClassicalMertensLogPowerInput : Prop :=
  ∀ A : ℕ, 1 ≤ A →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ n : ℕ, 1 ≤ n →
        |finiteMertensPrefix n| ≤
          C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A

/-- Global EXPONENTIAL-RATE-ONE logarithmic saving for the ORIGINAL
balanced signed source. It is an ordinary-paper consequence of
classical PNT via the preceding pointwise finite Abel identity.
The all-rate epsilon>0 requirement is strictly stronger and OPEN. -/
def OriginalBalancedPNTLogPowerTarget : Prop :=
  ∀ β : ℕ, 1 ≤ β →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        pickupCross T ≤
          C * Real.exp T / (1 + T) ^ β

end GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
