/- Copyright (c) 2026 grwtsk contributors. MIT.
   Mathematical direction: grwtsk contributors.
   Formalization assistance: OpenAI ChatGPT.
   SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
   FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Tactic

/-!
# Finite signed prime-block frame: exact internal defect and Cauchy budget

This is the finite REAL algebraic part of a SOURCE-PRESERVING block grouping.
The intended instantiation is a family of actual Möbius coefficient-response
products `a m d = moebiusReal m * moebiusReal d * pickupResponse (m*d) u`,
where `d` divides a fixed squarefree prime bank and `m` is coprime to it.

The theorem here is UNCONDITIONAL for any finite blocks, and thus does not
presume a Mertens bound, cancellation among distinct block indices, or RH.
The arithmetic unique-factorization bijection, physical-time integral,
source-facing pickupCross return and all-positive-rate bound remain separate
Lean obligations. Grouping must not drop source indices or whole-interval
cross pairs. The output is not an accepted complete RH proof.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeBlockSignedFrame

/-- A complete signed block, with its internal coefficient signs retained. -/
def blockAmplitude (D : ℕ → Finset ℕ) (a : ℕ → ℕ → ℝ) (m : ℕ) : ℝ :=
  ∑ d ∈ D m, a m d

/-- Every supplied signed source term is retained as a separate diagonal. -/
def sourceDiagonal (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ M, ∑ d ∈ D m, (a m d) ^ 2

/-- The diagonal after first summing the genuine signed prime-divisor blocks. -/
def blockDiagonal (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ M, (blockAmplitude D a m) ^ 2

/-- The SOURCE total amplitude, with all two-level indices visible. -/
def sourceAmplitude (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ M, ∑ d ∈ D m, a m d

/-- SOURCE complete ordered offdiagonal cross at a single physical time. -/
def sourceCross (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  (sourceAmplitude M D a) ^ 2 - sourceDiagonal M D a

/-- Complete interblock cross. The within-block cross is handled below. -/
def blockCross (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  (∑ m ∈ M, blockAmplitude D a m) ^ 2 - blockDiagonal M D a

/-- Exact signed within-block cross correction, not a free majorant. -/
def internalDefect (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : ℝ :=
  blockDiagonal M D a - sourceDiagonal M D a

/-- Exact finite ordered-pair algebra before any positivity estimate. -/
theorem sourceCross_eq_blockCross_add_internal
    (M : Finset ℕ) (D : ℕ → Finset ℕ) (a : ℕ → ℕ → ℝ) :
    sourceCross M D a = blockCross M D a + internalDefect M D a := by
  simp only [sourceCross, blockCross, internalDefect, sourceAmplitude,
    blockAmplitude, blockDiagonal]
  ring

theorem sourceDiagonal_nonneg (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : 0 ≤ sourceDiagonal M D a := by
  unfold sourceDiagonal
  exact Finset.sum_nonneg (fun m hm => Finset.sum_nonneg (fun d hd => sq_nonneg _))

theorem blockDiagonal_nonneg (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) : 0 ≤ blockDiagonal M D a := by
  unfold blockDiagonal
  exact Finset.sum_nonneg (fun m hm => sq_nonneg _)

/-- A finite global cardinal budget: no cancellation assumption is inserted. -/
theorem blockDiagonal_le_card_mul (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) (K : ℕ) (hcard : ∀ m ∈ M, (D m).card ≤ K) :
    blockDiagonal M D a ≤ (K : ℝ) * sourceDiagonal M D a := by
  unfold blockDiagonal sourceDiagonal
  calc
    (∑ m ∈ M, (blockAmplitude D a m) ^ 2)
      ≤ ∑ m ∈ M, ((D m).card : ℝ) * ∑ d ∈ D m, (a m d) ^ 2 := by
        apply Finset.sum_le_sum
        intro m hm
        simpa only [blockAmplitude] using
          (sq_sum_le_card_mul_sum_sq (s := D m) (f := a m))
    _ ≤ ∑ m ∈ M, (K : ℝ) * ∑ d ∈ D m, (a m d) ^ 2 := by
        apply Finset.sum_le_sum
        intro m hm
        apply mul_le_mul_of_nonneg_right
        · exact_mod_cast hcard m hm
        · exact Finset.sum_nonneg (fun d hd => sq_nonneg _)
    _ = (K : ℝ) * (∑ m ∈ M, ∑ d ∈ D m, (a m d) ^ 2) := by
      rw [Finset.mul_sum]

/-- The source-exact internal residual is bounded above without any sign
    assumptions beyond the number of terms in each actual block. -/
theorem internalDefect_le_card (M : Finset ℕ) (D : ℕ → Finset ℕ)
    (a : ℕ → ℕ → ℝ) (K : ℕ) (hcard : ∀ m ∈ M, (D m).card ≤ K) :
    internalDefect M D a ≤ ((K : ℝ) - 1) * sourceDiagonal M D a := by
  have hb := blockDiagonal_le_card_mul M D a K hcard
  unfold internalDefect
  nlinarith

/-- The negative internal correction cannot cost more than one original
    diagonal, even though its constituent ordered pairs may be signed. -/
theorem neg_sourceDiagonal_le_internalDefect (M : Finset ℕ)
    (D : ℕ → Finset ℕ) (a : ℕ → ℕ → ℝ) :
    -(sourceDiagonal M D a) ≤ internalDefect M D a := by
  have hb := blockDiagonal_nonneg M D a
  unfold internalDefect
  linarith

end GRWTSK.NumberTheory.Moebius.PrimeBlockSignedFrame
