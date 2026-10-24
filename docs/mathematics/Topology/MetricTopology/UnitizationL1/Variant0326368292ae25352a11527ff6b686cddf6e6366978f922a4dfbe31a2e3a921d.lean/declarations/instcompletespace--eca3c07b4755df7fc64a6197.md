# instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae814920ee5275fea0f8b3a3c3cdfc66e3f41d61b7585efe8e68998f0d278dd7",
  "kind": "instance",
  "lexical_name": "instCompleteSpace",
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
  "slug": "instcompletespace--eca3c07b4755df7fc64a6197",
  "source": {
    "blob": "240ef7cffdec19da2e6eca3ddf1306b2808e371f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca3c07b4755df7fc64a61974c65f8dca5115e627e023111f631ef5f65467211",
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

Occurrence: `declaration:ae814920ee5275fea0f8b3a3c3cdfc66e3f41d61b7585efe8e68998f0d278dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteSpace [CompleteSpace 𝕜] [CompleteSpace A] :
    CompleteSpace (WithLp 1 (Unitization 𝕜 A)) :=
  completeSpace_congr (uniformEquiv_unitization_addEquiv_prod 𝕜 A).isUniformEmbedding |>.mpr
    CompleteSpace.prod

variable {𝕜 A}

open ENNReal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240ef7cffdec19da2e6eca3ddf1306b2808e371f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
