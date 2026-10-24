# controlled_spherical_scoped_hierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58e5cc270e15b1250f5fae6249796321257730a2a3a95c3e808160bb02291e2b",
  "kind": "def",
  "lexical_name": "controlled_spherical_scoped_hierarchy",
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
  "slug": "controlled-spherical-scoped-hierarchy--e8b5e8c5b91a2a2088fe34e3",
  "source": {
    "blob": "976198741d6c48f5a8db238ecaf008e22c000b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Assembly/Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b5e8c5b91a2a2088fe34e34c830c9463cf1f2e713b60f053ea3a8a053e758e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Assembly/Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58e5cc270e15b1250f5fae6249796321257730a2a3a95c3e808160bb02291e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def controlled_spherical_scoped_hierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    ControlledSphericalHierarchyResult S M SM :=
  assembleControlledSphericalHierarchy
    S M SM planeRegistry planeResult sphericalWitnesses D hSignature

/--
The stronger `S²` result retains the exact selected injection, point-placement
map, and vertex-coordinate compatibility equation.  It adds no edge or
topological boundary condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Assembly/Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Assembly/Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `976198741d6c48f5a8db238ecaf008e22c000b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
