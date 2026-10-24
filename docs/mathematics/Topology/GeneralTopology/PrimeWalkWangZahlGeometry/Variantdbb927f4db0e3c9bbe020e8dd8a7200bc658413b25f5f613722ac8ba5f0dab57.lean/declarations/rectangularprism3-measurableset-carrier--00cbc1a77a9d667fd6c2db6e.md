# RectangularPrism3.measurableSet_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61449e3268961a9688f47a1a87848b059a7ad3fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5878b80f-6d70-10e0-56ef-b6b3f2e90cd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ba9f49-0164-edcc-b41e-05ad941d8c48",
  "kind": "theorem",
  "lexical_name": "RectangularPrism3.measurableSet_carrier",
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
  "slug": "rectangularprism3-measurableset-carrier--00cbc1a77a9d667fd6c2db6e",
  "source": {
    "blob": "61449e3268961a9688f47a1a87848b059a7ad3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00cbc1a77a9d667fd6c2db6e5983703adced153f12f637255f1bd009c86a2caa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ba9f49-0164-edcc-b41e-05ad941d8c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RectangularPrism3.measurableSet_carrier
    (prism : RectangularPrism3) :
    MeasurableSet prism.carrier :=
  prism.isClosed_carrier.measurableSet

/-- The metric tube carrier already used by the packet layer is closed. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61449e3268961a9688f47a1a87848b059a7ad3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
