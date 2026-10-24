# MeshSurgeryEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1162ef532c32ff9c350755f631bf30a21a873c4fa646767e9402dc3fd484a34d",
  "kind": "structure",
  "lexical_name": "MeshSurgeryEnvelope",
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
  "slug": "meshsurgeryenvelope--62c74b9ececc3639318eeb41",
  "source": {
    "blob": "2f146c9ec185fd39351c382ce0d0a1a06495180a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62c74b9ececc3639318eeb41819659441de5b61a2b745b7e08a2a2702d8d7294",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1162ef532c32ff9c350755f631bf30a21a873c4fa646767e9402dc3fd484a34d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MeshSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V) where
  before : DAF.Geometry.PrismMesh carrier
  after : DAF.Geometry.PrismMesh carrier
  surgery : DAF.Geometry.MeshSurgery G before after

/-- A raster patch retaining its dependent mesh patch and common charge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f146c9ec185fd39351c382ce0d0a1a06495180a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
