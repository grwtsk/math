# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756.Variantf344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4cc7d27598843a88cdd70f1562a66d90cad0ef7` · SHA-256 `f344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e


/- source-tree-label: STL1|L|addr=1000001|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorbuild|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorBuild.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild

open Think.Pipeline.Center.RadoFinitePatternAccumulatorStep

/-!
Finite construction of pattern-copy accumulators.

This module iterates the one-step accumulator theorem for a finite `Nat` number
of steps.  It remains a finite list construction and does not assert countable
universality, homogeneity, or any analytic heatflow/spectral result.
-/

theorem bitRado_build_pattern_accumulator_by_steps
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ acc' : List Nat,
      PatternAccumulator x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t := by
  induction t with
  | zero =>
      exact ⟨acc, hacc, (by intro y hy; exact hy), by simp⟩
  | succ t ih =>
      obtain ⟨accMid, hmid, hincl, hlen⟩ := ih
      obtain ⟨y, _hyfresh, hnext⟩ :=
        bitRado_extend_pattern_accumulator_step x xs forbidden accMid hmid
      refine ⟨y :: accMid, hnext, ?_, ?_⟩
      · intro z hz
        exact List.mem_cons.2 (Or.inr (hincl z hz))
      · simp [hlen, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

end Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild
```
