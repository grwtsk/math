import SourceVaughanHankel

/-!
# Exact adjacent cutoff balance at fixed source scale

The cutoff is a finite classification parameter. This module keeps the unchanged
source, both long axes, the centered deleted diagonal and all independent
counterterms in the same signed adjacent balance. A cutoff change at fixed A is
not a derivative in A and supplies no uniform signed upper bound.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

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

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
