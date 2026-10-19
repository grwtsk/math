import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e


/- source-tree-label: STL1|L|addr=100001011|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorstep|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorStep.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulatorStep

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternAccumulator

/-!
One-step extension for finite Rado pattern-copy accumulators.

This file introduces a list-based accumulator predicate and proves that it can
be extended by one fresh finite witness.  It is a finite API lemma only; it does
not assert finite homogeneity, countable universality, or any analytic
heatflow/spectral theorem.
-/

def PatternAccumulator
    (x : Nat) (xs forbidden acc : List Nat) : Prop :=
  acc.Nodup ∧
    ∀ y : Nat, y ∈ acc ->
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ forbidden ∧
            ¬ bitRadoEdge y x ∧
              ∀ v : Nat, v ∈ xs ->
                (bitRadoEdge y v ↔ bitRadoEdge x v)

theorem bitRado_extend_pattern_accumulator_step
    (x : Nat) (xs forbidden acc : List Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ y : Nat,
      y ∉ acc ∧
        PatternAccumulator x xs forbidden (y :: acc) := by
  obtain ⟨y, hyx, hyxs, hyacc, hyforbidden, hynonadj, hycopy⟩ :=
    bitRado_fresh_copy_avoiding_accumulator x xs acc forbidden
  refine ⟨y, hyacc, ?_⟩
  constructor
  · exact List.nodup_cons.mpr ⟨hyacc, hacc.1⟩
  · intro z hz
    rcases List.mem_cons.mp hz with hzy | hzacc
    · subst z
      exact ⟨hyx, hyxs, hyforbidden, hynonadj, hycopy⟩
    · exact hacc.2 z hzacc

end Think.Pipeline.Center.RadoFinitePatternAccumulatorStep
