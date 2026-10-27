/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelInputApproximation

/-!
# Selected dyadic features of the unchanged arithmetic signed row

The actual row ell=w1-w2-w3 is combined BEFORE dyadic transformation. Every
positive source index 1,...,Y is retained, as is the actual root mean. The
omitted pairing, its optional energy bound, and a node-specific prefix
supplier all feed the old signed packet without a new boundary hypothesis.
The unsifted/one-prime/two-prime head remains signed and unchanged unless
explicitly placed in the same joint modeling error. No arithmetic smallness
or comparison with the detached Fourier candidates is asserted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel

/-- This is the existing combined coefficient row, merely shifted to zero-based indexing. -/
def dyadicRow (width : ℕ → ℕ) (j n : ℕ) : ℝ := signedRow width j (n + 1)

def positiveInput (f : ℕ → ℝ) (n : ℕ) : ℝ := f (n + 1)

/-- Retain the root and exactly the declared detail nodes of the source pairing. -/
def dyadicReadout (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) : ℝ :=
  selectedPairing select (j + 1) 0 (dyadicRow width j) (positiveInput f)

/-- Omitted contributions remain signed. -/
def dyadicRemainder (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) : ℝ :=
  detailPairing (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j) (positiveInput f)

/-- H is a proposed signed head, not a nonnegative majorant by definition. -/
def dyadicPacketModel (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (H : ℝ) : ℝ :=
  H - (1 / 6 : ℝ) * dyadicReadout select width j moebiusReal

def dyadicJointError (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (H : ℝ) : ℝ :=
  headPacket width j - H - (1 / 6 : ℝ) * dyadicRemainder select width j moebiusReal

/-- Uses the maintained actual row representation and its positive-index bijection. -/
theorem signedResponse_eq_dyadic_pairing (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f =
      blockSum (j + 1) 0 (fun n => dyadicRow width j n * positiveInput f n) := by
  rw [signedResponse_eq_row_sum, positive_sum_eq_range]
  simp [blockSum, finitePrefixSum, shiftedSequence, dyadicRow, positiveInput]

/-- Root plus all details is a source identity, not a new model hypothesis. -/
theorem signedResponse_eq_selected_add_remainder
    (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f = dyadicReadout select width j f + dyadicRemainder select width j f := by
  rw [signedResponse_eq_dyadic_pairing]
  have h := pairing_sub_selected select (j + 1) 0 (dyadicRow width j) (positiveInput f)
  change _ = selectedPairing select (j + 1) 0 (dyadicRow width j) (positiveInput f) +
    detailPairing (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j) (positiveInput f)
  linarith

/-- The root is the actual row sum times the actual ordinary input sum divided by Y. -/
theorem actual_root_mean (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    rootPairing (j + 1) 0 (dyadicRow width j) (positiveInput f) =
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), signedRow width j a) *
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), f a) / (((2 ^ (j + 1) : ℕ) : ℝ)) := by
  simp only [rootPairing, blockSum_offset_zero, positive_sum_eq_range]
  rfl

/-- No log/level loss, but both arithmetic and coefficient tail energies remain. -/
theorem dyadicRemainder_sq_le (select : ℕ → ℕ → Prop)
    (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    dyadicRemainder select width j f ^ 2 ≤
      detailPairing (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j) (dyadicRow width j) *
      detailPairing (fun r o => ¬ select r o) (j + 1) 0 (positiveInput f) (positiveInput f) :=
  detailPairing_sq_le _ _ _ _ _

/-- Coefficient energy is that of the signed row, not a sum of three row majorants. -/
theorem row_energy_partition (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) :
    (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), signedRow width j a ^ 2) =
      rootPairing (j + 1) 0 (dyadicRow width j) (dyadicRow width j) +
      detailPairing select (j + 1) 0 (dyadicRow width j) (dyadicRow width j) +
      detailPairing (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j) (dyadicRow width j) := by
  rw [positive_sum_eq_range]
  simpa [blockSum, finitePrefixSum, shiftedSequence, dyadicRow] using
    energy_partition select (j + 1) 0 (dyadicRow width j)

/-- The arithmetic omitted energy subtracts the actual root and retained details.
It is not the unnormalised all-node block-square sum. -/
theorem omitted_moebius_energy_eq_debits (select : ℕ → ℕ → Prop) (j : ℕ) :
    detailPairing (fun r o => ¬ select r o) (j + 1) 0
      (positiveInput moebiusReal) (positiveInput moebiusReal) =
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), moebiusReal a ^ 2) -
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), moebiusReal a) ^ 2 /
        (((2 ^ (j + 1) : ℕ) : ℝ)) -
      detailPairing select (j + 1) 0 (positiveInput moebiusReal) (positiveInput moebiusReal) := by
  have he := energy_partition select (j + 1) 0 (positiveInput moebiusReal)
  simp only [rootPairing, blockSum_offset_zero] at he
  simp only [positive_sum_eq_range, positiveInput, finitePrefixSum] at he ⊢
  nlinarith

/-- Only the trivial finite arithmetic energy bound is claimed here. -/
theorem omitted_moebius_energy_le_length (select : ℕ → ℕ → Prop) (j : ℕ) :
    detailPairing (fun r o => ¬ select r o) (j + 1) 0
      (positiveInput moebiusReal) (positiveInput moebiusReal) ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) := by
  apply (omitted_energy_le_total select (j + 1) 0 (positiveInput moebiusReal)).trans
  rw [blockSum_offset_zero]
  unfold finitePrefixSum
  calc
    _ ≤ ∑ _n ∈ Finset.range (2 ^ (j + 1)), (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      have h := moebiusReal_abs_le_one (n + 1)
      have hs := (sq_le_sq₀ (abs_nonneg (moebiusReal (n + 1))) zero_le_one).mpr h
      simpa only [positiveInput, sq_abs, one_pow] using hs
    _ = _ := by simp

/-- All untouched source terms remain in the same joint signed error. -/
theorem bulk_eq_dyadic_model_add_joint (select : ℕ → ℕ → Prop)
    (width : ℕ → ℕ) (j : ℕ) (H : ℝ) :
    bulkPacket width j = dyadicPacketModel select width j H + dyadicJointError select width j H := by
  rw [bulk_eq_head_sub_triple, triple_bulk_eq_signedResponse,
    signedResponse_eq_selected_add_remainder select]
  unfold dyadicPacketModel dyadicJointError
  ring

/-- A lower bound on the omitted triple pairing is enough for the upper packet target. -/
theorem full_packet_le_of_remainder_lower (select : ℕ → ℕ → Prop) (j : ℕ)
    {ε : ℝ} (hrem : -ε ≤ dyadicRemainder select sqrtWidth j moebiusReal) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j) + 2 + ε / 6 := by
  have hb := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).2
  rw [bulk_eq_dyadic_model_add_joint select sqrtWidth j (headPacket sqrtWidth j)] at hb
  unfold dyadicJointError at hb
  linarith

/-- Complete source-level comparison, with the inherited boundary allowance paid once. -/
theorem full_packet_dyadic_comparison (select : ℕ → ℕ → Prop) (j : ℕ)
    {ε : ℝ} (hrem : |dyadicRemainder select sqrtWidth j moebiusReal| ≤ ε) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤ 2 + ε / 6 := by
  have hid : weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j) =
      (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) -
        dyadicRemainder select sqrtWidth j moebiusReal / 6 := by
    rw [bulk_eq_dyadic_model_add_joint select sqrtWidth j (headPacket sqrtWidth j)]
    unfold dyadicJointError
    ring
  rw [hid]
  have hr : |dyadicRemainder select sqrtWidth j moebiusReal / 6| ≤ ε / 6 := by
    rw [abs_div]
    norm_num
    linarith
  exact (abs_sub _ _).trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j) hr)

/-- Optional orthogonal-energy supplier; no arithmetic estimate is claimed. -/
theorem full_packet_dyadic_energy_comparison (select : ℕ → ℕ → Prop) (j : ℕ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (he : detailPairing (fun r o => ¬ select r o) (j + 1) 0
        (dyadicRow sqrtWidth j) (dyadicRow sqrtWidth j) *
      detailPairing (fun r o => ¬ select r o) (j + 1) 0
        (positiveInput moebiusReal) (positiveInput moebiusReal) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤ 2 + ε / 6 := by
  apply full_packet_dyadic_comparison
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp
    (by simpa only [sq_abs] using (dyadicRemainder_sq_le select sqrtWidth j moebiusReal).trans he)

/-- Heterogeneous selected-node estimates feed the same original packet. -/
theorem full_packet_contrast_comparison (select : ℕ → ℕ → Prop) (j : ℕ)
    (E : ℕ → ℕ → ℝ)
    (he : ContrastBound (fun r o => ¬ select r o) E (positiveInput moebiusReal) (j + 1) 0) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤
      2 + contrastBudget (fun r o => ¬ select r o) E (dyadicRow sqrtWidth j) (j + 1) 0 / 6 := by
  apply full_packet_dyadic_comparison
  exact abs_detailPairing_le_budget _ _ _ _ _ _ he

/-- Actual ordinary prefixes, not a periodic or logarithmically averaged substitute. -/
theorem full_packet_prefix_contrast_comparison (select : ℕ → ℕ → Prop) (j : ℕ)
    (A : ℕ → ℝ)
    (ha : ∀ N : ℕ, N ≤ 2 ^ (j + 1) →
      |finitePrefixSum (positiveInput moebiusReal) N| ≤ A N) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤
      2 + contrastBudget (fun r o => ¬ select r o) (prefixContrastAllowance A)
        (dyadicRow sqrtWidth j) (j + 1) 0 / 6 := by
  apply full_packet_contrast_comparison
  exact contrastBound_of_prefix_envelope _ A (j + 1) 0 (2 ^ (j + 1))
    (positiveInput moebiusReal) (by omega) ha

/-- Model and joint signed residual retain their independent all-positive-rate obligations. -/
theorem riemannHypothesis_of_dyadic_joint_budgets
    (select : ℕ → ℕ → ℕ → Prop) (H : ℕ → ℝ)
    (hmodel : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      dyadicPacketModel (select j) sqrtWidth j (H j) ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (hjoint : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      dyadicJointError (select j) sqrtWidth j (H j) ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hc⟩ := hmodel δ hδ
  obtain ⟨D, hD, hd⟩ := hjoint δ hδ
  refine ⟨C + D, add_nonneg hC hD, ?_⟩
  intro j
  rw [bulk_eq_dyadic_model_add_joint (select j) sqrtWidth j (H j)]
  simpa only [add_mul] using add_le_add (hc j) (hd j)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout
