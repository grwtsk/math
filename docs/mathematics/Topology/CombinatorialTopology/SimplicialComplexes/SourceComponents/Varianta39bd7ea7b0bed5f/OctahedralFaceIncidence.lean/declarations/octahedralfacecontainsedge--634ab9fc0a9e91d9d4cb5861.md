# octahedralFaceContainsEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c5904b18236985ade96140a45748122d6d41bae864a648f5a13f74a54d4772d",
  "kind": "def",
  "lexical_name": "octahedralFaceContainsEdge",
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
  "slug": "octahedralfacecontainsedge--634ab9fc0a9e91d9d4cb5861",
  "source": {
    "blob": "d6baf7a90918fdb69df208ae2da407be486db76c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralFaceIncidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:634ab9fc0a9e91d9d4cb5861e5aea259793e3bfd59c5e05aa9ab67c5a6ec4acd",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralFaceIncidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c5904b18236985ade96140a45748122d6d41bae864a648f5a13f74a54d4772d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralFaceContainsEdge
    (face : OctahedralFace) (edge : OctahedralEdge) : Bool :=
  (octahedralFaceBoundary face).any
    (fun term => if term.2 = edge then true else false)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralFaceIncidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralFaceIncidence.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6baf7a90918fdb69df208ae2da407be486db76c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
