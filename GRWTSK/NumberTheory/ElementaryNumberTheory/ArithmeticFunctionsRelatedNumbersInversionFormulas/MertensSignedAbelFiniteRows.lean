/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelTripleOperator
import GRWTSK.RealFunctions.ThreeCoordinateReadout
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

/-!
# Exact finite coefficient rows of the arithmetic cofactor operator

The rows are the existing operator applied to point sources, NOT new fitted
coefficients. Finite input support and linearity reconstruct every response.
The signed three-row combination is formed before estimating. Its row-aware
Cauchy estimate and feature-fibre criterion are finite comparisons only;
neither asserts cancellation or a small source residual.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- A point source in the unchanged positive integer input coordinate. -/
def sourceAtom (a n : ℕ) : ℝ := if n = a then 1 else 0

/-- Source-independent row coefficients of the already constructed arithmetic operator. -/
def responseRow (width : ℕ → ℕ) (j v a : ℕ) : ℝ :=
  cofactorResponse width j v (sourceAtom a)

/-- Combine the three rows before introducing absolute values. -/
def signedRow (width : ℕ → ℕ) (j a : ℕ) : ℝ :=
  responseRow width j 1 a - responseRow width j 2 a - responseRow width j 3 a

def signedResponse (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) : ℝ :=
  cofactorResponse width j 1 f - cofactorResponse width j 2 f - cofactorResponse width j 3 f

theorem cofactorResponse_finset_sum (width : ℕ → ℕ) (j v : ℕ)
    (S : Finset ℕ) (f : ℕ → ℕ → ℝ) :
    cofactorResponse width j v (fun n => ∑ a ∈ S, f a n) =
      ∑ a ∈ S, cofactorResponse width j v (f a) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp
  | @insert a S ha ih =>
      simp only [Finset.sum_insert ha]
      simpa only [one_mul, ih] using
        cofactorResponse_linear width j v 1 1 (f a) (fun n => ∑ b ∈ S, f b n)

/-- Exact matrix-row representation on the fixed input set 1,...,Y. -/
theorem cofactorResponse_eq_row_sum (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ) :
    cofactorResponse width j v f =
      ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), responseRow width j v a * f a := by
  let S := Finset.Icc 1 (2 ^ (j + 1))
  calc
    _ = cofactorResponse width j v (fun n => ∑ a ∈ S, f a * sourceAtom a n) := by
      apply cofactorResponse_congr_on_source
      intro n hn hny
      have hnS : n ∈ S := Finset.mem_Icc.mpr ⟨hn, hny⟩
      simp [sourceAtom, hnS, mul_ite]
    _ = ∑ a ∈ S, cofactorResponse width j v (fun n => f a * sourceAtom a n) :=
      cofactorResponse_finset_sum width j v S _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro a _
      have h := cofactorResponse_linear width j v (f a) 0 (sourceAtom a) (fun _ => 0)
      simpa only [zero_mul, add_zero, responseRow, mul_comm] using h

/-- Off-source coefficients vanish by support, not by an analytic decay assertion. -/
theorem responseRow_eq_zero_of_gt (width : ℕ → ℕ) (j v a : ℕ)
    (ha : 2 ^ (j + 1) < a) : responseRow width j v a = 0 := by
  unfold responseRow
  have h := cofactorResponse_congr_on_source width j v (sourceAtom a) (fun _ => 0)
    (by intro n hn hny; have hne : n ≠ a := by omega; simp [sourceAtom, hne])
  simpa using h

theorem signedRow_eq_zero_of_gt (width : ℕ → ℕ) (j a : ℕ)
    (ha : 2 ^ (j + 1) < a) : signedRow width j a = 0 := by
  simp [signedRow, responseRow_eq_zero_of_gt width j 1 a ha,
    responseRow_eq_zero_of_gt width j 2 a ha, responseRow_eq_zero_of_gt width j 3 a ha]

/-- Positivity applies to each unsigned row, not to their signed difference. -/
theorem cofactorPrefix_nonneg (j v h N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a, 0 ≤ f a) : 0 ≤ cofactorPrefix j v h N f := by
  unfold cofactorPrefix
  apply Finset.sum_nonneg
  intro p _
  apply Finset.sum_nonneg
  intro q _
  apply Finset.sum_nonneg
  intro r _
  split_ifs
  · exact hf _
  · exact le_rfl

theorem cofactorResponse_nonneg (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a, 0 ≤ f a) : 0 ≤ cofactorResponse width j v f := by
  unfold cofactorResponse bulkPrefixFunctional
  apply mul_nonneg (by positivity)
  apply Finset.sum_nonneg
  intro t _
  split_ifs
  · apply Finset.sum_nonneg
    intro h _
    exact mul_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)
      (cofactorPrefix_nonneg j v h (t + 1) f hf)
  · exact le_rfl

theorem responseRow_nonneg (width : ℕ → ℕ) (j v a : ℕ) :
    0 ≤ responseRow width j v a := by
  apply cofactorResponse_nonneg
  intro n
  unfold sourceAtom
  split_ifs <;> norm_num

theorem signedResponse_eq_row_sum (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f =
      ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), signedRow width j a * f a := by
  unfold signedResponse
  rw [cofactorResponse_eq_row_sum, cofactorResponse_eq_row_sum, cofactorResponse_eq_row_sum,
    ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  unfold signedRow
  ring

theorem triple_bulk_eq_signedResponse (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) = signedResponse width j moebiusReal :=
  triple_bulk_eq_three_responses width j

theorem signedResponse_sub (width : ℕ → ℕ) (j : ℕ) (f g : ℕ → ℝ) :
    signedResponse width j (fun a => f a - g a) =
      signedResponse width j f - signedResponse width j g := by
  rw [signedResponse_eq_row_sum, signedResponse_eq_row_sum, signedResponse_eq_row_sum,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  ring

/-- The observed squared error uses the COMBINED row and its actual coefficient masses. -/
theorem signedResponse_sq_le_row_weighted_energy (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    (signedResponse width j f) ^ 2 ≤
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a|) *
      (∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)), |signedRow width j a| * (f a) ^ 2) := by
  rw [signedResponse_eq_row_sum]
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
  · intro a _; exact abs_nonneg _
  · intro a _; exact mul_nonneg (abs_nonneg _) (sq_nonneg _)
  · intro a _
    apply le_of_eq
    rw [mul_pow, ← sq_abs (signedRow width j a)]
    ring

/-- Exact source compression criterion: only this scalar, not the input, must be recoverable. -/
theorem signedResponse_decoder_iff {β : Type*} (feature : (ℕ → ℝ) → β)
    (width : ℕ → ℕ) (j : ℕ) :
    (∃ decode : β → ℝ, ∀ f, decode (feature f) = signedResponse width j f) ↔
      (∀ f g, feature f = feature g →
        ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          signedRow width j a * (f a - g a) = 0) := by
  rw [GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout.decoder_exists_iff]
  constructor
  · intro h f g hfg
    have he := h f g hfg
    rw [← signedResponse_eq_row_sum, signedResponse_sub, he, sub_self]
  · intro h f g hfg
    have he := h f g hfg
    rw [← signedResponse_eq_row_sum, signedResponse_sub] at he
    exact sub_eq_zero.mp he

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
