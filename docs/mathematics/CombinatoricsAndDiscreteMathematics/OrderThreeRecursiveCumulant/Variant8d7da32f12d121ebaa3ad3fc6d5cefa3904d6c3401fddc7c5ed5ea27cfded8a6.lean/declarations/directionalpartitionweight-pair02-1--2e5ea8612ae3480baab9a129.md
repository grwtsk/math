# directionalPartitionWeight_pair02_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94b95a097c49ba15fe7737101ef1fb3b949f5f3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e39906ba-ed5a-b1bd-9efe-722f99ee4686",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:253bdda3-9a83-a6a6-1d49-7659c3b5a45f",
  "kind": "theorem",
  "lexical_name": "directionalPartitionWeight_pair02_1",
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
  "slug": "directionalpartitionweight-pair02-1--2e5ea8612ae3480baab9a129",
  "source": {
    "blob": "94b95a097c49ba15fe7737101ef1fb3b949f5f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5ea8612ae3480baab9a129f6d7169f80e9d4eaac7222d8296bae0390bf61ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253bdda3-9a83-a6a6-1d49-7659c3b5a45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directionalPartitionWeight_pair02_1
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        pairPartition02_1 =
      κ 2 ![directions 0, directions 2] *
        κ 1 (fun _ : Fin 1 => directions 1) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [pairPartition02_1_parts]
  simp [blocks02_1, blockCumulantFunctional,
    blockCumulantValue_singleton]

/-- Weight of the 12|0 partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b95a097c49ba15fe7737101ef1fb3b949f5f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
