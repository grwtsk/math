/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IntegerDyadicTrace
import GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation

set_option autoImplicit false

/-!
# Integer traces supply the unchanged rational endpoint equality

This certificate checker still recomputes the SAME rational seed and seed
error from the fixed base, exponent and schedule. Only the repeated-square
part is certified through integer windows. Guards and the complete output
state remain mandatory. No native decision or source-acceptance axiom occurs.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalPowerTrace

open RationalRoundedArithmetic IntegerDyadicTrace

/-- Raw finite data: states do not carry trusted local correctness flags. -/
def check (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (t : Fin (p.squarings + 1) → GridState) (out : State) : Bool :=
  decide (RationalPowerEvaluation.Admissible q z p ∧
    TraceValid p.bits (RationalPowerEvaluation.seed q z p)
      (RationalPowerEvaluation.seedError q z p) p.squarings t ∧
    decode p.bits (t (Fin.last p.squarings)) = out)

theorem check_iff (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (t : Fin (p.squarings + 1) → GridState) (out : State) :
    check q z p t out = true ↔
      RationalPowerEvaluation.Admissible q z p ∧
      TraceValid p.bits (RationalPowerEvaluation.seed q z p)
        (RationalPowerEvaluation.seedError q z p) p.squarings t ∧
      decode p.bits (t (Fin.last p.squarings)) = out := by simp [check]

/-- Equality is with the original algorithm, not with a newly assigned enclosure. -/
theorem compute_eq_of_check (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (t : Fin (p.squarings + 1) → GridState) (out : State)
    (h : check q z p t out = true) :
    RationalPowerEvaluation.Admissible q z p ∧ RationalPowerEvaluation.compute q z p = out := by
  obtain ⟨hg, ht, ho⟩ := (check_iff q z p t out).mp h
  exact ⟨hg, (trace_refines p.bits _ _ p.squarings t ht).trans ho⟩

/-- The original source theorem is reused after exact reconstruction. -/
theorem source_sound (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (t : Fin (p.squarings + 1) → GridState) (out : State)
    (h : check q z p t out = true) :
    ‖IntervalMellinKernel.logPower (q : ℝ) (QComplex.embed z) - QComplex.embed out.value‖ ≤
      (out.error : ℝ) := by
  obtain ⟨hg, ho⟩ := compute_eq_of_check q z p t out h
  simpa only [ho] using RationalPowerEvaluation.compute_sound q z p hg

/-- A target check is still separate; an accepted trace alone asserts no tolerance. -/
theorem original_verify_of_check (q : ℚ) (z : QComplex)
    (p : RationalPowerEvaluation.Schedule) (t : Fin (p.squarings + 1) → GridState)
    (out : State) (tolerance : ℚ) (h : check q z p t out = true)
    (ht : out.error ≤ tolerance) :
    RationalPowerEvaluation.verify q z p tolerance out = true := by
  obtain ⟨hg, ho⟩ := compute_eq_of_check q z p t out h
  apply (RationalPowerEvaluation.verify_iff q z p tolerance out).mpr
  exact ⟨hg, by simpa only [ho] using ht, ho⟩

end GRWTSK.Analysis.ComplexAnalysis.RationalPowerTrace
