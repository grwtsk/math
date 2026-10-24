# Complete source: GRWTSK.NumberTheory.Moebius.DyadicOrderedPairMertensCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00aa20b040a9182f002109f3c38484a941fb37e2` · SHA-256 `c111bd0010fe2eb33b4567b00ce88e63c28f552a423a6671250e269bd5c51702`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #366 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicBlockWeightedMertensSquare

/-!
# Ordered Möbius pair correlation inside the dyadic Mertens-square block

The actual dyadic block

`B_j = sum_(2^j <= n < 2^(j+1)) M_n^2 / (n(n+1))`

is split into its coefficient-square diagonal and its complete signed ordered
pair correlation.  The diagonal is nonnegative and is bounded by one using only
`|mu(n)| <= 1`; it is therefore not an arithmetic cancellation supplier.

The remaining signed term retains both orientations `(a,b)` and `(b,a)`.  Its
subpolynomial upper bound is proved equivalent to the individual block
criterion isolated upstream.  No pair-correlation estimate is supplied here,
and no absolute values are inserted around the signed pair sum.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- Coefficient-square diagonal in the actual closed Möbius prefix. -/
def mertensPrefixSquareDiagonal (n : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 n, moebiusReal a ^ 2

/-- Complete ordered off-diagonal pair sum.  Both orientations occur. -/
def mertensPrefixOrderedPairCorrelation (n : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 n,
    ∑ b ∈ Finset.Icc 1 n,
      if a = b then 0 else moebiusReal a * moebiusReal b

/-- Weighted diagonal contribution on the half-open dyadic block. -/
def weightedMertensDyadicDiagonal (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    mertensPrefixSquareDiagonal n *
      (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))

/-- Weighted signed ordered-pair contribution on the same dyadic block. -/
def weightedMertensDyadicOrderedPairCorrelation (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    mertensPrefixOrderedPairCorrelation n *
      (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))

/-- The remaining source-specific arithmetic supplier. -/
def SubpolynomialDyadicOrderedPairMertensCorrelation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicOrderedPairCorrelation j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

private theorem square_finset_sum_eq_diagonal_add_orderedPair
    (s : Finset ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ s, f n) ^ 2 =
      (∑ n ∈ s, f n ^ 2) +
        ∑ a ∈ s, ∑ b ∈ s,
          if a = b then 0 else f a * f b := by
  classical
  rw [pow_two, Finset.sum_mul]
  calc
    (∑ a ∈ s, f a * ∑ b ∈ s, f b) =
        ∑ a ∈ s, ∑ b ∈ s, f a * f b := by
      apply Finset.sum_congr rfl
      intro a _
      rw [Finset.mul_sum]
    _ = (∑ n ∈ s, f n ^ 2) +
        ∑ a ∈ s, ∑ b ∈ s,
          if a = b then 0 else f a * f b := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro a ha
      have hdiag :
          f a ^ 2 =
            ∑ b ∈ s, if a = b then f a * f b else 0 := by
        simp [ha, pow_two]
      rw [hdiag, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro b _
      by_cases hab : a = b
      · subst b
        simp
      · simp [hab]

/-- Exact square expansion for the actual closed Mertens prefix. -/
theorem pickupMertensPrefix_sq_eq_diagonal_add_orderedPair (n : ℕ) :
    pickupMertensPrefix n ^ 2 =
      mertensPrefixSquareDiagonal n +
        mertensPrefixOrderedPairCorrelation n := by
  unfold pickupMertensPrefix mertensPrefixSquareDiagonal
    mertensPrefixOrderedPairCorrelation
  exact square_finset_sum_eq_diagonal_add_orderedPair
    (Finset.Icc 1 n) moebiusReal

theorem mertensPrefixSquareDiagonal_nonneg (n : ℕ) :
    0 ≤ mertensPrefixSquareDiagonal n := by
  unfold mertensPrefixSquareDiagonal
  exact Finset.sum_nonneg fun a _ => sq_nonneg (moebiusReal a)

/-- The only input is Mathlib's ordinary coefficient bound `|mu(a)| <= 1`. -/
theorem mertensPrefixSquareDiagonal_le_natCast (n : ℕ) :
    mertensPrefixSquareDiagonal n ≤ (n : ℝ) := by
  unfold mertensPrefixSquareDiagonal
  calc
    (∑ a ∈ Finset.Icc 1 n, moebiusReal a ^ 2) ≤
        ∑ _a ∈ Finset.Icc 1 n, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro a _
      have hs := (sq_le_sq₀ (abs_nonneg (moebiusReal a))
        (by norm_num : (0 : ℝ) ≤ 1)).2 (moebiusReal_abs_le_one a)
      simpa only [sq_abs, one_pow] using hs
    _ = (n : ℝ) := by simp

theorem weightedMertensDyadicDiagonal_nonneg (j : ℕ) :
    0 ≤ weightedMertensDyadicDiagonal j := by
  unfold weightedMertensDyadicDiagonal
  exact Finset.sum_nonneg fun n _ =>
    mul_nonneg
      (mul_nonneg (mertensPrefixSquareDiagonal_nonneg n)
        (Real.rpow_nonneg (Nat.cast_nonneg n) _))
      (Real.rpow_nonneg (by positivity) _)

/-- Exact dyadic split; the signed pair term is not replaced by its absolute
value. -/
theorem weightedMertensDyadicBlock_eq_diagonal_add_orderedPair (j : ℕ) :
    weightedMertensDyadicBlock j =
      weightedMertensDyadicDiagonal j +
        weightedMertensDyadicOrderedPairCorrelation j := by
  unfold weightedMertensDyadicBlock weightedMertensBaseTerm
    weightedMertensDyadicDiagonal
    weightedMertensDyadicOrderedPairCorrelation
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [pickupMertensPrefix_sq_eq_diagonal_add_orderedPair]
  ring

/-- Each diagonal summand is bounded by the reciprocal left endpoint of its
half-open dyadic cell. -/
theorem weightedMertensDiagonal_summand_le_inv_dyadic
    {j n : ℕ}
    (hn : n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1))) :
    mertensPrefixSquareDiagonal n *
        (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  have hX : 1 ≤ 2 ^ j := Nat.one_le_pow j 2 (by norm_num)
  have hn1 : 1 ≤ n := hX.trans (Finset.mem_Ico.mp hn).1
  have hdiag := mertensPrefixSquareDiagonal_le_natCast n
  have hninv : 0 ≤ (n : ℝ) ^ (-(1 : ℝ)) :=
    Real.rpow_nonneg (Nat.cast_nonneg n) _
  have hsinv : 0 ≤ ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) :=
    Real.rpow_nonneg (by positivity) _
  calc
    mertensPrefixSquareDiagonal n *
        (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) ≤
      (n : ℝ) * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right hdiag hninv) hsinv
    _ = (((n + 1 : ℕ) : ℝ))⁻¹ := by
      rw [Real.rpow_neg_one, Real.rpow_neg_one]
      field_simp [show (n : ℝ) ≠ 0 by positivity]
    _ ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      have hle : ((2 ^ j : ℕ) : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by
        exact_mod_cast ((Finset.mem_Ico.mp hn).1.trans (Nat.le_succ n))
      simpa only [one_div] using
        one_div_le_one_div_of_le
          (by positivity : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ)) hle

/-- The complete Möbius-square diagonal costs at most one on every dyadic
block. -/
theorem weightedMertensDyadicDiagonal_le_one (j : ℕ) :
    weightedMertensDyadicDiagonal j ≤ 1 := by
  have hcard :
      (Finset.Ico (2 ^ j) (2 ^ (j + 1))).card = 2 ^ j := by
    rw [Nat.card_Ico, Nat.pow_succ]
    omega
  calc
    weightedMertensDyadicDiagonal j ≤
        ∑ _n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      unfold weightedMertensDyadicDiagonal
      apply Finset.sum_le_sum
      intro n hn
      exact weightedMertensDiagonal_summand_le_inv_dyadic hn
    _ = (((Finset.Ico (2 ^ j) (2 ^ (j + 1))).card : ℕ) : ℝ) *
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      simp only [Finset.sum_const, nsmul_eq_mul]
    _ = 1 := by
      rw [hcard]
      field_simp [show (((2 ^ j : ℕ) : ℝ)) ≠ 0 by positivity]

/-- Paying a nonnegative diagonal shows the ordered-pair term is never larger
than the full block. -/
theorem weightedMertensDyadicOrderedPairCorrelation_le_block (j : ℕ) :
    weightedMertensDyadicOrderedPairCorrelation j ≤
      weightedMertensDyadicBlock j := by
  rw [weightedMertensDyadicBlock_eq_diagonal_add_orderedPair]
  exact le_add_of_nonneg_left (weightedMertensDyadicDiagonal_nonneg j)

theorem one_le_dyadic_rpow {δ : ℝ} (hδ : 0 < δ) (j : ℕ) :
    1 ≤ (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  have hbase : (1 : ℝ) ≤ ((2 ^ j : ℕ) : ℝ) := by
    exact_mod_cast Nat.one_le_pow j 2 (by norm_num)
  simpa only [Real.one_rpow] using
    Real.rpow_le_rpow (by norm_num : (0 : ℝ) ≤ 1) hbase hδ.le

/-- The block criterion supplies the signed ordered-pair upper bound. -/
theorem subpolynomialOrderedPair_of_dyadicBlock
    (hblock : SubpolynomialDyadicBlockWeightedMertensSquare) :
    SubpolynomialDyadicOrderedPairMertensCorrelation := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hblock δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact (weightedMertensDyadicOrderedPairCorrelation_le_block j).trans
    (hbound j)

/-- Conversely, the pair upper bound plus the paid diagonal reconstructs the
complete block criterion. -/
theorem subpolynomialDyadicBlock_of_orderedPair
    (hpair : SubpolynomialDyadicOrderedPairMertensCorrelation) :
    SubpolynomialDyadicBlockWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hpair δ hδ
  refine ⟨C + 1, add_nonneg hC zero_le_one, ?_⟩
  intro j
  let S : ℝ := (((2 ^ j : ℕ) : ℝ) ^ δ)
  have hS : 1 ≤ S := by
    dsimp [S]
    exact one_le_dyadic_rpow hδ j
  calc
    weightedMertensDyadicBlock j =
        weightedMertensDyadicDiagonal j +
          weightedMertensDyadicOrderedPairCorrelation j :=
      weightedMertensDyadicBlock_eq_diagonal_add_orderedPair j
    _ ≤ 1 + C * S :=
      add_le_add (weightedMertensDyadicDiagonal_le_one j) (hbound j)
    _ ≤ S + C * S := add_le_add hS le_rfl
    _ = (C + 1) * S := by ring

/-- The individual positive block criterion and the signed ordered-pair
criterion are exactly equivalent. -/
theorem subpolynomialDyadicOrderedPair_iff_block :
    SubpolynomialDyadicOrderedPairMertensCorrelation ↔
      SubpolynomialDyadicBlockWeightedMertensSquare :=
  ⟨subpolynomialDyadicBlock_of_orderedPair,
    subpolynomialOrderedPair_of_dyadicBlock⟩

theorem subpolynomialDyadicOrderedPair_iff_cumulative :
    SubpolynomialDyadicOrderedPairMertensCorrelation ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  subpolynomialDyadicOrderedPair_iff_block.trans
    subpolynomialDyadicBlock_iff_cumulative

theorem subpolynomialDyadicOrderedPair_iff_allPositiveWeightedMertensSquare :
    SubpolynomialDyadicOrderedPairMertensCorrelation ↔
      AllPositiveWeightedMertensSquare :=
  subpolynomialDyadicOrderedPair_iff_block.trans
    subpolynomialDyadicBlock_iff_allPositiveWeightedMertensSquare

/-- Conditional terminal return.  The universal ordered-pair estimate remains
open. -/
theorem riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation
    (hpair : SubpolynomialDyadicOrderedPairMertensCorrelation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare
    (subpolynomialDyadicBlock_of_orderedPair hpair)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.pickupMertensPrefix_sq_eq_diagonal_add_orderedPair
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicDiagonal_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicOrderedPair_iff_block
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation
```
