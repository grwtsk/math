# eHom_whisker_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f4e0df4-e055-6c07-44fb-052669778755",
  "kind": "lemma",
  "lexical_name": "eHom_whisker_cancel",
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
  "slug": "ehom-whisker-cancel--e55a8b0ef4790cc4895c34c8",
  "source": {
    "blob": "b38992a0e65b7a043e349bfe94c0129223292149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55a8b0ef4790cc4895c34c8a39b31c70d43287505fec9577e2498e98d1623b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f4e0df4-e055-6c07-44fb-052669778755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHom_whisker_cancel {X Y Y₁ Z : C} (α : Y  ≅ Y₁) :
    eHomWhiskerLeft V X α.hom ▷ _ ≫ _ ◁ eHomWhiskerRight V α.inv Z ≫
      eComp V X Y₁ Z = eComp V X Y Z := by
  dsimp [eHomWhiskerLeft, eHomWhiskerRight]
  simp only [MonoidalCategory.whiskerLeft_comp_assoc, whisker_assoc_symm,
    triangle_assoc_comp_left_inv_assoc, e_assoc', assoc]
  simp only [← comp_whiskerRight_assoc]
  change (eHomWhiskerLeft V X α.hom ≫ eHomWhiskerLeft V X α.inv) ▷ _ ≫ _ = _
  simp [← eHomWhiskerLeft_comp]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38992a0e65b7a043e349bfe94c0129223292149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
