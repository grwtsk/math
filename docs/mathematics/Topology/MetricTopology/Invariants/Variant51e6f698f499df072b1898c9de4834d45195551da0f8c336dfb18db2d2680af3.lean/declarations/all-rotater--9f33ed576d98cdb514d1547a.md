# all_rotateR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9b77f45967cb3091b5f34001bf26a344faaf787",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e958ae8-8c59-ac95-ef5c-3c1dbb6f1d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d598a1e-30a5-8180-b8e6-5f3f4c73b3c0",
  "kind": "theorem",
  "lexical_name": "all_rotateR",
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
  "slug": "all-rotater--9f33ed576d98cdb514d1547a",
  "source": {
    "blob": "f9b77f45967cb3091b5f34001bf26a344faaf787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 428,
    "path": "GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f33ed576d98cdb514d1547a9af24c20894bf813a2db84bd96566a4a644e0bde",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d598a1e-30a5-8180-b8e6-5f3f4c73b3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_rotateR {P l x r} : @All α P (rotateR l x r) ↔ All P l ∧ P x ∧ All P r := by
  rw [← all_dual, dual_rotateR, all_rotateL]; simp [all_dual, and_comm, and_left_comm, and_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9b77f45967cb3091b5f34001bf26a344faaf787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
