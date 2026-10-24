# multiforkEvaluationCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b37e228b10b0b58130f8a1ba9a6f1168ac3d3e64a1b776a0c490e3925488a892",
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
  "slug": "multiforkevaluationcone--68b46d50845b3d6a9f72c18d",
  "source": {
    "blob": "e72ba7b074c3cf50192053958c64825fd89a48f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3769bb741694ff1855d6a0205deaa587393da889574e0867608b3dc26a3068b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b46d50845b3d6a9f72c18d290006f32f19bb07d4ea528ed132024c060ef1b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3769bb741694ff1855d6a0205deaa587393da889574e0867608b3dc26a3068b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b37e228b10b0b58130f8a1ba9a6f1168ac3d3e64a1b776a0c490e3925488a892`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–109.

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
        rw [Presheaf.IsSheaf.amalgamate_map, Category.assoc, ← (F.map f).hom.naturality, ←
          Category.assoc, Presheaf.IsSheaf.amalgamate_map]
        erw [Category.assoc, ← E.w f]
        cat_disch }

variable [HasLimitsOfShape K D]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `E` is a cone of shape `K` of sheaves, which is a limit on the level of presheaves,
this definition shows that the limit presheaf satisfies the multifork variant of the sheaf
condition, at a given covering `W`.

This is used below in `isSheaf_of_isLimit` to show that the limit presheaf is indeed a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3769bb741694ff1855d6a0205deaa587393da889574e0867608b3dc26a3068b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3769bb741694ff1855d6a0205deaa587393da889574e0867608b3dc26a3068b2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72ba7b074c3cf50192053958c64825fd89a48f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
