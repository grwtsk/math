# shift_opShiftFunctorEquivalence_counitIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f294b416-7c5b-70d9-f806-434ae037b16a",
  "kind": "lemma",
  "lexical_name": "shift_opShiftFunctorEquivalence_counitIso_inv_app",
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
  "slug": "shift-opshiftfunctorequivalence-counitiso-inv-app--1596a2c3ae62f21aa9b5d8f0",
  "source": {
    "blob": "4f6c9112e2f6295e85523a7493438ce7053ee208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1596a2c3ae62f21aa9b5d8f04e56424336549510149b9e637f8c2f3df3d39c60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f294b416-7c5b-70d9-f806-434ae037b16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shift_opShiftFunctorEquivalence_counitIso_inv_app
    (X : C) (m n : ℤ) (hmn : m + n = 0 := by lia) :
    ((opShiftFunctorEquivalence C n).counitIso.inv.app (Opposite.op X))⟦m⟧' =
      (opShiftFunctorEquivalence C n).counitIso.inv.app ((Opposite.op X)⟦m⟧) ≫
        (((shiftFunctorOpIso C m n hmn).hom.app (Opposite.op X)).unop⟦n⟧').op⟦n⟧' ≫
          ((shiftFunctorOpIso C m n hmn).inv.app (Opposite.op (X⟦n⟧)))⟦n⟧' ≫
            (shiftFunctorComm Cᵒᵖ n m).inv.app (Opposite.op (X⟦n⟧)) := by
  obtain rfl : m = -n := by lia
  dsimp [opShiftFunctorEquivalence]
  simp only [shiftFunctor_op_map _ (-n) n, shiftFunctor_op_map _ n (-n),
    shiftFunctorComm_inv_app_of_add_eq_zero n (-n) (by lia), assoc,
    shiftFunctorCompIsoId_op_inv_app, shiftFunctorCompIsoId_op_hom_app,
    shift_shiftFunctorCompIsoId_hom_app, op_comp, unop_comp, Quiver.Hom.unop_op,
    Functor.map_comp, Iso.inv_hom_id_app_assoc, Functor.op_obj]
  apply Quiver.Hom.unop_inj
  simp

/-- Given objects `X` and `Y` in `Cᵒᵖ`, this is the bijection
`(op (X.unop⟦n⟧) ⟶ Y) ≃ (X ⟶ Y⟦n⟧)` for any `n : ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6c9112e2f6295e85523a7493438ce7053ee208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
