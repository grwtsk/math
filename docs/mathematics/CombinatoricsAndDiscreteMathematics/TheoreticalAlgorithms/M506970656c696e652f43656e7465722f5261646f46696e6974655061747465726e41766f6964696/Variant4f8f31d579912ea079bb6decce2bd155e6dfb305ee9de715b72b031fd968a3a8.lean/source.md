# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696.Variant4f8f31d579912ea079bb6decce2bd155e6dfb305ee9de715b72b031fd968a3a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a43ce505f19afaa75c5f6a1627c259617fca86f` · SHA-256 `9fb2bb6251e6596b32842bd1c6048251bfa9475113df327bf9b52e43cefee2e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotMemLeftOfNotMemAppend.Variant597a9551420e7196e048a0a495099aec5c1caa1c67223ccb4662f2142467fecd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"597a9551420e7196e048a0a495099aec5c1caa1c67223ccb4662f2142467fecd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NotMemLeftOfNotMemAppend.Variant597a9551420e7196e048a0a495099aec5c1caa1c67223ccb4662f2142467fecd","mathematical_subject":"Computation.DataStructures","original_sha256":"597a9551420e7196e048a0a495099aec5c1caa1c67223ccb4662f2142467fecd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e46726573682e6c65616e


/- source-tree-label: STL1|L|addr=001011101|role=proof_code_atom|slug=pipeline-center-radofinitepatternavoiding|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAvoiding.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotMemLeftOfNotMemAppend.Variant597a9551420e7196e048a0a495099aec5c1caa1c67223ccb4662f2142467fecd

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAvoiding

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFinitePatternFresh

/-!
Finite pattern copying with an additional forbidden list.

This file is only a list-level strengthening of the fresh finite pattern-copy
theorem.  It does not assert countable universality, homogeneity, heatflow
convergence, or any spectral/modular authority.
-/

theorem not_mem_left_of_not_mem_append
    {y : Nat} {xs forbidden : List Nat}
    (h : y ∉ xs ++ forbidden) :
    y ∉ xs := by
  intro hy
  exact h (List.mem_append.2 (Or.inl hy))

theorem not_mem_right_of_not_mem_append
    {y : Nat} {xs forbidden : List Nat}
    (h : y ∉ xs ++ forbidden) :
    y ∉ forbidden := by
  intro hy
  exact h (List.mem_append.2 (Or.inr hy))

theorem bitRado_copy_finite_pattern_avoiding_extra_list
    (x : Nat) (xs forbidden : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ forbidden ∧
            ¬ bitRadoEdge y x ∧
              ∀ v : Nat, v ∈ xs ->
                (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  obtain ⟨y, hyx, hyfresh, hnonadj, hcopy⟩ :=
    bitRado_copy_finite_pattern_avoiding_self_and_list x (xs ++ forbidden)
  refine
    ⟨y, hyx, not_mem_left_of_not_mem_append hyfresh,
      not_mem_right_of_not_mem_append hyfresh, hnonadj, ?_⟩
  intro v hv
  exact hcopy v (List.mem_append.2 (Or.inl hv))

end Think.Pipeline.Center.RadoFinitePatternAvoiding
```
