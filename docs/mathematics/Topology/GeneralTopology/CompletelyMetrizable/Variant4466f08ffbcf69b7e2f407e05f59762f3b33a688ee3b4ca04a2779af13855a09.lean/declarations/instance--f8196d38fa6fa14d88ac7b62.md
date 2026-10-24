# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fffab042ce600c8dbc755342bc586b6f4805d7cf6e1cc93c33c5b1fcfbc39a2d",
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
  "slug": "instance--f8196d38fa6fa14d88ac7b62",
  "source": {
    "blob": "6745cb7148bfc2e24d8036d85d85d311c308a2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8196d38fa6fa14d88ac7b6290fe14df35fa246e5c284da1d50fbe4c18d0c529",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fffab042ce600c8dbc755342bc586b6f4805d7cf6e1cc93c33c5b1fcfbc39a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) _root_.PseudoMetricSpace.toIsCompletelPseudoMetrizableSpace
    [PseudoMetricSpace X] [CompleteSpace X] : IsCompletelyPseudoMetrizableSpace X :=
  ⟨⟨‹_›, rfl, ‹_›⟩⟩

/-- A convenience class, for a completely pseudometrizable space endowed with a complete
pseudometric. No instance of this class should be registered: It should be used as
`letI := upgradeIsCompletelyPseudoMetrizable X` to endow a completely pseudometrizable
space with a complete pseudometric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6745cb7148bfc2e24d8036d85d85d311c308a2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
