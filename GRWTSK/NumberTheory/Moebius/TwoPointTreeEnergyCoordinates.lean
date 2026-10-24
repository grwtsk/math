/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #458. Direct stacked parent: draft PR #455 at
`9753ce756e6c445ba55ad0097fe9e83ae091a224`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointConjectureJunction

/-!
# Explicit aligned scale--block coordinates for two-point tree energy

The recursive dyadic-tree energy is expanded into a literal finite sum over
all aligned scales and block indices.  The result is an exact representation
theorem.  It gives the arithmetic supplier a conventional coordinate target;
it supplies no cancellation estimate.

For a real sequence `a`, scale `r`, and ambient depth `m`, the scale energy is

`sum_(q < 2^(m-r)) (sum_(n in [q*2^r,(q+1)*2^r)) a n)^2`.

Summing over `0 <= r <= m` gives the coordinate energy.  We prove this equals
the recursively defined `dyadicTreeSquareEnergy`.  We then specialize the
identity to the exact zero-padded two-point source from the parent module and
transport the existing conditional RH endpoint to an explicitly coordinate-
indexed supplier.

Signed summation remains inside each block before squaring.  No termwise
absolute value, arithmetic estimate, or hidden absorption of the depth cost is
introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Square energy of all aligned blocks at one scale `r` inside `[0,2^m)`.
The intended use is under `r <= m`; the surrounding coordinate sum enforces
that condition. -/
def alignedDyadicScaleSquareEnergy
    (m r : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.range (2 ^ (m - r)),
    alignedDyadicBlockSum a r q ^ 2

/-- Explicit sum of all aligned dyadic block squares over every scale
`0 <= r <= m`. -/
def alignedDyadicCoordinateSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.range (m + 1), alignedDyadicScaleSquareEnergy m r a

/-- Shifting by the left-half length reindexes a scale-`r` block by the exact
right-half offset `2^(m-r)`. -/
theorem alignedDyadicBlockSum_shifted_half
    (a : ℕ → ℝ) {m r q : ℕ} (hr : r ≤ m) :
    alignedDyadicBlockSum (shiftedSequence a (2 ^ m)) r q =
      alignedDyadicBlockSum a r (2 ^ (m - r) + q) := by
  have hpow : 2 ^ (m - r) * 2 ^ r = 2 ^ m := by
    rw [← Nat.pow_add, Nat.sub_add_cancel hr]
  unfold alignedDyadicBlockSum finitePrefixSum shiftedSequence
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Nat.add_mul, hpow]
  simp only [Nat.add_assoc]

/-- At the top scale there is exactly one aligned block: the complete root. -/
@[simp] theorem alignedDyadicScaleSquareEnergy_top
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicScaleSquareEnergy m m a =
      alignedDyadicBlockSum a m 0 ^ 2 := by
  simp [alignedDyadicScaleSquareEnergy]

/-- Every non-top scale at successor depth splits exactly into the left and
right half scale energies. -/
theorem alignedDyadicScaleSquareEnergy_succ
    (m r : ℕ) (a : ℕ → ℝ) (hr : r ≤ m) :
    alignedDyadicScaleSquareEnergy (m + 1) r a =
      alignedDyadicScaleSquareEnergy m r a +
        alignedDyadicScaleSquareEnergy m r
          (shiftedSequence a (2 ^ m)) := by
  have hsub : m + 1 - r = (m - r) + 1 := by omega
  have hpow : 2 ^ (m + 1 - r) =
      2 ^ (m - r) + 2 ^ (m - r) := by
    rw [hsub, Nat.pow_succ]
    omega
  unfold alignedDyadicScaleSquareEnergy
  rw [hpow, Finset.sum_range_add]
  congr 1
  apply Finset.sum_congr rfl
  intro q _hq
  rw [alignedDyadicBlockSum_shifted_half a hr]

/-- The explicit coordinate energy has the same root-plus-left-plus-right
recursion as the tree energy. -/
theorem alignedDyadicCoordinateSquareEnergy_succ
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicCoordinateSquareEnergy (m + 1) a =
      alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m
          (shiftedSequence a (2 ^ m)) := by
  let right : ℕ → ℝ := shiftedSequence a (2 ^ m)
  calc
    alignedDyadicCoordinateSquareEnergy (m + 1) a =
        (∑ r ∈ Finset.range (m + 1),
          alignedDyadicScaleSquareEnergy (m + 1) r a) +
          alignedDyadicScaleSquareEnergy (m + 1) (m + 1) a := by
      unfold alignedDyadicCoordinateSquareEnergy
      rw [Finset.sum_range_succ]
    _ = (∑ r ∈ Finset.range (m + 1),
          (alignedDyadicScaleSquareEnergy m r a +
            alignedDyadicScaleSquareEnergy m r right)) +
          alignedDyadicBlockSum a (m + 1) 0 ^ 2 := by
      congr 1
      · apply Finset.sum_congr rfl
        intro r hrange
        have hr : r ≤ m := Nat.le_of_lt_succ (Finset.mem_range.mp hrange)
        simpa [right] using
          alignedDyadicScaleSquareEnergy_succ m r a hr
      · simp
    _ = alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m right := by
      rw [Finset.sum_add_distrib]
      unfold alignedDyadicCoordinateSquareEnergy
      ring
    _ = alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m
          (shiftedSequence a (2 ^ m)) := by
      rfl

/-- The recursive tree energy is exactly the explicit double sum over aligned
scale and block coordinates. -/
theorem dyadicTreeSquareEnergy_eq_coordinate
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicTreeSquareEnergy m a =
      alignedDyadicCoordinateSquareEnergy m a := by
  induction m generalizing a with
  | zero =>
      simp [dyadicTreeSquareEnergy,
        alignedDyadicCoordinateSquareEnergy,
        alignedDyadicScaleSquareEnergy]
  | succ m ih =>
      rw [dyadicTreeSquareEnergy,
        alignedDyadicCoordinateSquareEnergy_succ]
      rw [ih a, ih (shiftedSequence a (2 ^ m))]

/-- Literal coordinate expansion of the preceding identity. -/
theorem dyadicTreeSquareEnergy_eq_doubleSum
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicTreeSquareEnergy m a =
      ∑ r ∈ Finset.range (m + 1),
        ∑ q ∈ Finset.range (2 ^ (m - r)),
          alignedDyadicBlockSum a r q ^ 2 := by
  simpa [alignedDyadicCoordinateSquareEnergy,
    alignedDyadicScaleSquareEnergy] using
    dyadicTreeSquareEnergy_eq_coordinate m a

/-- The coordinate energy is nonnegative term by term. -/
theorem alignedDyadicCoordinateSquareEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ alignedDyadicCoordinateSquareEnergy m a := by
  unfold alignedDyadicCoordinateSquareEnergy alignedDyadicScaleSquareEnergy
  exact Finset.sum_nonneg fun r _hr =>
    Finset.sum_nonneg fun q _hq => sq_nonneg _

end GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointConjectureJunction

open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Explicit scale--block coordinate energy of one zero-padded two-point
source. -/
def twoPointCoordinateBlockEnergy
    (f g : ℕ → ℝ) (j h : ℕ) : ℝ :=
  alignedDyadicCoordinateSquareEnergy (j + 1)
    (paddedTwoPointSequence f g j h)

/-- Complete sum of explicit coordinate energies over every positive shift
below the dyadic endpoint. -/
def twoPointCoordinateBlockEnergySum
    (f g : ℕ → ℝ) (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    twoPointCoordinateBlockEnergy f g j h

/-- Exact one-shift equality between the recursive tree presentation and the
explicit scale--block presentation. -/
theorem twoPointTreeEnergy_eq_coordinateBlockEnergy
    (f g : ℕ → ℝ) (j h : ℕ) :
    twoPointTreeEnergy f g j h =
      twoPointCoordinateBlockEnergy f g j h := by
  unfold twoPointTreeEnergy twoPointCoordinateBlockEnergy
  exact dyadicTreeSquareEnergy_eq_coordinate _ _

/-- Literal double-sum formula for one zero-padded two-point source. -/
theorem twoPointTreeEnergy_eq_doubleSum
    (f g : ℕ → ℝ) (j h : ℕ) :
    twoPointTreeEnergy f g j h =
      ∑ r ∈ Finset.range (j + 2),
        ∑ q ∈ Finset.range (2 ^ (j + 1 - r)),
          alignedDyadicBlockSum
            (paddedTwoPointSequence f g j h) r q ^ 2 := by
  unfold twoPointTreeEnergy
  simpa [Nat.add_assoc] using
    dyadicTreeSquareEnergy_eq_doubleSum
      (j + 1) (paddedTwoPointSequence f g j h)

/-- Exact all-shift equality between the recursive and coordinate energy sums. -/
theorem twoPointTreeEnergySum_eq_coordinateBlockEnergySum
    (f g : ℕ → ℝ) (j : ℕ) :
    twoPointTreeEnergySum f g j =
      twoPointCoordinateBlockEnergySum f g j := by
  unfold twoPointTreeEnergySum twoPointCoordinateBlockEnergySum
  apply Finset.sum_congr rfl
  intro h _hh
  exact twoPointTreeEnergy_eq_coordinateBlockEnergy f g j h

/-- Source-facing coordinate supplier with the exact depth cost retained. -/
def SubpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost
    (f g : ℕ → ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    ((j : ℝ) + 2) * twoPointCoordinateBlockEnergySum f g j ≤
      (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The explicit coordinate supplier is exactly equivalent to the recursive
tree-energy supplier; this is representation, not an estimate. -/
theorem subpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost_iff_tree
    (f g : ℕ → ℝ) :
    SubpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost f g ↔
      SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost f g := by
  constructor
  · intro hCoord δ hδ
    obtain ⟨A, hA, hscale⟩ := hCoord δ hδ
    refine ⟨A, hA, ?_⟩
    intro j
    rw [twoPointTreeEnergySum_eq_coordinateBlockEnergySum]
    exact hscale j
  · intro hTree δ hδ
    obtain ⟨A, hA, hscale⟩ := hTree δ hδ
    refine ⟨A, hA, ?_⟩
    intro j
    rw [← twoPointTreeEnergySum_eq_coordinateBlockEnergySum]
    exact hscale j

/-- Möbius specialization of the explicit coordinate supplier. -/
def SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost : Prop :=
  SubpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost
    moebiusReal moebiusReal

/-- Coordinate-form supplier discharges the existing recursive Möbius tree
supplier without changing constants or hiding the depth cost. -/
theorem mertensTreeEnergy_of_coordinateEnergy
    (hCoord :
      SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost) :
    SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost :=
  (subpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost_iff_tree
    moebiusReal moebiusReal).mp hCoord

/-- Conditional RH endpoint from the explicit coordinate-indexed arithmetic
supplier.  The supplier itself remains open. -/
theorem riemannHypothesis_of_mertensTwoPointCoordinateEnergy
    (hCoord :
      SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_mertensTwoPointTreeEnergy
    (mertensTreeEnergy_of_coordinateEnergy hCoord)

end TwoPointConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal.dyadicTreeSquareEnergy_eq_doubleSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.twoPointTreeEnergy_eq_doubleSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.subpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost_iff_tree
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.riemannHypothesis_of_mertensTwoPointCoordinateEnergy
