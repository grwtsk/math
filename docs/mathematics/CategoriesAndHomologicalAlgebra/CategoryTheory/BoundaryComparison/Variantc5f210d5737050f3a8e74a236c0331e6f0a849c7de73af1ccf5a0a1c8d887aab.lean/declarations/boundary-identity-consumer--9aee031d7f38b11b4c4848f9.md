# boundary_identity_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da198d56-bf33-8283-98e7-bbf9e2eed3bd",
  "kind": "theorem",
  "lexical_name": "boundary_identity_consumer",
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
  "slug": "boundary-identity-consumer--9aee031d7f38b11b4c4848f9",
  "source": {
    "blob": "28276d7d895c62f994367bbaab8a98848f458870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aee031d7f38b11b4c4848f9f5d8d233fb71764873678e31dc1e826693d11d64",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da198d56-bf33-8283-98e7-bbf9e2eed3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_identity_consumer {X Y : C} (f : X ⟶ Y) [Epi f] : Epi f :=
  boundary_epi_of_hom_comparisons f f (fun Z =>
    ⟨Z, Equiv.refl _, Equiv.refl _, fun _ => rfl⟩)

/-- The actual Section 9 cancellation only needs comparisons for the closed
cokernel target. An additive Hom comparison preserving zero and the boundary
composite forces the cokernel quotient map to vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoundaryComparison/Variantc5f210d5737050f3a8e74a236c0331e6f0a849c7de73af1ccf5a0a1c8d887aab.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28276d7d895c62f994367bbaab8a98848f458870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
