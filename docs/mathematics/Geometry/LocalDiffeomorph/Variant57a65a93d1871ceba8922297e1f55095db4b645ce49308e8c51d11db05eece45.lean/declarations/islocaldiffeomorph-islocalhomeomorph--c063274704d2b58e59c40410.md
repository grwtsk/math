# IsLocalDiffeomorph.isLocalHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2e98974713c04f90bde224c81ee6a3b23f652a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4377038d-a68b-59e8-d413-30722794e89b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:525ee3f5-04d5-f16d-1e0c-c96864b3042b",
  "kind": "theorem",
  "lexical_name": "IsLocalDiffeomorph.isLocalHomeomorph",
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
  "slug": "islocaldiffeomorph-islocalhomeomorph--c063274704d2b58e59c40410",
  "source": {
    "blob": "c2e98974713c04f90bde224c81ee6a3b23f652a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 301,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c063274704d2b58e59c4041047d0bbeff9689ed8c49b3233757df75127a49390",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525ee3f5-04d5-f16d-1e0c-c96864b3042b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalDiffeomorph.isLocalHomeomorph (hf : IsLocalDiffeomorph I J n f) :
    IsLocalHomeomorph f := by
  rw [isLocalHomeomorph_iff_isLocalHomeomorphOn_univ]
  rw [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ] at hf
  exact hf.isLocalHomeomorphOn

/-- A local diffeomorphism is an open map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2e98974713c04f90bde224c81ee6a3b23f652a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
