# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756.Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7813c29ce2bbed151e329bd9c329386495a2fcf` · SHA-256 `9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e


/- source-tree-label: STL1|L|addr=11001100|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorprojection|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorProjection.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternAccumulatorStep

/-!
Projection lemmas for finite pattern-copy accumulators.

This module exposes the witness properties already stored in
`PatternAccumulator`.  It adds no new existence theorem and imports no external
authority; it is a finite/list-local convenience theorem for later checked
witness plumbing.
-/

theorem pattern_accumulator_nodup
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc) :
    acc.Nodup := by
  exact hacc.1

theorem pattern_accumulator_member_properties
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧
      y ∉ xs ∧
        y ∉ forbidden ∧
          ¬ bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  exact hacc.2 y hy

theorem pattern_accumulator_member_not_source
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x := by
  exact (pattern_accumulator_member_properties hacc hy).1

theorem pattern_accumulator_member_avoids_xs
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ∉ xs := by
  exact (pattern_accumulator_member_properties hacc hy).2.1

theorem pattern_accumulator_member_avoids_forbidden
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ∉ forbidden := by
  exact (pattern_accumulator_member_properties hacc hy).2.2.1

theorem pattern_accumulator_member_nonadjacent_source
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ¬ bitRadoEdge y x := by
  exact (pattern_accumulator_member_properties hacc hy).2.2.2.1

theorem pattern_accumulator_member_copies_pattern
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ∀ v : Nat, v ∈ xs ->
      (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  exact (pattern_accumulator_member_properties hacc hy).2.2.2.2

theorem pattern_accumulator_member_core_bundle
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧
      y ∉ xs ∧
        y ∉ forbidden ∧
          ¬ bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  exact
    ⟨pattern_accumulator_member_not_source hacc hy,
      pattern_accumulator_member_avoids_xs hacc hy,
      pattern_accumulator_member_avoids_forbidden hacc hy,
      pattern_accumulator_member_nonadjacent_source hacc hy,
      pattern_accumulator_member_copies_pattern hacc hy⟩

theorem pattern_accumulator_member_avoidance_bundle
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden := by
  exact
    ⟨pattern_accumulator_member_not_source hacc hy,
      pattern_accumulator_member_avoids_xs hacc hy,
      pattern_accumulator_member_avoids_forbidden hacc hy⟩

theorem pattern_accumulator_member_edge_bundle
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ¬ bitRadoEdge y x ∧
      ∀ v : Nat, v ∈ xs ->
        (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  exact
    ⟨pattern_accumulator_member_nonadjacent_source hacc hy,
      pattern_accumulator_member_copies_pattern hacc hy⟩

theorem pattern_accumulator_member_pair_bundle
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
      (¬ bitRadoEdge y x ∧
        ∀ v : Nat, v ∈ xs ->
          (bitRadoEdge y v ↔ bitRadoEdge x v)) := by
  exact
    ⟨pattern_accumulator_member_avoidance_bundle hacc hy,
      pattern_accumulator_member_edge_bundle hacc hy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection
```
