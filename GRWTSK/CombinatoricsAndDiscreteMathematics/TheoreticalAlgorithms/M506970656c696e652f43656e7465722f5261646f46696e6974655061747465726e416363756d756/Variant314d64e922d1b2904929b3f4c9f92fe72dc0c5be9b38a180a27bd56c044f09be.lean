-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatternAccumulator.Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PatternAccumulator.Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b","mathematical_subject":"Computation.DataStructures","original_sha256":"63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit0/Bit0/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e


/- source-tree-label: STL1|L|addr=100001011|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorstep|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorStep.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatternAccumulator.Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b

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
