# vertexInMeshLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b420f67656be06d71a553c3c6c366c124bf2e111d28e77be69b840bc538253f",
  "kind": "def",
  "lexical_name": "vertexInMeshLocus",
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
  "slug": "vertexinmeshlocus--a51aa24ab9afa6c9b78d9b93",
  "source": {
    "blob": "23b523e53ee619af349c2ccff7975a722e9eebea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a51aa24ab9afa6c9b78d9b9360a7c65ece26137322432918ba08e8c0eb08d3b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b420f67656be06d71a553c3c6c366c124bf2e111d28e77be69b840bc538253f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vertexInMeshLocus
    {State : Type uState}
    {G : KnownMaximalState State}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (locus : AbsoluteRegion G)
    (vertexGlobal : V ↪ G.Coord)
    (v : V) : Prop := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact vertexGlobal v ∈ locus.coordinates

/-- A cell touches the locus when one of its declared vertices lies there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b523e53ee619af349c2ccff7975a722e9eebea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
