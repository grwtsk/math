# writtenInExtChartAt_chartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b880836f8624b93932b2b9106b544be39d16096a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a991f7b1-2784-0d6d-c09f-4e06bac9dc8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ae612c7-6086-1d02-727a-97435b7b72c1",
  "kind": "theorem",
  "lexical_name": "writtenInExtChartAt_chartAt",
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
  "slug": "writteninextchartat-chartat--f396e87532bbfab53d8fabb2",
  "source": {
    "blob": "b880836f8624b93932b2b9106b544be39d16096a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1341,
    "line": 1339,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f396e87532bbfab53d8fabb2c1c4aa601fbe79935d7c32fc61c1685b4bc095c6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae612c7-6086-1d02-727a-97435b7b72c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1339–1341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem writtenInExtChartAt_chartAt {x : M} {y : E} (h : y ∈ (extChartAt I x).target) :
    writtenInExtChartAt I I x (chartAt H x) y = y := by simp_all only [mfld_simps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean#L1339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b880836f8624b93932b2b9106b544be39d16096a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
