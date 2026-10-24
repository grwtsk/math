# coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48dd5225b968c5dfeca9d17b8ae3faef4d28b5e47ac9b62caa9f625fc3afd265",
  "kind": "def",
  "lexical_name": "coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation",
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
  "slug": "conecompevaluationofconecompdiagramfunctorcompevaluation--7979a60f4de1aef0c300480a",
  "source": {
    "blob": "a1618a90f77d79d473a4af6ee4f50fd78abaea20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7979a60f4de1aef0c300480aa2fc88b7384fc6b5c16b4bd4385fc09ad6677245",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48dd5225b968c5dfeca9d17b8ae3faef4d28b5e47ac9b62caa9f625fc3afd265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation {X : C} {K : Type s}
    [SmallCategory K] {F : K ⥤ Cᵒᵖ ⥤ D} {W : J.Cover X} (i : W.Arrow)
    (E : Cone (F ⋙ J.diagramFunctor D X ⋙ (evaluation (J.Cover X)ᵒᵖ D).obj (op W))) :
    Cone (F ⋙ (evaluation _ _).obj (op i.Y)) where
  pt := E.pt
  π :=
    { app := fun k => E.π.app k ≫ Multiequalizer.ι (W.index (F.obj k)) i
      naturality := by
        intro a b f
        dsimp
        rw [Category.id_comp, Category.assoc, ← E.w f]
        dsimp [diagramNatTrans]
        simp only [Multiequalizer.lift_ι, Category.assoc] }

/-- Auxiliary definition for `liftToDiagramLimitObj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1618a90f77d79d473a4af6ee4f50fd78abaea20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
