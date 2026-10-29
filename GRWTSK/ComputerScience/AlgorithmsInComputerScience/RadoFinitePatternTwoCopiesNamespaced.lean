-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NeOfNotMemSingletonCons.Variante3077ee947ad28783d48888718885088d9a08d3c71b85b93e0c380cfd024d820","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3077ee947ad28783d48888718885088d9a08d3c71b85b93e0c380cfd024d820","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NeOfNotMemSingletonCons.Variante3077ee947ad28783d48888718885088d9a08d3c71b85b93e0c380cfd024d820","mathematical_subject":"Computation.DataStructures","original_sha256":"e3077ee947ad28783d48888718885088d9a08d3c71b85b93e0c380cfd024d820","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e54776f436f706965732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e


/- source-tree-label: STL1|L|addr=0011011|role=proof_code_atom|slug=pipeline-center-radofinitepatterntwocopies|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternTwoCopies.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e54776f436f706965732e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NeOfNotMemSingletonCons.Variante3077ee947ad28783d48888718885088d9a08d3c71b85b93e0c380cfd024d820

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternTwoCopies

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternAvoiding

/-!
Two fresh finite pattern copies for the bit-coded Rado graph.

This is a finite witness corollary of the extra-forbidden-list pattern theorem.
It provides two distinct witnesses realizing the same finite pattern over `xs`,
while avoiding an explicit finite forbidden list.  It does not assert finite or
countable homogeneity, countable universality, or any heatflow/spectral result.
-/

theorem ne_of_not_mem_singleton_cons
    {z y : Nat} {forbidden : List Nat}
    (h : z ∉ y :: forbidden) :
    z ≠ y := by
  intro hzy
  exact h (List.mem_cons.2 (Or.inl hzy))

theorem not_mem_tail_of_not_mem_cons
    {z y : Nat} {forbidden : List Nat}
    (h : z ∉ y :: forbidden) :
    z ∉ forbidden := by
  intro hz
  exact h (List.mem_cons.2 (Or.inr hz))

theorem bitRado_two_fresh_copies_of_finite_pattern
    (x : Nat) (xs forbidden : List Nat) :
    ∃ y z : Nat,
      y ≠ x ∧
        z ≠ x ∧
          y ≠ z ∧
            y ∉ xs ∧
              z ∉ xs ∧
                y ∉ forbidden ∧
                  z ∉ forbidden ∧
                    ¬ bitRadoEdge y x ∧
                      ¬ bitRadoEdge z x ∧
                        (∀ v : Nat, v ∈ xs ->
                          (bitRadoEdge y v ↔ bitRadoEdge x v)) ∧
                        (∀ v : Nat, v ∈ xs ->
                          (bitRadoEdge z v ↔ bitRadoEdge x v)) := by
  obtain ⟨y, hyx, hyxs, hyForbidden, hynonadj, hycopy⟩ :=
    bitRado_copy_finite_pattern_avoiding_extra_list x xs forbidden
  obtain ⟨z, hzx, hzxs, hzForbiddenCons, hznonadj, hzcopy⟩ :=
    bitRado_copy_finite_pattern_avoiding_extra_list x xs (y :: forbidden)
  have hzy : z ≠ y := ne_of_not_mem_singleton_cons hzForbiddenCons
  have hyz : y ≠ z := by
    intro hyzEq
    exact hzy hyzEq.symm
  have hzForbidden : z ∉ forbidden :=
    not_mem_tail_of_not_mem_cons hzForbiddenCons
  exact
    ⟨y, z, hyx, hzx, hyz, hyxs, hzxs, hyForbidden, hzForbidden,
      hynonadj, hznonadj, hycopy, hzcopy⟩

end Think.Pipeline.Center.RadoFinitePatternTwoCopies
