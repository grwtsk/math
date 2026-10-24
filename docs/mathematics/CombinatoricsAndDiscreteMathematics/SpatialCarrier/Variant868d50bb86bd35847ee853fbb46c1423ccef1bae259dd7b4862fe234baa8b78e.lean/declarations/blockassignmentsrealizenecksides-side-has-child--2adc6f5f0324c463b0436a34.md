# BlockAssignmentsRealizeNeckSides.side_has_child

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf8c7df1be6b6bd46bb62af0fb6f4ab7bfccc52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/868d50bb86bd35847ee853fbb46c1423ccef1bae259dd7b4862fe234baa8b78e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e5d03e4-c0f5-7347-c9c1-1cb20552222f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32bb528a-17ca-ddd0-dc74-b47e3d15e55e",
  "kind": "theorem",
  "lexical_name": "BlockAssignmentsRealizeNeckSides.side_has_child",
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
  "slug": "blockassignmentsrealizenecksides-side-has-child--2adc6f5f0324c463b0436a34",
  "source": {
    "blob": "2cf8c7df1be6b6bd46bb62af0fb6f4ab7bfccc52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 421,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant868d50bb86bd35847ee853fbb46c1423ccef1bae259dd7b4862fe234baa8b78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2adc6f5f0324c463b0436a34187fc19a4422771f88e3637bc359eac89d9cf1ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant868d50bb86bd35847ee853fbb46c1423ccef1bae259dd7b4862fe234baa8b78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32bb528a-17ca-ddd0-dc74-b47e3d15e55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlockAssignmentsRealizeNeckSides.side_has_child
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    {surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier}
    (certificate : BlockAssignmentsRealizeNeckSides surgery)
    (side : NeckSide) :
    ∃ child : surgery.Child, certificate.childSide child = side :=
  certificate.childSide_surjective side

/-- Every left index lies in a unique child block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant868d50bb86bd35847ee853fbb46c1423ccef1bae259dd7b4862fe234baa8b78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant868d50bb86bd35847ee853fbb46c1423ccef1bae259dd7b4862fe234baa8b78e.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf8c7df1be6b6bd46bb62af0fb6f4ab7bfccc52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
