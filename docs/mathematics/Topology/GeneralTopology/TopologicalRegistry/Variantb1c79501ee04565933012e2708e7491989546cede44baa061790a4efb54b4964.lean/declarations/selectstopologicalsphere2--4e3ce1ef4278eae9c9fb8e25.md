# SelectsTopologicalSphere2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:109b20a98d0e0fdbfd423ba5113d1dd61622ba3b286670a9e84a64861ed858aa",
  "kind": "def",
  "lexical_name": "SelectsTopologicalSphere2",
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
  "slug": "selectstopologicalsphere2--4e3ce1ef4278eae9c9fb8e25",
  "source": {
    "blob": "47cf6cd3571ce8e10ea58c0343ec2ad3653cb4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e3ce1ef4278eae9c9fb8e258f8269b4489c023ae79c449852af92a8eff76760",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:109b20a98d0e0fdbfd423ba5113d1dd61622ba3b286670a9e84a64861ed858aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SelectsTopologicalSphere2
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (choice : TopologicalSphericalEmbeddingChoice G I S2 S3) : Prop :=
  ∃ E, choice = .sphere2 E

/-- The shared package has selected its positive `S³` embedding constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47cf6cd3571ce8e10ea58c0343ec2ad3653cb4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
