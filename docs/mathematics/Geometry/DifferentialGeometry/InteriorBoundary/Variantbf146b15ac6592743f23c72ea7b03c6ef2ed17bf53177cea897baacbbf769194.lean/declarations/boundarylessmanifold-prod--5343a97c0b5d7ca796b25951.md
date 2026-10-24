# BoundarylessManifold.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5980dca9918abf3cb35684c81310f5a0fa7dfdf96817eec608ff616e3f2468e0",
  "kind": "instance",
  "lexical_name": "BoundarylessManifold.prod",
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
  "slug": "boundarylessmanifold-prod--5343a97c0b5d7ca796b25951",
  "source": {
    "blob": "f8bb015792162f687541bc73da36763a6105712d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 240,
    "path": "GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5343a97c0b5d7ca796b25951b208641307fba5f6bd138c421ad70a01c7f145c6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5980dca9918abf3cb35684c81310f5a0fa7dfdf96817eec608ff616e3f2468e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance BoundarylessManifold.prod [BoundarylessManifold I M] [BoundarylessManifold J N] :
    BoundarylessManifold (I.prod J) (M × N) := by
  apply Boundaryless.of_boundary_eq_empty
  simp only [boundary_prod, Boundaryless.boundary_eq_empty, union_empty_iff]
  -- These are simp lemmas, but `simp` does not apply them on its own:
  -- presumably because of the distinction between `Prod` and `ModelProd`
  exact ⟨Set.prod_empty, Set.empty_prod⟩

end prod

section disjointUnion

variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H M'] {n : WithTop ℕ∞}
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*} [TopologicalSpace H']
  {J : Type*} {J : ModelWithCorners 𝕜 E' H'}
  {N N' : Type*} [TopologicalSpace N] [TopologicalSpace N'] [ChartedSpace H' N] [ChartedSpace H' N']

open Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8bb015792162f687541bc73da36763a6105712d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
