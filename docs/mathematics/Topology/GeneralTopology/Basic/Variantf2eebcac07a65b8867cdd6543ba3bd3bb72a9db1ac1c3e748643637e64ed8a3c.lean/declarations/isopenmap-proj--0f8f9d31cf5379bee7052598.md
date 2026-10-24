# isOpenMap_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78828897-fc51-0efd-3665-01686fa71995",
  "kind": "theorem",
  "lexical_name": "isOpenMap_proj",
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
  "slug": "isopenmap-proj--0f8f9d31cf5379bee7052598",
  "source": {
    "blob": "b2f266a336842e14f979b0f4347fb22826c04ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f8f9d31cf5379bee70525981b7ecdefd4f9a17e61f0db90dd143002f7593eb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78828897-fc51-0efd-3665-01686fa71995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_proj : IsOpenMap (π F E) :=
  IsOpenMap.of_nhds_le fun x => (map_proj_nhds F x).ge

/-- The projection from a fiber bundle with a nonempty fiber to its base is a surjective
map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f266a336842e14f979b0f4347fb22826c04ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
