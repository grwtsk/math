# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756.Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54f53c830f15f62d9936a0e53de6dc0d887df3ec` · SHA-256 `e981702c50631cbd1d99a998f446529ae886f4c9cf3a1d1fd0bee0800bc4d045`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatternAccumulatorNodup.Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PatternAccumulatorNodup.Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e","mathematical_subject":"Computation.DataStructures","original_sha256":"9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit0/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e


/- source-tree-label: STL1|L|addr=11001100|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorprojection|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorProjection.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatternAccumulatorNodup.Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e

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
