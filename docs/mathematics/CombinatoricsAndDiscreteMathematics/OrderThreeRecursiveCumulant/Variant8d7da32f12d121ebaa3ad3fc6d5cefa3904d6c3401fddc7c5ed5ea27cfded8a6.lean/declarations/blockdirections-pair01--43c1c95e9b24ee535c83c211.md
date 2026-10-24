# blockDirections_pair01

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
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b872096-6e77-13c5-c92d-08c8b8279529",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef347527-e160-cdb1-c130-656001dbee17",
  "kind": "theorem",
  "lexical_name": "blockDirections_pair01",
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
  "slug": "blockdirections-pair01--43c1c95e9b24ee535c83c211",
  "source": {
    "blob": "94b95a097c49ba15fe7737101ef1fb3b949f5f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c1c95e9b24ee535c83c21142a0edc42ff68cc62a057041e71219a89c438407",
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

Occurrence: `result:ef347527-e160-cdb1-c130-656001dbee17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDirections_pair01
    (directions : Fin 3 → E) :
    blockDirections directions
        ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)) =
      ![directions 0, directions 1] := by
  funext j
  fin_cases j
  · change directions
      (blockOrderIso
        ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)) 0).1 =
      directions 0
    congr 1
    decide
  · change directions
      (blockOrderIso
        ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)) 1).1 =
      directions 1
    congr 1
    decide

/-- Canonical reindexing of the block {0,2}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b95a097c49ba15fe7737101ef1fb3b949f5f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
