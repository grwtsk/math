# functorialityLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:586b6e79b40ed2ed41a05c1d0afa1313529e0c43812c5e6a74e0a98ac39ee261",
  "kind": "def",
  "lexical_name": "functorialityLeftAdjoint",
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
  "slug": "functorialityleftadjoint--516fbb2c853c545479375b73",
  "source": {
    "blob": "fcd5c405348ac3aadd15a07ac60beae012f11538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:516fbb2c853c545479375b73f2b2ca19211725c601add7161ce5d2a909f68e3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:586b6e79b40ed2ed41a05c1d0afa1313529e0c43812c5e6a74e0a98ac39ee261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorialityLeftAdjoint : Cone (K ⋙ G) ⥤ Cone K :=
  Cones.functoriality _ F ⋙
    Cones.postcompose ((associator _ _ _).hom ≫ whiskerLeft K adj.counit ≫ K.rightUnitor.hom)
#align category_theory.adjunction.functoriality_left_adjoint CategoryTheory.Adjunction.functorialityLeftAdjoint

attribute [local simp] functorialityLeftAdjoint

/-- The unit for the adjunction for `Cones.functoriality K G : Cone K ⥤ Cone (K ⋙ G)`.

Auxiliary definition for `functorialityIsRightAdjoint`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd5c405348ac3aadd15a07ac60beae012f11538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
