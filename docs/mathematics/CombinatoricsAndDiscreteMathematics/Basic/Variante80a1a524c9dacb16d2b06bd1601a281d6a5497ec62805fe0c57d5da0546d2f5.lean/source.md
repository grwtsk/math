# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5622ed0df2150431c5b093b29b481e6fd7e4a845` · SHA-256 `b229c4b8fe8ebb2c2cfa1ab3875d8fada8f5fa52bdc1ad8be1d5b37a8009406e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FarFromTriangleFree.Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FarFromTriangleFree.Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Combinatorics/SimpleGraph/Triangle/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Tactic.GCongr


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FarFromTriangleFree.Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7

#align_import combinatorics.simple_graph.triangle.basic from "leanprover-community/mathlib"@"cd7f0626a0b04be1dda223a26123313514a55fb4"

/-!
# Triangles in graphs

A *triangle* in a simple graph is a `3`-clique, namely a set of three vertices that are
pairwise adjacent.

This module defines and proves properties about triangles in simple graphs.

## Main declarations

* `SimpleGraph.FarFromTriangleFree`: Predicate for a graph such that one must remove a lot of edges
  from it for it to become triangle-free. This is the crux of the Triangle Removal Lemma.

## TODO

* Generalise `farFromTriangleFree` to other graphs, to state and prove the Graph Removal Lemma.
-/


open Finset Fintype Nat

open Classical

namespace SimpleGraph

variable {α 𝕜 : Type*} [Fintype α] [LinearOrderedField 𝕜] {G H : SimpleGraph α} {ε δ : 𝕜} {n : ℕ}
  {s : Finset α}

/-- A simple graph is *`ε`-far from triangle-free* if one must remove at least
`ε * (card α) ^ 2` edges to make it triangle-free. -/
def FarFromTriangleFree (G : SimpleGraph α) (ε : 𝕜) : Prop :=
  (G.DeleteFar fun H => H.CliqueFree 3) <| ε * (card α ^ 2 : ℕ)
#align simple_graph.far_from_triangle_free SimpleGraph.FarFromTriangleFree

theorem farFromTriangleFree_iff : G.FarFromTriangleFree ε ↔ ∀ ⦃H⦄, H ≤ G → H.CliqueFree 3 →
  ε * (card α ^ 2 : ℕ) ≤ G.edgeFinset.card - H.edgeFinset.card := deleteFar_iff
#align simple_graph.far_from_triangle_free_iff SimpleGraph.farFromTriangleFree_iff

alias ⟨farFromTriangleFree.le_card_sub_card, _⟩ := farFromTriangleFree_iff
#align simple_graph.far_from_triangle_free.le_card_sub_card SimpleGraph.farFromTriangleFree.le_card_sub_card

nonrec theorem FarFromTriangleFree.mono (hε : G.FarFromTriangleFree ε) (h : δ ≤ ε) :
    G.FarFromTriangleFree δ := hε.mono <| by gcongr
#align simple_graph.far_from_triangle_free.mono SimpleGraph.FarFromTriangleFree.mono

theorem FarFromTriangleFree.cliqueFinset_nonempty' (hH : H ≤ G) (hG : G.FarFromTriangleFree ε)
    (hcard : (G.edgeFinset.card - H.edgeFinset.card : 𝕜) < ε * (card α ^ 2 : ℕ)) :
    (H.cliqueFinset 3).Nonempty :=
  nonempty_of_ne_empty <|
    H.cliqueFinset_eq_empty_iff.not.2 fun hH' => (hG.le_card_sub_card hH hH').not_lt hcard
#align simple_graph.far_from_triangle_free.clique_finset_nonempty' SimpleGraph.FarFromTriangleFree.cliqueFinset_nonempty'

variable [Nonempty α]

theorem FarFromTriangleFree.nonpos (h₀ : G.FarFromTriangleFree ε) (h₁ : G.CliqueFree 3) :
    ε ≤ 0 := by
  have := h₀ (empty_subset _)
  rw [coe_empty, Finset.card_empty, cast_zero, deleteEdges_empty_eq] at this
  exact nonpos_of_mul_nonpos_left (this h₁) (cast_pos.2 <| sq_pos_of_pos Fintype.card_pos)
#align simple_graph.far_from_triangle_free.nonpos SimpleGraph.FarFromTriangleFree.nonpos

theorem CliqueFree.not_farFromTriangleFree (hG : G.CliqueFree 3) (hε : 0 < ε) :
    ¬G.FarFromTriangleFree ε := fun h => (h.nonpos hG).not_lt hε
#align simple_graph.clique_free.not_far_from_triangle_free SimpleGraph.CliqueFree.not_farFromTriangleFree

theorem FarFromTriangleFree.not_cliqueFree (hG : G.FarFromTriangleFree ε) (hε : 0 < ε) :
    ¬G.CliqueFree 3 := fun h => (hG.nonpos h).not_lt hε
#align simple_graph.far_from_triangle_free.not_clique_free SimpleGraph.FarFromTriangleFree.not_cliqueFree

theorem FarFromTriangleFree.cliqueFinset_nonempty (hG : G.FarFromTriangleFree ε) (hε : 0 < ε) :
    (G.cliqueFinset 3).Nonempty :=
  nonempty_of_ne_empty <| G.cliqueFinset_eq_empty_iff.not.2 <| hG.not_cliqueFree hε
#align simple_graph.far_from_triangle_free.clique_finset_nonempty SimpleGraph.FarFromTriangleFree.cliqueFinset_nonempty

end SimpleGraph
```
