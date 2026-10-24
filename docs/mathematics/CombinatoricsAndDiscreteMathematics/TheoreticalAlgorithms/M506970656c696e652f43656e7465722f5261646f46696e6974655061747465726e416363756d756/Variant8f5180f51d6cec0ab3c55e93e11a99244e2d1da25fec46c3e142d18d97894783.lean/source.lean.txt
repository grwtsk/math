-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmptyPatternAccumulator.Variant835cab1725597685e3a5b77a6ea656ddaedddc84d82759c9af16a0d5bbd8ad36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"835cab1725597685e3a5b77a6ea656ddaedddc84d82759c9af16a0d5bbd8ad36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EmptyPatternAccumulator.Variant835cab1725597685e3a5b77a6ea656ddaedddc84d82759c9af16a0d5bbd8ad36","mathematical_subject":"Computation.DataStructures","original_sha256":"835cab1725597685e3a5b77a6ea656ddaedddc84d82759c9af16a0d5bbd8ad36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit1/Bit0/Bit0/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72436f706965732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=11111001|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorcopies|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorCopies.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72436f706965732e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmptyPatternAccumulator.Variant835cab1725597685e3a5b77a6ea656ddaedddc84d82759c9af16a0d5bbd8ad36

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternAccumulatorStep
open Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild
open Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection

/-!
Exact-length finite pattern-copy accumulators.

This module packages the accumulator build theorem into an empty-accumulator
corollary: for any finite number of steps, the bit-coded Rado witness API
produces a finite list of exactly that many fresh pattern-copy witnesses.  It
remains a finite list theorem and does not assert countable universality,
homogeneity, heatflow convergence, or spectral/modular authority.
-/

theorem empty_pattern_accumulator
    (x : Nat) (xs forbidden : List Nat) :
    PatternAccumulator x xs forbidden [] := by
  constructor
  · exact List.nodup_nil
  · intro y hy
    cases hy

theorem bitRado_fresh_pattern_copies_of_length
    (x : Nat) (xs forbidden : List Nat) (t : Nat) :
    ∃ acc : List Nat,
      PatternAccumulator x xs forbidden acc ∧
        acc.length = t := by
  obtain ⟨acc, hacc, _hincl, hlen⟩ :=
    bitRado_build_pattern_accumulator_by_steps
      x xs forbidden [] t
      (empty_pattern_accumulator x xs forbidden)
  exact ⟨acc, hacc, by simpa using hlen⟩

theorem bitRado_fresh_pattern_copies_extending_accumulator_of_length
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ acc' : List Nat,
      PatternAccumulator x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t := by
  exact
    bitRado_build_pattern_accumulator_by_steps
      x xs forbidden acc t hacc

theorem bitRado_fresh_pattern_copies_extending_accumulator_members_pair_bundle
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ acc' : List Nat,
      PatternAccumulator x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t ∧
            ∀ y : Nat, y ∈ acc' ->
              (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
                (¬ bitRadoEdge y x ∧
                  ∀ v : Nat, v ∈ xs ->
                    (bitRadoEdge y v ↔ bitRadoEdge x v)) := by
  obtain ⟨acc', hacc', hincl, hlen⟩ :=
    bitRado_fresh_pattern_copies_extending_accumulator_of_length
      x xs forbidden acc t hacc
  exact
    ⟨acc', hacc', hincl, hlen,
      fun y hy => pattern_accumulator_member_pair_bundle hacc' hy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies
