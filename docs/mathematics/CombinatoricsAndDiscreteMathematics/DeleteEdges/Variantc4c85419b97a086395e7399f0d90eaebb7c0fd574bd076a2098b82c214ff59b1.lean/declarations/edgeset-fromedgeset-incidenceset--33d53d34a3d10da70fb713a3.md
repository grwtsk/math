# edgeSet_fromEdgeSet_incidenceSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abee08a6efd0f7fdbe9994ac79bee283005be81a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:285f340d-9a3f-eae0-c658-2dc33cb6efe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e96c602f-6ae5-ac50-ad8e-8e247477c94c",
  "kind": "lemma",
  "lexical_name": "edgeSet_fromEdgeSet_incidenceSet",
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
  "slug": "edgeset-fromedgeset-incidenceset--33d53d34a3d10da70fb713a3",
  "source": {
    "blob": "abee08a6efd0f7fdbe9994ac79bee283005be81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d53d34a3d10da70fb713a360dce9212bf9e2753ff15cd1332071714a4db45c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96c602f-6ae5-ac50-ad8e-8e247477c94c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edgeSet_fromEdgeSet_incidenceSet (G : SimpleGraph V) (x : V) :
    (fromEdgeSet (G.incidenceSet x)).edgeSet = G.incidenceSet x := by
  rw [edgeSet_fromEdgeSet, sdiff_eq_left, ← Set.subset_compl_iff_disjoint_right, Set.compl_setOf]
  exact (incidenceSet_subset G x).trans G.edgeSet_subset_setOf_not_isDiag

/-- The edge set of `G.deleteIncidenceSet x` is the edge set of `G` set difference the incidence
set of the vertex `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abee08a6efd0f7fdbe9994ac79bee283005be81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
