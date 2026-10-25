# projections_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b87a138fa7a3db3487b7d12b550b1f4ee7a53e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bee5715a-7939-1849-ce15-db364ab476b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f99e6b7d-9bf6-cb66-d7a7-e3f57d673caa",
  "kind": "theorem",
  "lexical_name": "projections_idempotent",
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
  "slug": "projections-idempotent--6b84f272412965dcb7cde5c3",
  "source": {
    "blob": "5b87a138fa7a3db3487b7d12b550b1f4ee7a53e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Terrain/Variantb65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b84f272412965dcb7cde5c3888db8634695d2f317444f54639750e01346390c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Terrain/Variantb65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f99e6b7d-9bf6-cb66-d7a7-e3f57d673caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projections_idempotent
    (point : TerrainRhetoricalPoint dimension kernel context locator) :
    IsIdempotentElem point.projections.1 ∧
      IsIdempotentElem point.projections.2 :=
  ⟨point.terrainPoint.pointProjection_idempotent,
    point.rhetoricalPoint.projection_idempotent⟩

end TerrainRhetoricalPoint

/-- Optional product profile coupling an existing pointed Gamma-spindle state
to an independent rhetorical point.  It preserves both unit carriers and does
not treat rhetorical proximity as spectral or theorem evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Terrain/Variantb65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Terrain/Variantb65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b87a138fa7a3db3487b7d12b550b1f4ee7a53e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
