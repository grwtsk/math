-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventorySucc.Variante45937910d894f4d8f5f5d11e30e70ab74302d868fa3c2af8606524af47d7c0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e45937910d894f4d8f5f5d11e30e70ab74302d868fa3c2af8606524af47d7c0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShortInventorySucc.Variante45937910d894f4d8f5f5d11e30e70ab74302d868fa3c2af8606524af47d7c0c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e45937910d894f4d8f5f5d11e30e70ab74302d868fa3c2af8606524af47d7c0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-divisor-refinement/flux/increment-03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel

/-!
# Exact adjacent cutoff balance at fixed source scale

The cutoff is a finite classification parameter. This module keeps the unchanged
source, both long axes, the centered deleted diagonal and all independent
counterterms in the same signed adjacent balance. A cutoff change at fixed A is
not a derivative in A and supplies no uniform signed upper bound.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventorySucc.Variante45937910d894f4d8f5f5d11e30e70ab74302d868fa3c2af8606524af47d7c0c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffFlux

open ArithmeticFunction SourcePairing SourceVaughanHankel SourceSamplingLedger
open SourceShortSamplingInventory SourceSamplingPointwise SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering EstimateVaughanSource
open EstimatePlainKernel EstimateBetaSourceRecombination EstimateVaughanTranslationGate
open EstimateSourceMobiusKernel

noncomputable section

/-- The adjacent closed short inventory adds precisely U+1. -/
theorem shortInventory_succ (U : ℕ) :
    Finset.Icc 1 (U + 1) = insert (U + 1) (Finset.Icc 1 U) := by
  ext d
  simp only [Finset.mem_Icc, Finset.mem_insert]
  omega

/-- The finite mean changes by the actual new Möbius coefficient. -/
theorem alpha_succ (U : ℕ) :
    alpha (U + 1) = alpha U + (moebius (U + 1) : ℝ) / (U + 1 : ℕ) := by
  classical
  have hn : U + 1 ∉ Finset.Icc 1 U := by simp
  simp only [alpha, shortInventory_succ, Finset.sum_insert hn]
  ring

/-- Positive row indices retain the exact divisibility update. -/
theorem beta_succ (U n : ℕ) (hn : 0 < n) :
    beta (U + 1) n = beta U n -
      (if U + 1 ∣ n then (moebius (U + 1) : ℝ) else 0) := by
  classical
  have hnew : U + 1 ∉ Finset.Icc 1 U := by simp
  rw [beta_eq_delta_sub_short, beta_eq_delta_sub_short,
    short_divisor_sum_eq_indicator _ _ hn, short_divisor_sum_eq_indicator _ _ hn,
    shortInventory_succ, Finset.sum_insert hnew]
  ring

/-- The centered row keeps the reciprocal mean and signed multiples atom together. -/
theorem centeredBeta_succ (U n : ℕ) (hn : 0 < n) :
    centeredBeta (U + 1) n = centeredBeta U n +
      (moebius (U + 1) : ℝ) *
        (1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0) := by
  rw [centeredBeta, centeredBeta, beta_succ U n hn, alpha_succ]
  split_ifs <;> ring

/-- Adjacent long-axis deletion removes precisely U+1, when it lies in the old axis. -/
theorem longInventory_succ (U N : ℕ) (h : U < N) :
    Finset.Ioc U N = insert (U + 1) (Finset.Ioc (U + 1) N) := by
  ext n
  simp only [Finset.mem_Ioc, Finset.mem_insert]
  omega

/-- A finite rectangle with its signed row retained. -/
def rectangle (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S, K m n * b n

/-- Equality-of-indices deletion on the same finite rectangle. -/
def diagonal (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, K m m * b m

/-- The complementary joint interaction is signed rectangle minus its literal diagonal. -/
def offDiagonal (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  rectangle S K b - diagonal S K b

/-- The deleted first-axis row, with the removed corner omitted. -/
def rowBoundary (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ S, K k n * b n

/-- The deleted second-axis column, with the removed corner omitted. -/
def columnBoundary (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) (k : ℕ) : ℝ :=
  ∑ m ∈ S, K m k * b k

theorem rectangle_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    rectangle (insert k S) K b = rectangle S K b + rowBoundary S K b k +
      columnBoundary S K b k + K k k * b k := by
  classical
  simp only [rectangle, rowBoundary, columnBoundary, Finset.sum_insert hk]
  simp only [Finset.sum_add_distrib]
  ring

theorem diagonal_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    diagonal (insert k S) K b = diagonal S K b + K k k * b k := by
  classical
  simp only [diagonal, Finset.sum_insert hk]
  ring

/-- Both axes are removed, while the common corner cancels with diagonal deletion. -/
theorem offDiagonal_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    offDiagonal (insert k S) K b = offDiagonal S K b + rowBoundary S K b k +
      columnBoundary S K b k := by
  rw [offDiagonal, rectangle_insert S K b k hk, diagonal_insert S K b k hk]
  unfold offDiagonal
  ring

theorem rectangle_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    rectangle S K (fun n ↦ b n + c n) = rectangle S K b + rectangle S K c := by
  simp only [rectangle, mul_add, Finset.sum_add_distrib]

theorem diagonal_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    diagonal S K (fun n ↦ b n + c n) = diagonal S K b + diagonal S K c := by
  simp only [diagonal, mul_add, Finset.sum_add_distrib]

theorem offDiagonal_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    offDiagonal S K (fun n ↦ b n + c n) = offDiagonal S K b + offDiagonal S K c := by
  simp only [offDiagonal, rectangle_row_add, diagonal_row_add]
  ring

theorem rectangle_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    rectangle S K (fun n ↦ a * b n) = a * rectangle S K b := by
  simp only [rectangle, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

theorem diagonal_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    diagonal S K (fun n ↦ a * b n) = a * diagonal S K b := by
  simp only [diagonal, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  ring

theorem offDiagonal_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    offDiagonal S K (fun n ↦ a * b n) = a * offDiagonal S K b := by
  simp only [offDiagonal, rectangle_row_smul, diagonal_row_smul]
  ring

/-- Row equality is needed only on the actual finite inventory. -/
theorem offDiagonal_row_congr (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ)
    (h : ∀ n ∈ S, b n = c n) : offDiagonal S K b = offDiagonal S K c := by
  unfold offDiagonal rectangle diagonal
  congr 1
  · apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro n hn
    rw [h n hn]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [h m hm]

theorem offDiagonal_row_sub (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    offDiagonal S K (fun n ↦ b n - c n) = offDiagonal S K b - offDiagonal S K c := by
  simp only [offDiagonal, rectangle, diagonal, mul_sub, Finset.sum_sub_distrib]
  ring

/-- The generic complementary interaction has the literal unequal-index inventory. -/
theorem offDiagonal_eq_filter (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) :
    offDiagonal S K b = ∑ m ∈ S, ∑ n ∈ S.filter (fun n ↦ n ≠ m), K m n * b n := by
  classical
  unfold offDiagonal rectangle diagonal
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have h := Finset.sum_filter_add_sum_filter_not S (fun n ↦ n = m)
    (fun n ↦ K m n * b n)
  have he : S.filter (fun n ↦ n = m) = {m} := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_singleton]
    exact ⟨fun hn ↦ hn.2, fun hn ↦ by subst n; exact ⟨hm, rfl⟩⟩
  rw [he, Finset.sum_singleton] at h
  linarith

/-- The fixed-A kernel is the exact original Mangoldt/source product. -/
def sourceKernel (A : ℝ) (m n : ℕ) : ℝ :=
  vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ)

def centeredRectangleAt (A : ℝ) (U N : ℕ) : ℝ :=
  rectangle (Finset.Ioc U N) (sourceKernel A) (centeredBeta U)

def centeredDiagonalAt (A : ℝ) (U N : ℕ) : ℝ :=
  diagonal (Finset.Ioc U N) (sourceKernel A) (centeredBeta U)

def centeredOffAt (A : ℝ) (U N : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernel A) (centeredBeta U)

/-- The exact coefficient-one off-diagonal compensation inventory. -/
def plainOffAt (A : ℝ) (U N : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernel A) (fun _ ↦ 1)

/-- The original signed uncentered off-diagonal interaction. -/
def uncenteredOffAt (A : ℝ) (U N : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernel A) (beta U)

/-- The common long rectangle retains the divisibility atom internally. -/
def multiplesOffAt (A : ℝ) (U N k : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernel A) (fun n ↦ if k ∣ n then 1 else 0)

/-- The literal two-axis source boundary at the new cutoff, evaluated with the old row. -/
def boundaryAt (A : ℝ) (U N : ℕ) (b : ℕ → ℝ) : ℝ :=
  rowBoundary (Finset.Ioc (U + 1) N) (sourceKernel A) b (U + 1) +
    columnBoundary (Finset.Ioc (U + 1) N) (sourceKernel A) b (U + 1)

/-- At every actual scale, the adjacent short index lies within the upper inventory. -/
theorem actual_adjacent_le_upper {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A + 1 ≤ sourceKernelCutoff A := by
  have he := Real.add_one_le_exp A
  have hp := Real.exp_pos A
  have hsq : A ^ 2 + 1 ≤ Real.exp (2 * A) := by
    rw [show 2 * A = A + A by ring, Real.exp_add]
    nlinarith
  apply (Nat.le_floor_iff (Real.exp_pos _).le).2
  simp only [Nat.cast_add, Nat.cast_one]
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  linarith

/-- The actual centered rectangle is recovered without changing either source axis. -/
theorem centeredRectangleAt_actual (A : ℝ) :
    centeredRectangleAt A (vaughanCutoff A) (sourceKernelCutoff A) = centeredRectangle A := by
  unfold centeredRectangleAt rectangle centeredRectangle longInventory sourceKernel
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The deleted diagonal remains the actual centered diagonal, rather than the old Vaughan one. -/
theorem centeredDiagonalAt_actual (A : ℝ) :
    centeredDiagonalAt A (vaughanCutoff A) (sourceKernelCutoff A) =
      centeredDeletedDiagonal A := by
  unfold centeredDiagonalAt diagonal centeredDeletedDiagonal longInventory sourceKernel
  apply Finset.sum_congr rfl
  intro m _
  ring

/-- The actual centered covariance is exactly the cutoff-parameterized signed off-diagonal. -/
theorem centeredOffAt_actual (A : ℝ) (hA : 1 ≤ A) :
    centeredOffAt A (vaughanCutoff A) (sourceKernelCutoff A) =
      centeredTypeTwoOffDiagonal A := by
  change centeredRectangleAt A _ _ - centeredDiagonalAt A _ _ = _
  rw [centeredRectangleAt_actual, centeredDiagonalAt_actual,
    centeredRectangle_eq_covariance_add_diagonal A hA]
  ring

/-- Completing the coefficient-one inventory uses source support alone. -/
theorem plainOffAt_actual (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A (vaughanCutoff A) (sourceKernelCutoff A) = plainTypeTwoOffDiagonal A := by
  classical
  unfold plainOffAt
  rw [offDiagonal_eq_filter]
  unfold plainTypeTwoOffDiagonal EstimateTypeTwoLogBlocks.longOffDiagonalPairs sourceKernel
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mul_one]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m * n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · have hz := sourcePlainWeight_zero_of_cutoff_lt A hA (m * n) (by omega)
      rw [if_pos hne, if_neg (fun h ↦ hp h.2), hz, mul_zero]
  · rw [if_neg hne, if_neg (fun h ↦ hne h.1)]

/-- Exact row centering compensation, before any signed estimate. -/
theorem centeredOffAt_eq_uncentered_add_mean (A : ℝ) (U N : ℕ) :
    centeredOffAt A U N = uncenteredOffAt A U N + alpha U * plainOffAt A U N := by
  unfold centeredOffAt centeredBeta uncenteredOffAt plainOffAt
  rw [offDiagonal_row_add]
  have he : (fun _ : ℕ ↦ alpha U) = (fun _ ↦ alpha U * 1) := by funext n; ring
  rw [he, offDiagonal_row_smul]

/-- Both long axes are removed and the exact centered row update remains joint. -/
theorem centeredOffAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredOffAt A (U + 1) N - centeredOffAt A U N =
      (moebius (U + 1) : ℝ) *
        (plainOffAt A (U + 1) N / (U + 1 : ℕ) -
          multiplesOffAt A (U + 1) N (U + 1)) -
      boundaryAt A U N (centeredBeta U) := by
  classical
  let S := Finset.Ioc (U + 1) N
  have hk : U + 1 ∉ S := by simp [S]
  have hr : offDiagonal S (sourceKernel A) (centeredBeta (U + 1)) =
      offDiagonal S (sourceKernel A) (fun n ↦ centeredBeta U n +
        (moebius (U + 1) : ℝ) *
          (1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0)) := by
    apply offDiagonal_row_congr
    intro n hn
    exact centeredBeta_succ U n (by have := (Finset.mem_Ioc.mp hn).1; omega)
  have hc : offDiagonal S (sourceKernel A)
      (fun n ↦ 1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0) =
      plainOffAt A (U + 1) N / (U + 1 : ℕ) -
        multiplesOffAt A (U + 1) N (U + 1) := by
    rw [offDiagonal_row_sub]
    have he : (fun _ : ℕ ↦ (1 : ℝ) / (U + 1 : ℕ)) =
        (fun _ ↦ ((1 : ℝ) / (U + 1 : ℕ)) * 1) := by funext n; ring
    rw [he, offDiagonal_row_smul]
    unfold plainOffAt multiplesOffAt S
    ring
  unfold centeredOffAt
  rw [hr, offDiagonal_row_add, offDiagonal_row_smul, hc,
    longInventory_succ U N hUN, offDiagonal_insert S (sourceKernel A) (centeredBeta U) _ hk]
  unfold boundaryAt S
  ring

/-- Deleting both axes changes the coefficient-one interaction by both boundary sectors. -/
theorem plainOffAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    plainOffAt A (U + 1) N - plainOffAt A U N = -boundaryAt A U N (fun _ ↦ 1) := by
  classical
  have hk : U + 1 ∉ Finset.Ioc (U + 1) N := by simp
  unfold plainOffAt
  rw [longInventory_succ U N hUN, offDiagonal_insert _ _ _ _ hk]
  unfold boundaryAt
  ring

/-- The mean counterterm variation is kept with its actual changing inventory. -/
theorem meanCompensation_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    alpha (U + 1) * plainOffAt A (U + 1) N - alpha U * plainOffAt A U N =
      (moebius (U + 1) : ℝ) / (U + 1 : ℕ) * plainOffAt A (U + 1) N -
        alpha U * boundaryAt A U N (fun _ ↦ 1) := by
  rw [alpha_succ]
  have h := plainOffAt_succ A U N hUN
  linear_combination alpha U * h

/-- The centered diagonal update includes its own removed corner. -/
theorem centeredDiagonalAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredDiagonalAt A (U + 1) N - centeredDiagonalAt A U N =
      (moebius (U + 1) : ℝ) *
        (diagonal (Finset.Ioc (U + 1) N) (sourceKernel A) (fun _ ↦ 1) /
            (U + 1 : ℕ) -
          diagonal (Finset.Ioc (U + 1) N) (sourceKernel A)
            (fun n ↦ if U + 1 ∣ n then 1 else 0)) -
      sourceKernel A (U + 1) (U + 1) * centeredBeta U (U + 1) := by
  classical
  let S := Finset.Ioc (U + 1) N
  have hk : U + 1 ∉ S := by simp [S]
  have hc : diagonal S (sourceKernel A) (centeredBeta (U + 1)) =
      diagonal S (sourceKernel A) (centeredBeta U) +
        (moebius (U + 1) : ℝ) *
          (diagonal S (sourceKernel A) (fun _ ↦ 1) / (U + 1 : ℕ) -
            diagonal S (sourceKernel A) (fun n ↦ if U + 1 ∣ n then 1 else 0)) := by
    calc
      _ = diagonal S (sourceKernel A) (fun n ↦ centeredBeta U n +
          (moebius (U + 1) : ℝ) *
            ((1 : ℝ) / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0)) := by
        unfold diagonal
        apply Finset.sum_congr rfl
        intro n hn
        rw [centeredBeta_succ U n (by have := (Finset.mem_Ioc.mp hn).1; omega)]
      _ = _ := by
        rw [diagonal_row_add, diagonal_row_smul]
        have he : (fun n : ℕ ↦ (1 : ℝ) / (U + 1 : ℕ) -
            if U + 1 ∣ n then 1 else 0) =
            (fun n ↦ (1 / (U + 1 : ℕ)) * 1 +
              (-1 : ℝ) * (if U + 1 ∣ n then 1 else 0)) := by funext n; ring
        rw [he, diagonal_row_add, diagonal_row_smul, diagonal_row_smul]
        ring
  unfold centeredDiagonalAt
  rw [hc, longInventory_succ U N hUN, diagonal_insert S (sourceKernel A) _ _ hk]
  unfold S
  ring

/-- The full rectangle update retains both axes and the removed corner before deletion. -/
theorem centeredRectangleAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredRectangleAt A (U + 1) N - centeredRectangleAt A U N =
      (moebius (U + 1) : ℝ) *
        (rectangle (Finset.Ioc (U + 1) N) (sourceKernel A) (fun _ ↦ 1) /
            (U + 1 : ℕ) -
          rectangle (Finset.Ioc (U + 1) N) (sourceKernel A)
            (fun n ↦ if U + 1 ∣ n then 1 else 0)) -
      boundaryAt A U N (centeredBeta U) -
      sourceKernel A (U + 1) (U + 1) * centeredBeta U (U + 1) := by
  have ho := centeredOffAt_succ A U N hUN
  have hd := centeredDiagonalAt_succ A U N hUN
  unfold centeredOffAt plainOffAt multiplesOffAt offDiagonal at ho
  unfold centeredDiagonalAt at hd
  unfold centeredRectangleAt
  linear_combination ho + hd

/-- Row centering changes both deleted-axis boundaries by the exact same mean. -/
theorem boundaryAt_centered (A : ℝ) (U N : ℕ) :
    boundaryAt A U N (centeredBeta U) = boundaryAt A U N (beta U) +
      alpha U * boundaryAt A U N (fun _ ↦ 1) := by
  unfold boundaryAt rowBoundary columnBoundary centeredBeta
  simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum, mul_one]
  simp_rw [mul_comm _ (alpha U)]
  ring

/-- The fixed-cutoff short Mangoldt term uses the original kernel. -/
def shortMangoldtAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A m

/-- The fixed-cutoff logarithmic main term uses the already proved literal sampling row. -/
def shortLogSamplingAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, EstimateMertensAbel.realMoebius d * sourceLogSamplingMainTerm A d

/-- The fixed-cutoff doubly short main term retains both signed short variables. -/
def shortPlainSamplingAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Icc 1 U,
    EstimateMertensAbel.realMoebius d * vonMangoldt m *
      sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)

/-- The independent main formula is generalized by changing only its explicit inventories. -/
def mainTermAt (A : ℝ) (U N : ℕ) : ℝ :=
  alpha U * plainOffAt A U N + diagonalMainCoefficient A * A - Real.log (U : ℝ) -
    shortMangoldtAt A U - shortLogSamplingAt A U + shortPlainSamplingAt A U

/-- This finite main formula specializes to the previously proved independent main term. -/
theorem mainTermAt_actual (A : ℝ) (hA : 1 ≤ A) :
    mainTermAt A (vaughanCutoff A) (sourceKernelCutoff A) = independentMainTerm A := by
  rw [mainTermAt, plainOffAt_actual A hA]
  unfold independentMainTerm
  rw [coefficientMainTerm_eq_sampling_inventory]
  rfl

/-- Exact signed joint remainder with the independently constructed main formula. -/
def jointAt (A : ℝ) (U N : ℕ) : ℝ := centeredOffAt A U N - mainTermAt A U N

/-- The actual joint source target is the specialization of the cutoff balance. -/
theorem jointAt_actual (A : ℝ) (hA : 1 ≤ A) :
    jointAt A (vaughanCutoff A) (sourceKernelCutoff A) =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  rw [jointAt, centeredOffAt_actual A hA, mainTermAt_actual A hA,
    VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered]
  ring

/-- The short Mangoldt change is its new closed-endpoint atom. -/
theorem shortMangoldtAt_succ (A : ℝ) (U : ℕ) :
    shortMangoldtAt A (U + 1) - shortMangoldtAt A U =
      vonMangoldt (U + 1) * sourcePlainWeight A (U + 1 : ℕ) := by
  classical
  have hk : U + 1 ∉ Finset.Icc 1 U := by simp
  simp only [shortMangoldtAt, shortInventory_succ, Finset.sum_insert hk]
  ring

/-- The logarithmic main change is its new signed sampling atom. -/
theorem shortLogSamplingAt_succ (A : ℝ) (U : ℕ) :
    shortLogSamplingAt A (U + 1) - shortLogSamplingAt A U =
      (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) := by
  classical
  have hk : U + 1 ∉ Finset.Icc 1 U := by simp
  simp only [shortLogSamplingAt, shortInventory_succ, Finset.sum_insert hk]
  unfold EstimateMertensAbel.realMoebius
  ring

/-- Both closed short axes change; the common corner belongs to the first added row. -/
def shortPlainIncrement (A : ℝ) (U : ℕ) : ℝ :=
  (moebius (U + 1) : ℝ) *
      (∑ m ∈ Finset.Icc 1 (U + 1), vonMangoldt m *
        sourcePlainSamplingMainTerm A (((U + 1) * m : ℕ) : ℝ)) +
    vonMangoldt (U + 1) *
      (∑ d ∈ Finset.Icc 1 U, EstimateMertensAbel.realMoebius d *
        sourcePlainSamplingMainTerm A ((d * (U + 1) : ℕ) : ℝ))

theorem shortPlainSamplingAt_succ (A : ℝ) (U : ℕ) :
    shortPlainSamplingAt A (U + 1) - shortPlainSamplingAt A U = shortPlainIncrement A U := by
  classical
  have hk : U + 1 ∉ Finset.Icc 1 U := by simp
  unfold shortPlainSamplingAt shortPlainIncrement
  rw [shortInventory_succ, Finset.sum_insert hk]
  simp only [Finset.sum_insert hk, Finset.sum_add_distrib, Finset.mul_sum]
  simp only [EstimateMertensAbel.realMoebius]
  simp only [mul_add, Finset.mul_sum]
  ring

/-- The adjacent main change retains centering, baseline and both short-variable changes. -/
theorem mainTermAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    mainTermAt A (U + 1) N - mainTermAt A U N =
      (moebius (U + 1) : ℝ) / (U + 1 : ℕ) * plainOffAt A (U + 1) N -
        alpha U * boundaryAt A U N (fun _ ↦ 1) -
        (Real.log (U + 1 : ℕ) - Real.log (U : ℝ)) -
        vonMangoldt (U + 1) * sourcePlainWeight A (U + 1 : ℕ) -
        (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) +
        shortPlainIncrement A U := by
  have hm := meanCompensation_succ A U N hUN
  have hs := shortMangoldtAt_succ A U
  have hl := shortLogSamplingAt_succ A U
  have hp := shortPlainSamplingAt_succ A U
  unfold mainTermAt
  linear_combination hm - hs - hl + hp

/-- The reciprocal mean cancels internally; the remaining signed flux retains all counterterms. -/
def jointFlux (A : ℝ) (U N : ℕ) : ℝ :=
  -(moebius (U + 1) : ℝ) * multiplesOffAt A (U + 1) N (U + 1) -
    boundaryAt A U N (beta U) +
    (Real.log (U + 1 : ℕ) - Real.log (U : ℝ)) +
    vonMangoldt (U + 1) * sourcePlainWeight A (U + 1 : ℕ) +
    (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
    shortPlainIncrement A U

/-- Exact complete adjacent balance; no absolute estimate is applied to its joint signed terms. -/
theorem jointAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    jointAt A (U + 1) N - jointAt A U N = jointFlux A U N := by
  have hc := centeredOffAt_succ A U N hUN
  have hm := mainTermAt_succ A U N hUN
  rw [boundaryAt_centered] at hc
  unfold jointAt jointFlux
  linear_combination hc - hm

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
