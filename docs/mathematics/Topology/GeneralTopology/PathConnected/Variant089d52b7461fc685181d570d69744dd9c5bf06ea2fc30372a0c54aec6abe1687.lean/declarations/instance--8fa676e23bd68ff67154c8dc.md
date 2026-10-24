# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:807c0695276dd9cb0cb5c544ff8bafd6cd4bf4b1fff84e8854f1917e7f7e2394",
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
  "slug": "instance--8fa676e23bd68ff67154c8dc",
  "source": {
    "blob": "063522ce3ac7a6b2b9113ff2bea3bb3021155b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 721,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fa676e23bd68ff67154c8dc1497b2e13cc06638d7c7c6c172a6a61f213a735c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:807c0695276dd9cb0cb5c544ff8bafd6cd4bf4b1fff84e8854f1917e7f7e2394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) PathConnectedSpace.connectedSpace [PathConnectedSpace X] :
    ConnectedSpace X := by
  rw [connectedSpace_iff_connectedComponent]
  rcases isPathConnected_iff_eq.mp (pathConnectedSpace_iff_univ.mp ‹_›) with ⟨x, _x_in, hx⟩
  use x
  rw [← univ_subset_iff]
  exact (by simpa using hx : pathComponent x = univ) ▸ pathComponent_subset_component x

/-- A path-connected set is connected.

(See `Counterexamples.TopologistsSineCurve` for the standard counterexample showing that the
converse is false.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `063522ce3ac7a6b2b9113ff2bea3bb3021155b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
