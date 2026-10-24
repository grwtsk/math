# SelectedTopologicalSphereCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da03eec1ab274a358efcc8f202128407d365ecea457f7f8ed21e76d101a118e1",
  "kind": "def",
  "lexical_name": "SelectedTopologicalSphereCompact",
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
  "slug": "selectedtopologicalspherecompact--66fba1a64dbad2617c90b414",
  "source": {
    "blob": "fe8a2663d8c8db160f75c4a1900932bd9ffcab4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66fba1a64dbad2617c90b414bac91a12e12293a482baeaaab965df5e83c3690f",
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

Occurrence: `declaration:da03eec1ab274a358efcc8f202128407d365ecea457f7f8ed21e76d101a118e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SelectedTopologicalSphereCompact
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}} :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop
  | .sphere2 _ => Compact S2.topology
  | .sphere3 _ => Compact S3.topology

/-- The shared package has selected its positive `S²` embedding constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8a2663d8c8db160f75c4a1900932bd9ffcab4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
