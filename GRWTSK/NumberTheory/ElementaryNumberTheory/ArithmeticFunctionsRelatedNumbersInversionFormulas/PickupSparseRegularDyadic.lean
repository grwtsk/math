/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib mathematics retain upstream authorship/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupSparseExceptionalRHGrowing

/-!
# The complete regular dyadic cover after paying sparse symmetric exclusions

The exact original signed endpoint covariance decomposes into regular dyadic
blocks plus a fully paid symmetric excluded sector. This keeps all off-diagonal
ordered pairs and pays the original endpoint curvature quarter exactly once.
The regular block budget is explicitly conditional; no arithmetic saving is
asserted or obtained by discarding unfavourable blocks.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupSparseRegularDyadic

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel
open GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Signed regular observation on one actual dyadic index rectangle. -/
def regularDyadicBlock (A : Finset ℕ) (T : ℝ) (j k : ℕ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ dyadicBand N j, ∑ n ∈ dyadicBand N k,
    if m ≠ n ∧ n ∉ excludedRow A m then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- Complete finite partition of the actual regular part; unlike a surrogate
energy, this retains every signed orientation and the exact cutoff. -/
theorem regularCovariance_eq_regularDyadicCover (A : Finset ℕ) (T : ℝ) :
    regularCovariance A T =
      ∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          regularDyadicBlock A T j k := by
  unfold regularCovariance regularDyadicBlock
  exact double_sum_eq_dyadicCover ⌊Real.exp T⌋₊
    (fun m n => if m ≠ n ∧ n ∉ excludedRow A m then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0)

/-- Original covariance equals the signed regular dyadic cover plus the
original signed excluded portion; no sign or diagonal is lost. -/
theorem pickupCross_eq_regularBlocks_add_excluded (A : Finset ℕ) (T : ℝ) :
    pickupCross T =
      (∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          regularDyadicBlock A T j k) + excludedCovariance A T := by
  rw [pickupCross_eq_regular_add_excluded A T,
    regularCovariance_eq_regularDyadicCover]

/-- Quantified unconditional exception cost and exact 1/4 endpoint correction.
Only the regular dyadic blocks are still unestimated. -/
theorem endpointSum_le_regularBlocks_plus_paid_exclusions
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      (∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          |regularDyadicBlock A T j k|) +
            4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) + 1 / 4 := by
  have he := endpointSum_error hT
  have heup : endpointSum T - pickupCross T ≤ 1 / 4 :=
    (le_abs_self _).trans he
  have hex := excludedCovariance_abs_le_polynomial A hT
  have hexup : excludedCovariance A T ≤
      4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) :=
    (le_abs_self _).trans hex
  have hreg : regularCovariance A T ≤
      ∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          |regularDyadicBlock A T j k| := by
    rw [regularCovariance_eq_regularDyadicCover]
    apply Finset.sum_le_sum
    intro j hj
    apply Finset.sum_le_sum
    intro k hk
    exact le_abs_self _
  rw [pickupCross_eq_regular_add_excluded A T] at heup
  linarith

/-- Uniform regular-block estimates pay exactly J² block slots, with an
independent quadratic-time sparse-exception term. -/
theorem endpointSum_le_regularUniformBlockBudget
    (A : Finset ℕ) {T B : ℝ} (hT : 0 ≤ T)
    (hB : ∀ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
      ∀ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        |regularDyadicBlock A T j k| ≤ B) :
    endpointSum T ≤
      ((dyadicHeight ⌊Real.exp T⌋₊ : ℕ) : ℝ) ^ 2 * B +
        4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) + 1 / 4 := by
  let J := dyadicHeight ⌊Real.exp T⌋₊
  have hreg :
      (∑ j ∈ Finset.range J, ∑ k ∈ Finset.range J,
          |regularDyadicBlock A T j k|) ≤ (J : ℝ) ^ 2 * B := by
    calc
      _ ≤ ∑ _j ∈ Finset.range J, ∑ _k ∈ Finset.range J, B := by
        apply Finset.sum_le_sum
        intro j hj
        apply Finset.sum_le_sum
        intro k hk
        exact hB j hj k hk
      _ = (J : ℝ) ^ 2 * B := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        ring
  have he := endpointSum_le_regularBlocks_plus_paid_exclusions A hT
  dsimp only [J] at hreg
  linarith

/-- The five-neighbor band alone (A empty) has an unconditional, precisely
paid 20*T*(1+T) covariance allowance; the distant signed covariance remains. -/
theorem endpointSum_le_distantBlocks (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      (∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          |regularDyadicBlock ∅ T j k|) +
            20 * T * (1 + T) + 1 / 4 := by
  have h := endpointSum_le_regularBlocks_plus_paid_exclusions (∅ : Finset ℕ) hT
  simp only [Finset.card_empty, Nat.mul_zero, zero_add, Nat.cast_ofNat] at h
  nlinarith

/-- In a signed source the physically meaningful zero detector is the
positive part formed AFTER the regular pair sum, not a termwise positive mask. -/
def regularPositive (A : Finset ℕ) (T : ℝ) : ℝ :=
  max 0 (regularCovariance A T)

/-- The original nonnegative cumulative energy and the POSITIVE PART of the
regular signed covariance differ only by already paid polynomial allowances.
This is an unconditional finite-time, exact-source, two-sided comparison. -/
theorem energy_regularPositive_sandwich
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    regularPositive A T ≤ pickupEnergy T +
      4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) ∧
    pickupEnergy T ≤ regularPositive A T + 2 * T ^ 2 +
      4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) := by
  let E : ℝ := 4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ)
  have hE : 0 ≤ E := by dsimp [E]; positivity
  have hExc := excludedCovariance_abs_le_polynomial A hT
  have hExcLe : -E ≤ excludedCovariance A T ∧
      excludedCovariance A T ≤ E := by
    simpa only [E] using (abs_le.mp hExc)
  have hDiag := pickupDiagonal_quadratic_bound hT
  have hEnergy := pickupEnergy_nonneg hT
  have hSource := pickupEnergy_eq_diagonal_add_cross hT
  rw [pickupCross_eq_regular_add_excluded A T] at hSource
  have hRegLe : regularCovariance A T ≤ regularPositive A T :=
    le_max_right _ _
  constructor
  · unfold regularPositive
    apply max_le
    · exact add_nonneg hEnergy hE
    · linarith [hSource, hDiag.1, hExcLe.1]
  · linarith [hSource, hDiag.2, hExcLe.2, hRegLe]

end GRWTSK.NumberTheory.Moebius.PickupSparseRegularDyadic
