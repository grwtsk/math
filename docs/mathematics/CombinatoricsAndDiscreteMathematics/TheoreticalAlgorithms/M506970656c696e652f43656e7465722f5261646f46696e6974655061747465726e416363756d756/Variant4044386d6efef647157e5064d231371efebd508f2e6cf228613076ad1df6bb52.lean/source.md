# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756.Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87edcebd020896891f31ae7bde686095161bad38` · SHA-256 `4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e


/- source-tree-label: STL1|L|addr=0001101|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulator|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulator.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulator

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternAvoiding

/-!
Accumulator form of finite Rado pattern copying.

This is an induction-ready repackaging of the extra-forbidden-list theorem.  It
keeps separate the already-used accumulator vertices from a second forbidden
list, while remaining a finite witness theorem only.
-/

theorem bitRado_fresh_copy_avoiding_accumulator
    (x : Nat) (xs acc forbidden : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ acc ∧
            y ∉ forbidden ∧
              ¬ bitRadoEdge y x ∧
                ∀ v : Nat, v ∈ xs ->
                  (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  obtain ⟨y, hyx, hyxs, hyForbiddenAppend, hynonadj, hycopy⟩ :=
    bitRado_copy_finite_pattern_avoiding_extra_list x xs (acc ++ forbidden)
  exact
    ⟨y, hyx, hyxs,
      not_mem_left_of_not_mem_append hyForbiddenAppend,
      not_mem_right_of_not_mem_append hyForbiddenAppend,
      hynonadj, hycopy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulator
```
