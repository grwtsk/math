# SelectedTopologicalBoundaryCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0354cc6a909381a8da7a5b5bfad61828c727e49b3b4fa0af9c3f6fd904db4c6a",
  "kind": "def",
  "lexical_name": "SelectedTopologicalBoundaryCompatibility",
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
  "slug": "selectedtopologicalboundarycompatibility--ee1a60b0dcc33b27fe3d2fd8",
  "source": {
    "blob": "fe8a2663d8c8db160f75c4a1900932bd9ffcab4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee1a60b0dcc33b27fe3d2fd88a67be23f99eafbfef19870cbcf697a45cba8543",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0354cc6a909381a8da7a5b5bfad61828c727e49b3b4fa0af9c3f6fd904db4c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SelectedTopologicalBoundaryCompatibility
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (V : TopologicalS1VertexPlacement G S1)
    (B : TopologicalSphereBoundary S1 S2) :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop :=
  fun choice => ∀ E, choice = .sphere2 E →
    CircleCompatibleTopologicalEmbedding2 G I S1 S2 V B E

/-- Genuine compactness of exactly the selected sphere topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8a2663d8c8db160f75c4a1900932bd9ffcab4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
