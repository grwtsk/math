/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #522. Direct stacked parent: draft PR #515 at
`ecb96a26b8d3fa149ee27e4f920dd1e50e1b03c5`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointFibreFourMobiusCollisions

/-!
# Finite cancellation witness against diagonal lower bounds

The four-Möbius expansion has a nonnegative square diagonal, but the remaining
collision strata are signed.  Therefore the diagonal is not automatically a
lower bound for the original endpoint-fibre square.

The actual Möbius source already gives the obstruction at endpoint `b = 3`:

* endpoint fibre = `1`;
* diagonal = `3`;
* cross-collision contribution = `-2`;
* four-distinct contribution = `0`.

At dyadic scale `j = 1`, after the exact reciprocal endpoint weighting, the
same effect is

* weighted diagonal = `5/3`;
* weighted cross-collision = `-2/3`;
* weighted four-distinct = `0`;
* complete weighted endpoint energy = `1`.

Only the proposal that the positive diagonal lower-bounds the complete energy
is refuted.  The endpoint-fibre supplier itself is not refuted.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact source value `mu(1)=1`, local to the diagonal-cancellation witness. -/
@[simp] theorem moebiusReal_one_for_diagonal_cancellation_witness :
    moebiusReal 1 = 1 := by
  change ((ArithmeticFunction.moebius 1 : ℤ) : ℝ) = 1
  rw [ArithmeticFunction.moebius_apply_one]
  norm_num

/-- Exact source value `mu(2)=-1`. -/
@[simp] theorem moebiusReal_two_for_diagonal_cancellation_witness :
    moebiusReal 2 = -1 := by
  change ((ArithmeticFunction.moebius 2 : ℤ) : ℝ) = -1
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2)]
  norm_num

/-- Exact source value `mu(3)=-1`. -/
@[simp] theorem moebiusReal_three_for_diagonal_cancellation_witness :
    moebiusReal 3 = -1 := by
  change ((ArithmeticFunction.moebius 3 : ℤ) : ℝ) = -1
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

/-- At endpoint two the diagonal is exactly one. -/
theorem mertensEndpointFibreDiagonalEnergy_two :
    mertensEndpointFibreDiagonalEnergy 2 = 1 := by
  simp [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mertensEndpointFibreDiagonalEnergy,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]

/-- At endpoint three the positive diagonal has mass three. -/
theorem mertensEndpointFibreDiagonalEnergy_three :
    mertensEndpointFibreDiagonalEnergy 3 = 3 := by
  simp [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ,
    Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mertensEndpointFibreDiagonalEnergy,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]
  norm_num

/-- There is no cross-collision at endpoint two. -/
theorem mertensEndpointFibreCrossCollisionEnergy_two :
    mertensEndpointFibreCrossCollisionEnergy 2 = 0 := by
  simp [Finset.sum_filter, Finset.product_eq_sprod, mertensEndpointFibreCrossCollisionEnergy,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]

/-- The two oriented cross-collisions at endpoint three contribute `-2`. -/
theorem mertensEndpointFibreCrossCollisionEnergy_three :
    mertensEndpointFibreCrossCollisionEnergy 3 = -2 := by
  simp [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ,
    Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mertensEndpointFibreCrossCollisionEnergy,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]
  norm_num

/-- There is no four-distinct contribution at endpoint two. -/
theorem mertensEndpointFibreFourDistinctCorrelation_two :
    mertensEndpointFibreFourDistinctCorrelation 2 = 0 := by
  simp [Finset.sum_filter, Finset.product_eq_sprod, mertensEndpointFibreFourDistinctCorrelation,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]

/-- There is no four-distinct contribution at endpoint three. -/
theorem mertensEndpointFibreFourDistinctCorrelation_three :
    mertensEndpointFibreFourDistinctCorrelation 3 = 0 := by
  simp [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ,
    Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mertensEndpointFibreFourDistinctCorrelation,
    mertensEndpointStratumPairSet, mertensEndpointPairSet,
    mertensEndpointFourMobiusStratum, mertensEndpointFourMobiusTerm]

/-- The complete endpoint fibre at `b=3` is one after signed cancellation. -/
theorem mertensTwoPointEndpointFibreQuadraticEnergy_three :
    mertensTwoPointEndpointFibreQuadraticEnergy 3 = 1 := by
  rw [mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition,
    mertensEndpointFibreDiagonalEnergy_three,
    mertensEndpointFibreCrossCollisionEnergy_three,
    mertensEndpointFibreFourDistinctCorrelation_three]
  norm_num

/-- The positive diagonal is already larger than the original squared-prefix
fibre at endpoint three. -/
theorem endpointFibre_diagonal_not_le_at_three :
    ¬ (mertensEndpointFibreDiagonalEnergy 3 ≤
      mertensTwoPointEndpointFibreQuadraticEnergy 3) := by
  rw [mertensEndpointFibreDiagonalEnergy_three,
    mertensTwoPointEndpointFibreQuadraticEnergy_three]
  norm_num

/-- Proposal that the four-Möbius diagonal lower-bounds every endpoint fibre. -/
def EndpointFibreDiagonalLowerBoundProposal : Prop :=
  ∀ b : ℕ,
    mertensEndpointFibreDiagonalEnergy b ≤
      mertensTwoPointEndpointFibreQuadraticEnergy b

/-- The endpointwise diagonal-lower-bound proposal is false for the actual
Möbius source. -/
theorem not_endpointFibreDiagonalLowerBoundProposal :
    ¬ EndpointFibreDiagonalLowerBoundProposal := by
  intro h
  exact endpointFibre_diagonal_not_le_at_three (h 3)

/-- At scale one the reciprocal-weighted diagonal is exactly `5/3`. -/
theorem weightedMertensEndpointDiagonalEnergy_one :
    weightedMertensEndpointDiagonalEnergy 1 = (5 : ℝ) / 3 := by
  norm_num [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ, weightedMertensEndpointDiagonalEnergy,
    mertensEndpointFibreDiagonalEnergy_two,
    mertensEndpointFibreDiagonalEnergy_three]

/-- At scale one the weighted cross-collision contribution is `-2/3`. -/
theorem weightedMertensEndpointCrossCollisionEnergy_one :
    weightedMertensEndpointCrossCollisionEnergy 1 = (-2 : ℝ) / 3 := by
  norm_num [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ, weightedMertensEndpointCrossCollisionEnergy,
    mertensEndpointFibreCrossCollisionEnergy_two,
    mertensEndpointFibreCrossCollisionEnergy_three]

/-- At scale one the four-distinct weighted contribution is zero. -/
theorem weightedMertensEndpointFourDistinctCorrelation_one :
    weightedMertensEndpointFourDistinctCorrelation 1 = 0 := by
  norm_num [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ, weightedMertensEndpointFourDistinctCorrelation,
    mertensEndpointFibreFourDistinctCorrelation_two,
    mertensEndpointFibreFourDistinctCorrelation_three]

/-- The complete reciprocal endpoint-weighted energy is exactly one at scale
one. -/
theorem weightedMertensSignedAbelEndpointFibreQuadraticEnergy_one :
    weightedMertensSignedAbelEndpointFibreQuadraticEnergy 1 = 1 := by
  rw [weightedMertensSignedAbelEndpointFibreQuadraticEnergy_eq_strata,
    weightedMertensEndpointDiagonalEnergy_one,
    weightedMertensEndpointCrossCollisionEnergy_one,
    weightedMertensEndpointFourDistinctCorrelation_one]
  norm_num

/-- The weighted diagonal also fails to lower-bound the complete RH-facing
quadratic observable. -/
theorem weightedEndpoint_diagonal_not_le_at_one :
    ¬ (weightedMertensEndpointDiagonalEnergy 1 ≤
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy 1) := by
  rw [weightedMertensEndpointDiagonalEnergy_one,
    weightedMertensSignedAbelEndpointFibreQuadraticEnergy_one]
  norm_num

/-- Proposal that the reciprocal-weighted positive diagonal lower-bounds the
complete endpoint-fibre quadratic observable at every dyadic scale. -/
def WeightedEndpointDiagonalLowerBoundProposal : Prop :=
  ∀ j : ℕ,
    weightedMertensEndpointDiagonalEnergy j ≤
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j

/-- Exact finite refutation of the weighted diagonal-lower-bound proposal. -/
theorem not_weightedEndpointDiagonalLowerBoundProposal :
    ¬ WeightedEndpointDiagonalLowerBoundProposal := by
  intro h
  exact weightedEndpoint_diagonal_not_le_at_one (h 1)

/-- Named witness disposition.  This only refutes the diagonal-lower-bound
method; it does not refute the endpoint-fibre supplier. -/
def DiagonalLowerBoundRefutedAtScope : Prop :=
  ¬ WeightedEndpointDiagonalLowerBoundProposal

theorem diagonalLowerBoundRefutedAtScope :
    DiagonalLowerBoundRefutedAtScope :=
  not_weightedEndpointDiagonalLowerBoundProposal

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointEndpointFibreQuadraticEnergy_three
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelEndpointFibreQuadraticEnergy_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_weightedEndpointDiagonalLowerBoundProposal
