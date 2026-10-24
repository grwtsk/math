# instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84e110b2c19cc83d86f323a944e065bcf924658ba3a0a163d5b2beb22c145a2b",
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
  "slug": "instcompletespace--c6a131fb37ef51e28361613c",
  "source": {
    "blob": "da6a66b1b9c468c8a311c7a958f610522a5cf6b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a131fb37ef51e28361613c7a85a2f73adc718a08669c5a507ba6786e14ada7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84e110b2c19cc83d86f323a944e065bcf924658ba3a0a163d5b2beb22c145a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da6a66b1b9c468c8a311c7a958f610522a5cf6b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
