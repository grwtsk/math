# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f58c73e0e97ca8ebc52a527203f96e931b25aaabcab204f81992c51d894d8c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--72d91dfffc7edde377e88ef0",
  "source": {
    "blob": "d8b49892f12821ace044443b8061b099706c5450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 155,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72d91dfffc7edde377e88ef03ba03d26002f5a415511b5c87824421e33b7d9a3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f58c73e0e97ca8ebc52a527203f96e931b25aaabcab204f81992c51d894d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : NormedAddCommGroup (V →ᴬ[𝕜] W) where
  __ : SeminormedAddCommGroup (V →ᴬ[𝕜] W) := inferInstance
  __ : MetricSpace (V →ᴬ[𝕜] W) := inferInstance

end Normed

end ContinuousAffineMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b49892f12821ace044443b8061b099706c5450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
