/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib/GRWTSK mathematics retains the original licenses and attribution.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixSquareCriterion
import Mathlib

/-!
# The exact signed doubling packet in the weighted Liouville-prefix square

The original coefficient and the complete terminal-weighted shift aggregate
are retained. The actual Liouville identity lambda(2*m) = -lambda(m) for
positive m gives an exact negative packet, not an assumption of independent
signs. It cancels the unbounded harmonic part of the coefficient-square
diagonal, leaving a uniformly bounded baseline and a complete signed
non-doubling remainder. This is NOT a proof of WeightedPrefixSquareAllRate,
DyadicWeightedPrefixSquareSupplier, UniformEnergySupplier, or RH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion

private theorem card_one_to (N : ℕ) : (Finset.Icc 1 N).card = N := by
  rw [Nat.card_Icc]
  omega

/-- Actual Liouville signs have unit absolute value at positive integers. -/
theorem coefficient_abs_one {n : ℕ} (hn : 1 ≤ n) :
    |coefficient n| = 1 := by
  have hn0 : n ≠ 0 := by omega
  calc
    |coefficient n| = |(-1 : ℝ) ^ ArithmeticFunction.cardFactors n| := by
      simp [coefficient, ArithmeticFunction.liouville_apply hn0]
    _ = 1 := by simp

theorem coefficient_square_one {n : ℕ} (hn : 1 ≤ n) :
    coefficient n ^ 2 = 1 := by
  have h := coefficient_abs_one hn
  calc
    coefficient n ^ 2 = |coefficient n| ^ 2 := by rw [sq_abs]
    _ = 1 := by rw [h]; norm_num

/-- The actual Liouville prefix cannot exceed the length of its inventory. -/
theorem prefix_abs_le (N : ℕ) :
    |liouvillePrefixNat N| ≤ (N : ℝ) := by
  calc
    |liouvillePrefixNat N| = |∑ n ∈ Finset.Icc 1 N, coefficient n| := rfl
    _ ≤ ∑ n ∈ Finset.Icc 1 N, |coefficient n| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ _n ∈ Finset.Icc 1 N, (1 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      exact coefficient_abs_one (Finset.mem_Icc.mp hn).1
    _ = (N : ℝ) := by simp [card_one_to]

/-- Completely unconditional, but only rate-one, weighted-square estimate. -/
theorem weighted_prefix_atom_le_one {k : ℕ} (hk : 1 ≤ k) :
    liouvillePrefixNat k ^ 2 / ((k : ℝ) * ((k + 1 : ℕ) : ℝ)) ≤ 1 := by
  have hkpos : (0 : ℝ) < k := by exact_mod_cast hk
  have hL := prefix_abs_le k
  have hsq : liouvillePrefixNat k ^ 2 ≤ (k : ℝ) ^ 2 := by
    have hs := (sq_le_sq₀ (abs_nonneg (liouvillePrefixNat k))
      (Nat.cast_nonneg k)).mpr hL
    simpa only [sq_abs] using hs
  have hkstep : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.le_succ k
  have hden : (0 : ℝ) < (k : ℝ) * ((k + 1 : ℕ) : ℝ) := by positivity
  apply (div_le_iff₀ hden).2
  nlinarith [mul_nonneg hkpos.le (sub_nonneg.mpr hkstep)]

theorem discrete_weighted_prefix_nonneg (N : ℕ) :
    0 ≤ discreteWeightedPrefixSquare N := by
  unfold discreteWeightedPrefixSquare
  apply Finset.sum_nonneg
  intro k hk
  have hkpos : (0 : ℝ) < k := by
    exact_mod_cast (Finset.mem_Icc.mp hk).1
  exact div_nonneg (sq_nonneg _) (by positivity)

/-- The only unconditional global prefix-square envelope supplied here is N. -/
theorem discrete_weighted_prefix_le (N : ℕ) :
    discreteWeightedPrefixSquare N ≤ (N : ℝ) := by
  unfold discreteWeightedPrefixSquare
  calc
    (∑ k ∈ Finset.Icc 1 N,
      liouvillePrefixNat k ^ 2 / ((k : ℝ) * ((k + 1 : ℕ) : ℝ))) ≤
        ∑ _k ∈ Finset.Icc 1 N, (1 : ℝ) := by
          apply Finset.sum_le_sum
          intro k hk
          exact weighted_prefix_atom_le_one (Finset.mem_Icc.mp hk).1
    _ = (N : ℝ) := by simp [card_one_to]

/-- Liouville(2) = -1, from the actual prime-factor definition. -/
theorem coefficient_two : coefficient 2 = -1 := by
  simp [coefficient, ArithmeticFunction.liouville_apply
    (by norm_num : (2 : ℕ) ≠ 0),
    ArithmeticFunction.cardFactors_apply_prime Nat.prime_two]

/-- Doubling reverses the true Liouville sign, including even m. -/
theorem coefficient_doubling (m : ℕ) :
    coefficient (2 * m) = -coefficient m := by
  rw [coefficient_mul, coefficient_two]
  ring

/-- Unlike Möbius, the Liouville doubled coefficient product is -1
for EVERY positive m, with no squarefree exclusion. -/
theorem coefficient_doubling_product {m : ℕ} (hm : 1 ≤ m) :
    coefficient m * coefficient (2 * m) = -1 := by
  rw [coefficient_doubling]
  nlinarith [coefficient_square_one hm]

/-- The original weighted full-shift term for ordered pair (m,2m) and its
reverse orientation, with the SAME terminal N+1 boundary as the source. -/
def doubledPairPacket (N : ℕ) : ℝ :=
  2 * ∑ m ∈ Finset.Icc 1 (N / 2),
    coefficient m * coefficient (2 * m) *
      (1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)))

/-- Nonnegative amount of the exact signed doubling credit. -/
def doubledPairCredit (N : ℕ) : ℝ :=
  2 * ∑ m ∈ Finset.Icc 1 (N / 2),
    (1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)))

/-- No variable or endpoint weight is discarded in extracting the credit. -/
theorem doubledPairPacket_eq_neg_credit (N : ℕ) :
    doubledPairPacket N = -doubledPairCredit N := by
  unfold doubledPairPacket doubledPairCredit
  calc
    2 * ∑ m ∈ Finset.Icc 1 (N / 2),
      coefficient m * coefficient (2 * m) *
        (1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ))) =
      2 * ∑ m ∈ Finset.Icc 1 (N / 2),
        -(1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ))) := by
          congr 1
          apply Finset.sum_congr rfl
          intro m hm
          rw [coefficient_doubling_product (Finset.mem_Icc.mp hm).1]
          ring
    _ = -doubledPairCredit N := by
      simp [doubledPairCredit, Finset.sum_neg_distrib]

/-- Elementary finite real harmonic prefix, retaining the index 1. -/
def harmonicOneTo (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, 1 / (m : ℝ)

/-- The full signed doubled packet is one harmonic prefix, together with
its precise terminal-face correction. -/
theorem doubledPairCredit_eq_harmonic (N : ℕ) :
    doubledPairCredit N =
      harmonicOneTo (N / 2) -
        (2 * ((N / 2 : ℕ) : ℝ)) / ((N + 1 : ℕ) : ℝ) := by
  have hterm (m : ℕ) (hm : m ∈ Finset.Icc 1 (N / 2)) :
      2 * (1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ))) =
        1 / (m : ℝ) - 2 / (((N + 1 : ℕ) : ℝ)) := by
    have hmpos : (0 : ℝ) < m := by
      exact_mod_cast (Finset.mem_Icc.mp hm).1
    have hNpos : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
    push_cast
    field_simp [ne_of_gt hmpos, ne_of_gt hNpos]
    <;> ring
  unfold doubledPairCredit harmonicOneTo
  calc
    2 * ∑ m ∈ Finset.Icc 1 (N / 2),
      (1 / (((2 * m : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ))) =
        ∑ m ∈ Finset.Icc 1 (N / 2),
          (1 / (m : ℝ) - 2 / (((N + 1 : ℕ) : ℝ))) := by
            rw [Finset.mul_sum]
            exact Finset.sum_congr rfl (fun m hm => hterm m hm)
    _ = (∑ m ∈ Finset.Icc 1 (N / 2), 1 / (m : ℝ)) -
          ∑ _m ∈ Finset.Icc 1 (N / 2),
            2 / (((N + 1 : ℕ) : ℝ)) := Finset.sum_sub_distrib
    _ = (∑ m ∈ Finset.Icc 1 (N / 2), 1 / (m : ℝ)) -
        (2 * ((N / 2 : ℕ) : ℝ)) / (((N + 1 : ℕ) : ℝ)) := by
          rw [Finset.sum_const, card_one_to]
          simp only [nsmul_eq_mul]
          ring

/-- The actual coefficient-square diagonal has the complete terminal-face
correction, not just its harmonic leading term. -/
theorem weightedPrefixDiagonal_eq_harmonic (N : ℕ) :
    weightedPrefixDiagonal N =
      harmonicOneTo N - (N : ℝ) / (((N + 1 : ℕ) : ℝ)) := by
  unfold weightedPrefixDiagonal harmonicOneTo
  rw [Finset.sum_sub_distrib, Finset.sum_const, card_one_to]
  simp only [nsmul_eq_mul]
  ring

/-- Exact diagonal and negative-double cancellation. All other weighted
Liouville correlations remain untouched. -/
theorem diagonal_add_doubledPacket_eq_tail (N : ℕ) :
    weightedPrefixDiagonal N + doubledPairPacket N =
      (∑ n ∈ Finset.Icc (N / 2 + 1) N, 1 / (n : ℝ)) +
        (2 * ((N / 2 : ℕ) : ℝ) - (N : ℝ)) /
          (((N + 1 : ℕ) : ℝ)) := by
  let M : ℕ := N / 2
  have hsplit :
      harmonicOneTo N = harmonicOneTo M +
        ∑ n ∈ Finset.Icc (M + 1) N, 1 / (n : ℝ) := by
    have hsplitset : Finset.Icc 1 N =
        Finset.Icc 1 M ∪ Finset.Icc (M + 1) N := by
      ext n
      simp only [Finset.mem_Icc, Finset.mem_union]
      dsimp [M]
      omega
    have hdisj : Disjoint (Finset.Icc 1 M) (Finset.Icc (M + 1) N) := by
      apply Finset.disjoint_left.mpr
      intro n hn hn'
      have hnm := (Finset.mem_Icc.mp hn).2
      have hmn := (Finset.mem_Icc.mp hn').1
      omega
    unfold harmonicOneTo
    rw [hsplitset, Finset.sum_union hdisj]
  rw [weightedPrefixDiagonal_eq_harmonic,
      doubledPairPacket_eq_neg_credit,
      doubledPairCredit_eq_harmonic]
  dsimp [M] at hsplit
  rw [hsplit]
  ring

/-- The full harmonic interval remaining after doubling is bounded by one.
This holds at N=0 as well as at every positive endpoint. -/
theorem harmonic_upper_half_le_one (N : ℕ) :
    (∑ n ∈ Finset.Icc (N / 2 + 1) N, 1 / (n : ℝ)) ≤ 1 := by
  let M : ℕ := N / 2
  have hcount : (Finset.Icc (M + 1) N).card ≤ M + 1 := by
    rw [Nat.card_Icc]
    dsimp [M]
    omega
  have hcountR : ((Finset.Icc (M + 1) N).card : ℝ) ≤ (M + 1 : ℕ) := by
    exact_mod_cast hcount
  have hmpos : (0 : ℝ) < (M + 1 : ℕ) := by positivity
  have htail :
      (∑ n ∈ Finset.Icc (M + 1) N, 1 / (n : ℝ)) ≤
        ((Finset.Icc (M + 1) N).card : ℝ) / ((M + 1 : ℕ) : ℝ) := by
    calc
      _ ≤ ∑ _n ∈ Finset.Icc (M + 1) N, 1 / (((M + 1 : ℕ) : ℝ)) := by
        apply Finset.sum_le_sum
        intro n hn
        have hnlow : ((M + 1 : ℕ) : ℝ) ≤ (n : ℝ) := by
          exact_mod_cast (Finset.mem_Icc.mp hn).1
        exact one_div_le_one_div_of_le hmpos hnlow
      _ = ((Finset.Icc (M + 1) N).card : ℝ) / ((M + 1 : ℕ) : ℝ) := by
        simp [div_eq_mul_inv]
  calc
    (∑ n ∈ Finset.Icc (N / 2 + 1) N, 1 / (n : ℝ)) ≤
        ((Finset.Icc (M + 1) N).card : ℝ) / ((M + 1 : ℕ) : ℝ) := htail
    _ ≤ 1 := (div_le_iff₀ hmpos).2 (by nlinarith [hcountR])

/-- The complete positive diagonal plus the true negative doubling packet
is uniformly bounded. This is a noncircular but only finite cancellation. -/
theorem diagonal_add_doubledPacket_le_one (N : ℕ) :
    weightedPrefixDiagonal N + doubledPairPacket N ≤ 1 := by
  have htail := harmonic_upper_half_le_one N
  have h2M : 2 * (N / 2) ≤ N := by omega
  have h2MR : (2 : ℝ) * ((N / 2 : ℕ) : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast h2M
  have hden : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hrem :
      (2 * ((N / 2 : ℕ) : ℝ) - (N : ℝ)) /
        (((N + 1 : ℕ) : ℝ)) ≤ 0 := by
    apply (div_le_iff₀ hden).2
    nlinarith
  rw [diagonal_add_doubledPacket_eq_tail]
  linarith

/-- The bounded residual of the diagonal/doubling cancellation cannot have
arbitrarily large negative size either. -/
theorem diagonal_add_doubledPacket_ge_neg_one (N : ℕ) :
    -(1 : ℝ) ≤ weightedPrefixDiagonal N + doubledPairPacket N := by
  have htail : 0 ≤ (∑ n ∈ Finset.Icc (N / 2 + 1) N, 1 / (n : ℝ)) := by
    apply Finset.sum_nonneg
    intro n hn
    have hnNat : 0 < n := by
      have hlo := (Finset.mem_Icc.mp hn).1
      omega
    have hnpos : (0 : ℝ) < n := by exact_mod_cast hnNat
    positivity
  have hden : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hnumer :
      -(((N + 1 : ℕ) : ℝ)) ≤
        2 * ((N / 2 : ℕ) : ℝ) - (N : ℝ) := by
    push_cast
    have hmnonneg : (0 : ℝ) ≤ ((N / 2 : ℕ) : ℝ) := Nat.cast_nonneg _
    linarith
  have hrem :
      -(1 : ℝ) ≤
        (2 * ((N / 2 : ℕ) : ℝ) - (N : ℝ)) /
          (((N + 1 : ℕ) : ℝ)) := by
    apply (le_div_iff₀ hden).2
    nlinarith
  rw [diagonal_add_doubledPacket_eq_tail]
  linarith

/-- The full shift aggregate after literally removing ONLY the doubled pairs.
Other shifts retain both orientations, coefficients and terminal weights. -/
def nonDoublingShiftRemainder (N : ℕ) : ℝ :=
  completeWeightedShiftAggregate N - doubledPairPacket N

/-- Finite source return; this theorem explicitly consumes the independent
complete all-shift expansion, not a fabricated smallness hypothesis. -/
theorem source_weighted_prefix_eq_diagonal_add_double_add_remainder
    (hShift : WeightedPrefixSquareShiftIdentity) (N : ℕ) :
    discreteWeightedPrefixSquare N =
      weightedPrefixDiagonal N + doubledPairPacket N +
        nonDoublingShiftRemainder N := by
  have h := hShift N
  dsimp [nonDoublingShiftRemainder]
  linarith

/-- Both sides retain the exact signed non-doubling remainder. A bound
for the complete weighted prefix square and a bound for this remainder
differ by at most one, conditional only on the separate finite shift identity. -/
theorem weighted_prefix_le_nonDoubling_plus_one
    (hShift : WeightedPrefixSquareShiftIdentity) (N : ℕ) :
    discreteWeightedPrefixSquare N ≤ nonDoublingShiftRemainder N + 1 := by
  have hreturn := source_weighted_prefix_eq_diagonal_add_double_add_remainder hShift N
  have hbase := diagonal_add_doubledPacket_le_one N
  linarith

theorem nonDoubling_le_weighted_prefix_plus_one
    (hShift : WeightedPrefixSquareShiftIdentity) (N : ℕ) :
    nonDoublingShiftRemainder N ≤ discreteWeightedPrefixSquare N + 1 := by
  have hreturn := source_weighted_prefix_eq_diagonal_add_double_add_remainder hShift N
  have hbase := diagonal_add_doubledPacket_ge_neg_one N
  linarith

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
