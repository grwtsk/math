# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc445a39538cd7275e52fc6b2efc1321a4e2681b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e073ebf6-b6f5-d369-b227-34135bd76594",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a11c0bf9-a376-b294-47f6-2a011b23104f",
  "kind": "theorem",
  "lexical_name": "union",
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
  "slug": "union--ec5fb61f38aa46ea8c0ffab5",
  "source": {
    "blob": "fc445a39538cd7275e52fc6b2efc1321a4e2681b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5fb61f38aa46ea8c0ffab5c6c106846defe184aa96c26d2e78fa7dbf735cf0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11c0bf9-a376-b294-47f6-2a011b23104f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union (hs : BaireMeasurableSet s) (ht : BaireMeasurableSet t) :
    BaireMeasurableSet (s ∪ t) :=
  MeasurableSet.union hs ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc445a39538cd7275e52fc6b2efc1321a4e2681b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
