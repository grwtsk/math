# isLimitMultiforkOfIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:994864e323953cf1252f6d9aa7ca281290e48551ab8a622b751baaf57bc55737",
  "kind": "def",
  "lexical_name": "isLimitMultiforkOfIsLimit",
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
  "slug": "islimitmultiforkofislimit--ff6e87d8b2f865598bd9525c",
  "source": {
    "blob": "e2c25780bd1014dfd513562ff7f6f4de01f8e6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6e87d8b2f865598bd9525c216a3d86aefdfa85416ea993de1189c72d99617a",
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

Occurrence: `declaration:994864e323953cf1252f6d9aa7ca281290e48551ab8a622b751baaf57bc55737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitMultiforkOfIsLimit (F : K ⥤ Sheaf J D) (E : Cone (F ⋙ sheafToPresheaf J D))
    (hE : IsLimit E) (X : C) (W : J.Cover X) : IsLimit (W.multifork E.pt) :=
  Multifork.IsLimit.mk _
    (fun S => (isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op X)) hE).lift <|
      multiforkEvaluationCone F E X W S)
    (by
      intro S i
      apply (isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op i.Y)) hE).hom_ext
      intro k
      dsimp [Multifork.ofι]
      erw [Category.assoc, (E.π.app k).naturality]
      dsimp
      rw [← Category.assoc]
      erw [(isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op X)) hE).fac
        (multiforkEvaluationCone F E X W S)]
      dsimp [multiforkEvaluationCone, Presheaf.isLimitOfIsSheaf]
      erw [Presheaf.IsSheaf.amalgamate_map]
      rfl)
    (by
      intro S m hm
      apply (isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op X)) hE).hom_ext
      intro k
      dsimp
      erw [(isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op X)) hE).fac]
      apply Presheaf.IsSheaf.hom_ext (F.obj k).2 W
      intro i
      dsimp only [multiforkEvaluationCone, Presheaf.isLimitOfIsSheaf]
      rw [(F.obj k).cond.amalgamate_map]
      dsimp [Multifork.ofι]
      change _ = S.ι i ≫ _
      erw [← hm, Category.assoc, ← (E.π.app k).naturality, Category.assoc]
      rfl)
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.is_limit_multifork_of_is_limit CategoryTheory.Sheaf.isLimitMultiforkOfIsLimit

/-- If `E` is a cone which is a limit on the level of presheaves,
then the limit presheaf is again a sheaf.

This is used to show that the forgetful functor from sheaves to presheaves creates limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c25780bd1014dfd513562ff7f6f4de01f8e6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
