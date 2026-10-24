# isContained_completeEquipartiteGraph_of_colorable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:161ae2b8-53e4-2dd8-d000-7998f670731f",
  "kind": "theorem",
  "lexical_name": "isContained_completeEquipartiteGraph_of_colorable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "iscontained-completeequipartitegraph-of-colorable--4d8806f9768d0ee884af8e0c",
  "source": {
    "blob": "2f2513dbc8ad1126b4caebad3dbee329fd3412e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 332,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8806f9768d0ee884af8e0cb58a5fba915a394fc1eb6b1683d6752d04a482ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:161ae2b8-53e4-2dd8-d000-7998f670731f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isContained_completeEquipartiteGraph_of_colorable {n : ℕ} (C : G.Coloring (Fin n))
    (t : ℕ) (h : ∀ c, card (C.colorClass c) ≤ t) : G ⊑ completeEquipartiteGraph n t := by
  have (c : Fin n) : Nonempty (C.colorClass c ↪ Fin t) := by
    rw [Embedding.nonempty_iff_card_le, Fintype.card_fin]
    exact h c
  have F (c : Fin n) := Classical.arbitrary (C.colorClass c ↪ Fin t)
  have hF {c₁ c₂ v₁ v₂} (hc : c₁ = c₂) (hv : F c₁ v₁ = F c₂ v₂) : v₁.val = v₂.val := by
    let v₁' : C.colorClass c₂ := ⟨v₁, by simp [← hc]⟩
    have hv' : F c₁ v₁ = F c₂ v₁' := by
      apply congr_heq
      · rw [hc]
      · rw [Subtype.heq_iff_coe_eq]
        simp [hc]
    rw [hv'] at hv
    simpa [Subtype.ext_iff] using (F c₂).injective hv
  use ⟨fun v ↦ (C v, F (C v) ⟨v, C.mem_colorClass v⟩), C.valid⟩
  intro v w h
  rw [Prod.mk.injEq] at h
  exact hF h.1 h.2

end CompleteEquipartiteGraph

section CompleteEquipartiteSubgraph

variable {V : Type*} {G : SimpleGraph V}

/-- A complete equipartite subgraph in `r > 0` parts each of size `t ≠ 0` in `G` is `r` subsets
of vertices each of size `t` such that vertices in distinct subsets are adjacent.

If `r > 0` but `t = 0`, then `parts = {{}}`. If `r = 0`, then `parts = {}`. These are the two
*distinct* "empty" complete equipartite subgraphs, that is, the complete equipartite subgraphs
having no vertices. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2513dbc8ad1126b4caebad3dbee329fd3412e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
