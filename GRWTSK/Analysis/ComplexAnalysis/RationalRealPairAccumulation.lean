/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalConjugatePairAccumulation
import Mathlib.Tactic

set_option autoImplicit false

/-!
# One-component directed rounding for conjugate-pair tent sums

The conjugate-pair accumulator has an exactly real rational center: every pair
center is `v + conj v`, hence has zero imaginary component. The generic complex
`initialState` nevertheless charges two component roundoffs. This module keeps the
same analytic pair errors but rounds only the real output component.

The final value allowance is therefore

  1 / 2^bits

before upward rounding of the stored error, rather than the generic complex
allowance `2 / 2^bits`. No pair uncertainty is reduced: each one-point analytic
error is still doubled, multiplied by the natural multiplicity, and summed in full.
Only the provably zero imaginary output coordinate is removed from the final
quantization budget.

This module does not execute the evaluator, construct source rows, prove a Turing
count, or supply a prime margin. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation

open scoped BigOperators ComplexConjugate
open RationalRoundedArithmetic
open RationalTentEvaluation
open RationalTentAccumulation
open RationalConjugatePairAccumulation
open IntervalMellinKernel TentMellinKernel

noncomputable section

/-- One real component, rather than two complex components, is rounded. -/
def realRoundoffQ (bits : ℕ) : ℚ := 1 / scaleQ bits

/-- Directedly round one rational real center and its complete error budget. -/
def realInitialState (bits : ℕ) (seed initial : ℚ) : State :=
  ⟨⟨downQ bits seed, 0⟩,
    upQ bits (initial + realRoundoffQ bits)⟩

@[simp] theorem cast_realRoundoffQ (bits : ℕ) :
    (realRoundoffQ bits : ℝ) =
      1 / GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.scale bits := by
  simp [realRoundoffQ, cast_scaleQ]

/-- The real pre-round allowance is strictly smaller than the generic complex one. -/
theorem realRoundoffQ_lt_roundoffQ (bits : ℕ) :
    realRoundoffQ bits < roundoffQ bits := by
  unfold realRoundoffQ roundoffQ
  have hs : (0 : ℚ) < scaleQ bits := by
    unfold scaleQ
    positivity
  exact (div_lt_div_iff_of_pos_right hs).2 (by norm_num)

@[simp] theorem realInitialState_value_im (bits : ℕ) (seed initial : ℚ) :
    (realInitialState bits seed initial).value.im = 0 := rfl

/-- One-component seed rounding is sound for an arbitrary complex target around
an exactly real center. The target itself need not be declared real. -/
theorem realInitialState_sound
    (bits : ℕ) (seed initial : ℚ) (a : ℂ)
    (ha : ‖a - ((seed : ℝ) : ℂ)‖ ≤ (initial : ℝ)) :
    ‖a - QComplex.embed (realInitialState bits seed initial).value‖ ≤
      ((realInitialState bits seed initial).error : ℝ) := by
  have hroundR :=
    GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.abs_sub_down_le bits (seed : ℝ)
  have hround :
      ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ ≤
        (realRoundoffQ bits : ℝ) := by
    calc
      ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ =
          ‖(((seed : ℝ) - (downQ bits seed : ℝ) : ℝ) : ℂ)‖ := by
            congr 1
            ext <;> simp [realInitialState, QComplex.embed]
      _ = |(seed : ℝ) - (downQ bits seed : ℝ)| := by
            rw [Complex.norm_real, Real.norm_eq_abs]
      _ ≤ 1 / GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.scale bits := by
            rw [cast_downQ]
            exact hroundR
      _ = (realRoundoffQ bits : ℝ) := by
            rw [cast_realRoundoffQ]
  have hupper :
      (initial : ℝ) + (realRoundoffQ bits : ℝ) ≤
        ((realInitialState bits seed initial).error : ℝ) := by
    have hup :=
      (GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.up_bounds bits
        ((initial + realRoundoffQ bits : ℚ) : ℝ)).1
    simpa [realInitialState] using hup
  calc
    ‖a - QComplex.embed (realInitialState bits seed initial).value‖ =
        ‖(a - ((seed : ℝ) : ℂ)) +
          (((seed : ℝ) : ℂ) -
            QComplex.embed (realInitialState bits seed initial).value)‖ := by
          congr 1
          ring
    _ ≤ ‖a - ((seed : ℝ) : ℂ)‖ +
        ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ :=
      norm_add_le _ _
    _ ≤ (initial : ℝ) + (realRoundoffQ bits : ℝ) :=
      add_le_add ha hround
    _ ≤ _ := hupper

/-- The exact real center of all multiplicity-weighted conjugate pairs. -/
def sumRealValue (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : ℚ :=
  ∑ i, ((rows i).weight : ℚ) *
    (pairValue x h (rows i).point).re

/-- Retain the complete pair errors from the complex pair accumulator. -/
def sumError (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : ℚ :=
  RationalConjugatePairAccumulation.sumError x h rows

/-- One final one-component directed rounding. -/
def compute (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) : State :=
  realInitialState bits (sumRealValue x h rows) (sumError x h rows)

/-- Use the same admissibility predicate as the one-point and pair evaluators. -/
def evaluate (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) (tolerance : ℚ) : Option State :=
  if RationalTentAccumulation.Admissible x h rows then
    let out := compute x h bits rows
    if out.error ≤ tolerance then some out else none
  else none

/-- Claimed output equality remains part of Boolean acceptance. -/
def verify (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) (tolerance : ℚ) (claimed : State) : Bool :=
  decide (evaluate x h bits rows tolerance = some claimed)

@[simp] theorem embed_sumRealValue (x h : ℚ) {k : ℕ}
    (rows : Fin k → WeightedInput) :
    (((sumRealValue x h rows : ℚ) : ℝ) : ℂ) =
      ∑ i, ((rows i).weight : ℂ) *
        QComplex.embed (pairValue x h (rows i).point) := by
  ext <;>
    simp [sumRealValue, pairValue, QComplex.embed,
      Complex.mul_re, Complex.mul_im]

/-- The complete analytic pair sum is enclosed around the exact real center. -/
theorem sum_sound
    (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      (((sumRealValue x h rows : ℚ) : ℝ) : ℂ)‖ ≤
        (sumError x h rows : ℝ) := by
  have hs := RationalConjugatePairAccumulation.sum_sound
    x h rows hg z hz him hcoord
  simpa [sumError, RationalConjugatePairAccumulation.sumValue,
    sumRealValue, QComplex.embed] using hs

/-- Pair accumulation followed by one real-component rounding is sound. -/
theorem compute_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      QComplex.embed (compute x h bits rows).value‖ ≤
        ((compute x h bits rows).error : ℝ) := by
  apply realInitialState_sound bits
    (sumRealValue x h rows) (sumError x h rows)
  exact sum_sound x h rows hg z hz him hcoord

/-- The pre-upward-rounding allowance is strictly smaller by one dyadic unit.
The stored errors may coincide when both values round to the same grid point. -/
theorem preRoundError_lt_complexPreRoundError
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) :
    sumError x h rows + realRoundoffQ bits <
      sumError x h rows + roundoffQ bits :=
  add_lt_add_left (realRoundoffQ_lt_roundoffQ bits) _

@[simp] theorem compute_value_im_zero
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) :
    (compute x h bits rows).value.im = 0 := rfl

/-- Accepted output exposes the fixed real computation and complete guards. -/
theorem verify_iff
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State) :
    verify x h bits rows tolerance out = true ↔
      RationalTentAccumulation.Admissible x h rows ∧
      (compute x h bits rows).error ≤ tolerance ∧
      compute x h bits rows = out := by
  unfold verify evaluate
  split_ifs <;> simp_all

/-- Accepted pair computation carries its complete enclosure and tolerance. -/
theorem verify_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  obtain ⟨hg, ht, rfl⟩ := (verify_iff x h bits rows tolerance out).mp accepted
  exact ⟨compute_sound x h bits rows hg z hz him hcoord, ht⟩

/-- Every accepted output has an exactly zero stored imaginary component. -/
theorem accepted_value_im_zero
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true) :
    out.value.im = 0 := by
  obtain ⟨_, _, hfixed⟩ := (verify_iff x h bits rows tolerance out).mp accepted
  rw [← hfixed]
  exact compute_value_im_zero x h bits rows

end

end GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation
