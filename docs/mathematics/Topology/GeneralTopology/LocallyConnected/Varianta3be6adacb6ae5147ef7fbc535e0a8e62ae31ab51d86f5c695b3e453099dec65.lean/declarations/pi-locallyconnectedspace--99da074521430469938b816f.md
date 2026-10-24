# Pi.locallyConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbaa87dcfb6e19ec5b35057809b1662b99bc597a245e547e785809ee436ea9fa",
  "kind": "instance",
  "lexical_name": "Pi.locallyConnectedSpace",
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
  "slug": "pi-locallyconnectedspace--99da074521430469938b816f",
  "source": {
    "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99da074521430469938b816f97918ea1477042dbdbd3d6259da6b87a4a0fb459",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbaa87dcfb6e19ec5b35057809b1662b99bc597a245e547e785809ee436ea9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.locallyConnectedSpace [∀ i, TopologicalSpace (X i)]
    [∀ i, LocallyConnectedSpace (X i)] [∀ i, PreconnectedSpace (X i)] :
    LocallyConnectedSpace (∀ i, X i) :=
  locallyConnectedSpace_of_finite_not_preconnectedSpace
    (finite_empty.subset fun _ hi ↦ hi inferInstance)

/-- A product of spaces is locally connected iff it is empty, or every factor is locally
connected and all but finitely many factors are preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd96aafe30a89a89cc000ac6322f2c07b6883c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
