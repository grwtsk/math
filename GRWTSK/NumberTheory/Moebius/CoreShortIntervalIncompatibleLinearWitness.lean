/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #575. Parent: draft PR #574 at
`2344d6dbe250a1c94010b7c2a4b8fe5676d1ec3e`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalIncompatibleBudget

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Each incompatible dyadic block contributes at most `n^2`, so the entire
incompatible first moment is bounded by the number of available block scales
times `n^2`. -/
theorem incompatibleDyadicStartBlockL1_le_blockCount_mul_sq
    (j n : ℕ) :
    incompatibleDyadicStartBlockL1 j n ≤
      (j + 1 : ℝ) * (n : ℝ) ^ 2 := by
  unfold incompatibleDyadicStartBlockL1
  calc
    (∑ r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
      dyadicStartBlockShortIntervalL1 r n) ≤
      ∑ _r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
        (n : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro r hr
      have hrn : 2 ^ r < n := (Finset.mem_filter.mp hr).2
      calc
        dyadicStartBlockShortIntervalL1 r n ≤
            ((2 ^ r : ℕ) : ℝ) * (n : ℝ) :=
          dyadicStartBlockShortIntervalL1_le r n
        _ ≤ (n : ℝ) * (n : ℝ) := by
          apply mul_le_mul_of_nonneg_right
          · exact_mod_cast Nat.le_of_lt hrn
          · positivity
        _ = (n : ℝ) ^ 2 := by ring
    _ ≤ ((Finset.range (j + 1)).card : ℝ) * (n : ℝ) ^ 2 := by
      rw [Finset.sum_const]
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast Finset.card_filter_le _
      · positivity
    _ = (j + 1 : ℝ) * (n : ℝ) ^ 2 := by simp

/-- One-depth deterministic estimate needed to make the crude incompatible
budget harmless.  This proposition contains no Möbius values. -/
def IncompatibleEndpointDepthBudget
    (j t : ℕ) : Prop :=
  2 * (incompatibleTerminalTrivialBudget j t +
      incompatibleLongInteriorTrivialBudget j t) +
      endpointCorrectionTrivialBudget j t ≤
    16 * (j + 2 : ℝ)

/-- All-depth version of the pure deterministic one-depth budget. -/
def UniformIncompatibleEndpointDepthBudget : Prop :=
  ∀ j t : ℕ, t ∈ coreLongDeepDepths j →
    IncompatibleEndpointDepthBudget j t

/-- Packet-level linear-scale certificate exposed by the crude deterministic
method.  This is only an upper bound class, not a lower bound. -/
def IncompatibleEndpointLinearScaleBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    coreLongIncompatibleTrivialBudgetPacket j +
        coreLongEndpointTrivialBudgetPacket j ≤
      C * (j + 2 : ℝ) * (((2 ^ j : ℕ) : ℝ))

/-- Even after a uniform O(j) one-depth payment, summing over all core depths
produces an O(j 2^j) certificate.  This theorem makes that scale loss explicit. -/
theorem incompatibleEndpointLinearScaleBound_of_uniformDepthBudget
    (hDepth : UniformIncompatibleEndpointDepthBudget) :
    IncompatibleEndpointLinearScaleBound := by
  refine ⟨32, by norm_num, ?_⟩
  intro j
  let Y : ℕ := 2 ^ (j + 1)
  have hcard :
      (coreLongDeepDepths j).card ≤ Y := by
    apply le_trans (Finset.card_le_card (Finset.filter_subset _ _))
    simp [Y]
  unfold coreLongIncompatibleTrivialBudgetPacket
    coreLongEndpointTrivialBudgetPacket
  rw [← Finset.sum_add_distrib]
  calc
    (∑ t ∈ coreLongDeepDepths j,
      (2 * (incompatibleTerminalTrivialBudget j t +
          incompatibleLongInteriorTrivialBudget j t) +
        endpointCorrectionTrivialBudget j t)) ≤
      ∑ _t ∈ coreLongDeepDepths j, (16 * (j + 2 : ℝ)) := by
        apply Finset.sum_le_sum
        intro t ht
        exact hDepth j t ht
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (16 * (j + 2 : ℝ)) := by simp
    _ ≤ (Y : ℝ) * (16 * (j + 2 : ℝ)) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast hcard
      · positivity
    _ = 32 * (j + 2 : ℝ) * (((2 ^ j : ℕ) : ℝ)) := by
      dsimp [Y]
      rw [Nat.pow_succ]
      ring

/-- Method-scope witness: the current trivial route has separated a pure
one-depth problem, but even an O(j) solution there certifies only dyadic-linear
packet growth.  A sharper depth-summed comparison or genuine cancellation is
still required for the subpolynomial RH-facing target. -/
structure IncompatibleTrivialMethodWitness where
  uniformDepthBudget : UniformIncompatibleEndpointDepthBudget
  linearScale : IncompatibleEndpointLinearScaleBound

/-- The missing improvement must act before or during the depth sum; merely
proving the displayed uniform one-depth estimate cannot by itself erase the
explicit cardinality factor in the preceding theorem. -/
structure IncompatibleDepthSummationImprovement where
  sourceStatement : Prop
  depthSummedImprovement :
    sourceStatement →
      SubpolynomialIncompatibleAndEndpointTrivialBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.incompatibleDyadicStartBlockL1_le_blockCount_mul_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.incompatibleEndpointLinearScaleBound_of_uniformDepthBudget
