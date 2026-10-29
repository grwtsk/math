-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitRadoFreshCopyAvoidingAccumulator.Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BitRadoFreshCopyAvoidingAccumulator.Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52","mathematical_subject":"Computation.DataStructures","original_sha256":"4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e


/- source-tree-label: STL1|L|addr=0001101|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulator|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulator.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitRadoFreshCopyAvoidingAccumulator.Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52

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
