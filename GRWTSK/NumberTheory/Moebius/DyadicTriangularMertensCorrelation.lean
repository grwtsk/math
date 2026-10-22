/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #369 / #366 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicOrderedPairMertensCorrelation

/-!
# Triangular form of the dyadic ordered Möbius-pair correlation

The complete ordered pair source from the preceding module is rewritten using
the actual previous Mertens prefix:

`Pair(n) = 2 * sum_(1 <= b <= n) mu(b) * M_(b-1)`.

This identity is proved by a finite square telescope.  The new coefficient at
`b` correlates only with the already completed prefix `M_(b-1)`; it is not
allowed to correlate with itself.  The factor two retains both orientations of
the ordered pair source.

The resulting dyadic triangular source is exactly equal to the ordered-pair
source, so its subpolynomial upper-bound criterion is equivalent to every
existing RH-E02 formulation.  No triangular estimate is supplied here, no
absolute value is inserted, and no unconditional RH claim is made.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- The signed triangular source in one closed Mertens prefix.  The new
coefficient at `b` is paired with the previous prefix `M_(b-1)`. -/
def mertensPrefixTriangularCorrelation (n : ℕ) : ℝ :=
  2 * ∑ b ∈ Finset.Icc 1 n,
    moebiusReal b * pickupMertensPrefix (b - 1)

/-- The triangular source with the same dyadic weight and half-open block as
the ordered-pair criterion. -/
def weightedMertensDyadicTriangularCorrelation (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    mertensPrefixTriangularCorrelation n *
      (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))

/-- The remaining triangular arithmetic supplier. -/
def SubpolynomialDyadicTriangularMertensCorrelation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicTriangularCorrelation j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

private theorem closed_prefix_succ (f : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.Icc 1 (n + 1), f k) =
      (∑ k ∈ Finset.Icc 1 n, f k) + f (n + 1) := by
  have hset : Finset.Icc 1 (n + 1) =
      insert (n + 1) (Finset.Icc 1 n) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hnot : n + 1 ∉ Finset.Icc 1 n := by simp
  rw [hset, Finset.sum_insert hnot]
  ac_rfl

@[simp] theorem pickupMertensPrefix_zero_triangular :
    pickupMertensPrefix 0 = 0 := by
  simp [pickupMertensPrefix]

/-- The actual closed Mertens prefix receives exactly one new coefficient. -/
theorem pickupMertensPrefix_succ_triangular (n : ℕ) :
    pickupMertensPrefix (n + 1) =
      pickupMertensPrefix n + moebiusReal (n + 1) := by
  unfold pickupMertensPrefix
  exact closed_prefix_succ moebiusReal n

/-- The coefficient-square diagonal has the matching one-step recurrence. -/
theorem mertensPrefixSquareDiagonal_succ_triangular (n : ℕ) :
    mertensPrefixSquareDiagonal (n + 1) =
      mertensPrefixSquareDiagonal n + moebiusReal (n + 1) ^ 2 := by
  unfold mertensPrefixSquareDiagonal
  exact closed_prefix_succ (fun k => moebiusReal k ^ 2) n

/-- The triangular source adds the new coefficient against the completed
previous prefix, with the factor two required by ordered pairs. -/
theorem mertensPrefixTriangularCorrelation_succ (n : ℕ) :
    mertensPrefixTriangularCorrelation (n + 1) =
      mertensPrefixTriangularCorrelation n +
        2 * moebiusReal (n + 1) * pickupMertensPrefix n := by
  unfold mertensPrefixTriangularCorrelation
  rw [closed_prefix_succ]
  have hpred : n + 1 - 1 = n := by omega
  rw [hpred]
  ring

/-- The finite square telescope expressed using the actual previous-prefix
triangular source. -/
theorem pickupMertensPrefix_sq_eq_diagonal_add_triangular (n : ℕ) :
    pickupMertensPrefix n ^ 2 =
      mertensPrefixSquareDiagonal n +
        mertensPrefixTriangularCorrelation n := by
  induction n with
  | zero =>
      simp [pickupMertensPrefix, mertensPrefixSquareDiagonal,
        mertensPrefixTriangularCorrelation]
  | succ n ih =>
      rw [pickupMertensPrefix_succ_triangular,
        mertensPrefixSquareDiagonal_succ_triangular,
        mertensPrefixTriangularCorrelation_succ,
        add_sq, ih]
      ring

/-- The complete ordered-pair source is exactly the triangular source.  No
absolute value or omitted orientation is introduced. -/
theorem mertensPrefixOrderedPairCorrelation_eq_triangular (n : ℕ) :
    mertensPrefixOrderedPairCorrelation n =
      mertensPrefixTriangularCorrelation n := by
  have hp := pickupMertensPrefix_sq_eq_diagonal_add_orderedPair n
  have ht := pickupMertensPrefix_sq_eq_diagonal_add_triangular n
  linarith

/-- The weighted dyadic ordered-pair and triangular sources are identical. -/
theorem weightedMertensDyadicOrderedPairCorrelation_eq_triangular (j : ℕ) :
    weightedMertensDyadicOrderedPairCorrelation j =
      weightedMertensDyadicTriangularCorrelation j := by
  unfold weightedMertensDyadicOrderedPairCorrelation
    weightedMertensDyadicTriangularCorrelation
  apply Finset.sum_congr rfl
  intro n _
  rw [mertensPrefixOrderedPairCorrelation_eq_triangular]

/-- A triangular witness is the same source-level witness as the ordered-pair
criterion. -/
theorem subpolynomialDyadicTriangular_iff_orderedPair :
    SubpolynomialDyadicTriangularMertensCorrelation ↔
      SubpolynomialDyadicOrderedPairMertensCorrelation := by
  constructor
  · intro htri δ hδ
    obtain ⟨C, hC, hbound⟩ := htri δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicOrderedPairCorrelation_eq_triangular]
    exact hbound j
  · intro hpair δ hδ
    obtain ⟨C, hC, hbound⟩ := hpair δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicOrderedPairCorrelation_eq_triangular]
    exact hbound j

/-- Exact compatibility with the individual positive dyadic-block criterion. -/
theorem subpolynomialDyadicTriangular_iff_block :
    SubpolynomialDyadicTriangularMertensCorrelation ↔
      SubpolynomialDyadicBlockWeightedMertensSquare :=
  subpolynomialDyadicTriangular_iff_orderedPair.trans
    subpolynomialDyadicOrderedPair_iff_block

/-- Exact compatibility with the all-horizon cumulative criterion. -/
theorem subpolynomialDyadicTriangular_iff_cumulative :
    SubpolynomialDyadicTriangularMertensCorrelation ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  subpolynomialDyadicTriangular_iff_orderedPair.trans
    subpolynomialDyadicOrderedPair_iff_cumulative

/-- Exact compatibility with the all-positive weighted Mertens-square family. -/
theorem subpolynomialDyadicTriangular_iff_allPositiveWeightedMertensSquare :
    SubpolynomialDyadicTriangularMertensCorrelation ↔
      AllPositiveWeightedMertensSquare :=
  subpolynomialDyadicTriangular_iff_orderedPair.trans
    subpolynomialDyadicOrderedPair_iff_allPositiveWeightedMertensSquare

/-- Conditional terminal return.  The universal signed triangular estimate
remains the unproved arithmetic supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicTriangularMertensCorrelation
    (htri : SubpolynomialDyadicTriangularMertensCorrelation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation
    (subpolynomialDyadicTriangular_iff_orderedPair.mp htri)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.pickupMertensPrefix_sq_eq_diagonal_add_triangular
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensPrefixOrderedPairCorrelation_eq_triangular
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicTriangular_iff_orderedPair
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicTriangularMertensCorrelation
