# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eec84a56be431d38b530f57cf606e304968ba3884693bb10ac79e00189bd8270",
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
  "slug": "instance--575f6fd0837f61a4e42efadc",
  "source": {
    "blob": "a09f9b3b228345d4c4648901cbaa79885a10349f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:575f6fd0837f61a4e42efadcda5ce321486b9f59ef77a20832661a05db16041b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eec84a56be431d38b530f57cf606e304968ba3884693bb10ac79e00189bd8270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsCompletelyPseudoMetrizableSpace.of_completeSpace_pseudometrizable
    [UniformSpace X] [CompleteSpace X] [(𝓤 X).IsCountablyGenerated] :
    IsCompletelyPseudoMetrizableSpace X where
  complete := ⟨UniformSpace.pseudoMetricSpace X, rfl, ‹_›⟩

/-- Construct on a completely pseudometrizable space a pseudometric (compatible with the topology)
which is complete. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09f9b3b228345d4c4648901cbaa79885a10349f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
