# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUpperBoundaryEvent.Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70b3589dae9518e62379cf2f8c5df271996897af` · SHA-256 `aa4c218f593387f686b719f0f41042ea5342b3fcc36f1e9ad6a27496582439ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceL2EqOriginalSourceL2.Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceL2EqOriginalSourceL2.Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-physical-birth-source/selected-source-copies/SourceUpperBoundaryEvent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompensatedReadout
import FormalResearch.RiemannHypothesis.SourcePureRotationObstruction

/-!
# Literal source upper-boundary events below the old support-complete cutoff

This fixed-scale adapter removes both added axes and the corner under the exact
new-products zero hypothesis. It retains the centered diagonal and independently
constructed main term. The actual logarithmic fixture has upper cutoff eleven
while its old inventory ends at ten; it cannot consume the old support-complete
upper-cutoff theorem. No limit across an event or uniform signed bound is claimed.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceL2EqOriginalSourceL2.Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceUpperBoundaryEvent

open MeasureTheory ArithmeticFunction
open scoped InnerProductSpace BigOperators
open SourceCompensatedReadout SourceCutoffFlux SourceReflectionArithmetic SourceReflectionDuality
open SourceHankelReflection CompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- The retained review source is exactly the maintained original source class. -/
theorem sourceL2_eq_originalSourceL2 (A : ℝ) (hA : 0 < A) :
    sourceL2 A hA = SourcePureRotationObstruction.originalSourceL2 A hA := rfl

/-- Every new column interaction is zero under the literal product hypothesis. -/
theorem sourceKernel_upper_right_of_new_products_zero (A : ℝ) (U N n : ℕ)
    (hn : n ∈ Finset.Ioc U (N + 1))
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    sourceKernel A n (N + 1) = 0 := by
  unfold sourceKernel
  rw [hz n hn, mul_zero]

/-- The same source-product hypothesis removes the new row without changing its coefficient. -/
theorem sourceKernel_upper_left_of_new_products_zero (A : ℝ) (U N n : ℕ)
    (hn : n ∈ Finset.Ioc U (N + 1))
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    sourceKernel A (N + 1) n = 0 := by
  unfold sourceKernel
  rw [Nat.mul_comm (N + 1) n, hz n hn, mul_zero]

/-- The added corner is explicitly included in the literal zero hypothesis. -/
theorem sourceKernel_upper_corner_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    sourceKernel A (N + 1) (N + 1) = 0 := by
  exact sourceKernel_upper_right_of_new_products_zero A U N (N + 1)
    (Finset.mem_Ioc.mpr ⟨by omega, le_rfl⟩) hz

/-- Both added axes and their common corner vanish before any absolute estimate. -/
theorem rectangle_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ) (b : ℕ → ℝ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    rectangle (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      rectangle (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, rectangle_insert _ _ _ _ hk]
  have hr : rowBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [sourceKernel_upper_left_of_new_products_zero A U N n
      (Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
        (Finset.mem_Ioc.mp hn).2.trans (Nat.le_succ N)⟩) hz, zero_mul]
  have hc : columnBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [sourceKernel_upper_right_of_new_products_zero A U N n
      (Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
        (Finset.mem_Ioc.mp hn).2.trans (Nat.le_succ N)⟩) hz, zero_mul]
  rw [hr, hc, sourceKernel_upper_corner_of_new_products_zero A U N hUN hz]
  ring

/-- The literal diagonal is preserved because its added atom, including the corner, is zero. -/
theorem diagonal_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ) (b : ℕ → ℝ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    diagonal (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      diagonal (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, diagonal_insert _ _ _ _ hk,
    sourceKernel_upper_corner_of_new_products_zero A U N hUN hz]
  ring

/-- Every signed row retains its exact unequal-index deletion at the event. -/
theorem offDiagonal_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ) (b : ℕ → ℝ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    offDiagonal (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      offDiagonal (Finset.Ioc U N) (sourceKernel A) b := by
  rw [offDiagonal, offDiagonal,
    rectangle_upper_succ_of_new_products_zero A U N b hUN hz,
    diagonal_upper_succ_of_new_products_zero A U N b hUN hz]

/-- The independent main formula is unchanged, rather than defined by cancellation. -/
theorem mainTermAt_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    mainTermAt A U (N + 1) = mainTermAt A U N := by
  unfold mainTermAt plainOffAt
  rw [offDiagonal_upper_succ_of_new_products_zero A U N (fun _ ↦ 1) hUN hz]

/-- The complete centered deletion survives the two-axis upper event exactly. -/
theorem centeredDiagonalAt_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    centeredDiagonalAt A U (N + 1) = centeredDiagonalAt A U N := by
  exact diagonal_upper_succ_of_new_products_zero A U N _ hUN hz

/-- The full joint remainder has zero upper flux under its literal source product test. -/
theorem jointAt_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    jointAt A U (N + 1) = jointAt A U N := by
  unfold jointAt centeredOffAt
  rw [offDiagonal_upper_succ_of_new_products_zero A U N _ hUN hz,
    mainTermAt_upper_succ_of_new_products_zero A U N hUN hz]

/-- Fixed-scale compensation retains both the complete centered diagonal and independent main. -/
theorem compensationAt_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    compensationAt A U (N + 1) = compensationAt A U N := by
  rw [compensationAt, compensationAt,
    centeredDiagonalAt_upper_succ_of_new_products_zero A U N hUN hz,
    mainTermAt_upper_succ_of_new_products_zero A U N hUN hz]

/-- The actual Hilbert readout is preserved at a source-zero event, without the old N premise. -/
theorem readoutAt_upper_succ_of_new_products_zero (A : ℝ) (hA : 0 < A) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    readoutAt A hA U (N + 1) = readoutAt A hA U N := by
  rw [readoutAt_eq_jointAt, readoutAt_eq_jointAt]
  exact jointAt_upper_succ_of_new_products_zero A U N hUN hz

/-- Support already removes an entering upper atom when all positive long products exceed N_A. -/
theorem new_products_zero_of_product_cutoff (A : ℝ) (hA : 1 ≤ A) (U N : ℕ)
    (hprod : sourceKernelCutoff A < (U + 1) * (N + 1)) :
    ∀ n ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((n * (N + 1) : ℕ) : ℝ) = 0 := by
  intro n hn
  apply sourcePlainWeight_zero_of_cutoff_lt A hA
  exact hprod.trans_le (Nat.mul_le_mul_right _ (by have := (Finset.mem_Ioc.mp hn).1; omega))

/-- The strengthened support criterion permits events below the old support-complete cutoff. -/
theorem readoutAt_upper_succ_of_product_cutoff (A : ℝ) (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hprod : sourceKernelCutoff A < (U + 1) * (N + 1)) :
    readoutAt A (by linarith) U (N + 1) = readoutAt A (by linarith) U N :=
  readoutAt_upper_succ_of_new_products_zero A (by linarith) U N hUN
    (new_products_zero_of_product_cutoff A hA U N hprod)

/-- The literal last upper atom is already product-invisible for every actual A≥1. -/
theorem actual_upper_pred_new_products_zero (A : ℝ) (hA : 1 ≤ A) :
    ∀ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      sourcePlainWeight A ((n * sourceKernelCutoff A : ℕ) : ℝ) = 0 := by
  have hU := vaughanCutoff_pos A hA
  have hUK := actual_adjacent_le_upper hA
  have hK : 1 ≤ sourceKernelCutoff A := by omega
  have he : sourceKernelCutoff A - 1 + 1 = sourceKernelCutoff A := by omega
  have hprod : sourceKernelCutoff A <
      (vaughanCutoff A + 1) * (sourceKernelCutoff A - 1 + 1) := by
    rw [he]
    have hm := Nat.mul_le_mul_right (sourceKernelCutoff A)
      (show 2 ≤ vaughanCutoff A + 1 by omega)
    omega
  simpa only [he] using new_products_zero_of_product_cutoff A hA
    (vaughanCutoff A) (sourceKernelCutoff A - 1) hprod

/-- The actual fixed-scale upper inventory may omit its last atom without changing the readout. -/
theorem readoutAt_actual_upper_pred (A : ℝ) (hA : 1 ≤ A) :
    readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) =
      readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A - 1) := by
  have hUK := actual_adjacent_le_upper hA
  have he : sourceKernelCutoff A - 1 + 1 = sourceKernelCutoff A := by omega
  have hz := actual_upper_pred_new_products_zero A hA
  simpa only [he] using readoutAt_upper_succ_of_new_products_zero A (by linarith)
    (vaughanCutoff A) (sourceKernelCutoff A - 1) (by omega) (by simpa only [he] using hz)

/-- The unchanged actual consumer has the same fixed-scale value at the predecessor inventory. -/
theorem arithmeticReadout_eq_upper_pred (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A - 1) := by
  rw [← readoutAt_actual A hA]
  exact readoutAt_actual_upper_pred A hA

/-- The raw Mangoldt channel adds its exact weighted source atom despite zero product flux. -/
theorem mangoldtAt_upper_succ_sub (A : ℝ) (hA : 0 < A) (U N : ℕ) (hUN : U ≤ N) :
    mangoldtAt A hA U (N + 1) - mangoldtAt A hA U N =
      ((vonMangoldt (N + 1) / Real.sqrt (N + 1 : ℕ) : ℝ) : ℂ) •
        translation (Real.log (N + 1 : ℕ)) (sourceL2 A hA) := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  unfold mangoldtAt
  rw [forwardComplex_eq_sum_translates, forwardComplex_eq_sum_translates,
    upperInventory_succ U N hUN, Finset.sum_insert hk]
  abel

/-- The explicit source scale whose actual upper floor equals eleven. -/
def boundaryScale : ℝ := Real.log 11 / 2

/-- This source scale lies in the original A≥1 normalization range. -/
theorem boundaryScale_one_le : 1 ≤ boundaryScale := by
  have he : Real.exp 2 < (11 : ℝ) := by
    have hp := Real.exp_pos 1
    have h3 := Real.exp_one_lt_three
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    nlinarith
  have hl : 2 < Real.log (11 : ℝ) := (Real.lt_log_iff_exp_lt (by norm_num)).2 he
  unfold boundaryScale
  linarith

/-- An exact elementary exponential bound keeps the actual lower floor equal to one. -/
theorem boundaryScale_lt_four_thirds : boundaryScale < 4 / 3 := by
  have he := Real.sum_le_exp_of_nonneg (x := (8 / 3 : ℝ)) (by norm_num) 5
  norm_num [Finset.sum_range_succ] at he
  have hl : Real.log (11 : ℝ) < 8 / 3 :=
    (Real.log_lt_iff_lt_exp (by norm_num)).2 (by linarith)
  unfold boundaryScale
  linarith

/-- The lower cutoff is literally floor(A²)=1 at the event. -/
theorem boundaryScale_vaughanCutoff : vaughanCutoff boundaryScale = 1 := by
  unfold vaughanCutoff
  have h1 := boundaryScale_one_le
  have h4 := boundaryScale_lt_four_thirds
  apply (Nat.floor_eq_iff (by positivity : 0 ≤ boundaryScale ^ 2)).2
  constructor
  · norm_num only [Nat.cast_one]
    nlinarith
  · norm_num only [Nat.cast_one, Nat.cast_add]
    nlinarith

/-- The unchanged exponential source cutoff is exactly eleven. -/
theorem boundaryScale_sourceKernelCutoff : sourceKernelCutoff boundaryScale = 11 := by
  have he : Real.exp (2 * boundaryScale) = 11 := by
    unfold boundaryScale
    rw [show 2 * (Real.log (11 : ℝ) / 2) = Real.log 11 by ring,
      Real.exp_log (by norm_num)]
  rw [sourceKernelCutoff, sourceUpper, he]
  norm_num

/-- The previous support-complete hypothesis is false at the old endpoint ten. -/
theorem boundaryScale_not_old_support_complete : ¬sourceKernelCutoff boundaryScale ≤ 10 := by
  rw [boundaryScale_sourceKernelCutoff]
  norm_num

/-- Every newly admitted product is at least twenty-two, strictly beyond the literal support. -/
theorem boundaryScale_new_products_zero :
    ∀ n ∈ Finset.Ioc 1 11, sourcePlainWeight boundaryScale ((n * 11 : ℕ) : ℝ) = 0 := by
  exact new_products_zero_of_product_cutoff boundaryScale boundaryScale_one_le 1 10
    (by rw [boundaryScale_sourceKernelCutoff]; norm_num)

/-- The full scalar readout is unchanged at the exact ten-to-eleven event. -/
theorem boundaryScale_readout_ten_eleven :
    readoutAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 =
      readoutAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10 := by
  exact readoutAt_upper_succ_of_new_products_zero boundaryScale
    (by have := boundaryScale_one_le; linarith) 1 10 (by norm_num)
    boundaryScale_new_products_zero

/-- At lower cutoff one, the full centered diagonal is literally zero on every long inventory. -/
theorem centeredDiagonalAt_one_eq_zero (A : ℝ) (N : ℕ) : centeredDiagonalAt A 1 N = 0 := by
  unfold centeredDiagonalAt diagonal
  apply Finset.sum_eq_zero
  intro n hn
  rw [centeredBeta_one_of_one_lt n (Finset.mem_Ioc.mp hn).1, mul_zero]

/-- The event fixture retains the full centered zero on both sides, not an old Vaughan diagonal. -/
theorem boundaryScale_centered_diagonals_zero :
    centeredDiagonalAt boundaryScale 1 11 = 0 ∧
      centeredDiagonalAt boundaryScale 1 10 = 0 :=
  ⟨centeredDiagonalAt_one_eq_zero _ _, centeredDiagonalAt_one_eq_zero _ _⟩

/-- The entering eleven-atom has its exact nonzero weighted unit-source norm. -/
theorem boundaryScale_mangoldt_jump_norm :
    ‖mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 -
      mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10‖ =
      Real.log 11 / Real.sqrt 11 := by
  rw [mangoldtAt_upper_succ_sub boundaryScale
    (by have := boundaryScale_one_le; linarith) 1 10 (by norm_num)]
  rw [vonMangoldt_apply_prime (by norm_num : Nat.Prime 11)]
  have hnorm : ‖sourceL2 boundaryScale
      (by have := boundaryScale_one_le; linarith)‖ = 1 := by
    have hs := sourceL2_norm_sq boundaryScale boundaryScale_one_le
    nlinarith [norm_nonneg (sourceL2 boundaryScale
      (by have := boundaryScale_one_le; linarith))]
  rw [norm_smul, (translation _).norm_map, hnorm, mul_one,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by positivity)]
  norm_num

/-- The event changes the actual raw Mangoldt channel even though its readout flux is zero. -/
theorem boundaryScale_mangoldt_jump_norm_pos :
    0 < ‖mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 -
      mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10‖ := by
  rw [boundaryScale_mangoldt_jump_norm]
  positivity

/-- The two raw arithmetic states differ at the fixed-scale event; no crossing limit is inferred. -/
theorem boundaryScale_raw_state_ne :
    stateAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 ≠
      stateAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10 := by
  intro he
  have hf := congrArg (fun z : PairState ComplexL2 => z.fst) he
  change mangoldtAt boundaryScale _ 1 11 = mangoldtAt boundaryScale _ 1 10 at hf
  have hn := boundaryScale_mangoldt_jump_norm_pos
  rw [hf, sub_self, norm_zero] at hn
  exact (lt_irrefl 0) hn

end
end FormalResearch.RiemannHypothesis.SourceUpperBoundaryEvent
```
