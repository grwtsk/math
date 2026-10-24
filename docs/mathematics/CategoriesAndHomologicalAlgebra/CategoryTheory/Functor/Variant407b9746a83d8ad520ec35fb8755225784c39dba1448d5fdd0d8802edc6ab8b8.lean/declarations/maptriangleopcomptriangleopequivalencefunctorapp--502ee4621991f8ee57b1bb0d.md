# mapTriangleOpCompTriangleOpEquivalenceFunctorApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86742e09f57226a4263e816b8ec7943b99fb6409a66c104274921ada9b0afdbb",
  "kind": "def",
  "lexical_name": "mapTriangleOpCompTriangleOpEquivalenceFunctorApp",
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
  "slug": "maptriangleopcomptriangleopequivalencefunctorapp--502ee4621991f8ee57b1bb0d",
  "source": {
    "blob": "83454ecd64c197f147f1760a7d3f5cd2d23afb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:502ee4621991f8ee57b1bb0dafef8b04ec5d177733107fd913a769c9621df4c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86742e09f57226a4263e816b8ec7943b99fb6409a66c104274921ada9b0afdbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapTriangleOpCompTriangleOpEquivalenceFunctorApp (T : Triangle C) :
    (triangleOpEquivalence D).functor.obj (op (F.mapTriangle.obj T)) ≅
      F.op.mapTriangle.obj ((triangleOpEquivalence C).functor.obj (op T)) :=
  Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (Iso.refl _)
    (by dsimp; simp) (by dsimp; simp) (by
      dsimp
      simp only [map_comp, shift_map_op, map_id, comp_id, op_comp, op_unop,
        map_opShiftFunctorEquivalence_counitIso_inv_app_unop,
        opShiftFunctorEquivalence_inverse, opShiftFunctorEquivalence_functor,
        Quiver.Hom.op_unop, assoc, id_comp])

/--
If `F : C ⥤ D` commutes with shifts, this expresses the compatibility of `F.mapTriangle`
with the equivalences `Pretriangulated.triangleOpEquivalence` on `C` and `D`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83454ecd64c197f147f1760a7d3f5cd2d23afb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
