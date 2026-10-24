# Complete source: GRWTSK.Topology.GeneralTopology.07SourceCutoffFlux.Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b2074f85a703b5b34b5cdc0f90767aad32e9fea` · SHA-256 `cb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

/-- Adjacent upper extension adds exactly its new closed endpoint. -/
theorem upperInventory_succ (U N : ℕ) (hUN : U ≤ N) :
    Finset.Ioc U (N + 1) = insert (N + 1) (Finset.Ioc U N) := by
  ext n
  simp only [Finset.mem_Ioc, Finset.mem_insert]
  omega

/-- No actual source interaction survives a new upper column beyond its closed support inventory. -/
theorem sourceKernel_upper_right {A : ℝ} (hA : 1 ≤ A) (N m : ℕ)
    (hN : sourceKernelCutoff A ≤ N) (hm : 0 < m) : sourceKernel A m (N + 1) = 0 := by
  have hprod : sourceKernelCutoff A < m * (N + 1) :=
    hN.trans_lt ((Nat.lt_succ_self N).trans_le (Nat.le_mul_of_pos_left _ hm))
  unfold sourceKernel
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA _ hprod, mul_zero]

/-- The new upper row vanishes by the same actual source support, before any bound. -/
theorem sourceKernel_upper_left {A : ℝ} (hA : 1 ≤ A) (N n : ℕ)
    (hN : sourceKernelCutoff A ≤ N) (hn : 0 < n) : sourceKernel A (N + 1) n = 0 := by
  have hprod : sourceKernelCutoff A < (N + 1) * n :=
    hN.trans_lt ((Nat.lt_succ_self N).trans_le (Nat.le_mul_of_pos_right _ hn))
  unfold sourceKernel
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA _ hprod, mul_zero]

/-- At fixed A, extending an already complete upper source inventory adds no rectangle flux. -/
theorem rectangle_upper_succ {A : ℝ} (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) (b : ℕ → ℝ) :
    rectangle (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      rectangle (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, rectangle_insert _ _ _ _ hk]
  have hr : rowBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [sourceKernel_upper_left hA N n hN (by have := (Finset.mem_Ioc.mp hn).1; omega),
      zero_mul]
  have hc : columnBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro m hm
    rw [sourceKernel_upper_right hA N m hN (by have := (Finset.mem_Ioc.mp hm).1; omega),
      zero_mul]
  rw [hr, hc, sourceKernel_upper_right hA N (N + 1) hN (by omega)]
  ring

/-- The added upper diagonal atom also vanishes; it is never silently dropped. -/
theorem diagonal_upper_succ {A : ℝ} (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) (b : ℕ → ℝ) :
    diagonal (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      diagonal (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, diagonal_insert _ _ _ _ hk,
    sourceKernel_upper_right hA N (N + 1) hN (by omega)]
  ring

/-- Every signed row has zero fixed-source flux beyond the actual upper cutoff. -/
theorem offDiagonal_upper_succ {A : ℝ} (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) (b : ℕ → ℝ) :
    offDiagonal (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      offDiagonal (Finset.Ioc U N) (sourceKernel A) b := by
  rw [offDiagonal, offDiagonal, rectangle_upper_succ hA U N hUN hN b,
    diagonal_upper_succ hA U N hUN hN b]

/-- The full joint main-subtracted source has no fixed-A upper flux after support completion. -/
theorem jointAt_upper_succ {A : ℝ} (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) :
    jointAt A U (N + 1) = jointAt A U N := by
  unfold jointAt centeredOffAt mainTermAt plainOffAt
  rw [offDiagonal_upper_succ hA U N hUN hN (centeredBeta U),
    offDiagonal_upper_succ hA U N hUN hN (fun _ ↦ 1)]

/-- Finite cutoff telescoping keeps the entire baseline with the signed flux sum. -/
theorem jointAt_telescope (A : ℝ) (U V N : ℕ) (hUV : U ≤ V) (hVN : V ≤ N) :
    jointAt A V N = jointAt A U N + ∑ j ∈ Finset.Ico U V, jointFlux A j N := by
  have hsum : (∑ j ∈ Finset.Ico U V, jointFlux A j N) = jointAt A V N - jointAt A U N := by
    rw [← Finset.sum_Ico_sub (fun j ↦ jointAt A j N) hUV]
    apply Finset.sum_congr rfl
    intro j hj
    exact (jointAt_succ A j N (by have := (Finset.mem_Ico.mp hj).2; omega)).symm
  linarith

/-- The first centered long row vanishes on its strict long inventory. -/
theorem centeredBeta_one_of_one_lt (n : ℕ) (hn : 1 < n) : centeredBeta 1 n = 0 := by
  have hn0 : 0 < n := by omega
  have hn1 : n ≠ 1 := by omega
  rw [centeredBeta, beta_eq_delta_sub_short, short_divisor_sum_eq_indicator _ _ hn0]
  norm_num [alpha, hn1]

/-- The initial centered covariance is zero, while its complete independent baseline remains. -/
theorem jointAt_one (A : ℝ) (N : ℕ) : jointAt A 1 N = -mainTermAt A 1 N := by
  have hz : centeredOffAt A 1 N = 0 := by
    unfold centeredOffAt
    have hr := offDiagonal_row_congr (Finset.Ioc 1 N) (sourceKernel A)
      (centeredBeta 1) (fun _ ↦ 0) (fun n hn ↦
        centeredBeta_one_of_one_lt n (Finset.mem_Ioc.mp hn).1)
    rw [hr]
    simp [offDiagonal, rectangle, diagonal]
  rw [jointAt, hz, zero_sub]

/-- The actual target has a complete signed cutoff-flux representation, including its baseline. -/
theorem actual_joint_eq_baseline_add_flux (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
      -mainTermAt A 1 (sourceKernelCutoff A) +
        ∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A) := by
  rw [← jointAt_actual A hA, jointAt_telescope A 1 (vaughanCutoff A) (sourceKernelCutoff A)
    (vaughanCutoff_pos A hA) (vaughanCutoff_le_sourceKernelCutoff A hA), jointAt_one]

/-- Actual centered rows are already signed before any correlation kernel is applied. -/
theorem centeredBeta_two_has_both_signs : centeredBeta 2 3 = -(1 / 2 : ℝ) ∧
    centeredBeta 2 4 = (1 / 2 : ℝ) := by
  have h3 := centeredBeta_succ 1 3 (by norm_num)
  have h4 := centeredBeta_succ 1 4 (by norm_num)
  rw [centeredBeta_one_of_one_lt 3 (by norm_num)] at h3
  rw [centeredBeta_one_of_one_lt 4 (by norm_num)] at h4
  norm_num [moebius_apply_prime Nat.prime_two] at h3 h4
  exact ⟨h3, h4⟩

/-- Hostile endpoint: extending the positive-index row update to n=0 is false. -/
theorem zero_row_update_is_false :
    centeredBeta 2 0 ≠ centeredBeta 1 0 + (moebius 2 : ℝ) *
      ((1 : ℝ) / 2 - if 2 ∣ (0 : ℕ) then 1 else 0) := by
  have ha := alpha_succ 1
  norm_num [moebius_apply_prime Nat.prime_two] at ha
  simp only [centeredBeta, beta, Nat.divisors_zero, Finset.filter_empty, Finset.sum_empty,
    zero_add]
  rw [ha]
  norm_num [moebius_apply_prime Nat.prime_two]

/-- The actual continuous source correlation must be negative somewhere at every scale. -/
theorem actual_sourceCorrelation_negative {A : ℝ} (hA : 1 ≤ A) :
    ∃ s : ℝ, sourceCorrelation Realization.explicitSecondDerivative A s < 0 := by
  by_contra h
  push Not at h
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun s ↦ Real.exp ((1 / 2 : ℝ) * s) *
    sourceCorrelation Realization.explicitSecondDerivative A s
  have hf : Continuous f := by
    exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (CorrelationRegularity.sourceCorrelation_contDiff A hp).continuous
  have hc : HasCompactSupport f :=
    (CorrelationRegularity.sourceCorrelation_hasCompactSupport A hp).mul_left
  have hf0 : f 0 ≠ 0 := by
    simp [f, EstimateCorrelation.actual_correlation_at_zero A hA]
  have hpos : 0 < ∫ s, f s := hf.integral_pos_of_hasCompactSupport_nonneg_nonzero hc
    (fun s ↦ mul_nonneg (Real.exp_pos _).le (h s)) hf0
  change 0 < ∫ s, Real.exp ((1 / 2 : ℝ) * s) *
    sourceCorrelation Realization.explicitSecondDerivative A s at hpos
  rw [CorrelationMoment.full_correlation_moment_zero A hA] at hpos
  exact (lt_irrefl (0 : ℝ)) hpos

/-- Evenness and support locate a genuine negative continuous-shift fixture inside (0,2A). -/
theorem actual_sourceCorrelation_negative_inside {A : ℝ} (hA : 1 ≤ A) :
    ∃ s : ℝ, 0 < s ∧ s < 2 * A ∧
      sourceCorrelation Realization.explicitSecondDerivative A s < 0 := by
  obtain ⟨t, ht⟩ := actual_sourceCorrelation_negative hA
  have hne : t ≠ 0 := by
    intro he
    rw [he, EstimateCorrelation.actual_correlation_at_zero A hA] at ht
    norm_num at ht
  have he : sourceCorrelation Realization.explicitSecondDerivative A |t| =
      sourceCorrelation Realization.explicitSecondDerivative A t := by
    rcases le_total 0 t with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h]
      exact CorrelationRegularity.sourceCorrelation_even A t
  have hupper : |t| < 2 * A := by
    by_contra h
    have hz := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith : 0 < A) (le_of_not_gt h)
    rw [hz] at ht
    exact (lt_irrefl (0 : ℝ)) ht
  exact ⟨|t|, abs_pos.mpr hne, hupper, he ▸ ht⟩

/-- The actual continuous plain source weight is negative at some x>1.
This is not an assertion that an integer arithmetic cell has that sign. -/
theorem actual_sourcePlainWeight_negative {A : ℝ} (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ sourcePlainWeight A x < 0 := by
  obtain ⟨s, hs, _, hc⟩ := actual_sourceCorrelation_negative_inside hA
  refine ⟨Real.exp s, Real.one_lt_exp_iff.mpr hs, ?_⟩
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hc (Real.sqrt_pos.2 (Real.exp_pos s))

/-- The continuous source Hankel diagonal itself is negative somewhere.
The real shift need not be the logarithm of an integer. -/
theorem actual_continuous_hankel_diagonal_negative {A : ℝ} (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ sourcePlainWeight A (x * x) < 0 := by
  obtain ⟨s, hs, _, hc⟩ := actual_sourceCorrelation_negative_inside hA
  let x := Real.exp (s / 2)
  have hx : 1 < x := Real.one_lt_exp_iff.mpr (by linarith)
  have he : x * x = Real.exp s := by
    dsimp [x]
    rw [← Real.exp_add]
    congr 1
    ring
  refine ⟨x, hx, ?_⟩
  rw [he]
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hc (Real.sqrt_pos.2 (Real.exp_pos s))

/-- A positive Gram realization of the actual continuous Hankel kernel is impossible.
This obstruction leaves indefinite signed realizations and integer-cell questions open. -/
theorem actual_continuous_hankel_not_positive_gram {A : ℝ} (hA : 1 ≤ A)
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace ℝ E] :
    ¬ ∃ v : ℝ → E, ∀ x : ℝ, 1 < x → ∀ y : ℝ, 1 < y →
      inner ℝ (v x) (v y) = sourcePlainWeight A (x * y) := by
  rintro ⟨v, hv⟩
  obtain ⟨x, hx, hn⟩ := actual_continuous_hankel_diagonal_negative hA
  rw [← hv x hx x hx] at hn
  exact (not_lt_of_ge (real_inner_self_nonneg)) hn

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
```
