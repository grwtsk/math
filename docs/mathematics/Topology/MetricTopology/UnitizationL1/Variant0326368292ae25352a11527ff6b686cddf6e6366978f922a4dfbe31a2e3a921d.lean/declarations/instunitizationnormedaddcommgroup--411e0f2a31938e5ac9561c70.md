# instUnitizationNormedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:132d2957444224c10328473a49dcf3c21466e2e016dd9a882e6da791426a79cc",
  "kind": "instance",
  "lexical_name": "instUnitizationNormedAddCommGroup",
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
  "slug": "instunitizationnormedaddcommgroup--411e0f2a31938e5ac9561c70",
  "source": {
    "blob": "240ef7cffdec19da2e6eca3ddf1306b2808e371f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 39,
    "path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:411e0f2a31938e5ac9561c70c4129987cd33f37a55b135d690288d36ca15105c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:132d2957444224c10328473a49dcf3c21466e2e016dd9a882e6da791426a79cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instUnitizationNormedAddCommGroup :
    NormedAddCommGroup (WithLp 1 (Unitization 𝕜 A)) :=
  NormedAddCommGroup.induced (WithLp 1 (Unitization 𝕜 A)) (WithLp 1 (𝕜 × A))
    (unitization_addEquiv_prod 𝕜 A) (AddEquiv.injective _)

/-- Bundle `WithLp.unitization_addEquiv_prod` as a `UniformEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240ef7cffdec19da2e6eca3ddf1306b2808e371f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
