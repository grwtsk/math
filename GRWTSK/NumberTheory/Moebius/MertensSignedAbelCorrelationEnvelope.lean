/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported sources retain their upstream attribution and licenses. -/
import GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction

/-!
# Correlation-envelope transport through the actual signed Abel functional

The source kernel, shift range, retained depths, ordinary prefix length t+1,
and outer factor 2/Y are unchanged. A supplied error envelope is transported
through that actual functional. No fixed-shift theorem is promoted to a
uniform theorem, and no Liouville estimate is relabelled as a Mobius estimate.

The terminal theorem preserves a signed model and pays only its actual
weighted residual envelope. The envelope and its all-exponent budget remain
explicit unsupplied hypotheses. This is NOT an unconditional RH proof.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelCorrelationEnvelope

open scoped BigOperators
open GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction

/-- Bounds are required only at the depths and shifts actually read. -/
theorem abs_bulkPrefixFunctional_le_envelope
    (width : ℕ → ℕ) (j : ℕ) (F E : ℕ → ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)), |F h (t + 1)| ≤ E h (t + 1)) :
    |bulkPrefixFunctional width j F| ≤ bulkPrefixFunctional width j E := by
  unfold bulkPrefixFunctional
  rw [abs_mul, abs_of_nonneg (show
    0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ by positivity)]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro t ht
  by_cases hret : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
  · simp only [if_pos hret]
    exact abs_weighted_sum_le_envelope _ _ _ _
      (fun h _ => normalizedSignedAbelShiftKernel_nonneg j t h) (hE t ht hret)
  · simp only [if_neg hret, abs_zero, le_refl]

/-- Linearity is inherited from the existing signed three-term identity. -/
theorem bulkPrefixFunctional_sub (width : ℕ → ℕ) (j : ℕ)
    (F G : ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => F h N - G h N) =
      bulkPrefixFunctional width j F - bulkPrefixFunctional width j G := by
  have hz : bulkPrefixFunctional width j (fun _ _ => 0) = 0 := by
    simp [bulkPrefixFunctional]
  simpa only [add_zero, hz] using
    bulkPrefixFunctional_sub_add width j F G (fun _ _ => 0)

/-- The model may cancel across shifts and depths before any error is bounded. -/
theorem abs_bulk_sub_model_le_envelope
    (width : ℕ → ℕ) (j : ℕ) (F G E : ℕ → ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |F h (t + 1) - G h (t + 1)| ≤ E h (t + 1)) :
    |bulkPrefixFunctional width j F - bulkPrefixFunctional width j G| ≤
      bulkPrefixFunctional width j E := by
  rw [← bulkPrefixFunctional_sub]
  exact abs_bulkPrefixFunctional_le_envelope width j _ E hE

/-- A budget for the actual weighted envelope is enough; individual errors need
not obey a uniform bound. Excluded depths contribute zero, and the source
normalization remains `2/Y`. -/
theorem bulkPrefixFunctional_le_two_mul_of_weighted_budget
    (width : ℕ → ℕ) (j : ℕ) (E : ℕ → ℕ → ℝ) (B : ℝ) (hB : 0 ≤ B)
    (hbudget : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h * E h (t + 1)) ≤ B) :
    bulkPrefixFunctional width j E ≤ 2 * B := by
  unfold bulkPrefixFunctional
  calc
    _ ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ _t ∈ Finset.range (2 ^ (j + 1)), B := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Finset.sum_le_sum
      intro t ht
      by_cases hret : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
      · simpa only [if_pos hret] using hbudget t ht hret
      · simpa only [if_neg hret] using hB
    _ = 2 * B := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) ≠ 0 := by positivity
      field_simp [hY]
      <;> ring

/-- Source-matched residuals pay their weighted budget. No fixed-shift theorem
is asserted to supply either premise uniformly over the retained source. -/
theorem abs_bulk_sub_model_le_two_mul_weighted_budget
    (width : ℕ → ℕ) (j : ℕ) (F G E : ℕ → ℕ → ℝ) (B : ℝ) (hB : 0 ≤ B)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |F h (t + 1) - G h (t + 1)| ≤ E h (t + 1))
    (hbudget : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h * E h (t + 1)) ≤ B) :
    |bulkPrefixFunctional width j F - bulkPrefixFunctional width j G| ≤ 2 * B :=
  (abs_bulk_sub_model_le_envelope width j F G E hE).trans
    (bulkPrefixFunctional_le_two_mul_of_weighted_budget width j E B hB hbudget)

/-- A uniform absolute prefix allowance B costs at most 2B, with no unit-mass fiction. -/
theorem abs_bulk_le_two_mul_uniform
    (width : ℕ → ℕ) (j : ℕ) (F : ℕ → ℕ → ℝ) (B : ℝ) (hB : 0 ≤ B)
    (hF : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)), |F h (t + 1)| ≤ B) :
    |bulkPrefixFunctional width j F| ≤ 2 * B := by
  apply (abs_bulkPrefixFunctional_le_envelope width j F (fun _ _ => B) hF).trans
  unfold bulkPrefixFunctional
  calc
    _ ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ _t ∈ Finset.range (2 ^ (j + 1)), B := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Finset.sum_le_sum
      intro t _
      by_cases hret : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
      · simp only [if_pos hret]
        rw [← Finset.sum_mul]
        change normalizedSignedAbelShiftKernelMass j t * B ≤ B
        simpa only [one_mul] using mul_le_mul_of_nonneg_right (kernelMass_le_one j t) hB
      · simpa only [if_neg hret] using hB
    _ = 2 * B := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) ≠ 0 := by positivity
      field_simp [hY]
      <;> ring

/-- A relative error epsilon*N still pays the growing source length Y.
This bound does not convert a qualitative o(N) theorem into an RH budget. -/
theorem abs_bulk_le_two_mul_length_error
    (width : ℕ → ℕ) (j : ℕ) (F : ℕ → ℕ → ℝ) (ε : ℝ) (hε : 0 ≤ ε)
    (hF : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |F h (t + 1)| ≤ ε * ((t + 1 : ℕ) : ℝ)) :
    |bulkPrefixFunctional width j F| ≤ 2 * (ε * (((2 ^ (j + 1) : ℕ) : ℝ))) := by
  apply abs_bulk_le_two_mul_uniform width j F _ (by positivity)
  intro t ht hret h hh
  apply (hF t ht hret h hh).trans
  apply mul_le_mul_of_nonneg_left _ hε
  exact_mod_cast (show t + 1 ≤ 2 ^ (j + 1) from Nat.succ_le_of_lt (Finset.mem_range.mp ht))

/-- Source matching is an existing equality, not an assumed resemblance. -/
theorem bulkPacket_le_model_add_envelope
    (width : ℕ → ℕ) (j : ℕ) (G E : ℕ → ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      width j ≤ t ∧ t < 2 ^ (j + 1) - width j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |mertensTwoPointPrefix h (t + 1) - G h (t + 1)| ≤ E h (t + 1)) :
    bulkPacket width j ≤ bulkPrefixFunctional width j G + bulkPrefixFunctional width j E := by
  rw [bulkPacket_eq_prefixFunctional]
  have hb := (abs_le.mp
    (abs_bulk_sub_model_le_envelope width j mertensTwoPointPrefix G E hE)).2
  linarith

/-- The inherited boundary cost is paid once, outside the signed model. -/
theorem packet_le_two_add_model_and_envelope (j : ℕ) (G E : ℕ → ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      sqrtWidth j ≤ t ∧ t < 2 ^ (j + 1) - sqrtWidth j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |mertensTwoPointPrefix h (t + 1) - G h (t + 1)| ≤ E h (t + 1)) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
      2 + bulkPrefixFunctional sqrtWidth j G + bulkPrefixFunctional sqrtWidth j E := by
  have hm := bulkPacket_le_model_add_envelope sqrtWidth j G E hE
  have hb := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).2
  linarith

/-- Actual packet consumer of the weighted residual budget. The inherited
boundary cost is paid once; the regular model is kept signed. -/
theorem packet_le_two_add_model_add_two_mul_weighted_budget
    (j : ℕ) (G E : ℕ → ℕ → ℝ) (B : ℝ) (hB : 0 ≤ B)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      sqrtWidth j ≤ t ∧ t < 2 ^ (j + 1) - sqrtWidth j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |mertensTwoPointPrefix h (t + 1) - G h (t + 1)| ≤ E h (t + 1))
    (hbudget : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      sqrtWidth j ≤ t ∧ t < 2 ^ (j + 1) - sqrtWidth j →
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h * E h (t + 1)) ≤ B) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
      2 + bulkPrefixFunctional sqrtWidth j G + 2 * B := by
  have hp := packet_le_two_add_model_and_envelope j G E hE
  have hb := bulkPrefixFunctional_le_two_mul_of_weighted_budget
    sqrtWidth j E B hB hbudget
  linarith

/-- Conditional consumer only: source-matched residual and all-exponent budget
are both unsupplied. Fixed-shift convergence alone supplies neither premise. -/
theorem riemannHypothesis_of_model_correlation_budget
    (G E : ℕ → ℕ → ℕ → ℝ)
    (hE : ∀ j : ℕ, ∀ t ∈ Finset.range (2 ^ (j + 1)),
      sqrtWidth j ≤ t ∧ t < 2 ^ (j + 1) - sqrtWidth j →
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |mertensTwoPointPrefix h (t + 1) - G j h (t + 1)| ≤ E j h (t + 1))
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      bulkPrefixFunctional sqrtWidth j (G j) + bulkPrefixFunctional sqrtWidth j (E j) ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact (bulkPacket_le_model_add_envelope sqrtWidth j (G j) (E j) (hE j)).trans (hb j)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelCorrelationEnvelope
