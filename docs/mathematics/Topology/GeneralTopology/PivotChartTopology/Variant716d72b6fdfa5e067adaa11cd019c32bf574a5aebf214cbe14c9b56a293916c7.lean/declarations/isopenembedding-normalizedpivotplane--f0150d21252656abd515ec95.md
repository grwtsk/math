# isOpenEmbedding_normalizedPivotPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c9e5187-52b4-c99e-f9c3-9fa5610422ea",
  "kind": "theorem",
  "lexical_name": "isOpenEmbedding_normalizedPivotPlane",
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
  "slug": "isopenembedding-normalizedpivotplane--f0150d21252656abd515ec95",
  "source": {
    "blob": "604c2149f382a2c9b57475ee7c1815a0f146084b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0150d21252656abd515ec951d92908530fb5e254139b8189974384ef5afa71d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c9e5187-52b4-c99e-f9c3-9fa5610422ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenEmbedding_normalizedPivotPlane (I : Fin k ↪o Fin n) :
    Topology.IsOpenEmbedding (normalizedPivotPlane I) :=
  Topology.isOpenEmbedding_iff_continuous_injective_isOpenMap.mpr
    ⟨continuous_normalizedPivotPlane I, normalizedPivotPlane_injective I,
      isOpenMap_normalizedPivotPlane I⟩

/-- An actual normalized matrix chart is homeomorphic to its intrinsic open pivot domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604c2149f382a2c9b57475ee7c1815a0f146084b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
