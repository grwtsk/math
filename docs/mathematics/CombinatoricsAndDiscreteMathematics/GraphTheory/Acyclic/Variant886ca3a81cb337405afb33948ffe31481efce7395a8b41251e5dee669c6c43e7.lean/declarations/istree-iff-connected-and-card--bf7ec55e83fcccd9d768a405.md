# isTree_iff_connected_and_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ff00bb2-71bf-5291-ed5d-38ba2450d264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b095c21f-adfe-bd03-fb68-d03bea7a403f",
  "kind": "lemma",
  "lexical_name": "isTree_iff_connected_and_card",
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
  "slug": "istree-iff-connected-and-card--bf7ec55e83fcccd9d768a405",
  "source": {
    "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 482,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf7ec55e83fcccd9d768a405636442d3392e0522bf19eab1511fc2c27ebf300f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b095c21f-adfe-bd03-fb68-d03bea7a403f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTree_iff_connected_and_card [Finite V] :
    G.IsTree ↔ G.Connected ∧ Nat.card G.edgeSet + 1 = Nat.card V := by
  have := Fintype.ofFinite V
  classical
  refine ⟨fun h ↦ ⟨h.connected, by simpa [edgeFinset] using h.card_edgeFinset⟩,
    fun ⟨h₁, h₂⟩ ↦ ⟨h₁, ?_⟩⟩
  simp_rw [isAcyclic_iff_forall_adj_isBridge]
  refine fun x y h ↦ by_contra (h₁.preconnected.connected_deleteEdges_of_not_isBridge ·
    |>.card_vert_le_card_edgeSet_add_one.not_gt ?_)
  rw [Nat.card_eq_fintype_card, ← edgeFinset_card, ← h₂, Nat.card_eq_fintype_card,
    ← edgeFinset_card, add_lt_add_iff_right]
  exact Finset.card_lt_card <| by simpa [deleteEdges, edgeFinset]

/-- The minimum degree of all vertices in a nontrivial tree is one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a803b1ac3276ace8b346d0663ff9401e2940094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
