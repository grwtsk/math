# edgeFinset_deleteIncidenceSet_eq_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:271f5762-a38a-0cd3-05f1-87391e945bf0",
  "kind": "theorem",
  "lexical_name": "edgeFinset_deleteIncidenceSet_eq_sdiff",
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
  "slug": "edgefinset-deleteincidenceset-eq-sdiff--72842cbd193b81d7b3d67a3b",
  "source": {
    "blob": "6bd55eb40c7f1283bac1c17f9575203894140788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72842cbd193b81d7b3d67a3ba037f431f060521274c73f618ccd84108c2ee846",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:271f5762-a38a-0cd3-05f1-87391e945bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeFinset_deleteIncidenceSet_eq_sdiff (G : SimpleGraph V) [DecidableRel G.Adj] (x : V) :
    (G.deleteIncidenceSet x).edgeFinset = G.edgeFinset \ G.incidenceFinset x := by
  rw [incidenceFinset, ← Set.toFinset_diff, Set.toFinset_inj]
  exact G.edgeSet_deleteIncidenceSet x

/-- Deleting the incident set of the vertex `x` deletes exactly `G.degree x` edges from the edge
set of the simple graph `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd55eb40c7f1283bac1c17f9575203894140788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
