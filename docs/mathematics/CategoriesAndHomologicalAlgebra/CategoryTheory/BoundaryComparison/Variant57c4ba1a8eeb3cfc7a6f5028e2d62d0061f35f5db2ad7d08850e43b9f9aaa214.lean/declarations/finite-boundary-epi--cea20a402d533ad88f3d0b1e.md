# finite_boundary_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3269510-bce7-df33-86fd-8d4774bc0cfc",
  "kind": "theorem",
  "lexical_name": "finite_boundary_epi",
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
  "slug": "finite-boundary-epi--cea20a402d533ad88f3d0b1e",
  "source": {
    "blob": "804861f222f6dd398002a657d0f679b43da02afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea20a402d533ad88f3d0b1ec0e5577ac402d03ea6fa93588810969250174e14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3269510-bce7-df33-86fd-8d4774bc0cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_boundary_epi : Epi finiteBoundaryToFinOne := by
  exact boundary_epi_of_hom_comparisons finiteBoundaryToUnit finiteBoundaryToFinOne
    (fun Z => ⟨Z, finiteClosedHomComparison Z, Equiv.refl _, fun _ => rfl⟩)

/-- The Section 6 finite-index inference, after supplying a genuine uniform
upper degree E and fixing readout degree j, has K = max(0,E-j). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variant57c4ba1a8eeb3cfc7a6f5028e2d62d0061f35f5db2ad7d08850e43b9f9aaa214.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804861f222f6dd398002a657d0f679b43da02afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
