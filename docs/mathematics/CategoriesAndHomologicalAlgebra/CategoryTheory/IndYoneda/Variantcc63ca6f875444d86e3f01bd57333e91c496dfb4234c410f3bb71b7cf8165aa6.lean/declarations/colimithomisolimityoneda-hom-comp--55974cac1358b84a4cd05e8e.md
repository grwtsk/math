# colimitHomIsoLimitYoneda'_hom_comp_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45d56e6704af16316195d09055f19b9c6677fb1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f9b6213-48b7-8655-08d0-eb3764fac97a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b873afe0-8dee-a67c-88bb-38832bfee6dd",
  "kind": "lemma",
  "lexical_name": "colimitHomIsoLimitYoneda'_hom_comp_π",
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
  "slug": "colimithomisolimityoneda-hom-comp--55974cac1358b84a4cd05e8e",
  "source": {
    "blob": "45d56e6704af16316195d09055f19b9c6677fb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55974cac1358b84a4cd05e8e6359cafd837a93fea11cd9b458a563f185c99b22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b873afe0-8dee-a67c-88bb-38832bfee6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colimitHomIsoLimitYoneda'_hom_comp_π [HasLimitsOfShape I (Type u₂)] (A : C) (i : I) :
    (colimitHomIsoLimitYoneda' F A).hom ≫ limit.π (F.rightOp ⋙ yoneda.obj A) i =
      (coyoneda.map (colimit.ι F ⟨i⟩).op).app A := by
  simp only [yoneda_obj_obj, colimitHomIsoLimitYoneda', Iso.trans_hom,
    Iso.app_hom, Category.assoc]
  erw [limitObjIsoLimitCompEvaluation_hom_π]
  change ((coyonedaOpColimitIsoLimitCoyoneda' F).hom ≫ _).app A = _
  rw [coyonedaOpColimitIsoLimitCoyoneda'_hom_comp_π]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d56e6704af16316195d09055f19b9c6677fb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
