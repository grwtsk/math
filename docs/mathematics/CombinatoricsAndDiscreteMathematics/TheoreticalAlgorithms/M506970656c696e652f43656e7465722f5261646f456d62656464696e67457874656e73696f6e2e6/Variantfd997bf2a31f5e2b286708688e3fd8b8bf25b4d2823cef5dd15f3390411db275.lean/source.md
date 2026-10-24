# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6.Variantfd997bf2a31f5e2b286708688e3fd8b8bf25b4d2823cef5dd15f3390411db275

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dae22b8cf8700e52575de90943044c4f810e42e` · SHA-256 `b5c62c8ea355e9ae4104f42876fcc4b829873a95ea3ecc251ae609939f42a1cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmbedsPrefix.Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EmbedsPrefix.Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76","mathematical_subject":"Computation.DataStructures","original_sha256":"ccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e


/- source-tree-label: STL1|L|addr=1100111010|role=proof_code_atom|slug=pipeline-center-radoembeddingextension|owner=canonical_owner|core=Pipeline/Center/RadoEmbeddingExtension.lean|leaf=M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmbedsPrefix.Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoEmbeddingExtension

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFiniteEmbedding

/-!
One-step extension of a finite induced embedding into the bit-coded Rado graph.

This is the local induction step between the checked finite-extension theorem
and the checked finite induced-subgraph embedding theorem.  It remains finite:
the theorem extends an embedding of the first `m` vertices by one new vertex,
using only the explicit bit-coded witness construction.
-/

def EmbedsPrefix
    (G : FiniteBoolGraph) (m : Nat) (f : Nat -> Nat) : Prop :=
  InjectiveOnPrefix m f ∧ PreservesOrderedEdgesUpTo G m f

def NewVertexConnectList
    (G : FiniteBoolGraph) (m : Nat) (f : Nat -> Nat) : List Nat :=
  yesNeighbors G f m

def NewVertexAvoidList
    (G : FiniteBoolGraph) (m : Nat) (f : Nat -> Nat) : List Nat :=
  noNeighbors G f m

theorem fresh_not_old_images
    {G : FiniteBoolGraph} {m z : Nat} {f : Nat -> Nat}
    (hzU : z ∉ NewVertexConnectList G m f)
    (hzV : z ∉ NewVertexAvoidList G m f) :
    z ∉ List.map f (List.range m) := by
  intro hzold
  obtain ⟨i, hirange, hfi⟩ := List.mem_map.1 hzold
  have hi : i < m := List.mem_range.1 hirange
  by_cases hgi : G.edge m i = true
  · have hmem : f i ∈ NewVertexConnectList G m f :=
      mem_yesNeighbors hi hgi
    exact hzU (by rwa [hfi] at hmem)
  · have hfalse : G.edge m i = false :=
      bool_eq_false_of_ne_true hgi
    have hmem : f i ∈ NewVertexAvoidList G m f :=
      mem_noNeighbors hi hfalse
    exact hzV (by rwa [hfi] at hmem)

theorem extend_injective
    {G : FiniteBoolGraph} {m z : Nat} {f : Nat -> Nat}
    (hfinj : InjectiveOnPrefix m f)
    (hzU : z ∉ NewVertexConnectList G m f)
    (hzV : z ∉ NewVertexAvoidList G m f) :
    InjectiveOnPrefix (m + 1) (extend f m z) := by
  let U := NewVertexConnectList G m f
  let V := NewVertexAvoidList G m f
  intro i j hi hj heq
  by_cases hik : i = m
  · subst i
    by_cases hjk : j = m
    · exact hjk.symm
    · have hjlt : j < m := lt_of_lt_succ_ne hj hjk
      have hgj :
          G.edge m j = true ∨ G.edge m j = false := by
        cases G.edge m j <;> simp
      rcases hgj with hgj | hgj
      · have hmem : f j ∈ U := mem_yesNeighbors hjlt hgj
        have hzneq : z ≠ f j := by
          intro hz
          exact hzU (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z j = f j := by simp [extend, hjk]
        rw [hnew, hold] at heq
        exact False.elim (hzneq heq)
      · have hmem : f j ∈ V := mem_noNeighbors hjlt hgj
        have hzneq : z ≠ f j := by
          intro hz
          exact hzV (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z j = f j := by simp [extend, hjk]
        rw [hnew, hold] at heq
        exact False.elim (hzneq heq)
  · by_cases hjk : j = m
    · subst j
      have hilt : i < m := lt_of_lt_succ_ne hi hik
      have hgi :
          G.edge m i = true ∨ G.edge m i = false := by
        cases G.edge m i <;> simp
      rcases hgi with hgi | hgi
      · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
        have hzneq : z ≠ f i := by
          intro hz
          exact hzU (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z i = f i := by simp [extend, hik]
        rw [hold, hnew] at heq
        exact False.elim (hzneq heq.symm)
      · have hmem : f i ∈ V := mem_noNeighbors hilt hgi
        have hzneq : z ≠ f i := by
          intro hz
          exact hzV (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z i = f i := by simp [extend, hik]
        rw [hold, hnew] at heq
        exact False.elim (hzneq heq.symm)
    · have hilt : i < m := lt_of_lt_succ_ne hi hik
      have hjlt : j < m := lt_of_lt_succ_ne hj hjk
      have holdi : extend f m z i = f i := by simp [extend, hik]
      have holdj : extend f m z j = f j := by simp [extend, hjk]
      apply hfinj i j hilt hjlt
      rwa [holdi, holdj] at heq

theorem extend_preserves_ordered
    {G : FiniteBoolGraph} {m z : Nat} {f : Nat -> Nat}
    (hfpres : PreservesOrderedEdgesUpTo G m f)
    (hU : ∀ u : Nat, u ∈ NewVertexConnectList G m f -> bitRadoEdge z u)
    (hV : ∀ v : Nat, v ∈ NewVertexAvoidList G m f -> ¬ bitRadoEdge z v) :
    PreservesOrderedEdgesUpTo G (m + 1) (extend f m z) := by
  let U := NewVertexConnectList G m f
  let V := NewVertexAvoidList G m f
  intro i j hij hj
  by_cases hjm : j = m
  · subst j
    have him : i ≠ m := by
      intro h
      subst i
      exact Nat.lt_irrefl m hij
    have hilt : i < m := lt_of_lt_succ_ne (Nat.lt_trans hij hj) him
    have hnew : extend f m z m = z := by simp [extend]
    have hold : extend f m z i = f i := by simp [extend, him]
    by_cases hgi : G.edge m i = true
    · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
      have hedge : bitRadoEdge z (f i) := hU (f i) hmem
      rw [hnew, hold]
      constructor
      · intro _; exact hgi
      · intro _; exact hedge
    · have hgfalse : G.edge m i = false :=
        bool_eq_false_of_ne_true hgi
      have hmem : f i ∈ V := mem_noNeighbors hilt hgfalse
      have hnot : ¬ bitRadoEdge z (f i) := hV (f i) hmem
      rw [hnew, hold, hgfalse]
      constructor
      · intro hedge; exact False.elim (hnot hedge)
      · intro htrue; cases htrue
  · have hjlt : j < m := lt_of_lt_succ_ne hj hjm
    have him : i ≠ m := by
      intro h
      subst i
      exact Nat.lt_asymm hij hjlt
    have hilt : i < m := lt_of_lt_succ_ne (Nat.lt_trans hij hj) him
    have holdi : extend f m z i = f i := by simp [extend, him]
    have holdj : extend f m z j = f j := by simp [extend, hjm]
    rw [holdj, holdi]
    exact hfpres i j hij hjlt

theorem bitRado_extend_finite_induced_embedding
    (G : FiniteBoolGraph)
    (m : Nat)
    (_hm : m < G.n)
    (f : Nat -> Nat)
    (hemb : EmbedsPrefix G m f) :
    ∃ z : Nat,
      z ∉ List.map f (List.range m) ∧
        EmbedsPrefix G (m + 1) (extend f m z) := by
  let U := NewVertexConnectList G m f
  let V := NewVertexAvoidList G m f
  have hdisj : DisjointNatLists U V := yes_no_disjoint hemb.1
  obtain ⟨z, hzU, hzV, hU, hV⟩ :=
    bitRado_finite_extension U V hdisj
  refine ⟨z, ?_, ?_⟩
  · exact fresh_not_old_images hzU hzV
  · exact
      ⟨extend_injective hemb.1 hzU hzV,
        extend_preserves_ordered hemb.2 hU hV⟩

theorem bitRado_extend_finite_induced_embedding_inline
    (G : FiniteBoolGraph)
    (m : Nat)
    (hm : m < G.n)
    (f : Nat -> Nat)
    (hemb : EmbedsPrefix G m f) :
    ∃ z : Nat,
      z ∉ List.map f (List.range m) ∧
        EmbedsPrefix G (m + 1) (fun i => if i = m then z else f i) := by
  exact bitRado_extend_finite_induced_embedding G m hm f hemb

end Think.Pipeline.Center.RadoEmbeddingExtension
```
