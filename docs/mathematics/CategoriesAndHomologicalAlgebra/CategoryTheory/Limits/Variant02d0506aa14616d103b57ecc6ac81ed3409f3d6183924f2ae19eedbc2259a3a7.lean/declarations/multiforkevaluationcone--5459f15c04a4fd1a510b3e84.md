# multiforkEvaluationCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87eebbc927d880becc0326474ee98aa9991e347635ccc703223c013bcef91c37",
  "kind": "def",
  "lexical_name": "multiforkEvaluationCone",
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
  "slug": "multiforkevaluationcone--5459f15c04a4fd1a510b3e84",
  "source": {
    "blob": "e2c25780bd1014dfd513562ff7f6f4de01f8e6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5459f15c04a4fd1a510b3e84866d35362970d34dd7605249227e4d9526f03d7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87eebbc927d880becc0326474ee98aa9991e347635ccc703223c013bcef91c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiforkEvaluationCone (F : K ⥤ Sheaf J D) (E : Cone (F ⋙ sheafToPresheaf J D)) (X : C)
    (W : J.Cover X) (S : Multifork (W.index E.pt)) :
    Cone (F ⋙ sheafToPresheaf J D ⋙ (evaluation Cᵒᵖ D).obj (op X)) where
  pt := S.pt
  π :=
    { app := fun k => (Presheaf.isLimitOfIsSheaf J (F.obj k).1 W (F.obj k).2).lift <|
        Multifork.ofι _ S.pt (fun i => S.ι i ≫ (E.π.app k).app (op i.Y))
          (by
            intro i
            simp only [Category.assoc]
            erw [← (E.π.app k).naturality, ← (E.π.app k).naturality]
            dsimp
            simp only [← Category.assoc]
            congr 1
            apply S.condition)
      naturality := by
        intro i j f
        dsimp [Presheaf.isLimitOfIsSheaf]
        rw [Category.id_comp]
        apply Presheaf.IsSheaf.hom_ext (F.obj j).2 W
        intro ii
        rw [Presheaf.IsSheaf.amalgamate_map, Category.assoc, ← (F.map f).val.naturality, ←
          Category.assoc, Presheaf.IsSheaf.amalgamate_map]
        dsimp [Multifork.ofι]
        erw [Category.assoc, ← E.w f]
        aesop_cat }
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.multifork_evaluation_cone CategoryTheory.Sheaf.multiforkEvaluationCone

variable [HasLimitsOfShape K D]

/-- If `E` is a cone of shape `K` of sheaves, which is a limit on the level of presheaves,
this definition shows that the limit presheaf satisfies the multifork variant of the sheaf
condition, at a given covering `W`.

This is used below in `isSheaf_of_isLimit` to show that the limit presheaf is indeed a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c25780bd1014dfd513562ff7f6f4de01f8e6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
