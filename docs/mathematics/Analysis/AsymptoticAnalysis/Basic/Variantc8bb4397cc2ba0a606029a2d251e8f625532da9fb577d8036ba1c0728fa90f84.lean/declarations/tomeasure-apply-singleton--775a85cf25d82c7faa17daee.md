# toMeasure_apply_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1020fc49a2d170b4b6e687b4a9f48d93f69e84af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e19c5d0-14af-6644-31d5-fbf6dd0ffed1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc6d38b2-5360-2c78-4492-fd9fd62c6a20",
  "kind": "theorem",
  "lexical_name": "toMeasure_apply_singleton",
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
  "slug": "tomeasure-apply-singleton--775a85cf25d82c7faa17daee",
  "source": {
    "blob": "1020fc49a2d170b4b6e687b4a9f48d93f69e84af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 229,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:775a85cf25d82c7faa17daee6d5f45368f7da672f86d50ba3d1a88cf1a20c54f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6d38b2-5360-2c78-4492-fd9fd62c6a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMeasure_apply_singleton (a : α) (h : MeasurableSet ({a} : Set α)) :
    p.toMeasure {a} = p a := by
  simp [p.toMeasure_apply_eq_toOuterMeasure_apply h, toOuterMeasure_apply_singleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1020fc49a2d170b4b6e687b4a9f48d93f69e84af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
