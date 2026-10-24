# CliqueFree.replaceVertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8923c9f2-40fd-f836-430b-4151ab205d6f",
  "kind": "theorem",
  "lexical_name": "CliqueFree.replaceVertex",
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
  "slug": "cliquefree-replacevertex--44cf60483f798c7dfcd18d5a",
  "source": {
    "blob": "843f959c778bbdec52556ef6939b803f0b1292ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 523,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44cf60483f798c7dfcd18d5aa17b07d93d0137356ca319edd0985830a9d75d85",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8923c9f2-40fd-f836-430b-4151ab205d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem CliqueFree.replaceVertex [DecidableEq α] (h : G.CliqueFree n) (s t : α) :
    (G.replaceVertex s t).CliqueFree n := by
  contrapose h
  have ⟨φ, hφ⟩ := topEmbeddingOfNotCliqueFree h
  rw [not_cliqueFree_iff_top_isContained]
  by_cases mt : t ∈ Set.range φ
  · obtain ⟨x, hx⟩ := mt
    by_cases ms : s ∈ Set.range φ
    · obtain ⟨y, hy⟩ := ms
      have e := @hφ x y
      simp_rw [hx, hy, adj_comm, not_adj_replaceVertex_same, top_adj, false_iff, not_ne_iff] at e
      rwa [← hx, e, hy, replaceVertex_self, not_cliqueFree_iff_top_isContained] at h
    · unfold replaceVertex at hφ
      refine Embedding.isContained ⟨φ.setValue x s, fun {a b} ↦ ?_⟩
      simp only [Embedding.coeFn_mk, Embedding.setValue, not_exists.mp ms, ite_false]
      rw [apply_ite (G.Adj · _), apply_ite (G.Adj _ ·), apply_ite (G.Adj _ ·)]
      convert! @hφ a b <;> simp only [← φ.apply_eq_iff_eq, SimpleGraph.irrefl, hx]
  · refine Embedding.isContained ⟨φ, ?_⟩
    simp_rw [Set.mem_range, not_exists, ← ne_eq] at mt
    conv at hφ => enter [a, b]; rw [G.adj_replaceVertex_iff_of_ne _ (mt a) (mt b)]
    exact hφ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843f959c778bbdec52556ef6939b803f0b1292ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
