/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockSeeds

set_option autoImplicit false

/-!
# The complete first 64-endpoint block, at source-draft scope

The fixed seed proposals are checked in the imported proof scripts. Generic
integer recurrence refinement then reconstructs all three output State fields
at all 64 positions. No 61-entry remainder is assumed for this block.

The remaining 63 blocks, terminal and final checks stay explicit. Neither
SourceAcceptance nor a closed zero-existence theorem is supplied. The output
records are defined by exact integer computation, not authenticated JSON data.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlock

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript
open ConcreteNewtonFirstBlockData ConcreteNewtonFirstBlockSeeds

/-- An exact finite integer expression, including the entire historical error. -/
def output (i : Fin 64) : State := decode 64 (EuclideanDyadicRun.iterate 64 (initial i) 8)

/-- Closed proof draft for EVERY endpoint in the first block, not merely bases 1,2,3. -/
theorem endpoint_compute (i : Fin 64) : RationalPowerEvaluation.compute
    (base i : ℚ) (sourceExponent center) (schedule (base i)) = output i := by
  change run 64 _ _ 8 = _
  exact EuclideanDyadicRun.run_eq_iterate 64 _ _ (initial i) (all_seeds_valid i) 8

/-- All components and the stored error are tied to the original positive-axis power. -/
theorem endpoint_enclosure (i : Fin 64) :
    ‖IntervalMellinKernel.logPower (base i : ℝ) (QComplex.embed (sourceExponent center)) -
      QComplex.embed (output i).value‖ ≤ ((output i).error : ℝ) := by
  have h := RationalPowerEvaluation.compute_sound (base i : ℚ) (sourceExponent center)
    (schedule (base i)) (all_inputs i).1
  simpa only [endpoint_compute, Rat.cast_natCast] using h

/-- The old block is EXACTLY positions 0..63. No terminal position is included. -/
theorem mem_first_block (i : Fin prefixLength) :
    i ∈ ConcreteNewtonBlockAcceptance.blockIndices 0 ↔ i.1 < 64 := by
  rw [ConcreteNewtonBlockAcceptance.mem_blockIndices]
  change i.1 / 64 = 0 ↔ i.1 < 64
  omega

/-- Explicit partial fill; arbitrary later records and terminal are left unchanged.
This is typed data, not a decoder or an assertion that later records are valid. -/
def fill (later : Fin prefixLength → State) (terminal : State) : Transcript prefixLength where
  prefix := fun i => if h : i.1 < 64 then output ⟨i.1, h⟩ else later i
  terminal := terminal

/-- No endpoint or first-block acceptance premise. The theorem still is NOT_RUN. -/
theorem first_block_check (later : Fin prefixLength → State) (terminal : State) :
    checkPrefix prefixLength center plan (fill later terminal)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true := by
  apply (checkPrefix_iff prefixLength center plan _ _).mpr
  intro i hi
  have hi64 := (mem_first_block i).mp hi
  let j : Fin 64 := ⟨i.1, hi64⟩
  constructor
  · simpa only [base, plan, Nat.cast_add, Nat.cast_one] using (all_inputs j).1
  · simpa only [fill, dif_pos hi64, base, plan, Nat.cast_add, Nat.cast_one] using endpoint_compute j

/-- External transcript reuse still requires exact record equality, not a hash. -/
theorem first_block_of_records (t : Transcript prefixLength)
    (hrecords : ∀ i : Fin 64, t.prefix ⟨i.1, by have := i.isLt; change i.1 < 4096; omega⟩ = output i) :
    checkPrefix prefixLength center plan t (ConcreteNewtonBlockAcceptance.blockIndices 0) = true := by
  apply (checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have hi64 := (mem_first_block i).mp hi
  let j : Fin 64 := ⟨i.1, hi64⟩
  refine ⟨?_, ?_⟩
  · simpa only [base, plan, Nat.cast_add, Nat.cast_one] using (all_inputs j).1
  · have hc := endpoint_compute j
    have hr := hrecords j
    simpa only [base, plan, Nat.cast_add, Nat.cast_one] using hc.trans hr.symm

/-- One fewer PREFIX-block premise, not a proof of the remaining 65 data checks. -/
theorem source_of_remaining (later : Fin prefixLength → State) (terminal : State)
    (hrest : ∀ b : Fin 64, b ≠ 0 →
      checkPrefix prefixLength center plan (fill later terminal)
        (ConcreteNewtonBlockAcceptance.blockIndices b) = true)
    (ht : checkTerminal prefixLength center plan (fill later terminal) = true)
    (hf : checkFinal prefixLength center plan (fill later terminal)
      valueTolerance slopeTolerance claimed = true) : SourceAcceptance := by
  apply ConcreteNewtonBlockAcceptance.source_acceptance_of_blocks (fill later terminal)
  refine ⟨?_, ht, hf⟩
  intro b
  by_cases hb : b = 0
  · subst b
    exact first_block_check later terminal
  · exact hrest b hb

end GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlock
