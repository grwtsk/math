/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenthBlockSeeds

set_option autoImplicit false

/-!
# All 64 endpoints of the original tenth block

Global index i+576 has integer base i+577. The inherited exact integer iterate
reconstructs all three fields of the original State. Exact external records
still require literal complete-state equality.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonTenthBlock

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript
open ConcreteNewtonTenthBlockData ConcreteNewtonTenthBlockSeeds

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

def prefixIndex (i : Fin 64) : Fin prefixLength :=
  ⟨i.1 + 576, by have := i.isLt; change i.1 + 576 < 4096; omega⟩

theorem base_at_index (i : Fin 64) : (prefixIndex i).1 + 1 = base i := rfl

theorem rational_base_at_index (i : Fin 64) :
    ((prefixIndex i).1 : ℚ) + 1 = (base i : ℚ) := by
  rw [← Nat.cast_one, ← Nat.cast_add, base_at_index]

theorem schedule_at_index (i : Fin 64) : plan.prefix (prefixIndex i) = schedule (base i) := rfl

theorem mem_tenth_block (i : Fin prefixLength) :
    i ∈ ConcreteNewtonBlockAcceptance.blockIndices 9 ↔ 576 ≤ i.1 ∧ i.1 < 640 := by
  rw [ConcreteNewtonBlockAcceptance.block_interval]
  norm_num

theorem index_mem (j : Fin 64) : prefixIndex j ∈ ConcreteNewtonBlockAcceptance.blockIndices 9 := by
  apply (mem_tenth_block _).mpr
  have := j.isLt
  change 576 ≤ j.1 + 576 ∧ j.1 + 576 < 640
  omega

theorem index_cover (i : Fin prefixLength)
    (hi : i ∈ ConcreteNewtonBlockAcceptance.blockIndices 9) :
    ∃ j : Fin 64, prefixIndex j = i := by
  have h := (mem_tenth_block i).mp hi
  refine ⟨⟨i.1 - 576, by omega⟩, ?_⟩
  apply Fin.ext
  change i.1 - 576 + 576 = i.1
  omega

theorem tenth_block_of_records (t : Transcript prefixLength)
    (hrecords : ∀ j : Fin 64, t.prefix (prefixIndex j) = output j) :
    checkPrefix prefixLength center plan t (ConcreteNewtonBlockAcceptance.blockIndices 9) = true := by
  apply (checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  obtain ⟨j, rfl⟩ := index_cover i hi
  simp only [rational_base_at_index, schedule_at_index]
  exact ⟨(all_inputs j).1, (endpoint_compute j).trans (hrecords j).symm⟩

def fill (other : Fin prefixLength → State) (terminal : State) : Transcript prefixLength where
  prefix := fun i => if h : 576 ≤ i.1 ∧ i.1 < 640 then
      output ⟨i.1 - 576, by omega⟩ else other i
  terminal := terminal

theorem fill_record (other : Fin prefixLength → State) (terminal : State) (j : Fin 64) :
    (fill other terminal).prefix (prefixIndex j) = output j := by
  have h := (mem_tenth_block (prefixIndex j)).mp (index_mem j)
  simp only [fill, dif_pos h]
  congr 1
  apply Fin.ext
  simp [prefixIndex]

theorem tenth_block_check (other : Fin prefixLength → State) (terminal : State) :
    checkPrefix prefixLength center plan (fill other terminal)
      (ConcreteNewtonBlockAcceptance.blockIndices 9) = true :=
  tenth_block_of_records (fill other terminal) (fill_record other terminal)

theorem fill_preserves_outside (other : Fin prefixLength → State) (terminal : State)
    (i : Fin prefixLength) (hi : ¬ (576 ≤ i.1 ∧ i.1 < 640)) :
    (fill other terminal).prefix i = other i := by
  simp only [fill, dif_neg hi]

end GRWTSK.RiemannHypothesis.ConcreteNewtonTenthBlock
