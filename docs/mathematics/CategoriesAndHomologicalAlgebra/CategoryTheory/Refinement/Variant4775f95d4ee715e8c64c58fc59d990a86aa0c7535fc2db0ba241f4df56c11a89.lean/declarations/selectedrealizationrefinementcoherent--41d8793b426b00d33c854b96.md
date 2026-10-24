# SelectedRealizationRefinementCoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb67bfe4b02c7d238574c1726ea01f6778bf2a3c9f8438a3c25ffb7af37ab1ec",
  "kind": "structure",
  "lexical_name": "SelectedRealizationRefinementCoherent",
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
  "slug": "selectedrealizationrefinementcoherent--41d8793b426b00d33c854b96",
  "source": {
    "blob": "528eedbcd9183dbe25aebaa7dad5d1f93ffd4481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Variant4775f95d4ee715e8c64c58fc59d990a86aa0c7535fc2db0ba241f4df56c11a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41d8793b426b00d33c854b96c7eb5488938f00658c4002ebb6dda16e58a853ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Variant4775f95d4ee715e8c64c58fc59d990a86aa0c7535fc2db0ba241f4df56c11a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb67bfe4b02c7d238574c1726ea01f6778bf2a3c9f8438a3c25ffb7af37ab1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SelectedRealizationRefinementCoherent
    {Stage : Type uStage}
    {Entity : Type uEntity}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S1 : Sphere1Carrier.{u1}}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    {refines : Stage → Stage → Prop}
    {restrictEntity : Stage → Stage → Entity → Entity}
    {entityVertex : Entity → Vertex}
    (V : InjectiveS1VertexPlacement G S1)
    (choice : SphericalRealizationChoice R S2 S3)
    (source :
      GraphRealizationRefinementData
        Stage Entity Vertex R.Point refines restrictEntity
        entityVertex R.vertexPoint)
    (boundaryTarget : SphereRefinementData Stage S1.Point)
    (target2 : SphereRefinementData Stage S2.Point)
    (target3 : SphereRefinementData Stage S3.Point) : Prop where
  vertex : VertexPlacementRefinementCoherent V source boundaryTarget
  graph :
    SphericalRealizationRefinementCoherent choice source target2 target3

end FCRS.ControlledSpherical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Variant4775f95d4ee715e8c64c58fc59d990a86aa0c7535fc2db0ba241f4df56c11a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Variant4775f95d4ee715e8c64c58fc59d990a86aa0c7535fc2db0ba241f4df56c11a89.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `528eedbcd9183dbe25aebaa7dad5d1f93ffd4481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
