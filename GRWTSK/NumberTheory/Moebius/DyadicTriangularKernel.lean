/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #373 / #369 / #366 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicTriangularMertensCorrelation

/-!
# Finite tail kernel for the dyadic triangular Möbius correlation

The existing triangular source

`Tri(n) = 2 * sum_(1 <= b <= n) mu(b) * M_(b-1)`

is summed against the exact dyadic cell weight `1 / (n(n+1))`.  A finite Abel
identity separates the result into a boundary term at `X = 2^j` and a local
signed correlation on the half-open block `[X,2X)`.

No infinite series, absolute value, asymptotic interchange, or new arithmetic
estimate is used.  The Abel terminal contribution and the coefficient-square
diagonal in the boundary identity are retained.  All proof scripts await
exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- The signed atom used by the triangular source.  The new coefficient is
paired only with the completed previous prefix. -/
def mertensTriangularAtom (b : ℕ) : ℝ :=
  moebiusReal b * pickupMertensPrefix (b - 1)

/-- The exact lower-end boundary payment at `X = 2^j`.  The denominator is
`2X = 2^(j+1)`. -/
def weightedMertensDyadicTriangularBoundary (j : ℕ) : ℝ :=
  mertensPrefixTriangularCorrelation (2 ^ j - 1) *
    (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹

/-- The genuinely local signed triangular correlation on `[2^j,2^(j+1))`. -/
def weightedMertensDyadicTriangularLocal (j : ℕ) : ℝ :=
  2 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    mertensTriangularAtom b *
      ((b : ℝ)⁻¹ - (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)

/-- The complete finite tail kernel. -/
def weightedMertensDyadicTriangularKernel (j : ℕ) : ℝ :=
  weightedMertensDyadicTriangularBoundary j +
    weightedMertensDyadicTriangularLocal j

/-- A positive boundary-square majorant.  It is a sufficient allowance, not an
exact replacement for the boundary term. -/
def weightedMertensDyadicBoundarySquare (j : ℕ) : ℝ :=
  pickupMertensPrefix (2 ^ j - 1) ^ 2 *
    (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹

/-- The exact kernel formulation of the remaining arithmetic supplier. -/
def SubpolynomialDyadicTriangularKernel : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicTriangularKernel j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Finite Abel summation beginning at a positive natural index.  The terminal
term is retained. -/
private theorem finite_tail_abel
    (A w : ℕ → ℝ) {X : ℕ} (hX : 1 ≤ X) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      A (X + k) * (w (X + k) - w (X + k + 1))) =
      A (X - 1) * w X +
        (∑ k ∈ Finset.range N,
          (A (X + k) - A (X + k - 1)) * w (X + k)) -
        A (X + N - 1) * w (X + N) := by
  induction N with
  | zero =>
      simp [hX]
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih]
      have hpred : X + (N + 1) - 1 = X + N := by omega
      rw [hpred]
      ring

private theorem two_mul_sum_mul_sub_const
    (f g : ℕ → ℝ) (c : ℝ) (N : ℕ) :
    2 * (∑ k ∈ Finset.range N, f k * (g k - c)) =
      2 * (∑ k ∈ Finset.range N, f k * g k) -
        (2 * ∑ k ∈ Finset.range N, f k) * c := by
  calc
    2 * (∑ k ∈ Finset.range N, f k * (g k - c)) =
        2 * (∑ k ∈ Finset.range N, (f k * g k - f k * c)) := by
      congr 1
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ = 2 * ((∑ k ∈ Finset.range N, f k * g k) -
        ∑ k ∈ Finset.range N, f k * c) := by
      rw [Finset.sum_sub_distrib]
    _ = _ := by
      rw [← Finset.sum_mul]
      ring

/-- The exact reciprocal cell identity underlying the Abel transform. -/
theorem dyadic_reciprocal_cell {n : ℕ} (hn : 1 ≤ n) :
    (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) =
      (n : ℝ)⁻¹ - ((n + 1 : ℕ) : ℝ)⁻¹ := by
  rw [Real.rpow_neg_one, Real.rpow_neg_one]
  field_simp [show (n : ℝ) ≠ 0 by positivity,
    show (((n + 1 : ℕ) : ℝ)) ≠ 0 by positivity]
  ring

/-- One triangular increment is exactly twice the signed previous-prefix atom. -/
theorem mertensPrefixTriangularCorrelation_sub_pred
    {n : ℕ} (hn : 1 ≤ n) :
    mertensPrefixTriangularCorrelation n -
        mertensPrefixTriangularCorrelation (n - 1) =
      2 * mertensTriangularAtom n := by
  cases n with
  | zero => omega
  | succ n =>
      rw [mertensPrefixTriangularCorrelation_succ]
      simp [mertensTriangularAtom]
      ring

/-- Reindex the dyadic triangular block by its exact length `2^j`. -/
theorem weightedMertensDyadicTriangularCorrelation_eq_range (j : ℕ) :
    weightedMertensDyadicTriangularCorrelation j =
      ∑ k ∈ Finset.range (2 ^ j),
        mertensPrefixTriangularCorrelation (2 ^ j + k) *
          (((2 ^ j + k : ℕ) : ℝ) ^ (-(1 : ℝ)) *
            ((2 ^ j + k + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))) := by
  unfold weightedMertensDyadicTriangularCorrelation
  rw [Finset.sum_Ico_eq_sum_range]
  have hlen : 2 ^ (j + 1) - 2 ^ j = 2 ^ j := by
    rw [Nat.pow_succ]
    omega
  rw [hlen]

/-- Reindex the local kernel by the same exact dyadic length. -/
theorem weightedMertensDyadicTriangularLocal_eq_range (j : ℕ) :
    weightedMertensDyadicTriangularLocal j =
      2 * ∑ k ∈ Finset.range (2 ^ j),
        mertensTriangularAtom (2 ^ j + k) *
          ((((2 ^ j + k : ℕ) : ℝ))⁻¹ -
            (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
  unfold weightedMertensDyadicTriangularLocal
  rw [Finset.sum_Ico_eq_sum_range]
  have hlen : 2 ^ (j + 1) - 2 ^ j = 2 ^ j := by
    rw [Nat.pow_succ]
    omega
  rw [hlen]

/-- The inverse left endpoint is twice the inverse right endpoint. -/
theorem dyadic_left_inv_eq_two_mul_right_inv (j : ℕ) :
    (((2 ^ j : ℕ) : ℝ))⁻¹ =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [Nat.pow_succ, Nat.cast_mul, Nat.cast_ofNat]
  field_simp [show (((2 ^ j : ℕ) : ℝ)) ≠ 0 by positivity]
  ring

/-- Finite telescoping of the triangular increments across a consecutive
range. -/
private theorem two_mul_sum_atom_range_eq_triangular_sub
    {X : ℕ} (hX : 1 ≤ X) (N : ℕ) :
    2 * (∑ k ∈ Finset.range N, mertensTriangularAtom (X + k)) =
      mertensPrefixTriangularCorrelation (X + N - 1) -
        mertensPrefixTriangularCorrelation (X - 1) := by
  induction N with
  | zero =>
      simp [hX]
  | succ N ih =>
      rw [Finset.sum_range_succ, mul_add, ih]
      have hn : 1 ≤ X + N := by omega
      have hstep := mertensPrefixTriangularCorrelation_sub_pred hn
      have hpred : X + (N + 1) - 1 = X + N := by omega
      rw [hpred]
      linarith

/-- The existing dyadic triangular source is exactly its finite boundary/local
kernel. -/
theorem weightedMertensDyadicTriangularCorrelation_eq_kernel (j : ℕ) :
    weightedMertensDyadicTriangularCorrelation j =
      weightedMertensDyadicTriangularKernel j := by
  let X : ℕ := 2 ^ j
  have hX : 1 ≤ X := by
    dsimp [X]
    positivity
  rw [weightedMertensDyadicTriangularCorrelation_eq_range]
  have habel := finite_tail_abel
    mertensPrefixTriangularCorrelation
    (fun n : ℕ => ((n : ℝ))⁻¹) hX X
  have hcell :
      (∑ k ∈ Finset.range X,
        mertensPrefixTriangularCorrelation (X + k) *
          (((X + k : ℕ) : ℝ) ^ (-(1 : ℝ)) *
            ((X + k + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)))) =
      ∑ k ∈ Finset.range X,
        mertensPrefixTriangularCorrelation (X + k) *
          ((((X + k : ℕ) : ℝ))⁻¹ -
            (((X + k + 1 : ℕ) : ℝ))⁻¹) := by
    apply Finset.sum_congr rfl
    intro k hk
    rw [dyadic_reciprocal_cell (show 1 ≤ X + k by omega)]
  rw [show 2 ^ j = X by rfl, hcell, habel]
  have hinc :
      (∑ k ∈ Finset.range X,
        (mertensPrefixTriangularCorrelation (X + k) -
          mertensPrefixTriangularCorrelation (X + k - 1)) *
            (((X + k : ℕ) : ℝ))⁻¹) =
      2 * ∑ k ∈ Finset.range X,
        mertensTriangularAtom (X + k) *
          (((X + k : ℕ) : ℝ))⁻¹ := by
    calc
      _ = ∑ k ∈ Finset.range X,
          (2 * mertensTriangularAtom (X + k)) *
            (((X + k : ℕ) : ℝ))⁻¹ := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [mertensPrefixTriangularCorrelation_sub_pred
          (show 1 ≤ X + k by omega)]
      _ = _ := by rw [Finset.mul_sum]; ring
  rw [hinc]
  rw [weightedMertensDyadicTriangularLocal_eq_range]
  unfold weightedMertensDyadicTriangularKernel
    weightedMertensDyadicTriangularBoundary
  have hsum := two_mul_sum_atom_range_eq_triangular_sub hX X
  have hinv := dyadic_left_inv_eq_two_mul_right_inv j
  have hlocal := two_mul_sum_mul_sub_const
    (fun k : ℕ => mertensTriangularAtom (X + k))
    (fun k : ℕ => (((X + k : ℕ) : ℝ))⁻¹)
    (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ X
  rw [hlocal]
  dsimp [X] at hsum hinv ⊢
  rw [hinv, hsum]
  ring

/-- The boundary retains the exact coefficient-square subtraction. -/
theorem weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal
    (j : ℕ) :
    weightedMertensDyadicTriangularBoundary j =
      (pickupMertensPrefix (2 ^ j - 1) ^ 2 -
        mertensPrefixSquareDiagonal (2 ^ j - 1)) *
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  have hsq := pickupMertensPrefix_sq_eq_diagonal_add_triangular (2 ^ j - 1)
  have htri :
      mertensPrefixTriangularCorrelation (2 ^ j - 1) =
        pickupMertensPrefix (2 ^ j - 1) ^ 2 -
          mertensPrefixSquareDiagonal (2 ^ j - 1) := by
    linarith
  unfold weightedMertensDyadicTriangularBoundary
  rw [htri]

/-- Dropping only the nonnegative diagonal gives the stated positive boundary
majorant. -/
theorem weightedMertensDyadicTriangularBoundary_le_boundarySquare
    (j : ℕ) :
    weightedMertensDyadicTriangularBoundary j ≤
      weightedMertensDyadicBoundarySquare j := by
  rw [weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal]
  unfold weightedMertensDyadicBoundarySquare
  apply mul_le_mul_of_nonneg_right
  · linarith [mertensPrefixSquareDiagonal_nonneg (2 ^ j - 1)]
  · exact inv_nonneg.mpr (by positivity)

/-- The exact kernel and the original triangular criterion are equivalent. -/
theorem subpolynomialDyadicTriangularKernel_iff_triangular :
    SubpolynomialDyadicTriangularKernel ↔
      SubpolynomialDyadicTriangularMertensCorrelation := by
  constructor
  · intro hker δ hδ
    obtain ⟨C, hC, hbound⟩ := hker δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicTriangularCorrelation_eq_kernel]
    exact hbound j
  · intro htri δ hδ
    obtain ⟨C, hC, hbound⟩ := htri δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicTriangularCorrelation_eq_kernel]
    exact hbound j

theorem subpolynomialDyadicTriangularKernel_iff_orderedPair :
    SubpolynomialDyadicTriangularKernel ↔
      SubpolynomialDyadicOrderedPairMertensCorrelation :=
  subpolynomialDyadicTriangularKernel_iff_triangular.trans
    subpolynomialDyadicTriangular_iff_orderedPair

theorem subpolynomialDyadicTriangularKernel_iff_block :
    SubpolynomialDyadicTriangularKernel ↔
      SubpolynomialDyadicBlockWeightedMertensSquare :=
  subpolynomialDyadicTriangularKernel_iff_triangular.trans
    subpolynomialDyadicTriangular_iff_block

theorem subpolynomialDyadicTriangularKernel_iff_cumulative :
    SubpolynomialDyadicTriangularKernel ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  subpolynomialDyadicTriangularKernel_iff_triangular.trans
    subpolynomialDyadicTriangular_iff_cumulative

theorem subpolynomialDyadicTriangularKernel_iff_allPositiveWeightedMertensSquare :
    SubpolynomialDyadicTriangularKernel ↔
      AllPositiveWeightedMertensSquare :=
  subpolynomialDyadicTriangularKernel_iff_triangular.trans
    subpolynomialDyadicTriangular_iff_allPositiveWeightedMertensSquare

/-- Conditional terminal return.  The universal signed kernel estimate remains
open. -/
theorem riemannHypothesis_of_subpolynomialDyadicTriangularKernel
    (hker : SubpolynomialDyadicTriangularKernel) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicTriangularMertensCorrelation
    (subpolynomialDyadicTriangularKernel_iff_triangular.mp hker)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicTriangularCorrelation_eq_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicTriangularKernel_iff_triangular
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicTriangularKernel
