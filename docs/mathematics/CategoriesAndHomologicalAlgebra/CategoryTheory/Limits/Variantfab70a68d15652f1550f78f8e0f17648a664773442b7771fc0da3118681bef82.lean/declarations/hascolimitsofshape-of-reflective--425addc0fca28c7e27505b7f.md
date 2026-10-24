# hasColimitsOfShape_of_reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:354e9a59-f9f4-7b80-f2fb-f48aa51f614d",
  "kind": "theorem",
  "lexical_name": "hasColimitsOfShape_of_reflective",
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
  "slug": "hascolimitsofshape-of-reflective--425addc0fca28c7e27505b7f",
  "source": {
    "blob": "025c964b7796306ecb160dd4c880c36d1b8ea1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:425addc0fca28c7e27505b7f6df081646f44a2ef62aefaceacff45ceda7b02fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:354e9a59-f9f4-7b80-f2fb-f48aa51f614d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasColimitsOfShape_of_reflective (R : D ⥤ C) [Reflective R] [HasColimitsOfShape J C] :
    HasColimitsOfShape J D where
  has_colimit := fun F => by
      let c := (monadicLeftAdjoint R).mapCocone (colimit.cocone (F ⋙ R))
      letI : PreservesColimitsOfShape J _ :=
        (monadicAdjunction R).leftAdjoint_preservesColimits.1
      let t : IsColimit c := isColimitOfPreserves (monadicLeftAdjoint R) (colimit.isColimit _)
      apply HasColimit.mk ⟨_, (IsColimit.precomposeInvEquiv _ _).symm t⟩
      apply
        (isoWhiskerLeft F (asIso (monadicAdjunction R).counit) :) ≪≫ F.rightUnitor

/-- If `C` has colimits then any reflective subcategory has colimits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025c964b7796306ecb160dd4c880c36d1b8ea1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
