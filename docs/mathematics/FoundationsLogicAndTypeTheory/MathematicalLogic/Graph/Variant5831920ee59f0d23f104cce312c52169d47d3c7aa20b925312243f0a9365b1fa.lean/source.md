# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Graph.Variant5831920ee59f0d23f104cce312c52169d47d3c7aa20b925312243f0a9365b1fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e162091f4021a4d84f76d38a6e81469ccbf9d6c9` · SHA-256 `5de1c97b34d3908b09f26b2c4dd6c5cdad619fc4c5f0e4583d7b67bf37223639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CWComplexOneSkeletonGraph.Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CWComplexOneSkeletonGraph.Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc","mathematical_subject":"Logic.Foundations","original_sha256":"84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/CWComplex/Classical/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jun Kwon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jun Kwon
-/
module

public import Mathlib.Combinatorics.Graph.Basic
public import Mathlib.Topology.CWComplex.Classical.Basic

/-!
# 1-skeletons of CW complexes as graphs

In this file we define the 1-skeleton of a CW complex as a graph.

## Main definitions
* `CWComplex.OneSkeletonGraph`: the 1-skeleton of a CW complex as a graph.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CWComplexOneSkeletonGraph.Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc

public section

open Set Graph

namespace Topology

variable {X : Type*} [TopologicalSpace X]

/-- The 1-skeleton of a CW complex as a graph. -/
@[expose, simps]
def CWComplex.OneSkeletonGraph (C : Set X) [CWComplex C] : Graph (cell C 0) (cell C 1) where
  vertexSet := univ
  edgeSet := univ
  IsLink e x y := cellFrontier 1 e = closedCell 0 x ∪ closedCell 0 y
  isLink_symm := by grind [symm_def]
  eq_or_eq_of_isLink_of_isLink e x y z w h1 h2 := by
    simp_rw [closedCell_zero_eq_singleton] at h1 h2
    rw [h1] at h2
    simp only [(RelCWComplex.injective_map_zero C).eq_iff, union_singleton, pair_eq_pair_iff] at h2
    tauto
  left_mem_of_isLink _ _ _ _ := mem_univ _
  edge_mem_iff_exists_isLink e := by
    simp only [mem_univ, true_iff]
    exact exists_cellFrontier_one_eq e

namespace CWComplex.OneSkeletonGraph

variable {C : Set X} [CWComplex C]

lemma isLink_iff_pair (e : cell C 1) (x y : cell C 0) :
    (OneSkeletonGraph C).IsLink e x y ↔ cellFrontier 1 e = {map 0 x ![], map 0 y ![]} := by
  rw [OneSkeletonGraph_isLink, closedCell_zero_eq_singleton, closedCell_zero_eq_singleton,
    singleton_union]

lemma exists_isLoopAt_iff (e : cell C 1) : (∃ x : cell C 0, (OneSkeletonGraph C).IsLoopAt e x) ↔
      ∃ x : cell C 0, cellFrontier 1 e = closedCell 0 x := by
  refine exists_congr fun x ↦ ?_
  change cellFrontier 1 e = closedCell 0 x ∪ closedCell 0 x ↔ _
  rw [union_self]

lemma exists_isLoopAt_iff_subsingleton (e : cell C 1) :
    (∃ x : cell C 0, (OneSkeletonGraph C).IsLoopAt e x) ↔ (cellFrontier 1 e).Subsingleton := by
  rw [exists_isLoopAt_iff]
  refine ⟨fun ⟨x, hx⟩ => by simp [closedCell_zero_eq_singleton, hx], fun h => ?_⟩
  obtain ⟨x, y, hxy⟩ := exists_cellFrontier_one_eq e
  simp only [closedCell_zero_eq_singleton, union_singleton] at hxy
  obtain rfl : x = y := RelCWComplex.injective_map_zero C <| (hxy ▸ h) (by simp) (by simp)
  exact ⟨x, by simp [hxy, closedCell_zero_eq_singleton]⟩

lemma not_exists_isLoopAt_iff_nontrivial (e : cell C 1) :
    ¬(∃ x : cell C 0, (OneSkeletonGraph C).IsLoopAt e x) ↔ (cellFrontier 1 e).Nontrivial :=
  (exists_isLoopAt_iff_subsingleton e).not.trans not_subsingleton_iff

@[simp]
lemma adj_iff (x y : cell C 0) : (OneSkeletonGraph C).Adj x y ↔
    ∃ e : cell C 1, cellFrontier 1 e = closedCell 0 x ∪ closedCell 0 y := Iff.rfl

end CWComplex.OneSkeletonGraph

end Topology
```
