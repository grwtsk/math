# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e.Variantfa57dfeefdb57c55296aae4546fbd68f2f267a929cf336c93aedc3ac1a941878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77ca564816edd97eca3d98baef4020571353cb61` · SHA-256 `b08b1ca4c2ffa472e292917b1f43684b8cde1e8c77d76790b86c7e88688ae5ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatternConnect.Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PatternConnect.Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/Bit0/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=10000110|role=proof_code_atom|slug=pipeline-center-radofinitepattern|owner=canonical_owner|core=Pipeline/Center/RadoFinitePattern.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatternConnect.Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePattern

open Think.Pipeline.Center.RadoExtension

/-!
Finite adjacency-pattern copying for the bit-coded Rado graph.

Given one vertex `x` and a finite list `xs`, this file proves there is a
fresh vertex `y` outside `xs` with exactly the same adjacency pattern as `x`
over `xs`.  The proof uses only the checked finite extension theorem.  It does
not assert countable universality, homogeneity, or any heatflow theorem.
-/

noncomputable def PatternConnect (x : Nat) (xs : List Nat) : List Nat := by
  classical
  exact xs.filter (fun v => decide (bitRadoEdge x v))

noncomputable def PatternAvoid (x : Nat) (xs : List Nat) : List Nat := by
  classical
  exact xs.filter (fun v => decide (¬ bitRadoEdge x v))

theorem mem_patternConnect
    {x v : Nat} {xs : List Nat}
    (hv : v ∈ xs) (h : bitRadoEdge x v) :
    v ∈ PatternConnect x xs := by
  classical
  simp [PatternConnect, hv, h]

theorem mem_patternAvoid
    {x v : Nat} {xs : List Nat}
    (hv : v ∈ xs) (h : ¬ bitRadoEdge x v) :
    v ∈ PatternAvoid x xs := by
  classical
  simp [PatternAvoid, hv, h]

theorem patternConnect_member_edge
    {x v : Nat} {xs : List Nat}
    (hv : v ∈ PatternConnect x xs) :
    bitRadoEdge x v := by
  classical
  have h := List.mem_filter.1 hv
  exact of_decide_eq_true h.2

theorem patternAvoid_member_not_edge
    {x v : Nat} {xs : List Nat}
    (hv : v ∈ PatternAvoid x xs) :
    ¬ bitRadoEdge x v := by
  classical
  have h := List.mem_filter.1 hv
  exact of_decide_eq_true h.2

theorem patternConnect_patternAvoid_disjoint
    (x : Nat) (xs : List Nat) :
    DisjointNatLists (PatternConnect x xs) (PatternAvoid x xs) := by
  intro v hvConnect hvAvoid
  exact patternAvoid_member_not_edge hvAvoid (patternConnect_member_edge hvConnect)

theorem old_mem_connect_or_avoid
    (x v : Nat) (xs : List Nat)
    (hv : v ∈ xs) :
    v ∈ PatternConnect x xs ∨ v ∈ PatternAvoid x xs := by
  by_cases h : bitRadoEdge x v
  · exact Or.inl (mem_patternConnect hv h)
  · exact Or.inr (mem_patternAvoid hv h)

theorem bitRado_copy_finite_pattern_over_list
    (x : Nat) (xs : List Nat) :
    ∃ y : Nat,
      y ∉ xs ∧
        ∀ v : Nat, v ∈ xs ->
          (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  let U := PatternConnect x xs
  let V := PatternAvoid x xs
  have hdisj : DisjointNatLists U V :=
    patternConnect_patternAvoid_disjoint x xs
  obtain ⟨y, hyU, hyV, hU, hV⟩ := bitRado_finite_extension U V hdisj
  refine ⟨y, ?_, ?_⟩
  · intro hyxs
    rcases old_mem_connect_or_avoid x y xs hyxs with hyConnect | hyAvoid
    · exact hyU hyConnect
    · exact hyV hyAvoid
  · intro v hvxs
    constructor
    · intro hyv
      by_cases hxv : bitRadoEdge x v
      · exact hxv
      · have hvAvoid : v ∈ V := mem_patternAvoid hvxs hxv
        exact False.elim (hV v hvAvoid hyv)
    · intro hxv
      have hvConnect : v ∈ U := mem_patternConnect hvxs hxv
      exact hU v hvConnect

end Think.Pipeline.Center.RadoFinitePattern
```
