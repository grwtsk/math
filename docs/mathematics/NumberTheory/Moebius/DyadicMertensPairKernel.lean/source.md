# Complete source: GRWTSK.NumberTheory.Moebius.DyadicMertensPairKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a566b331cac8a1b8d193f0ad39cde081191605` · SHA-256 `f203502b2663af97d07789771e416304c54a2044716555fed6bb5ecef76f7985`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #362 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicBlockWeightedMertensSquare

/-!
# Signed pair kernel inside the actual dyadic Mertens-square block

The final finite-scale supplier from the preceding RH-E02 reductions is

`B_j = sum_(2^j <= n < 2^(j+1)) M(n)^2 / (n(n+1))`.

This module expands that positive square into the literal signed Möbius pair
kernel. The diagonal is paid by `|mu(n)| <= 1`; the complete ordered signed
off-diagonal remains. No absolute-value replacement of that correlation is
made.

The kernel retains the half-open dyadic cell and has the exact reciprocal
closed form

`1 / max(2^j,a,b) - 1 / 2^(j+1)`

when the pair is born before the right endpoint, and zero otherwise. The
resulting pair-correlation proposition is equivalent to the existing dyadic
block proposition and therefore conditionally feeds the existing RH endpoint.
No pair-correlation estimate is proved here.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

classical

/-- The source weight `1 / (n(n+1))`, written with the same real-power
convention as `weightedMertensBaseTerm`. -/
def weightedMertensDyadicWeight (n : ℕ) : ℝ :=
  (n : ℝ) ^ (-(1 : ℝ)) *
    ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))

/-- The existing base density is the actual Mertens square times the dyadic
step weight. -/
theorem weightedMertensBaseTerm_eq_weight (n : ℕ) :
    weightedMertensBaseTerm n =
      pickupMertensPrefix n ^ 2 * weightedMertensDyadicWeight n := by
  unfold weightedMertensBaseTerm weightedMertensDyadicWeight
  ring

theorem weightedMertensDyadicWeight_nonneg (n : ℕ) :
    0 ≤ weightedMertensDyadicWeight n := by
  unfold weightedMertensDyadicWeight
  positivity

/-- Reciprocal telescoping identity for one positive integer step. -/
theorem weightedMertensDyadicWeight_eq_inv_sub_inv_succ
    {n : ℕ} (hn : 1 ≤ n) :
    weightedMertensDyadicWeight n =
      (n : ℝ)⁻¹ - ((n + 1 : ℕ) : ℝ)⁻¹ := by
  have hn0 : (n : ℝ) ≠ 0 := by positivity
  have hs0 : ((n + 1 : ℕ) : ℝ) ≠ 0 := by positivity
  unfold weightedMertensDyadicWeight
  simp only [Real.rpow_neg_one]
  field_simp [hn0, hs0]
  ring

/-- Exact finite reciprocal telescope on a positive half-open integer range. -/
theorem sum_weightedMertensDyadicWeight_Ico
    {L U : ℕ} (hL : 1 ≤ L) (hLU : L ≤ U) :
    (∑ n ∈ Finset.Ico L U, weightedMertensDyadicWeight n) =
      (L : ℝ)⁻¹ - (U : ℝ)⁻¹ := by
  induction U generalizing L with
  | zero =>
      have hL0 : L = 0 := Nat.eq_zero_of_le_zero hLU
      subst L
      omega
  | succ U ih =>
      by_cases h : L ≤ U
      · rw [Finset.sum_Ico_succ_top h, ih hL h,
          weightedMertensDyadicWeight_eq_inv_sub_inv_succ
            (hL.trans h)]
        ring
      · have hEq : L = U + 1 := by omega
        subst L
        simp

/-- Exact finite pair kernel. Pair `(a,b)` contributes only after both
coefficients have entered the closed Mertens inventory. -/
def weightedMertensPairKernel (j a b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    if a ≤ n ∧ b ≤ n then weightedMertensDyadicWeight n else 0

/-- Earliest integer in the dyadic cell at which both pair coefficients are
active. -/
def weightedMertensPairLower (j a b : ℕ) : ℕ :=
  max (2 ^ j) (max a b)

/-- The indicator kernel is exactly the reciprocal telescope from its true
pair-dependent lower endpoint. -/
theorem weightedMertensPairKernel_eq_sum_Ico_lower (j a b : ℕ) :
    weightedMertensPairKernel j a b =
      ∑ n ∈ Finset.Ico (weightedMertensPairLower j a b) (2 ^ (j + 1)),
        weightedMertensDyadicWeight n := by
  unfold weightedMertensPairKernel
  rw [← Finset.sum_filter]
  have hset :
      (Finset.Ico (2 ^ j) (2 ^ (j + 1))).filter
          (fun n : ℕ => a ≤ n ∧ b ≤ n) =
        Finset.Ico (weightedMertensPairLower j a b) (2 ^ (j + 1)) := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Ico]
    unfold weightedMertensPairLower
    simp only [max_le_iff]
    tauto
  rw [hset]

/-- Closed form of the exact pair kernel. The right endpoint is excluded. -/
theorem weightedMertensPairKernel_closed (j a b : ℕ) :
    weightedMertensPairKernel j a b =
      if max a b < 2 ^ (j + 1) then
        ((weightedMertensPairLower j a b : ℕ) : ℝ)⁻¹ -
          ((2 ^ (j + 1) : ℕ) : ℝ)⁻¹
      else 0 := by
  rw [weightedMertensPairKernel_eq_sum_Ico_lower]
  by_cases h : max a b < 2 ^ (j + 1)
  · rw [if_pos h]
    have hN : 2 ^ j < 2 ^ (j + 1) :=
      Nat.pow_lt_pow_right (by norm_num) (Nat.lt_succ_self j)
    have hL : 1 ≤ weightedMertensPairLower j a b := by
      unfold weightedMertensPairLower
      positivity
    have hLU : weightedMertensPairLower j a b ≤ 2 ^ (j + 1) := by
      unfold weightedMertensPairLower
      omega
    exact sum_weightedMertensDyadicWeight_Ico hL hLU
  · rw [if_neg h]
    have hU : 2 ^ (j + 1) ≤ weightedMertensPairLower j a b := by
      unfold weightedMertensPairLower
      exact (not_lt.mp h).trans (Nat.le_max_right _ _)
    rw [Finset.Ico_eq_empty_of_le hU, Finset.sum_empty]

/-- Kernel positivity is elementary and carries no cancellation information. -/
theorem weightedMertensPairKernel_nonneg (j a b : ℕ) :
    0 ≤ weightedMertensPairKernel j a b := by
  unfold weightedMertensPairKernel
  apply Finset.sum_nonneg
  intro n hn
  by_cases h : a ≤ n ∧ b ≤ n
  · simp [h, weightedMertensDyadicWeight_nonneg]
  · simp [h]

/-- Every pair kernel is bounded by the reciprocal left endpoint of its dyadic
cell. -/
theorem weightedMertensPairKernel_le_inv_left (j a b : ℕ) :
    weightedMertensPairKernel j a b ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  calc
    weightedMertensPairKernel j a b ≤
        ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          weightedMertensDyadicWeight n := by
      unfold weightedMertensPairKernel
      apply Finset.sum_le_sum
      intro n hn
      by_cases h : a ≤ n ∧ b ≤ n
      · simp [h]
      · simp [h, weightedMertensDyadicWeight_nonneg]
    _ = (((2 ^ j : ℕ) : ℝ))⁻¹ -
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
      exact sum_weightedMertensDyadicWeight_Ico
        (by positivity)
        (Nat.pow_le_pow_right (by norm_num : 0 < 2) (Nat.le_succ j))
    _ ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ :=
      sub_le_self _ (inv_nonneg.mpr (Nat.cast_nonneg _))

/-- A shorter closed Mertens prefix can be expanded over any later finite
inventory; all later coefficients are exactly zeroed by the indicator. -/
theorem pickupMertensPrefix_fixed_inventory
    {n U : ℕ} (hnU : n ≤ U) :
    pickupMertensPrefix n =
      ∑ a ∈ Finset.Icc 1 U,
        if a ≤ n then moebiusReal a else 0 := by
  unfold pickupMertensPrefix
  have hsub : Finset.Icc 1 n ⊆ Finset.Icc 1 U := by
    intro a ha
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp ha).1, (Finset.mem_Icc.mp ha).2.trans hnU⟩
  calc
    (∑ a ∈ Finset.Icc 1 n, moebiusReal a) =
        ∑ a ∈ Finset.Icc 1 n,
          if a ≤ n then moebiusReal a else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      simp [(Finset.mem_Icc.mp ha).2]
    _ = ∑ a ∈ Finset.Icc 1 U,
          if a ≤ n then moebiusReal a else 0 := by
      apply Finset.sum_subset hsub
      intro a haU han
      have hnot : ¬a ≤ n := by
        intro hanle
        exact han (Finset.mem_Icc.mpr
          ⟨(Finset.mem_Icc.mp haU).1, hanle⟩)
      simp [hnot]

/-- Fixed-inventory expansion of the actual Mertens square. -/
theorem pickupMertensPrefix_sq_fixed_inventory
    {n U : ℕ} (hnU : n ≤ U) :
    pickupMertensPrefix n ^ 2 =
      ∑ a ∈ Finset.Icc 1 U,
        ∑ b ∈ Finset.Icc 1 U,
          if a ≤ n ∧ b ≤ n then
            moebiusReal a * moebiusReal b
          else 0 := by
  rw [pickupMertensPrefix_fixed_inventory hnU, pow_two,
    Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a ha
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b hb
  by_cases haN : a ≤ n <;> by_cases hbN : b ≤ n <;>
    simp [haN, hbN]

/-- The complete finite pair quadratic form attached to one dyadic block. -/
def weightedMertensDyadicPairQuadratic (j : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
    ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
      moebiusReal a * moebiusReal b *
        weightedMertensPairKernel j a b

/-- Exact quadratic expansion of the actual positive dyadic block. -/
theorem weightedMertensDyadicBlock_eq_pairQuadratic (j : ℕ) :
    weightedMertensDyadicBlock j =
      weightedMertensDyadicPairQuadratic j := by
  unfold weightedMertensDyadicBlock weightedMertensDyadicPairQuadratic
  calc
    (∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        weightedMertensBaseTerm n) =
      ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
            (if a ≤ n ∧ b ≤ n then
              moebiusReal a * moebiusReal b
            else 0) * weightedMertensDyadicWeight n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [weightedMertensBaseTerm_eq_weight,
        pickupMertensPrefix_sq_fixed_inventory
          (Nat.le_of_lt (Finset.mem_Ico.mp hn).2),
        Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.sum_mul]
    _ = ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
        ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
          moebiusReal a * moebiusReal b *
            weightedMertensPairKernel j a b := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro b hb
      unfold weightedMertensPairKernel
      rw [← Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hab : a ≤ n ∧ b ≤ n
      · simp [hab]
        ring
      · simp [hab]

/-- Diagonal part of the pair quadratic form. -/
def weightedMertensDyadicPairDiagonal (j : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
    moebiusReal a ^ 2 * weightedMertensPairKernel j a a

/-- Complete ordered signed off-diagonal part. No absolute values occur. -/
def weightedMertensDyadicPairOffDiagonal (j : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
    ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
      if a = b then 0
      else moebiusReal a * moebiusReal b *
        weightedMertensPairKernel j a b

/-- Exact diagonal/off-diagonal split of the finite pair quadratic form. -/
theorem weightedMertensDyadicPairQuadratic_eq_diagonal_add_offDiagonal
    (j : ℕ) :
    weightedMertensDyadicPairQuadratic j =
      weightedMertensDyadicPairDiagonal j +
        weightedMertensDyadicPairOffDiagonal j := by
  unfold weightedMertensDyadicPairQuadratic
    weightedMertensDyadicPairDiagonal
    weightedMertensDyadicPairOffDiagonal
  calc
    (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
      ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
        moebiusReal a * moebiusReal b *
          weightedMertensPairKernel j a b) =
      ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
        ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ((if a = b then
              moebiusReal a ^ 2 * weightedMertensPairKernel j a a
            else 0) +
           (if a = b then 0 else
              moebiusReal a * moebiusReal b *
                weightedMertensPairKernel j a b)) := by
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      by_cases hab : a = b
      · subst b
        simp
        ring
      · simp [hab]
    _ = (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
            if a = b then
              moebiusReal a ^ 2 * weightedMertensPairKernel j a a
            else 0) +
        ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
            if a = b then 0 else
              moebiusReal a * moebiusReal b *
                weightedMertensPairKernel j a b := by
      simp_rw [Finset.sum_add_distrib]
    _ = (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          moebiusReal a ^ 2 * weightedMertensPairKernel j a a) +
        ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
            if a = b then 0 else
              moebiusReal a * moebiusReal b *
                weightedMertensPairKernel j a b := by
      congr 1
      apply Finset.sum_congr rfl
      intro a ha
      simp [ha]

/-- Exact source split of the existing block. -/
theorem weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal
    (j : ℕ) :
    weightedMertensDyadicBlock j =
      weightedMertensDyadicPairDiagonal j +
        weightedMertensDyadicPairOffDiagonal j :=
  (weightedMertensDyadicBlock_eq_pairQuadratic j).trans
    (weightedMertensDyadicPairQuadratic_eq_diagonal_add_offDiagonal j)

/-- Elementary coefficient-square allowance. -/
theorem moebiusReal_sq_le_one (a : ℕ) :
    moebiusReal a ^ 2 ≤ 1 := by
  have hμ := moebiusReal_abs_le_one a
  have hmul : 0 ≤ (1 - |moebiusReal a|) * (1 + |moebiusReal a|) :=
    mul_nonneg (sub_nonneg.mpr hμ)
      (add_nonneg (by norm_num) (abs_nonneg _))
  nlinarith [sq_abs (moebiusReal a)]

/-- The pair diagonal is nonnegative. -/
theorem weightedMertensDyadicPairDiagonal_nonneg (j : ℕ) :
    0 ≤ weightedMertensDyadicPairDiagonal j := by
  unfold weightedMertensDyadicPairDiagonal
  exact Finset.sum_nonneg fun a ha =>
    mul_nonneg (sq_nonneg _) (weightedMertensPairKernel_nonneg j a a)

/-- The complete diagonal has a uniform elementary budget. This uses no
Möbius cancellation. -/
theorem weightedMertensDyadicPairDiagonal_le_two (j : ℕ) :
    weightedMertensDyadicPairDiagonal j ≤ 2 := by
  calc
    weightedMertensDyadicPairDiagonal j ≤
        ∑ _a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      unfold weightedMertensDyadicPairDiagonal
      apply Finset.sum_le_sum
      intro a ha
      calc
        moebiusReal a ^ 2 * weightedMertensPairKernel j a a ≤
            1 * weightedMertensPairKernel j a a :=
          mul_le_mul_of_nonneg_right (moebiusReal_sq_le_one a)
            (weightedMertensPairKernel_nonneg j a a)
        _ ≤ 1 * (((2 ^ j : ℕ) : ℝ))⁻¹ :=
          mul_le_mul_of_nonneg_left
            (weightedMertensPairKernel_le_inv_left j a a) (by norm_num)
        _ = (((2 ^ j : ℕ) : ℝ))⁻¹ := one_mul _
    _ = (((2 ^ (j + 1) : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      simp [Finset.card_Icc]
    _ = 2 := by
      rw [Nat.pow_succ]
      push_cast
      field_simp [show (((2 ^ j : ℕ) : ℝ)) ≠ 0 by positivity]
      ring

/-- The remaining source-specific arithmetic supplier: an upper bound on the
complete ordered signed off-diagonal at every subpolynomial exponent. -/
def SubpolynomialDyadicMertensPairCorrelation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicPairOffDiagonal j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Positive block control supplies the signed off-diagonal upper bound because
the paid diagonal is nonnegative. -/
theorem pairCorrelation_of_dyadicBlock
    (hblock : SubpolynomialDyadicBlockWeightedMertensSquare) :
    SubpolynomialDyadicMertensPairCorrelation := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hblock δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  have hsplit := weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal j
  have hdiag := weightedMertensDyadicPairDiagonal_nonneg j
  linarith [hbound j]

/-- A signed off-diagonal bound returns to the positive block after paying the
uniform diagonal constant. -/
theorem dyadicBlock_of_pairCorrelation
    (hpair : SubpolynomialDyadicMertensPairCorrelation) :
    SubpolynomialDyadicBlockWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hpair δ hδ
  refine ⟨C + 2, add_nonneg hC (by norm_num), ?_⟩
  intro j
  have hbase : (1 : ℝ) ≤ ((2 ^ j : ℕ) : ℝ) := by
    exact_mod_cast (show 1 ≤ 2 ^ j from Nat.one_le_two_pow)
  have hpow : 1 ≤ (((2 ^ j : ℕ) : ℝ) ^ δ) :=
    Real.one_le_rpow hbase hδ.le
  rw [weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal]
  calc
    weightedMertensDyadicPairDiagonal j +
          weightedMertensDyadicPairOffDiagonal j ≤
        2 + C * (((2 ^ j : ℕ) : ℝ) ^ δ) :=
      add_le_add (weightedMertensDyadicPairDiagonal_le_two j) (hbound j)
    _ ≤ (C + 2) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      nlinarith

/-- Exact equivalence of the positive block target and the complete signed
pair-correlation target. -/
theorem subpolynomialDyadicMertensPairCorrelation_iff_block :
    SubpolynomialDyadicMertensPairCorrelation ↔
      SubpolynomialDyadicBlockWeightedMertensSquare :=
  ⟨dyadicBlock_of_pairCorrelation,
    pairCorrelation_of_dyadicBlock⟩

/-- Conditional terminal return through the existing RH-E02 chain. The
universal signed pair-correlation estimate remains open. -/
theorem riemannHypothesis_of_subpolynomialDyadicMertensPairCorrelation
    (hpair : SubpolynomialDyadicMertensPairCorrelation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare
    (dyadicBlock_of_pairCorrelation hpair)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensPairKernel_closed
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicBlock_eq_pairQuadratic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicPairDiagonal_le_two
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMertensPairCorrelation_iff_block
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMertensPairCorrelation
```
