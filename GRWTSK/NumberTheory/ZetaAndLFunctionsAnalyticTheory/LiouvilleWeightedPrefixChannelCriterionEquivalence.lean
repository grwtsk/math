/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixChannelReturn
import Mathlib

/-!
# The generalized channel certificate is equivalent to the discrete target

The arbitrary-channel source gives a sufficient implication:
subpolynomial occupied-channel count plus subpolynomial whole-channel energy
implies the original discrete weighted Liouville-prefix bound.

This file records the converse through the one-channel specialization.  Put
every source index into the unique `Unit` channel.  Its occupied count is at
most one and its whole-channel energy is exactly the original weighted prefix
square.  Therefore existence of a paid dynamic channel certificate is not a
weaker arithmetic target.  A useful channelization must be accompanied by an
independent arithmetic proof of its channel-energy bound.

The result is discrete.  The separately named continuous/discrete and dyadic
coverage bridges remain required before `WeightedPrefixSquareAllRate` or
`UniformEnergySupplier` can be concluded.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelCriterionEquivalence

open GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelReturn
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance

classical

/-- Every cutoff and source index is sent to the unique frequency. -/
def singletonFrequency (_N _n : ℕ) : Unit := ()

/-- The unique frequency is sent to the unique channel. -/
def singletonColor (_N : ℕ) (_u : Unit) : Unit := ()

/-- Orthogonalization has no cross-channel residual when there is only one
channel.  The theorem is stated separately to keep the exact source return
visible. -/
theorem singleton_crossColoredPrefixEnergy_zero (N : ℕ) :
    crossColoredPrefixEnergy N (singletonFrequency N) (singletonColor N) = 0 := by
  unfold crossColoredPrefixEnergy crossChannelEnergy channels occupiedChannels
  simp [singletonFrequency, singletonColor]

/-- The one-channel whole-channel square is the original Liouville weighted
prefix square exactly, not merely an upper bound. -/
theorem singleton_coloredPrefixEnergy_eq_discrete (N : ℕ) :
    coloredPrefixEnergy N (singletonFrequency N) (singletonColor N) =
      discreteWeightedPrefixSquare N := by
  have h := actualWeightedPrefix_eq_colored_add_cross
    N (singletonFrequency N) (singletonColor N)
  rw [singleton_crossColoredPrefixEnergy_zero] at h
  linarith

/-- The occupied singleton image has an all-positive-rate cardinality budget. -/
theorem singleton_channelCountFamily :
    SubpolynomialChannelCountFamily singletonFrequency singletonColor := by
  intro η hη
  refine ⟨1, by norm_num, ?_⟩
  intro N
  have hsub : channels N (singletonFrequency N) (singletonColor N) ⊆
      ({()} : Finset Unit) := by
    intro u hu
    simp
  have hcardNat := Finset.card_le_card hsub
  have hcard :
      ((channels N (singletonFrequency N) (singletonColor N)).card : ℝ) ≤ 1 := by
    exact_mod_cast hcardNat
  have hbase : (1 : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.succ_le_succ (Nat.zero_le N)
  have hlog : 0 ≤ Real.log (((N + 1 : ℕ) : ℝ)) := Real.log_nonneg hbase
  have hexp :
      1 ≤ Real.exp (η * Real.log (((N + 1 : ℕ) : ℝ))) := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (mul_nonneg hη.le hlog)
  exact hcard.trans hexp

/-- The original discrete target supplies the one-channel energy premise with
identical constants. -/
theorem singleton_channelEnergyFamily_of_discrete
    (hdisc : SubpolynomialDiscreteWeightedPrefix) :
    SubpolynomialChannelEnergyFamily singletonFrequency singletonColor := by
  intro η hη
  obtain ⟨A, hA, hN⟩ := hdisc η hη
  refine ⟨A, hA, ?_⟩
  intro N
  rw [singleton_coloredPrefixEnergy_eq_discrete]
  exact hN N

/-- Exact no-free-lunch statement for the generalized dynamic-channel route.
The forward implication is the existing paid-cardinality theorem; the reverse
implication uses the source-identical one-channel specialization. -/
theorem singleton_dynamicChannelCertificate_iff_discrete :
    (SubpolynomialChannelCountFamily singletonFrequency singletonColor ∧
      SubpolynomialChannelEnergyFamily singletonFrequency singletonColor) ↔
        SubpolynomialDiscreteWeightedPrefix := by
  constructor
  · rintro ⟨hcount, henergy⟩
    exact subpolynomialDiscrete_of_dynamicChannelEstimates
      singletonFrequency singletonColor hcount henergy
  · intro hdisc
    exact ⟨singleton_channelCountFamily,
      singleton_channelEnergyFamily_of_discrete hdisc⟩

/-- Method disposition: arbitrary dynamic channels can expose structure, but
merely asserting existence of a paid channel certificate is equivalent to the
original discrete arithmetic target. -/
def ChannelCriterionEquivalenceDisposition : Prop :=
  (SubpolynomialChannelCountFamily singletonFrequency singletonColor ∧
    SubpolynomialChannelEnergyFamily singletonFrequency singletonColor) ↔
      SubpolynomialDiscreteWeightedPrefix

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixChannelCriterionEquivalence
