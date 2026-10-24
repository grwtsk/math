# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlock

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4708d051d2d3c4d9862dc4f75d3a327221df193c` · SHA-256 `73368da88f6ac826aa4189aeeab639db2bd520463c9e18de3c9a9a9ec7d18b0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlockSeeds

set_option autoImplicit false

/-!
# All 64 endpoints of the original second block

Outputs use the inherited exact integer iterate. Global index i+64 has base
i+65, not i+1. The old block predicate is supplied without a remainder premise.
Record reuse still requires equality of the complete State, including its error.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonSecondBlock

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript
open ConcreteNewtonSecondBlockData ConcreteNewtonSecondBlockSeeds

def output (i : Fin 64) : State := decode 64 (EuclideanDyadicRun.iterate 64 (initial i) 8)

theorem endpoint_compute (i : Fin 64) : RationalPowerEvaluation.compute
    (base i : ℚ) (sourceExponent center) (schedule (base i)) = output i := by
  change run 64 _ _ 8 = _
  exact EuclideanDyadicRun.run_eq_iterate 64 _ _ (initial i) (all_seeds_valid i) 8

theorem endpoint_enclosure (i : Fin 64) :
    ‖IntervalMellinKernel.logPower (base i : ℝ) (QComplex.embed (sourceExponent center)) -
      QComplex.embed (output i).value‖ ≤ ((output i).error : ℝ) := by
  have h := RationalPowerEvaluation.compute_sound (base i : ℚ) (sourceExponent center)
    (schedule (base i)) (all_inputs i).1
  simpa only [endpoint_compute, Rat.cast_natCast] using h

/-- A position of the maintained 4096-term prefix, not a new enumeration. -/
def prefixIndex (i : Fin 64) : Fin prefixLength :=
  ⟨i.1 + 64, by have := i.isLt; change i.1 + 64 < 4096; omega⟩

theorem base_at_index (i : Fin 64) : (prefixIndex i).1 + 1 = base i := rfl

theorem rational_base_at_index (i : Fin 64) :
    ((prefixIndex i).1 : ℚ) + 1 = (base i : ℚ) := by
  rw [← Nat.cast_one, ← Nat.cast_add, base_at_index]

theorem schedule_at_index (i : Fin 64) : plan.prefix (prefixIndex i) = schedule (base i) := rfl

theorem mem_second_block (i : Fin prefixLength) :
    i ∈ ConcreteNewtonBlockAcceptance.blockIndices 1 ↔ 64 ≤ i.1 ∧ i.1 < 128 := by
  rw [ConcreteNewtonBlockAcceptance.block_interval]
  norm_num

theorem index_mem (j : Fin 64) : prefixIndex j ∈ ConcreteNewtonBlockAcceptance.blockIndices 1 := by
  apply (mem_second_block _).mpr
  have := j.isLt
  change 64 ≤ j.1 + 64 ∧ j.1 + 64 < 128
  omega

theorem index_cover (i : Fin prefixLength)
    (hi : i ∈ ConcreteNewtonBlockAcceptance.blockIndices 1) :
    ∃ j : Fin 64, prefixIndex j = i := by
  have h := (mem_second_block i).mp hi
  refine ⟨⟨i.1 - 64, by omega⟩, ?_⟩
  apply Fin.ext
  change i.1 - 64 + 64 = i.1
  omega

/-- Exact record identities cannot be replaced by equal lengths or sums. -/
theorem second_block_of_records (t : Transcript prefixLength)
    (hrecords : ∀ j : Fin 64, t.prefix (prefixIndex j) = output j) :
    checkPrefix prefixLength center plan t (ConcreteNewtonBlockAcceptance.blockIndices 1) = true := by
  apply (checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  obtain ⟨j, rfl⟩ := index_cover i hi
  simp only [rational_base_at_index, schedule_at_index]
  exact ⟨(all_inputs j).1, (endpoint_compute j).trans (hrecords j).symm⟩

/-- Fill ONLY positions 64..127; all other records and the terminal are untouched. -/
def fill (other : Fin prefixLength → State) (terminal : State) : Transcript prefixLength where
  prefix := fun i => if h : 64 ≤ i.1 ∧ i.1 < 128 then
      output ⟨i.1 - 64, by omega⟩ else other i
  terminal := terminal

theorem fill_record (other : Fin prefixLength → State) (terminal : State) (j : Fin 64) :
    (fill other terminal).prefix (prefixIndex j) = output j := by
  have h := (mem_second_block (prefixIndex j)).mp (index_mem j)
  simp only [fill, dif_pos h]
  congr 1
  apply Fin.ext
  simp [prefixIndex]

theorem second_block_check (other : Fin prefixLength → State) (terminal : State) :
    checkPrefix prefixLength center plan (fill other terminal)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  second_block_of_records (fill other terminal) (fill_record other terminal)

theorem fill_preserves_outside (other : Fin prefixLength → State) (terminal : State)
    (i : Fin prefixLength) (hi : ¬ (64 ≤ i.1 ∧ i.1 < 128)) :
    (fill other terminal).prefix i = other i := by
  simp only [fill, dif_neg hi]

end GRWTSK.RiemannHypothesis.ConcreteNewtonSecondBlock
```
