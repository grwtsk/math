/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixChannelReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixTwoAdicChains
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib

/-!
# A nontrivial source-specific channelization with subpolynomial channel energy

Every positive integer is assigned to its odd core after removing the complete
power of two.  For the actual Liouville coefficient, the terms inside one odd
core alternate exactly along the chain `q, 2q, 4q, ...`.  Hence every live
channel amplitude is either zero or `lambda(q)`, and the complete sum of
channel-prefix squares costs at most one half of the harmonic prefix.

This is a genuine all-positive-rate bound for a nontrivial channel energy.  It
does NOT prove the original weighted-prefix supplier: the number of occupied
odd-core channels is `ceil(N/2)`, and the complete signed cross-channel packet
is precisely the remaining distinct-odd-core arithmetic obligation.

The low-level odd-core reindexing and alternating-prefix identities are kept as
explicit named propositions pending pinned Lean elaboration.  No random-sign
model, new axiom, `WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, or RH
claim is introduced.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixOddCoreChannels

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelReturn
open GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance

classical

/-- Remove the complete power of two from a natural number.  Only positive
source indices are used by the weighted-prefix inventory. -/
def oddCore (n : ℕ) : ℕ :=
  n / 2 ^ padicValNat 2 n

/-- The source-to-frequency map is deliberately lossless. -/
def oddCoreFrequency (_N n : ℕ) : ℕ := n

/-- The frequency is compressed to its exact odd core. -/
def oddCoreColor (_N : ℕ) (n : ℕ) : ℕ := oddCore n

/-- Complete whole-channel square energy for the odd-core assignment. -/
def oddCoreChannelEnergy (N : ℕ) : ℝ :=
  coloredPrefixEnergy N (oddCoreFrequency N) (oddCoreColor N)

/-- Complete signed cross-channel residual for the odd-core assignment. -/
def oddCoreCrossEnergy (N : ℕ) : ℝ :=
  crossColoredPrefixEnergy N (oddCoreFrequency N) (oddCoreColor N)

/-- Occupied odd-core channels at the terminal inventory. -/
def oddCoreChannels (N : ℕ) : Finset ℕ :=
  channels N (oddCoreFrequency N) (oddCoreColor N)

/-- The original weighted Liouville square is exactly the odd-core channel
energy plus both orientations of every distinct-core correlation. -/
theorem discrete_eq_oddCoreEnergy_add_cross (N : ℕ) :
    discreteWeightedPrefixSquare N =
      oddCoreChannelEnergy N + oddCoreCrossEnergy N := by
  exact actualWeightedPrefix_eq_colored_add_cross
    N (oddCoreFrequency N) (oddCoreColor N)

/-- Correctness and uniqueness of the chosen odd core on positive indices. -/
def OddCoreDecompositionCorrect : Prop :=
  ∀ n : ℕ, 1 ≤ n →
    ∃! aq : ℕ × ℕ,
      n = 2 ^ aq.1 * aq.2 ∧ Nat.Odd aq.2 ∧ oddCore n = aq.2

/-- Exact live amplitude of one odd-core channel.  The finite sum is over all
born powers `2^a*q`; complete multiplicativity supplies `(-1)^a`. -/
def OddCoreChannelAmplitudeFormula : Prop :=
  ∀ (N k q : ℕ), k ≤ N → 1 ≤ q → Nat.Odd q →
    coloredPrefix N (oddCoreFrequency N) (oddCoreColor N) k q =
      coefficient q *
        ∑ a ∈ (Finset.range (k + 1)).filter (fun a => 2 ^ a * q ≤ k),
          (-1 : ℝ) ^ a

/-- Alternation along each actual two-adic Liouville chain leaves a live
channel amplitude of absolute value at most one. -/
def OddCoreChannelAmplitudeUnitBound : Prop :=
  ∀ (N k q : ℕ), k ≤ N → q ∈ oddCoreChannels N →
    |coloredPrefix N (oddCoreFrequency N) (oddCoreColor N) k q| ≤ 1

/-- Exact terminal number of occupied channels: the positive odd integers at
most `N`. -/
def OddCoreOccupiedChannelsExact : Prop :=
  ∀ N : ℕ, (oddCoreChannels N).card = (N + 1) / 2

/-- Source-specific energy estimate.  At prefix `k`, only odd cores `q ≤ k`
can be live, each contributes at most one square, and there are `ceil(k/2)` of
them. -/
def OddCoreChannelEnergyHarmonicBound : Prop :=
  ∀ N : ℕ, oddCoreChannelEnergy N ≤ harmonicOneTo N / 2

/-- The elementary harmonic allowance in exactly the exponential-log format
used by the generalized dynamic-channel API. -/
def HarmonicExpAllRate : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      harmonicOneTo N ≤
        C * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- The selected nontrivial channelization has a genuine all-positive-rate
whole-channel energy bound, conditional only on the two explicit elementary
source interfaces above. -/
theorem oddCoreChannelEnergy_allRate
    (henergy : OddCoreChannelEnergyHarmonicBound)
    (hharm : HarmonicExpAllRate) :
    SubpolynomialChannelEnergyFamily oddCoreFrequency oddCoreColor := by
  intro η hη
  obtain ⟨C, hC, hN⟩ := hharm η hη
  refine ⟨C / 2, by positivity, ?_⟩
  intro N
  have he := henergy N
  have hh := hN N
  nlinarith

/-- All-positive-rate upper target for the complete signed packet between
distinct odd cores. -/
def OddCoreCrossAllRate : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      oddCoreCrossEnergy N ≤
        C * Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ)))

/-- Since the proved channel energy is itself all-positive-rate and
nonnegative, the original discrete supplier is equivalent to upper control of
the complete signed cross-channel packet.  This theorem does not estimate that
packet. -/
theorem oddCoreCrossAllRate_iff_discrete
    (henergy : SubpolynomialChannelEnergyFamily
      oddCoreFrequency oddCoreColor) :
    OddCoreCrossAllRate ↔ SubpolynomialDiscreteWeightedPrefix := by
  constructor
  · intro hcross η hη
    obtain ⟨Ce, hCe, he⟩ := henergy η hη
    obtain ⟨Cc, hCc, hc⟩ := hcross η hη
    refine ⟨Ce + Cc, by positivity, ?_⟩
    intro N
    have hdecomp := discrete_eq_oddCoreEnergy_add_cross N
    have heN := he N
    have hcN := hc N
    rw [hdecomp]
    nlinarith
  · intro hdisc η hη
    obtain ⟨C, hC, hN⟩ := hdisc η hη
    refine ⟨C, hC, ?_⟩
    intro N
    have hdecomp := discrete_eq_oddCoreEnergy_add_cross N
    have hnonneg := coloredPrefixEnergy_nonneg
      N (oddCoreFrequency N) (oddCoreColor N)
    have hJN := hN N
    rw [hdecomp] at hJN
    linarith

/-- Exact Cauchy return for this channelization.  The energy is small, but the
occupied-channel count must still be paid. -/
theorem discrete_le_oddCoreCard_mul_energy (N : ℕ) :
    discreteWeightedPrefixSquare N ≤
      ((oddCoreChannels N).card : ℝ) * oddCoreChannelEnergy N := by
  exact actualWeightedPrefix_le_occupiedCard
    N (oddCoreFrequency N) (oddCoreColor N)

/-- With the exact count and harmonic energy bound, generic channel Cauchy
returns only a rate-one allowance.  This records the method ceiling without
asserting any asymptotic theorem. -/
theorem oddCoreCauchy_bound
    (hcount : OddCoreOccupiedChannelsExact)
    (henergy : OddCoreChannelEnergyHarmonicBound)
    (N : ℕ) :
    discreteWeightedPrefixSquare N ≤
      (((N + 1) / 2 : ℕ) : ℝ) * (harmonicOneTo N / 2) := by
  have hbase := discrete_le_oddCoreCard_mul_energy N
  have he := henergy N
  rw [hcount N] at hbase
  have hcard0 : 0 ≤ ((((N + 1) / 2 : ℕ) : ℝ)) := by positivity
  exact hbase.trans (mul_le_mul_of_nonneg_left he hcard0)

/-- Full research disposition: the nontrivial channel energy is paid, while
the distinct-core cross packet remains exactly the RH-strength frontier and
the linear channel count prevents a generic Cauchy completion. -/
def OddCoreChannelDisposition : Prop :=
  OddCoreDecompositionCorrect ∧
    OddCoreChannelAmplitudeFormula ∧
      OddCoreChannelAmplitudeUnitBound ∧
        OddCoreOccupiedChannelsExact ∧
          OddCoreChannelEnergyHarmonicBound ∧
            HarmonicExpAllRate ∧
              (OddCoreCrossAllRate ↔ SubpolynomialDiscreteWeightedPrefix)

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixOddCoreChannels
