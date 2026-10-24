# edgeAdjacent_iff_shared_incidence_face

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9acdb234-55b7-896d-0042-c5332e6fe639",
  "kind": "theorem",
  "lexical_name": "edgeAdjacent_iff_shared_incidence_face",
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
  "slug": "edgeadjacent-iff-shared-incidence-face--0ca40342b74ba8a537d6a797",
  "source": {
    "blob": "41d258259afecc0e76b3bb77d6d5661bb7923df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ca40342b74ba8a537d6a7979f2e5eb22e8c39f490636df5b6e1fab82a2f6f22",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9acdb234-55b7-896d-0042-c5332e6fe639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeAdjacent_iff_shared_incidence_face {rows columns : Nat}
    (left right : GridCell rows columns) :
    AdjacencyPolicy.edge.Adjacent left right ↔
      left ≠ right ∧
        ∃ face : Cell rows columns,
          face ∈ incidenceFaces (Cell.square left) ∧
          face ∈ incidenceFaces (Cell.square right) := by
  rcases left with ⟨leftRow, leftColumn⟩
  rcases right with ⟨rightRow, rightColumn⟩
  simp [AdjacencyPolicy.Adjacent, EdgeAdjacent, incidenceFaces, squareBoundary]
  omega

/-- Canonical incidence always lowers cubical dimension by exactly one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d258259afecc0e76b3bb77d6d5661bb7923df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
