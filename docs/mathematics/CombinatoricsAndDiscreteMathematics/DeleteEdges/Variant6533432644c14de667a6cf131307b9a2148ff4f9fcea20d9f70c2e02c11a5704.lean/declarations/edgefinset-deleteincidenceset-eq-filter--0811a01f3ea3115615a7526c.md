# edgeFinset_deleteIncidenceSet_eq_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8723babb-71df-4603-f242-c942057ab199",
  "kind": "theorem",
  "lexical_name": "edgeFinset_deleteIncidenceSet_eq_filter",
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
  "slug": "edgefinset-deleteincidenceset-eq-filter--0811a01f3ea3115615a7526c",
  "source": {
    "blob": "6bd55eb40c7f1283bac1c17f9575203894140788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0811a01f3ea3115615a7526c7810053fd75ca2a85990baa75380d2f595586db7",
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

Occurrence: `result:8723babb-71df-4603-f242-c942057ab199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeFinset_deleteIncidenceSet_eq_filter (G : SimpleGraph V) [DecidableRel G.Adj] (x : V) :
    (G.deleteIncidenceSet x).edgeFinset = G.edgeFinset.filter (x ∉ ·) := by
  rw [edgeFinset_deleteIncidenceSet_eq_sdiff, sdiff_eq_filter]
  apply filter_congr
  intro _ h
  rw [incidenceFinset, Set.mem_toFinset, incidenceSet,
    Set.mem_setOf_eq, not_and, Classical.imp_iff_right_iff]
  left
  rwa [mem_edgeFinset] at h

/-- The support of `G.deleteIncidenceSet x` is at most `1` less than the support of the simple
graph `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd55eb40c7f1283bac1c17f9575203894140788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
