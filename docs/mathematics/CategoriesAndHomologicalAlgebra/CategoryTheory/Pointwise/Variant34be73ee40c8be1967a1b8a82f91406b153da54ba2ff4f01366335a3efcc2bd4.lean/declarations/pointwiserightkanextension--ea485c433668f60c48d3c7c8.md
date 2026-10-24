# pointwiseRightKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbf38518c54b9cd46cab6cfc728b8ea4ca6c365e8d486b5fe4996baff7e19989",
  "kind": "def",
  "lexical_name": "pointwiseRightKanExtension",
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
  "slug": "pointwiserightkanextension--ea485c433668f60c48d3c7c8",
  "source": {
    "blob": "4c008922478951fc38fc92e8a36209f7b0c6640e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 444,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea485c433668f60c48d3c7c860300785a75051f04847bfde7c2445053f79e1a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbf38518c54b9cd46cab6cfc728b8ea4ca6c365e8d486b5fe4996baff7e19989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pointwiseRightKanExtension : D ⥤ H where
  obj Y := limit (StructuredArrow.proj Y L ⋙ F)
  map {Y₁ Y₂} f := limit.lift (StructuredArrow.proj Y₂ L ⋙ F)
      (Cone.mk (limit (StructuredArrow.proj Y₁ L ⋙ F))
        { app := fun g ↦ limit.π (StructuredArrow.proj Y₁ L ⋙ F)
            ((StructuredArrow.map f).obj g)
          naturality := fun g₁ g₂ φ ↦ by
            simpa using (limit.w (StructuredArrow.proj Y₁ L ⋙ F)
              ((StructuredArrow.map f).map φ)).symm })
  map_id Y := limit.hom_ext (fun j => by
    dsimp
    simp only [limit.lift_π, id_comp]
    congr
    apply StructuredArrow.map_id)
  map_comp {Y₁ Y₂ Y₃} f f' := limit.hom_ext (fun j => by
    dsimp
    simp only [limit.lift_π, assoc]
    congr 1
    apply StructuredArrow.map_comp)

/-- The counit of the constructed pointwise right Kan extension when
`HasPointwiseRightKanExtension L F` holds. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c008922478951fc38fc92e8a36209f7b0c6640e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
