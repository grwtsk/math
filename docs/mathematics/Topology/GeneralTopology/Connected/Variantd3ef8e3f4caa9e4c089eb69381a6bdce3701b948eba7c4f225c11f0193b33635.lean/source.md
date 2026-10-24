# Complete source: GRWTSK.Topology.GeneralTopology.Connected.Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b895ff9aba56724c9103fb2f5fa4210cef4863fb` · SHA-256 `d1fb301ebf61a6c58eb818ae510be5a00c8dbd6a044981246cac41384cd5a635`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PreconnectedSpaceTrivialOfDiscrete.Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PreconnectedSpaceTrivialOfDiscrete.Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Separation/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.Separation.Basic
import Mathlib.Topology.Connected.TotallyDisconnected

/-!
# Interaction of separation properties with connectedness properties
-/


namespace GRWTSK.Topology.GeneralTopology.PreconnectedSpaceTrivialOfDiscrete.Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45

variable {X : Type*} [TopologicalSpace X]

open Filter Set
open scoped Topology

-- see Note [lower instance priority]
instance (priority := 100) TotallyDisconnectedSpace.t1Space [h : TotallyDisconnectedSpace X] :
    T1Space X := by
  rw [((t1Space_TFAE X).out 0 1 :)]
  intro x
  rw [← totallyDisconnectedSpace_iff_connectedComponent_singleton.mp h x]
  exact isClosed_connectedComponent

theorem PreconnectedSpace.trivial_of_discrete [PreconnectedSpace X] [DiscreteTopology X] :
    Subsingleton X := by
  rw [← not_nontrivial_iff_subsingleton]
  rintro ⟨x, y, hxy⟩
  rw [Ne, ← mem_singleton_iff, (isClopen_discrete _).eq_univ <| singleton_nonempty y] at hxy
  exact hxy (mem_univ x)

theorem IsPreconnected.infinite_of_nontrivial [T1Space X] {s : Set X} (h : IsPreconnected s)
    (hs : s.Nontrivial) : s.Infinite := by
  refine mt (fun hf => (subsingleton_coe s).mp ?_) (not_subsingleton_iff.mpr hs)
  haveI := @Finite.instDiscreteTopology s _ _ hf.to_subtype
  exact @PreconnectedSpace.trivial_of_discrete _ _ (Subtype.preconnectedSpace h) _

theorem PreconnectedSpace.infinite [PreconnectedSpace X] [Nontrivial X] [T1Space X] : Infinite X :=
  infinite_univ_iff.mp <| isPreconnected_univ.infinite_of_nontrivial nontrivial_univ

@[deprecated (since := "2025-03-21")]
alias ConnectedSpace.infinite := PreconnectedSpace.infinite

/-- A non-trivial connected T1 space has no isolated points. -/
instance (priority := 100) ConnectedSpace.neBot_nhdsWithin_compl_of_nontrivial_of_t1space
    [ConnectedSpace X] [Nontrivial X] [T1Space X] (x : X) :
    NeBot (𝓝[≠] x) := by
  by_contra contra
  rw [not_neBot, ← isOpen_singleton_iff_punctured_nhds] at contra
  replace contra := nonempty_inter isOpen_compl_singleton
    contra (compl_union_self _) (Set.nonempty_compl_of_nontrivial _) (singleton_nonempty _)
  simp [compl_inter_self {x}] at contra

```
