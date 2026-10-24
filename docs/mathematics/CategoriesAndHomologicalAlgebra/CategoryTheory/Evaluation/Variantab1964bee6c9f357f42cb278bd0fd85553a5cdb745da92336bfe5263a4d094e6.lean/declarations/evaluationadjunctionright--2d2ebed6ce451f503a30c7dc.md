# evaluationAdjunctionRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:365aec0fcf91f6af95f5675cd9179859dc0a33b97c7a41ae16733b7625e846d0",
  "kind": "def",
  "lexical_name": "evaluationAdjunctionRight",
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
  "slug": "evaluationadjunctionright--2d2ebed6ce451f503a30c7dc",
  "source": {
    "blob": "fdb198410652342703795af9e83811aafa62ffa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d2ebed6ce451f503a30c7dc0233770b4dc33ae90bd113c8a19fff61e99be654",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:365aec0fcf91f6af95f5675cd9179859dc0a33b97c7a41ae16733b7625e846d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evaluationAdjunctionRight (c : C) : evaluationLeftAdjoint D c ⊣ (evaluation _ _).obj c :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun d F =>
        { toFun := fun f => Sigma.ι (fun _ => d) (𝟙 _) ≫ f.app c
          invFun := fun f =>
            { app := fun e => Sigma.desc fun h => f ≫ F.map h
              naturality := by
                intros
                dsimp
                ext
                simp }
          left_inv := by
            intro f
            ext x
            dsimp
            ext g
            simp only [colimit.ι_desc, Cofan.mk_ι_app, Category.assoc, ←f.naturality,
              evaluationLeftAdjoint_obj_map, colimit.ι_desc_assoc,
              Discrete.functor_obj, Cofan.mk_pt, Discrete.natTrans_app, Category.id_comp]
          right_inv := fun f => by
            dsimp
            simp } }
#align category_theory.evaluation_adjunction_right CategoryTheory.evaluationAdjunctionRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdb198410652342703795af9e83811aafa62ffa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
