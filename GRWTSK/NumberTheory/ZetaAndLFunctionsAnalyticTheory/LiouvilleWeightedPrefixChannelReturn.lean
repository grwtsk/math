/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteWeightedChannelCovariance
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixSquareCriterion
import Mathlib

/-!
# Actual Liouville weighted-prefix return from general finite channel theory

This source is not a theorem about any one simulation or palette. Arbitrary
source-to-frequency and frequency-to-channel functions may be selected for
EACH N. Channel types can be infinite, but only the finite occupied image is
used. The original Liouville `coefficient`, closed prefix, terminal weight,
and every signed pair remain unchanged.

The generic covariance and random-choice comparison expose a paid channel
count and complete signed cross-channel residual. An independently proved
subpolynomial channel-energy bound would give a subpolynomial DISCRETE
Liouville prefix-square bound if the channel-count cost is controlled.
That bound is an RH-strength open premise. Random independent signs, colors,
or a DFT do NOT prove the actual arithmetic premise.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelReturn

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion

open GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance

classical

/-- Exact original weight in the Liouville discrete J_N moment. -/
def prefixWeight (k : ℕ) : ℝ :=
  1 / ((k : ℝ) * ((k + 1 : ℕ) : ℝ))

/-- Exact source/time inventory: 1..N, not an arbitrarily truncated sample. -/
def prefixInventory (N : ℕ) : Finset ℕ := Finset.Icc 1 N

/-- Original n is born in the prefix at k precisely when n<=k. -/
def prefixLive (n k : ℕ) : Prop := n ≤ k

/-- A frozen finite source inventory matches the original closed prefix at
any time k<=N. The terminal N+1 boundary is not removed. -/
theorem frozen_prefix_eq_liouvillePrefixNat (N k : ℕ) (hk : k ≤ N) :
    observation (prefixInventory N) prefixLive coefficient k =
      liouvillePrefixNat k := by
  unfold observation prefixInventory prefixLive liouvillePrefixNat
  rw [← Finset.sum_filter]
  have hfilter : (Finset.Icc 1 N).filter (fun n => n ≤ k) =
      Finset.Icc 1 k := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Icc]
    omega
  rw [hfilter]

/-- Fully source-identical Fubini input: no modified Liouville labels. -/
theorem discreteWeightedPrefixSquare_eq_weightedEnergy (N : ℕ) :
    discreteWeightedPrefixSquare N =
      weightedEnergy (prefixInventory N) (prefixInventory N)
        prefixLive coefficient prefixWeight := by
  unfold discreteWeightedPrefixSquare weightedEnergy
  apply Finset.sum_congr rfl
  intro k hk
  have hprefix := frozen_prefix_eq_liouvillePrefixNat N k
    (Finset.mem_Icc.mp hk).2
  rw [hprefix]
  unfold prefixWeight
  rw [div_eq_mul_inv]
  ring

/-- Actual Liouville J_N as a COMPLETE ordered pair sum through the true
nonnegative time-overlap kernel. This is algebra, not a cancellation bound. -/
theorem discreteWeightedPrefixSquare_eq_full_kernel (N : ℕ) :
    discreteWeightedPrefixSquare N =
      ∑ m ∈ prefixInventory N, ∑ n ∈ prefixInventory N,
        coefficient m * coefficient n *
          overlapKernel (prefixInventory N) prefixLive prefixWeight m n := by
  rw [discreteWeightedPrefixSquare_eq_weightedEnergy]
  exact weightedEnergy_eq_fullPairKernel
    (prefixInventory N) (prefixInventory N)
    prefixLive coefficient prefixWeight

/-- Occupied channels of an ARBITRARY factorization through frequencies. -/
def channels {ν κ : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ) : Finset κ :=
  occupiedChannels (prefixInventory N) frequency color

/-- Color of each original Liouville prefix at each original k. -/
def coloredPrefix {ν κ : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ)
    (k : ℕ) (r : κ) : ℝ :=
  channelObservation (prefixInventory N) frequency color
    prefixLive coefficient k r

/-- Sum of whole signed channel-prefix squares, before or after no
randomization; none of the intra-channel cross-pairs is discarded. -/
def coloredPrefixEnergy {ν κ : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ) : ℝ :=
  channelEnergy (prefixInventory N) (prefixInventory N)
    frequency color prefixLive coefficient prefixWeight

/-- Complete signed cross-channel energy, including both pair orientations. -/
def crossColoredPrefixEnergy {ν κ : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ) : ℝ :=
  crossChannelEnergy (prefixInventory N) (prefixInventory N)
    frequency color prefixLive coefficient prefixWeight

/-- True arithmetic prefix before squaring is exactly reassembled from
any finite or infinite collection of channel labels. -/
theorem liouvillePrefixNat_eq_channels {ν κ : Type*} (N k : ℕ)
    (hk : k ≤ N) (frequency : ℕ → ν) (color : ν → κ) :
    liouvillePrefixNat k =
      ∑ r ∈ channels N frequency color,
        coloredPrefix N frequency color k r := by
  rw [← frozen_prefix_eq_liouvillePrefixNat N k hk]
  exact observation_eq_channel_sum (prefixInventory N)
    frequency color prefixLive coefficient k

/-- Signed cross-color covariance is precisely the remaining loss when
one averages independent channel signs. It may be negative OR positive. -/
theorem actualWeightedPrefix_eq_colored_add_cross {ν κ : Type*}
    (N : ℕ) (frequency : ℕ → ν) (color : ν → κ) :
    discreteWeightedPrefixSquare N =
      coloredPrefixEnergy N frequency color +
        crossColoredPrefixEnergy N frequency color := by
  rw [discreteWeightedPrefixSquare_eq_weightedEnergy]
  exact weightedEnergy_eq_channel_add_cross
    (prefixInventory N) (prefixInventory N) frequency color
    prefixLive coefficient prefixWeight

/-- The actual source weights are positive at every legal prefix stage. -/
theorem prefixWeight_nonneg (k : ℕ) : 0 ≤ prefixWeight k := by
  unfold prefixWeight
  positivity

/-- Mathematical Cauchy inequality: the original Liouville J_N cannot
be more than occupied-channel count times the summed channel energy. -/
theorem actualWeightedPrefix_le_occupiedCard {ν κ : Type*}
    (N : ℕ) (frequency : ℕ → ν) (color : ν → κ) :
    discreteWeightedPrefixSquare N ≤
      ((channels N frequency color).card : ℝ) *
        coloredPrefixEnergy N frequency color := by
  rw [discreteWeightedPrefixSquare_eq_weightedEnergy]
  exact weightedEnergy_le_channel_card
    (prefixInventory N) (prefixInventory N) frequency color
    prefixLive coefficient prefixWeight (by
      intro k hk
      exact prefixWeight_nonneg k)

/-- True nonnegative squared-channel energy, with the actual Liouville
signs retained BEFORE each channel is squared. -/
theorem coloredPrefixEnergy_nonneg {ν κ : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ) :
    0 ≤ coloredPrefixEnergy N frequency color := by
  unfold coloredPrefixEnergy channelEnergy
  apply Finset.sum_nonneg
  intro k hk
  apply mul_nonneg (prefixWeight_nonneg k)
  apply Finset.sum_nonneg
  intro r hr
  exact sq_nonneg _

/-- Arbitrary finite random-choice outcomes and exact actual Liouville
prefix amplitudes, without choosing a distribution or a simulation. -/
def randomizedColoredPrefixEnergy {ν κ Ω : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ)
    (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ) : ℝ :=
  ∑ k ∈ prefixInventory N, prefixWeight k *
    choiceMeanSquare outcomes mass choice
      (channels N frequency color) (coloredPrefix N frequency color k)

/-- For any actual finite joint law with orthogonal second moments,
randomized channel-prefix energy equals the deterministic sum of whole
signed channel-prefix squares. It does NOT equal the true J_N in general. -/
theorem randomChoice_mean_eq_coloredEnergy_of_orthogonal
    {ν κ Ω : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ)
    (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ)
    (horth : ∀ r ∈ channels N frequency color,
      ∀ s ∈ channels N frequency color,
      choiceCorrelation outcomes mass choice r s =
        if r = s then 1 else 0) :
    randomizedColoredPrefixEnergy N frequency color
      outcomes mass choice = coloredPrefixEnergy N frequency color := by
  unfold randomizedColoredPrefixEnergy coloredPrefixEnergy channelEnergy
  apply Finset.sum_congr rfl
  intro k hk
  rw [choiceMeanSquare_eq_channelSquares_of_orthogonal
    outcomes mass choice (channels N frequency color)
    (coloredPrefix N frequency color k) horth]
  rfl

/-- The exact arithmetic-versus-random-correlation return: its COMPLETE
signed cross-channel residual survives every orthogonal random choice. -/
theorem actualWeightedPrefix_eq_randomMean_add_cross
    {ν κ Ω : Type*} (N : ℕ)
    (frequency : ℕ → ν) (color : ν → κ)
    (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ)
    (horth : ∀ r ∈ channels N frequency color,
      ∀ s ∈ channels N frequency color,
      choiceCorrelation outcomes mass choice r s =
        if r = s then 1 else 0) :
    discreteWeightedPrefixSquare N =
      randomizedColoredPrefixEnergy N frequency color outcomes mass choice +
        crossColoredPrefixEnergy N frequency color := by
  rw [randomChoice_mean_eq_coloredEnergy_of_orthogonal
    N frequency color outcomes mass choice horth]
  exact actualWeightedPrefix_eq_colored_add_cross N frequency color

/-- Uniform channel-cardinality must be paid; infinitely many possible
ambient colors are allowed provided the occupied finite image is controlled. -/
def UniformChannelCount {ν κ : Type*} (frequency : ℕ → ν)
    (color : ν → κ) : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧
    ∀ N : ℕ, ((channels N frequency color).card : ℝ) ≤ K

/-- The proposed channel-square estimate is an INDEPENDENT arithmetic
premise at every N and every positive exponent, not a random choice axiom. -/
def SubpolynomialChannelEnergy {ν κ : Type*} (frequency : ℕ → ν)
    (color : ν → κ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ A : ℝ, 0 ≤ A ∧ ∀ N : ℕ,
      coloredPrefixEnergy N frequency color ≤
        A * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- Honest DISCRETE Liouville target, not already the continuous all-rate
moment of the RH criterion; bridging those is separate exact-source work. -/
def SubpolynomialDiscreteWeightedPrefix : Prop :=
  ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ,
      discreteWeightedPrefixSquare N ≤
        C * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- Conditional supplier transfer. The unproved channel-energy premise is
made visible and has RH strength at any fixed finite color count. -/
theorem subpolynomialDiscrete_of_channel_bound {ν κ : Type*}
    (frequency : ℕ → ν) (color : ν → κ)
    (hcount : UniformChannelCount frequency color)
    (hchannels : SubpolynomialChannelEnergy frequency color) :
    SubpolynomialDiscreteWeightedPrefix := by
  obtain ⟨K, hK, hcard⟩ := hcount
  intro η hη
  obtain ⟨A, hA, hA_bound⟩ := hchannels η hη
  refine ⟨K * A, mul_nonneg hK hA, ?_⟩
  intro N
  have hzero := coloredPrefixEnergy_nonneg N frequency color
  have hcountN := hcard N
  have hupper := hA_bound N
  calc
    discreteWeightedPrefixSquare N ≤
      ((channels N frequency color).card : ℝ) *
        coloredPrefixEnergy N frequency color :=
      actualWeightedPrefix_le_occupiedCard N frequency color
    _ ≤ K * coloredPrefixEnergy N frequency color :=
      mul_le_mul_of_nonneg_right hcountN hzero
    _ ≤ K * (A * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))) :=
      mul_le_mul_of_nonneg_left hupper hK
    _ = (K * A) * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ))) := by ring

/-- A fixed finite channel type automatically pays a uniform, but possibly
large, cardinality cost. It does NOT supply the arithmetic energy bound. -/
theorem uniformChannelCount_of_finite {ν κ : Type*} [Fintype κ]
    (frequency : ℕ → ν) (color : ν → κ) :
    UniformChannelCount frequency color := by
  refine ⟨(Fintype.card κ : ℝ), by positivity, ?_⟩
  intro N
  have h := Finset.card_le_card (Finset.subset_univ (channels N frequency color))
  exact_mod_cast h


/-- The ADDRESS MAP may change at every cutoff; the *occupied* channel count
has a genuine subpolynomial budget only if separately proved for the family. -/
def SubpolynomialChannelCountFamily {ν κ : Type*}
    (frequency : ℕ → ℕ → ν) (color : ℕ → ν → κ) : Prop :=
  ∀ η : ℝ, 0 < η → ∃ A : ℝ, 0 ≤ A ∧ ∀ N : ℕ,
    ((channels N (frequency N) (color N)).card : ℝ) ≤
      A * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- Dynamic channel aggregates over each full actual Liouville prefix.
This is an independent arithmetic premise, NOT a simulation expectation. -/
def SubpolynomialChannelEnergyFamily {ν κ : Type*}
    (frequency : ℕ → ℕ → ν) (color : ℕ → ν → κ) : Prop :=
  ∀ η : ℝ, 0 < η → ∃ A : ℝ, 0 ≤ A ∧ ∀ N : ℕ,
    coloredPrefixEnergy N (frequency N) (color N) ≤
      A * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- The fully generalized paid-cardinality return. BOTH the growing
number of occupied colors and their whole signed energy must have an
independent all-positive-rate bound. Neither is inferred from DFT or IID
random choices; the original deterministic Liouville sum is unchanged. -/
theorem subpolynomialDiscrete_of_dynamicChannelEstimates
    {ν κ : Type*} (frequency : ℕ → ℕ → ν)
    (color : ℕ → ν → κ)
    (hcount : SubpolynomialChannelCountFamily frequency color)
    (henergy : SubpolynomialChannelEnergyFamily frequency color) :
    SubpolynomialDiscreteWeightedPrefix := by
  intro η hη
  have hhalf : 0 < η / 2 := by linarith
  obtain ⟨K, hK, hK_bound⟩ := hcount (η / 2) hhalf
  obtain ⟨A, hA, hA_bound⟩ := henergy (η / 2) hhalf
  refine ⟨K * A, mul_nonneg hK hA, ?_⟩
  intro N
  let x : ℝ := (η / 2) * Real.log (((N + 1 : ℕ) : ℝ))
  have hx : η * Real.log (((N + 1 : ℕ) : ℝ)) = x + x := by
    dsimp [x]
    ring
  have hnear : 0 ≤ coloredPrefixEnergy N (frequency N) (color N) :=
    coloredPrefixEnergy_nonneg N (frequency N) (color N)
  have hright : 0 ≤ K * Real.exp x := by positivity
  calc
    discreteWeightedPrefixSquare N ≤
      ((channels N (frequency N) (color N)).card : ℝ) *
        coloredPrefixEnergy N (frequency N) (color N) :=
      actualWeightedPrefix_le_occupiedCard N (frequency N) (color N)
    _ ≤ (K * Real.exp x) * (A * Real.exp x) := by
      exact mul_le_mul (by simpa only [x] using hK_bound N)
        (by simpa only [x] using hA_bound N) hnear hright
    _ = (K * A) * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ))) := by
      rw [hx, Real.exp_add]
      ring

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelReturn
