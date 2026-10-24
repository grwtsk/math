# Complete source: GRWTSK.Analysis.Complex.RationalTentAccumulation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28e1982d40973837ccce9ec4e57118f16fc30587` · SHA-256 `509385ce80cb9381ee425987072ae2c6e7d894c4277f665930409fb5120c411b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTentEvaluation

set_option autoImplicit false

/-!
# Finite rational weighted tent accumulation

An executable finite tuple is not a certified list of zeros. This module
checks its numerical guards, uses each natural weight on the WHOLE record
error, sums exactly, and rounds once after accumulation. Canonical point
identity, weight identity and completeness belong to the separate binding.
No sequential machine summation is represented. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalTentAccumulation

open scoped BigOperators
open RationalRoundedArithmetic TentMellinKernel

structure WeightedInput where
  weight : ℕ
  point : RationalTentEvaluation.Input
  deriving DecidableEq, Repr

/-- All rows use the SAME externally fixed x,h; no row carries alternate endpoints. -/
def Admissible (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : Prop :=
  0 < h ∧ 1 < x - h ∧ ∀ i, 0 < (rows i).weight ∧
    RationalTentEvaluation.Admissible x h (rows i).point

instance (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : Decidable (Admissible x h rows) := by
  unfold Admissible
  infer_instance

def sumValue (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : QComplex :=
  ⟨∑ i, ((rows i).weight : ℚ) * (RationalTentEvaluation.compute x h (rows i).point).value.re,
   ∑ i, ((rows i).weight : ℚ) * (RationalTentEvaluation.compute x h (rows i).point).value.im⟩

def sumError (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : ℚ :=
  ∑ i, ((rows i).weight : ℚ) * (RationalTentEvaluation.compute x h (rows i).point).error

def compute (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) : State :=
  initialState bits (sumValue x h rows) (sumError x h rows)

def evaluate (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) : Option State :=
  if Admissible x h rows then
    let out := compute x h bits rows
    if out.error ≤ tolerance then some out else none
  else none

def verify (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (claimed : State) : Bool :=
  decide (evaluate x h bits rows tolerance = some claimed)

@[simp] theorem embed_sumValue (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) :
    QComplex.embed (sumValue x h rows) =
      ∑ i, ((rows i).weight : ℂ) *
        QComplex.embed (RationalTentEvaluation.compute x h (rows i).point).value := by
  ext <;> simp [sumValue, QComplex.embed, Complex.mul_re, Complex.mul_im]

/-- The arbitrary point family is a semantic input, not inferred from coordinate metadata. -/
theorem sum_sound (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : Admissible x h rows) (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) * tentKernel (x : ℝ) (h : ℝ) (z i)) -
      QComplex.embed (sumValue x h rows)‖ ≤ (sumError x h rows : ℝ) := by
  rw [embed_sumValue, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i, ‖((rows i).weight : ℂ) * tentKernel (x : ℝ) (h : ℝ) (z i) -
        ((rows i).weight : ℂ) *
          QComplex.embed (RationalTentEvaluation.compute x h (rows i).point).value‖ :=
      norm_sum_le _ _
    _ ≤ _ := by
      simp only [sumError, Rat.cast_sum, Rat.cast_mul, Rat.cast_natCast]
      apply Finset.sum_le_sum
      intro i _
      rw [← mul_sub, norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (RationalTentEvaluation.compute_sound x h (rows i).point (hg.2.2 i).2
          (z i) (hz i) (hcoord i)) (Nat.cast_nonneg _)

/-- One final accumulation rounding allowance; all record errors were already weighted. -/
theorem compute_sound (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : Admissible x h rows) (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) * tentKernel (x : ℝ) (h : ℝ) (z i)) -
      QComplex.embed (compute x h bits rows).value‖ ≤ ((compute x h bits rows).error : ℝ) :=
  initialState_sound bits (sumValue x h rows) (sumError x h rows) _
    (sum_sound x h rows hg z hz hcoord)

theorem evaluate_some_iff (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State) :
    evaluate x h bits rows tolerance = some out ↔
      Admissible x h rows ∧ (compute x h bits rows).error ≤ tolerance ∧
        compute x h bits rows = out := by
  unfold evaluate
  split_ifs <;> simp_all

theorem evaluate_none_iff (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) :
    evaluate x h bits rows tolerance = none ↔
      ¬Admissible x h rows ∨ tolerance < (compute x h bits rows).error := by
  unfold evaluate
  split_ifs <;> simp_all

/-- Claimed coordinates AND error must equal the fixed-source recomputation. -/
theorem verify_iff (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State) :
    verify x h bits rows tolerance out = true ↔
      Admissible x h rows ∧ (compute x h bits rows).error ≤ tolerance ∧
        compute x h bits rows = out := by
  simp only [verify, decide_eq_true_eq, evaluate_some_iff]

end GRWTSK.Analysis.Complex.RationalTentAccumulation
```
